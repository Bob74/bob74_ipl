
-- Garage 1: Arcadius Business Centre

exports('GetImportCEOGarage1Object', function()
	return ImportCEOGarage1
end)

ImportCEOGarage1 = {
    Part = {
        Garage1 = {interiorId = 253441, ipl = "imp_dt1_02_cargarage_a"},  -- -191.0133, -579.1428, 135.0000
        Garage2 = {interiorId = 253697, ipl = "imp_dt1_02_cargarage_b"},  -- -117.4989, -568.1132, 135.0000
        Garage3 = {interiorId = 253953, ipl = "imp_dt1_02_cargarage_c"},  -- -136.0780, -630.1852, 135.0000
        ModShop = {interiorId = 254209, ipl = "imp_dt1_02_modgarage"},    -- -146.6166, -596.6301, 166.0000

        Load = function(part) EnableIpl(part.ipl, true) end,
        Remove = function(part) EnableIpl(part.ipl, false) end,
        Clear = function() EnableIpl({ImportCEOGarage1.Part.Garage1.ipl, ImportCEOGarage1.Part.Garage2.ipl, ImportCEOGarage1.Part.Garage3.ipl}, false) end,
    },
    Style = {
        concrete = "garage_decor_01", plain = "garage_decor_02", marble = "garage_decor_03", wooden = "garage_decor_04",
        Set = function(part, style, refresh)
            ImportCEOGarage1.Style.Clear(part)
            SetIplPropState(part.interiorId, style, true, refresh)
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {ImportCEOGarage1.Style.concrete, ImportCEOGarage1.Style.plain, ImportCEOGarage1.Style.marble, ImportCEOGarage1.Style.wooden}, false, true)
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
            ImportCEOGarage1.Numbering.Clear(part)
            if (num ~= nil) then
                SetIplPropState(part.interiorId, num, true, refresh)
            else
                if (refresh) then RefreshInterior(part.interiorId) end
            end
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {ImportCEOGarage1.Numbering.Level1, ImportCEOGarage1.Numbering.Level2, ImportCEOGarage1.Numbering.Level3}, false, true)
        end
    },
    Lighting = {
        none = "",
        style1 = "lighting_option01", style2 = "lighting_option02", style3 = "lighting_option03",
        style4 = "lighting_option04", style5 = "lighting_option05", style6 = "lighting_option06",
        style7 = "lighting_option07", style8 = "lighting_option08", style9 = "lighting_option09",

        Set = function(part, light, refresh)
            ImportCEOGarage1.Lighting.Clear(part)
            if (light ~= nil) then
                SetIplPropState(part.interiorId, light, true, refresh)
            else
                if (refresh) then RefreshInterior(part.interiorId) end
            end
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {
                ImportCEOGarage1.Lighting.style1, ImportCEOGarage1.Lighting.style2, ImportCEOGarage1.Lighting.style3,
                ImportCEOGarage1.Lighting.style4, ImportCEOGarage1.Lighting.style5, ImportCEOGarage1.Lighting.style6,
                ImportCEOGarage1.Lighting.style7, ImportCEOGarage1.Lighting.style8, ImportCEOGarage1.Lighting.style9
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
                ImportCEOGarage1.ModShop.Floor.Clear()
                if (floor ~= nil) then
                    SetIplPropState(ImportCEOGarage1.Part.ModShop.interiorId, floor, true, refresh)
                else
                    if (refresh) then RefreshInterior(ImportCEOGarage1.Part.ModShop.interiorId) end
                end
            end,
            Clear = function()
                SetIplPropState(ImportCEOGarage1.Part.ModShop.interiorId, {
                    ImportCEOGarage1.ModShop.Floor.city, ImportCEOGarage1.ModShop.Floor.seabed, ImportCEOGarage1.ModShop.Floor.aliens,
                    ImportCEOGarage1.ModShop.Floor.clouds, ImportCEOGarage1.ModShop.Floor.money, ImportCEOGarage1.ModShop.Floor.zebra,
                    ImportCEOGarage1.ModShop.Floor.blackWhite, ImportCEOGarage1.ModShop.Floor.barcode, ImportCEOGarage1.ModShop.Floor.paintbrushBW,
                    ImportCEOGarage1.ModShop.Floor.grid, ImportCEOGarage1.ModShop.Floor.splashes, ImportCEOGarage1.ModShop.Floor.squares,
                    ImportCEOGarage1.ModShop.Floor.mosaic, ImportCEOGarage1.ModShop.Floor.paintbrushColor, ImportCEOGarage1.ModShop.Floor.curvesColor,
                    ImportCEOGarage1.ModShop.Floor.marbleBrown, ImportCEOGarage1.ModShop.Floor.marbleBlue, ImportCEOGarage1.ModShop.Floor.marbleBW,
                    ImportCEOGarage1.ModShop.Floor.maze
                }, false, true)
            end
        }
    },

    LoadDefault = function()
        ImportCEOGarage1.Part.Load(ImportCEOGarage1.Part.Garage1)
        ImportCEOGarage1.Style.Set(ImportCEOGarage1.Part.Garage1, ImportCEOGarage1.Style.concrete)
        ImportCEOGarage1.Numbering.Set(ImportCEOGarage1.Part.Garage1, ImportCEOGarage1.Numbering.Level1.style1)
        ImportCEOGarage1.Lighting.Set(ImportCEOGarage1.Part.Garage1, ImportCEOGarage1.Lighting.style1)
        
        ImportCEOGarage1.Part.Load(ImportCEOGarage1.Part.ModShop)
        ImportCEOGarage1.ModShop.Floor.Set(ImportCEOGarage1.ModShop.Floor.default)
    end
}
