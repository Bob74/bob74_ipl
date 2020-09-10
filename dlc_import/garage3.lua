
-- Garage 3: Lom Bank

exports('GetImportCEOGarage3Object', function()
	return ImportCEOGarage3
end)

ImportCEOGarage3 = {
    Part = {
        Garage1 = {interiorId = 255489, ipl = "imp_sm_13_cargarage_a"},  -- -1581.1120, -567.2450, 85.5000
        Garage2 = {interiorId = 255745, ipl = "imp_sm_13_cargarage_b"},  -- -1568.7390, -562.0455, 85.5000
        Garage3 = {interiorId = 256001, ipl = "imp_sm_13_cargarage_c"},  -- -1563.5570, -574.4314, 85.5000
        ModShop = {interiorId = 256257, ipl = "imp_sm_13_modgarage"},    -- -1578.0230, -576.4251, 104.2000

        Load = function(part) EnableIpl(part.ipl, true) end,
        Remove = function(part) EnableIpl(part.ipl, false) end,
        Clear = function() EnableIpl({ImportCEOGarage3.Part.Garage1.ipl, ImportCEOGarage3.Part.Garage2.ipl, ImportCEOGarage3.Part.Garage3.ipl}, false) end,
    },
    Style = {
        concrete = "garage_decor_01", plain = "garage_decor_02", marble = "garage_decor_03", wooden = "garage_decor_04",
        Set = function(part, style, refresh)
            ImportCEOGarage3.Style.Clear(part)
            SetIplPropState(part.interiorId, style, true, refresh)
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {ImportCEOGarage3.Style.concrete, ImportCEOGarage3.Style.plain, ImportCEOGarage3.Style.marble, ImportCEOGarage3.Style.wooden}, false, true)
        end
    },
    Numbering = {
        none = "",
        Level1 = {
            style1 = "numbering_style01_n1", style2 = "numbering_style02_n1", style3 = "numbering_style03_n1",
            style4 = "numbering_style04_n1", style5 = "numbering_style05_n1", style6 = "numbering_style06_n1",
            style7 = "numbering_style07_n1", style8 = "numbering_style08_n1", style9 = "numbering_style09_n1",
        },
        Level2 = {
            style1 = "numbering_style01_n2", style2 = "numbering_style02_n2", style3 = "numbering_style03_n2",
            style4 = "numbering_style04_n2", style5 = "numbering_style05_n2", style6 = "numbering_style06_n2",
            style7 = "numbering_style07_n2", style8 = "numbering_style08_n2", style9 = "numbering_style09_n2",
        },
        Level3 = {
            style1 = "numbering_style01_n3", style2 = "numbering_style02_n3", style3 = "numbering_style03_n3",
            style4 = "numbering_style04_n3", style5 = "numbering_style05_n3", style6 = "numbering_style06_n3",
            style7 = "numbering_style07_n3", style8 = "numbering_style08_n3", style9 = "numbering_style09_n3",
        },
        Set = function(part, num, refresh)
            ImportCEOGarage3.Numbering.Clear(part)
            if (num ~= nil) then
                SetIplPropState(part.interiorId, num, true, refresh)
            else
                if (refresh) then RefreshInterior(part.interiorId) end
            end
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {ImportCEOGarage3.Numbering.Level1, ImportCEOGarage3.Numbering.Level2, ImportCEOGarage3.Numbering.Level3}, false, true)
        end
    },
    Lighting = {
        none = "",
        style1 = "lighting_option01", style2 = "lighting_option02", style3 = "lighting_option03",
        style4 = "lighting_option04", style5 = "lighting_option05", style6 = "lighting_option06",
        style7 = "lighting_option07", style8 = "lighting_option08", style9 = "lighting_option09",

        Set = function(part, light, refresh)
            ImportCEOGarage3.Lighting.Clear(part)
            if (light ~= nil) then
                SetIplPropState(part.interiorId, light, true, refresh)
            else
                if (refresh) then RefreshInterior(part.interiorId) end
            end
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {
                ImportCEOGarage3.Lighting.style1, ImportCEOGarage3.Lighting.style2, ImportCEOGarage3.Lighting.style3,
                ImportCEOGarage3.Lighting.style4, ImportCEOGarage3.Lighting.style5, ImportCEOGarage3.Lighting.style6,
                ImportCEOGarage3.Lighting.style7, ImportCEOGarage3.Lighting.style8, ImportCEOGarage3.Lighting.style9
            }, false, true)
        end
    },
    ModShop = {
        Floor = {
            default = "",
            city = "floor_vinyl_01", seabed = "floor_vinyl_02", aliens = "floor_vinyl_03",
            clouds = "floor_vinyl_04", money = "floor_vinyl_05", zebra = "floor_vinyl_06",
            blackWhite = "floor_vinyl_07", barcode = "floor_vinyl_08", paintbrushBW = "floor_vinyl_09",
            grid = "floor_vinyl_10", splashes = "floor_vinyl_11", squares = "floor_vinyl_12",
            mosaic = "floor_vinyl_13", paintbrushColor = "floor_vinyl_14", curvesColor = "floor_vinyl_15",
            marbleBrown = "floor_vinyl_16", marbleBlue = "floor_vinyl_17", marbleBW = "floor_vinyl_18",
            maze = "floor_vinyl_19",

            Set = function(floor, refresh)
                ImportCEOGarage3.ModShop.Floor.Clear()
                if (floor ~= nil) then
                    SetIplPropState(ImportCEOGarage3.Part.ModShop.interiorId, floor, true, refresh)
                else
                    if (refresh) then RefreshInterior(ImportCEOGarage3.Part.ModShop.interiorId) end
                end
            end,
            Clear = function()
                SetIplPropState(ImportCEOGarage3.Part.ModShop.interiorId, {
                    ImportCEOGarage3.ModShop.Floor.city, ImportCEOGarage3.ModShop.Floor.seabed, ImportCEOGarage3.ModShop.Floor.aliens,
                    ImportCEOGarage3.ModShop.Floor.clouds, ImportCEOGarage3.ModShop.Floor.money, ImportCEOGarage3.ModShop.Floor.zebra,
                    ImportCEOGarage3.ModShop.Floor.blackWhite, ImportCEOGarage3.ModShop.Floor.barcode, ImportCEOGarage3.ModShop.Floor.paintbrushBW,
                    ImportCEOGarage3.ModShop.Floor.grid, ImportCEOGarage3.ModShop.Floor.splashes, ImportCEOGarage3.ModShop.Floor.squares,
                    ImportCEOGarage3.ModShop.Floor.mosaic, ImportCEOGarage3.ModShop.Floor.paintbrushColor, ImportCEOGarage3.ModShop.Floor.curvesColor,
                    ImportCEOGarage3.ModShop.Floor.marbleBrown, ImportCEOGarage3.ModShop.Floor.marbleBlue, ImportCEOGarage3.ModShop.Floor.marbleBW,
                    ImportCEOGarage3.ModShop.Floor.maze
                }, false, true)
            end
        }
    },

    LoadDefault = function()
        ImportCEOGarage3.Part.Load(ImportCEOGarage3.Part.Garage1)
        ImportCEOGarage3.Style.Set(ImportCEOGarage3.Part.Garage1, ImportCEOGarage3.Style.concrete, false)
        ImportCEOGarage3.Numbering.Set(ImportCEOGarage3.Part.Garage1, ImportCEOGarage3.Numbering.Level1.style1, false)
        ImportCEOGarage3.Lighting.Set(ImportCEOGarage3.Part.Garage1, ImportCEOGarage3.Lighting.style1, true)
        
        -- No mod shop since it overlapses CEO office
        ImportCEOGarage3.Part.Remove(ImportCEOGarage3.Part.ModShop)
    end
}
