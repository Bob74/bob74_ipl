exports('GetTunerMethLabObject', function()
    return TunerMethLab
end)

TunerMethLab = {
    InteriorId = 284673,

    Entities = {
        tintable_walls = true,

        Set = function(name, state)
            for entity, _ in pairs(TunerMethLab.Entities) do
                if entity == name then
                    TunerMethLab.Entities[entity] = state
                    TunerMethLab.Entities.Clear()
                    TunerMethLab.Entities.Load()
                end
            end
        end,
        Load = function()
            for entity, state in pairs(TunerMethLab.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(TunerMethLab.InteriorId, entity)
                end
            end
        end,
        Clear = function()
            for entity, _ in pairs(TunerMethLab.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(TunerMethLab.InteriorId, entity)
                end
            end
        end
    },

    LoadDefault = function()
        TunerMethLab.Entities.Load()

        SetInteriorEntitySetColor(TunerMethLab.interiorId, TunerMethLab.Entities.tintable_walls, 3)
        RefreshInterior(TunerMethLab.interiorId)
    end
}
