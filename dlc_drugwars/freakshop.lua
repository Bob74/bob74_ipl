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

    Style = {
        drug = "entity_set_mission_3",
        grinder = "entity_set_mission_6",
        card = "entity_set_mission_8",
        key = "entity_set_mission_9",
        hack = "entity_set_mission_11",
        weed = "entity_set_mission_2",

        Enable = function(style, state, refresh)
            SetIplPropState(DrugWarsFreakshop.interiorId, style, state, refresh)
        end
    },
    Storrage = {
        f1 = "entity_set_freemode_1",
        f2 = "entity_set_freemode_2",
        f3 = "entity_set_freemode_3",
        f4 = "entity_set_freemode_4",
        f5 = "entity_set_freemode_5",
        f6 = "entity_set_freemode_6",
        f7 = "entity_set_freemode_7",
        f8 = "entity_set_freemode_8",
        f9 = "entity_set_freemode_9",
        f10 = "entity_set_freemode_10",
        f11 = "entity_set_freemode_11",

        Enable = function(storrage, state, refresh)
            SetIplPropState(DrugWarsFreakshop.interiorId, storrage, state, refresh)
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
