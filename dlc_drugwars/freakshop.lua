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

    Props = {
        package = "entity_set_mission_3",
        tools = "entity_set_mission_6",
        pictures = "entity_set_mission_8",
        keys = "entity_set_mission_9",
        boxes = "entity_set_mission_11",
        package2 = "entity_set_mission_2",
        pallet = "entity_set_freemode_1",
        bin = "entity_set_freemode_2",
        cooler = "entity_set_freemode_3",
        pallet2 = "entity_set_freemode_4",
        sack = "entity_set_freemode_5",
        case = "entity_set_freemode_6",
        jerryCan = "entity_set_freemode_7",
        jerryCan2 = "entity_set_freemode_8",
        crate = "entity_set_freemode_9",
        crate2 = "entity_set_freemode_10",
        spool = "entity_set_freemode_11",

        Set = function(prop, state, refresh)
            SetIplPropState(DrugWarsFreakshop.interiorId, prop, state, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        DrugWarsFreakshop.Ipl.Exterior.Load()

        -- Interior
        DrugWarsFreakshop.Door.Set(DrugWarsFreakshop.Door.closed, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.package, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.tools, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.pictures, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.keys, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.boxes, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.package2, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.pallet, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.bin, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.cooler, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.pallet2, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.sack, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.case, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.jerryCan, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.jerryCan2, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.crate, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.crate2, true, false)
        DrugWarsFreakshop.Props.Set(DrugWarsFreakshop.Props.spool, true, false)

        RefreshInterior(DrugWarsFreakshop.interiorId)
    end
}
