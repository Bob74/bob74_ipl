exports('GetCriminalEnterpriseVehicleWarehouseObject', function()
    return CriminalEnterpriseVehicleWarehouse
end)

CriminalEnterpriseVehicleWarehouse = {
    InteriorId = 289537,

    Ipl = {
        Interior = {
            ipl = {
                'reh_int_placement_sum2_interior_0_dlc_int_03_sum2_milo_',
            }
        },

        Load = function()
            EnableIpl(CriminalEnterpriseVehicleWarehouse.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(CriminalEnterpriseVehicleWarehouse.Ipl.Interior.ipl, false)
        end
    },
    Entities = {
        entity_set_office  = true,
        entity_set_light_option_1 = true,
        entity_set_light_option_2 = true,
        entity_set_light_option_3 = true,
        entity_set_tint_options = true,

        Set = function(name, state)
            for entity, _ in pairs(CriminalEnterpriseVehicleWarehouse.Entities) do
                if entity == name then
                    CriminalEnterpriseVehicleWarehouse.Entities[entity] = state
                    CriminalEnterpriseVehicleWarehouse.Entities.Clear()
                    CriminalEnterpriseVehicleWarehouse.Entities.Load()
                end
            end
        end,
        Load = function()
            for entity, state in pairs(CriminalEnterpriseVehicleWarehouse.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(CriminalEnterpriseVehicleWarehouse.InteriorId, entity)
                end
            end
        end,
        Clear = function()
            for entity, _ in pairs(CriminalEnterpriseVehicleWarehouse.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(CriminalEnterpriseVehicleWarehouse.InteriorId, entity)
                end
            end
        end
    },

    LoadDefault = function()
        CriminalEnterpriseVehicleWarehouse.Ipl.Load()
        CriminalEnterpriseVehicleWarehouse.Entities.Load()

        RefreshInterior(CriminalEnterpriseVehicleWarehouse.interiorId)
    end
}
