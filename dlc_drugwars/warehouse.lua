-- Warehouse: 603.0235, -395.7166, 23.7996
exports('GetDrugWarsWarehouseObject', function()
    return DrugWarsWarehouse
end)

DrugWarsWarehouse = {
    Ipl = {
        ipl = {
            "xm3_warehouse",
            "xm3_warehouse_grnd"
        },

        Load = function()
            EnableIpl(DrugWarsWarehouse.Ipl.ipl, true)
        end,
        Remove = function()
            EnableIpl(DrugWarsWarehouse.Ipl.ipl, false)
        end
    },

    LoadDefault = function()
        DrugWarsWarehouse.Ipl.Load()
    end
}
