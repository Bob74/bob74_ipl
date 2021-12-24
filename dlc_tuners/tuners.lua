local EntitySetsTuner = {
    ['entity_set_bedroom'] = true,
    ['entity_set_bedroom_empty'] = false,
    ['entity_set_bombs'] = true,
    ['entity_set_box_clutter'] = false,
    ['entity_set_cabinets'] = false,
    ['entity_set_car_lift_cutscene'] = true,
    ['entity_set_car_lift_default'] = true,
    ['entity_set_car_lift_purchase'] = true,
    ['entity_set_chalkboard'] = false,
    ['entity_set_container'] = false,
    ['entity_set_cut_seats'] = false,
    ['entity_set_def_table'] = false,
    ['entity_set_drive'] = true,
    ['entity_set_ecu'] = true,
    ['entity_set_IAA'] = true,
    ['entity_set_jammers'] = true,
    ['entity_set_laptop'] = true,
    ['entity_set_lightbox'] = true,
    ['entity_set_methLab'] = false,
    ['entity_set_plate'] = true,
    ['entity_set_scope'] = true,
    ['entity_set_style_1'] = false,
    ['entity_set_style_2'] = false,
    ['entity_set_style_3'] = false,
    ['entity_set_style_4'] = false,
    ['entity_set_style_5'] = false,
    ['entity_set_style_6'] = false,
    ['entity_set_style_7'] = false,
    ['entity_set_style_8'] = false,
    ['entity_set_style_9'] = true,
    ['entity_set_table'] = false,
    ['entity_set_thermal'] = true,
    ['entity_set_tints'] = true,
    ['entity_set_train'] = true,
    ['entity_set_virus'] = true,
    }
    
    local entitySetsMeet = {
    ['entity_set_meet_crew'] = true,
    ['entity_set_meet_lights'] = true,
    ['entity_set_meet_lights_cheap'] = true,
    ['entity_set_player'] = true,
    ['entity_set_test_crew'] = false,
    ['entity_set_test_lights'] = true,
    ['entity_set_test_lights_cheap'] = true,
    ['entity_set_time_trial'] = true,
    }
    
    local EntitySetMeth = {
    ['tintable_walls'] = false,
    }
    
Citizen.CreateThread(function()
    local tuna_interior_id = GetInteriorAtCoords(vector3(-1350.0, 160.0, -100.0))
    local meetup_interior_id = GetInteriorAtCoords(vector3(-2000.0, 1113.211, -25.36243))
    local methlab_interior_id = GetInteriorAtCoords(vector3(981.9999, -143.0, -50.0))
    RequestIpl('tr_tuner_meetup')
    RequestIpl('tr_tuner_race_line')
    RequestIpl('tr_tuner_shop_burton')
    RequestIpl('tr_tuner_shop_mesa' )
    RequestIpl('tr_tuner_shop_mission' )
    RequestIpl('tr_tuner_shop_rancho')
    RequestIpl('tr_tuner_shop_strawberry')
    if IsValidInterior(tuna_interior_id) then
     RefreshInterior(tuna_interior_id)
    end
      
    if IsValidInterior(meetup_interior_id) then
        RefreshInterior(meetup_interior_id)
    end
    
    if IsValidInterior(methlab_interior_id) then
        RefreshInterior(methlab_interior_id)
    end
    
    for k, v in pairs(EntitySetsTuner) do
        if v then
            ActivateInteriorEntitySet(
                tuna_interior_id --[[ integer ]], 
                k --[[ string ]]
            )
        else
            DeactivateInteriorEntitySet(
                tuna_interior_id --[[ integer ]], 
                k --[[ string ]]
            )
        end
    
    end
    
    for k, v in pairs(entitySetsMeet) do
        if v then
            ActivateInteriorEntitySet(
                meetup_interior_id --[[ integer ]], 
                k --[[ string ]]
            )
        else
            DeactivateInteriorEntitySet(
                meetup_interior_id --[[ integer ]], 
                k --[[ string ]]
            )
        end
    end
    
    for k, v in pairs(EntitySetMeth) do
        if v then
            ActivateInteriorEntitySet(
                methlab_interior_id --[[ integer ]], 
                k --[[ string ]]
            )
        else
            DeactivateInteriorEntitySet(
                methlab_interior_id --[[ integer ]], 
                k --[[ string ]]
            )
        end
    end
    
    SetInteriorEntitySetColor(284673, "tintable_walls", 3)
end)
