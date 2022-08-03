exports('GetCriminalEnterpriseSmeonFixObject', function()
    return CriminalEnterpriseSmeonFix
end)

CriminalEnterpriseSmeonFix = {
    InteriorId = 7170,

    Ipl = {
        Interior = {
            ipl = {
                'reh_simeonfix',
            }
        },

        Load = function()
            EnableIpl(CriminalEnterpriseSmeonFix.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(CriminalEnterpriseSmeonFix.Ipl.Interior.ipl, false)
        end
    },
    Entities = {

        Set = function(name, state)
            for entity, _ in pairs(CriminalEnterpriseSmeonFix.Entities) do
                if entity == name then
                    CriminalEnterpriseSmeonFix.Entities[entity] = state
                    CriminalEnterpriseSmeonFix.Entities.Clear()
                    CriminalEnterpriseSmeonFix.Entities.Load()
                end
            end
        end,
        Load = function()
            for entity, state in pairs(CriminalEnterpriseSmeonFix.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(CriminalEnterpriseSmeonFix.InteriorId, entity)
                end
            end
        end,
        Clear = function()
            for entity, _ in pairs(CriminalEnterpriseSmeonFix.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(CriminalEnterpriseSmeonFix.InteriorId, entity)
                end
            end
        end
    },

    LoadDefault = function()
        CriminalEnterpriseSmeonFix.Ipl.Load()
        CriminalEnterpriseSmeonFix.Entities.Load()

        RefreshInterior(CriminalEnterpriseSmeonFix.interiorId)
    end
}
