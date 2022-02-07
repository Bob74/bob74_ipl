exports('GetTunerGarageObject', function()
    return TunerGarage
end)

TunerGarage = {
    InteriorId = 285953,
    Ipl = {
        Interior = {
            ipl = {
                'tr_tuner_shop_burton',
                'tr_tuner_shop_mesa',
                'tr_tuner_shop_mission',
                'tr_tuner_shop_rancho',
                'tr_tuner_shop_strawberry',
            }
        },
        Load = function ()
            EnableIpl(TunerGarage.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(TunerGarage.Ipl.Interior.ipl, false)
        end,
    },
    Entities = {
        entity_set_bedroom = true,
        entity_set_bedroom_empty = false,
        entity_set_bombs = true,
        entity_set_box_clutter = false,
        entity_set_cabinets = false,
        entity_set_car_lift_cutscene = true,
        entity_set_car_lift_default = true,
        entity_set_car_lift_purchase = true,
        entity_set_chalkboard = false,
        entity_set_container = false,
        entity_set_cut_seats = false,
        entity_set_def_table = false,
        entity_set_drive = true,
        entity_set_ecu = true,
        entity_set_IAA = true,
        entity_set_jammers = true,
        entity_set_laptop = true,
        entity_set_lightbox = true,
        entity_set_methLab = false,
        entity_set_plate = true,
        entity_set_scope = true,
        entity_set_style_1 = false,
        entity_set_style_2 = false,
        entity_set_style_3 = false,
        entity_set_style_4 = false,
        entity_set_style_5 = false,
        entity_set_style_6 = false,
        entity_set_style_7 = false,
        entity_set_style_8 = false,
        entity_set_style_9 = true,
        entity_set_table = false,
        entity_set_thermal = true,
        entity_set_tints = true,
        entity_set_train = true,
        entity_set_virus = true,
        Set = function (name, state)
            for entity, _ in pairs(TunerGarage.Entities) do
                if entity == name then
                    TunerGarage.Entities[entity] = state
                    TunerGarage.Entities.Clear()
                    TunerGarage.Entities.Load()
                end
            end
        end,
        Load = function ()
            for entity, state in pairs(TunerGarage.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(TunerGarage.InteriorId, entity)
                end
            end
        end,
        Clear = function ()
            for entity, _ in pairs(TunerGarage.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(TunerGarage.InteriorId, entity)
                end
            end
        end,
    },
    LoadDefault = function()
        TunerGarage.Ipl.Load()
        TunerGarage.Entities.Load()
        RefreshInterior(TunerGarage.interiorId)
    end
}
