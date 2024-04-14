-- Freakshop: 570.9713, -420.0727, -70.000
exports('GetDrugWarsFreakshopObject', function()
    return DrugWarsFreakshop
end)

DrugWarsFreakshop = {
    interiorId = 290817,

    Ipl = {
        Exterior = {
            ipl = {
                "xm3_warehouse",
                "xm3_warehouse_grnd"
            },

            Load = function()
                EnableIpl(DrugWarsFreakshop.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(DrugWarsFreakshop.Ipl.Exterior.ipl, false)
            end
        }
    },

    Door = {
        opened = "entity_set_roller_door_open",
        closed = "entity_set_roller_door_closed",

        Set = function(door, refresh)
            DrugWarsFreakshop.Door.Clear()

            SetIplPropState(DrugWarsFreakshop.interiorId, door, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DrugWarsFreakshop.interiorId, {
                DrugWarsFreakshop.Door.opened,
                DrugWarsFreakshop.Door.closed
            }, false, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        DrugWarsFreakshop.Ipl.Exterior.Load()

        -- Interior
        DrugWarsFreakshop.Door.Set(DrugWarsFreakshop.Door.closed, false)

        RefreshInterior(DrugWarsFreakshop.interiorId)
    end
}
