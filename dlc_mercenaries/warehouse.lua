-- Warehouse/Vinewood Car Club: 1200.0, -3250.0, -50.0
exports('GetMercenariesWarehouseObject', function()
    return MercenariesWarehouse
end)

MercenariesWarehouse = {
    interiorId = 291841,

    Style = {
        empty = "entity_set_no_plus", -- The lamps if the podium is not there
        club = {
            "entity_set_plus",
            "entity_set_backdrop_frames",
            "entity_set_signs"
        },

        Set = function(style, refresh)
            MercenariesWarehouse.Style.Clear(false)

            SetIplPropState(MercenariesWarehouse.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MercenariesWarehouse.interiorId, {
                MercenariesWarehouse.Style.empty,
                MercenariesWarehouse.Style.club
            }, false, refresh)
        end
    },

    Stairs = {
        stairs = "entity_set_stairs",

        Enable = function(state, refresh)
            SetIplPropState(MercenariesWarehouse.interiorId, MercenariesWarehouse.Stairs.stairs, state, refresh)
        end
    },

    LoadDefault = function()
        MercenariesWarehouse.Style.Set(MercenariesWarehouse.Style.club, false)
        MercenariesWarehouse.Stairs.Enable(true, false)

        RefreshInterior(MercenariesWarehouse.interiorId)
    end
}