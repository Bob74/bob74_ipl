-- Garage 2: Maze Bank Building
exports('GetImportCEOGarage2Object', function()
    return ImportCEOGarage2
end)

ImportCEOGarage2 = {
    Part = {
        Garage1 = { -- -84.2193, -823.0851, 221.0000
            interiorId = 254465,
            ipl = "imp_dt1_11_cargarage_a"
        },
        Garage2 = { -- -69.8627, -824.7498, 221.0000
            interiorId = 254721,
            ipl = "imp_dt1_11_cargarage_b"
        },
        Garage3 = { -- -80.4318, -813.2536, 221.0000
            interiorId = 254977,
            ipl = "imp_dt1_11_cargarage_c"
        },
        ModShop = { -- -73.9039, -821.6204, 284.0000
            interiorId = 255233,
            ipl = "imp_dt1_11_modgarage"
        },

        Load = function(part)
            EnableIpl(part.ipl, true)
        end,
        Remove = function(part)
            EnableIpl(part.ipl, false)
        end,
        Clear = function()
            EnableIpl({
                ImportCEOGarage2.Part.Garage1.ipl,
                ImportCEOGarage2.Part.Garage2.ipl,
                ImportCEOGarage2.Part.Garage3.ipl
            }, false)
        end,
    },
    Style = {
        concrete = "garage_decor_01",
        plain = "garage_decor_02",
        marble = "garage_decor_03",
        wooden = "garage_decor_04",

        Set = function(part, style, refresh)
            ImportCEOGarage2.Style.Clear(part)

            SetIplPropState(part.interiorId, style, true, refresh)
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {
                ImportCEOGarage2.Style.concrete,
                ImportCEOGarage2.Style.plain,
                ImportCEOGarage2.Style.marble,
                ImportCEOGarage2.Style.wooden
            }, false, true)
        end
    },
    Numbering = {
        none = "",
        Level1 = {
            style1 = "numbering_style01_n1",
            style2 = "numbering_style02_n1",
            style3 = "numbering_style03_n1",
            style4 = "numbering_style04_n1",
            style5 = "numbering_style05_n1",
            style6 = "numbering_style06_n1",
            style7 = "numbering_style07_n1",
            style8 = "numbering_style08_n1",
            style9 = "numbering_style09_n1"
        },
        Level2 = {
            style1 = "numbering_style01_n2",
            style2 = "numbering_style02_n2",
            style3 = "numbering_style03_n2",
            style4 = "numbering_style04_n2",
            style5 = "numbering_style05_n2",
            style6 = "numbering_style06_n2",
            style7 = "numbering_style07_n2",
            style8 = "numbering_style08_n2",
            style9 = "numbering_style09_n2"
        },
        Level3 = {
            style1 = "numbering_style01_n3",
            style2 = "numbering_style02_n3",
            style3 = "numbering_style03_n3",
            style4 = "numbering_style04_n3",
            style5 = "numbering_style05_n3",
            style6 = "numbering_style06_n3",
            style7 = "numbering_style07_n3",
            style8 = "numbering_style08_n3",
            style9 = "numbering_style09_n3"
        },
        Set = function(part, num, refresh)
            ImportCEOGarage2.Numbering.Clear(part)

            if num ~= nil then
                SetIplPropState(part.interiorId, num, true, refresh)
            else
                if refresh then
                    RefreshInterior(part.interiorId)
                end
            end
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {
                ImportCEOGarage2.Numbering.Level1,
                ImportCEOGarage2.Numbering.Level2,
                ImportCEOGarage2.Numbering.Level3
            }, false, true)
        end
    },
    Lighting = {
        none = "",
        style1 = "lighting_option01",
        style2 = "lighting_option02",
        style3 = "lighting_option03",
        style4 = "lighting_option04",
        style5 = "lighting_option05",
        style6 = "lighting_option06",
        style7 = "lighting_option07",
        style8 = "lighting_option08",
        style9 = "lighting_option09",

        Set = function(part, light, refresh)
            ImportCEOGarage2.Lighting.Clear(part)

            if light ~= nil then
                SetIplPropState(part.interiorId, light, true, refresh)
            else
                if refresh then
                    RefreshInterior(part.interiorId)
                end
            end
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {
                ImportCEOGarage2.Lighting.style1, ImportCEOGarage2.Lighting.style2, ImportCEOGarage2.Lighting.style3,
                ImportCEOGarage2.Lighting.style4, ImportCEOGarage2.Lighting.style5, ImportCEOGarage2.Lighting.style6,
                ImportCEOGarage2.Lighting.style7, ImportCEOGarage2.Lighting.style8, ImportCEOGarage2.Lighting.style9
            }, false, true)
        end
    },
    ModShop = {
        Floor = {
            default = "",
            city = "floor_vinyl_01",
            seabed = "floor_vinyl_02",
            aliens = "floor_vinyl_03",
            clouds = "floor_vinyl_04",
            money = "floor_vinyl_05",
            zebra = "floor_vinyl_06",
            blackWhite = "floor_vinyl_07",
            barcode = "floor_vinyl_08",
            paintbrushBW = "floor_vinyl_09",
            grid = "floor_vinyl_10",
            splashes = "floor_vinyl_11",
            squares = "floor_vinyl_12",
            mosaic = "floor_vinyl_13",
            paintbrushColor = "floor_vinyl_14",
            curvesColor = "floor_vinyl_15",
            marbleBrown = "floor_vinyl_16",
            marbleBlue = "floor_vinyl_17",
            marbleBW = "floor_vinyl_18",
            maze = "floor_vinyl_19",

            Set = function(floor, refresh)
                ImportCEOGarage2.ModShop.Floor.Clear()

                if floor ~= nil then
                    SetIplPropState(ImportCEOGarage2.Part.ModShop.interiorId, floor, true, refresh)
                else
                    if refresh then
                        RefreshInterior(ImportCEOGarage2.Part.ModShop.interiorId)
                    end
                end
            end,
            Clear = function()
                SetIplPropState(ImportCEOGarage2.Part.ModShop.interiorId, {
                    ImportCEOGarage2.ModShop.Floor.city, ImportCEOGarage2.ModShop.Floor.seabed, ImportCEOGarage2.ModShop.Floor.aliens,
                    ImportCEOGarage2.ModShop.Floor.clouds, ImportCEOGarage2.ModShop.Floor.money, ImportCEOGarage2.ModShop.Floor.zebra,
                    ImportCEOGarage2.ModShop.Floor.blackWhite, ImportCEOGarage2.ModShop.Floor.barcode, ImportCEOGarage2.ModShop.Floor.paintbrushBW,
                    ImportCEOGarage2.ModShop.Floor.grid, ImportCEOGarage2.ModShop.Floor.splashes, ImportCEOGarage2.ModShop.Floor.squares,
                    ImportCEOGarage2.ModShop.Floor.mosaic, ImportCEOGarage2.ModShop.Floor.paintbrushColor, ImportCEOGarage2.ModShop.Floor.curvesColor,
                    ImportCEOGarage2.ModShop.Floor.marbleBrown, ImportCEOGarage2.ModShop.Floor.marbleBlue, ImportCEOGarage2.ModShop.Floor.marbleBW,
                    ImportCEOGarage2.ModShop.Floor.maze
                }, false, true)
            end
        }
    },

    LoadDefault = function()
        ImportCEOGarage2.Part.Load(ImportCEOGarage2.Part.Garage1)
        ImportCEOGarage2.Style.Set(ImportCEOGarage2.Part.Garage1, ImportCEOGarage2.Style.concrete, false)
        ImportCEOGarage2.Numbering.Set(ImportCEOGarage2.Part.Garage1, ImportCEOGarage2.Numbering.Level1.style1, false)
        ImportCEOGarage2.Lighting.Set(ImportCEOGarage2.Part.Garage1, ImportCEOGarage2.Lighting.style1, true)

        ImportCEOGarage2.Part.Load(ImportCEOGarage2.Part.ModShop)
        ImportCEOGarage2.ModShop.Floor.Set(ImportCEOGarage2.ModShop.Floor.default, true)
    end
}
