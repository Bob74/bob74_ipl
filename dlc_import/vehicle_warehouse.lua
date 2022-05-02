-- Vehicle warehouse
-- Upper: 994.5925, -3002.594, -39.64699
-- Lower: 969.5376, -3000.411, -48.64689
exports('GetImportVehicleWarehouseObject', function()
    return ImportVehicleWarehouse
end)

ImportVehicleWarehouse = {
    Upper = {
        interiorId = 252673,

        Ipl = {
            Interior = {
                ipl = "imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_",

                Load = function()
                    EnableIpl(ImportVehicleWarehouse.Upper.Ipl.Interior.ipl, true)
                end,
                Remove = function()
                    EnableIpl(ImportVehicleWarehouse.Upper.Ipl.Interior.ipl, false)
                end
            }
        },
        Style = {
            basic = "basic_style_set",
            branded = "branded_style_set",
            urban = "urban_style_set",

            Set = function(style, refresh)
                ImportVehicleWarehouse.Upper.Style.Clear(false)

                SetIplPropState(ImportVehicleWarehouse.Upper.interiorId, style, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(ImportVehicleWarehouse.Upper.interiorId, {
                    ImportVehicleWarehouse.Upper.Style.basic,
                    ImportVehicleWarehouse.Upper.Style.branded,
                    ImportVehicleWarehouse.Upper.Style.urban
                }, false, refresh)
            end
        },
        Details = {
            floorHatch = "car_floor_hatch",
            doorBlocker = "door_blocker", -- Invisible wall

            Enable = function(details, state, refresh)
                SetIplPropState(ImportVehicleWarehouse.Upper.interiorId, details, state, refresh)
            end
        }
    },
    Lower = {
        interiorId = 253185,

        Ipl = {
            Interior = {
                ipl = "imp_impexp_interior_placement_interior_3_impexp_int_02_milo_",

                Load = function()
                    EnableIpl(ImportVehicleWarehouse.Lower.Ipl.Interior.ipl, true)
                end,
                Remove = function()
                    EnableIpl(ImportVehicleWarehouse.Lower.Ipl.Interior.ipl, false)
                end
            }
        },
        Details = {
            Pumps = {
                pump1 = "pump_01",
                pump2 = "pump_02",
                pump3 = "pump_03",
                pump4 = "pump_04",
                pump5 = "pump_05",
                pump6 = "pump_06",
                pump7 = "pump_07",
                pump8 = "pump_08"
            },
            Enable = function(details, state, refresh)
                SetIplPropState(ImportVehicleWarehouse.Lower.interiorId, details, state, refresh)
            end
        }
    },

    LoadDefault = function()
        ImportVehicleWarehouse.Upper.Ipl.Interior.Load()
        ImportVehicleWarehouse.Upper.Style.Set(ImportVehicleWarehouse.Upper.Style.branded)
        ImportVehicleWarehouse.Upper.Details.Enable(ImportVehicleWarehouse.Upper.Details.floorHatch, true)
        ImportVehicleWarehouse.Upper.Details.Enable(ImportVehicleWarehouse.Upper.Details.doorBlocker, false)

        RefreshInterior(ImportVehicleWarehouse.Upper.interiorId)

        ImportVehicleWarehouse.Lower.Ipl.Interior.Load()
        ImportVehicleWarehouse.Lower.Details.Enable(ImportVehicleWarehouse.Lower.Details.Pumps, true)

        RefreshInterior(ImportVehicleWarehouse.Lower.interiorId)
    end
}
