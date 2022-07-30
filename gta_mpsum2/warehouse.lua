exports('GetCriminalEnterpriseWarehouseObject', function()
    return CriminalEnterpriseWarehouse
end)

CriminalEnterpriseWarehouse = {
    InteriorId = 289793,

    Ipl = {
        Interior = {
            ipl = {
                'reh_int_placement_sum2_interior_1_dlc_int_04_sum2_milo_',
            }
        },

        Load = function()
            EnableIpl(CriminalEnterpriseWarehouse.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(CriminalEnterpriseWarehouse.Ipl.Interior.ipl, false)
        end
    },
    Entities = {
        entity_set_style_1 = false,
        entity_set_style_2 = false,
        entity_set_style_3 = false,
        entity_set_style_4 = false,
        entity_set_style_5 = true,

        Set = function(name, state)
            for entity, _ in pairs(CriminalEnterpriseWarehouse.Entities) do
                if entity == name then
                    CriminalEnterpriseWarehouse.Entities[entity] = state
                    CriminalEnterpriseWarehouse.Entities.Clear()
                    CriminalEnterpriseWarehouse.Entities.Load()
                end
            end
        end,
        Load = function()
            for entity, state in pairs(CriminalEnterpriseWarehouse.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(CriminalEnterpriseWarehouse.InteriorId, entity)
                end
            end
        end,
        Clear = function()
            for entity, _ in pairs(CriminalEnterpriseWarehouse.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(CriminalEnterpriseWarehouse.InteriorId, entity)
                end
            end
        end
    },

    LoadDefault = function()
        CriminalEnterpriseWarehouse.Ipl.Load()
        CriminalEnterpriseWarehouse.Entities.Load()

        RefreshInterior(CriminalEnterpriseWarehouse.interiorId)
    end
}
