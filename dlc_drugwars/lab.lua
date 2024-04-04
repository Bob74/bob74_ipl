-- Acid Lab: 483.4252, -2625.071, -50.000
exports('GetDrugWarsLabObject', function()
    return DrugWarsLab
end)

DrugWarsLab = {
    interiorId = 290305,

    Details = {
        products = {
            "set_product_01",
            "set_product_02",
            "set_product_03",
            "set_product_04",
            "set_product_05"
        },
        supplies = {
            "set_supplies_01",
            "set_supplies_02",
            "set_supplies_03",
            "set_supplies_04",
            "set_supplies_05",
        },
        equipment = "set_equipment_upgrade",

        Enable = function(details, state, refresh)
            SetIplPropState(DrugWarsLab.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        DrugWarsLab.Details.Enable(DrugWarsLab.Details.products, true, false)
        DrugWarsLab.Details.Enable(DrugWarsLab.Details.supplies, true, false)
        DrugWarsLab.Details.Enable(DrugWarsLab.Details.equipment, true, false)

        RefreshInterior(DrugWarsLab.interiorId)
    end
}