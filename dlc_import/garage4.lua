-- Garage 4: Maze Bank West
-- Be careful, ImportCEOGarage4.Part.Garage1 and ImportCEOGarage4.Part.Garage3 overlaps with FinanceOffice4
exports('GetImportCEOGarage4Object', function()
    return ImportCEOGarage4
end)

ImportCEOGarage4 = {
    Part = {
        Garage1 = { -- -1388.8400, -478.7402, 56.1000
            interiorId = 256513,
            ipl = "imp_sm_15_cargarage_a"
        },
        Garage2 = { -- -1388.8600, -478.7574, 48.1000
            interiorId = 256769,
            ipl = "imp_sm_15_cargarage_b"
        },
        Garage3 = { -- -1374.6820, -474.3586, 56.1000
            interiorId = 257025,
            ipl = "imp_sm_15_cargarage_c"
        },
        ModShop = { -- -1391.2450, -473.9638, 77.2000
            interiorId = 257281,
            ipl = "imp_sm_15_modgarage"
        },

        Load = function(part)
            EnableIpl(part.ipl, true)
        end,
        Remove = function(part)
            EnableIpl(part.ipl, false)
        end,
        Clear = function()
            EnableIpl({
                ImportCEOGarage4.Part.Garage1.ipl,
                ImportCEOGarage4.Part.Garage2.ipl,
                ImportCEOGarage4.Part.Garage3.ipl
            }, false)
        end
    },
    Style = {
        concrete = "garage_decor_01",
        plain = "garage_decor_02",
        marble = "garage_decor_03",
        wooden = "garage_decor_04",

        Set = function(part, style, refresh)
            ImportCEOGarage4.Style.Clear(part)

            SetIplPropState(part.interiorId, style, true, refresh)
        end,
        Clear = function(part)
            SetIplPropState(part.interiorId, {
                ImportCEOGarage4.Style.concrete,
                ImportCEOGarage4.Style.plain,
                ImportCEOGarage4.Style.marble,
                ImportCEOGarage4.Style.wooden
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
            ImportCEOGarage4.Numbering.Clear(part)

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
                ImportCEOGarage4.Numbering.Level1,
                ImportCEOGarage4.Numbering.Level2,
                ImportCEOGarage4.Numbering.Level3
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
            ImportCEOGarage4.Lighting.Clear(part)

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
                ImportCEOGarage4.Lighting.style1, ImportCEOGarage4.Lighting.style2, ImportCEOGarage4.Lighting.style3,
                ImportCEOGarage4.Lighting.style4, ImportCEOGarage4.Lighting.style5, ImportCEOGarage4.Lighting.style6,
                ImportCEOGarage4.Lighting.style7, ImportCEOGarage4.Lighting.style8, ImportCEOGarage4.Lighting.style9
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
                ImportCEOGarage4.ModShop.Floor.Clear()

                if floor ~= nil then
                    SetIplPropState(ImportCEOGarage4.Part.ModShop.interiorId, floor, true, refresh)
                else
                    if refresh then
                        RefreshInterior(ImportCEOGarage4.Part.ModShop.interiorId)
                    end
                end
            end,
            Clear = function()
                SetIplPropState(ImportCEOGarage4.Part.ModShop.interiorId, {
                    ImportCEOGarage4.ModShop.Floor.city, ImportCEOGarage4.ModShop.Floor.seabed, ImportCEOGarage4.ModShop.Floor.aliens,
                    ImportCEOGarage4.ModShop.Floor.clouds, ImportCEOGarage4.ModShop.Floor.money, ImportCEOGarage4.ModShop.Floor.zebra,
                    ImportCEOGarage4.ModShop.Floor.blackWhite, ImportCEOGarage4.ModShop.Floor.barcode, ImportCEOGarage4.ModShop.Floor.paintbrushBW,
                    ImportCEOGarage4.ModShop.Floor.grid, ImportCEOGarage4.ModShop.Floor.splashes, ImportCEOGarage4.ModShop.Floor.squares,
                    ImportCEOGarage4.ModShop.Floor.mosaic, ImportCEOGarage4.ModShop.Floor.paintbrushColor, ImportCEOGarage4.ModShop.Floor.curvesColor,
                    ImportCEOGarage4.ModShop.Floor.marbleBrown, ImportCEOGarage4.ModShop.Floor.marbleBlue, ImportCEOGarage4.ModShop.Floor.marbleBW,
                    ImportCEOGarage4.ModShop.Floor.maze
                }, false, true)
            end
        }
    },

    LoadDefault = function()
        ImportCEOGarage4.Part.Load(ImportCEOGarage4.Part.Garage2)

        ImportCEOGarage4.Style.Set(ImportCEOGarage4.Part.Garage2, ImportCEOGarage4.Style.concrete, false)
        ImportCEOGarage4.Numbering.Set(ImportCEOGarage4.Part.Garage2, ImportCEOGarage4.Numbering.Level1.style1, false)
        ImportCEOGarage4.Lighting.Set(ImportCEOGarage4.Part.Garage2, ImportCEOGarage4.Lighting.style1, true)

        ImportCEOGarage4.Part.Load(ImportCEOGarage4.Part.ModShop)
        ImportCEOGarage4.ModShop.Floor.Set(ImportCEOGarage4.ModShop.Floor.default, true)
    end
}
