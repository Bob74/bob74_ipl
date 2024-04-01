-- Freakshop: 571.6017, -423.0762, -70.6470
exports('GetDrugWarsFreakshopObject', function()
    return DrugWarsFreakshop
end)

DrugWarsFreakshop = {
    interiorId = 290817,

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
        DrugWarsFreakshop.Door.Set(DrugWarsFreakshop.Door.closed, false)

        RefreshInterior(DrugWarsFreakshop.interiorId)
    end
}
