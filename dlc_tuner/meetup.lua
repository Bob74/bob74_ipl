exports('GetTunerMeetupObject', function()
    return TunerMeetup
end)

TunerMeetup = {
    InteriorId = 285697,
    Ipl = {
        Interior = {
            ipl = {
                'tr_tuner_meetup',
                'tr_tuner_race_line',
            }
        },
        Load = function ()
            EnableIpl(TunerMeetup.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(TunerMeetup.Ipl.Interior.ipl, false)
        end,
    },
    Entities = {
        entity_set_meet_crew = true,
        entity_set_meet_lights = true,
        entity_set_meet_lights_cheap = true,
        entity_set_player = true,
        entity_set_test_crew = false,
        entity_set_test_lights = true,
        entity_set_test_lights_cheap = true,
        entity_set_time_trial = true,
        Set = function (name, state)
            for entity, _ in pairs(TunerMeetup.Entities) do
                if entity == name then
                    TunerMeetup.Entities[entity] = state
                    TunerMeetup.Entities.Clear()
                    TunerMeetup.Entities.Load()
                end
            end
        end,
        Load = function ()
            for entity, state in pairs(TunerMeetup.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(TunerMeetup.InteriorId, entity)
                end
            end
        end,
        Clear = function ()
            for entity, _ in pairs(TunerMeetup.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(TunerMeetup.InteriorId, entity)
                end
            end
        end,
    },
    LoadDefault = function()
        TunerMeetup.Ipl.Load()
        TunerMeetup.Entities.Load()
        RefreshInterior(TunerMeetup.interiorId)
    end
}
