-- After Hours Terbyte Interior: -1421.015, -3012.587, -80.000
exports('GetAfterHoursTerbyteObject', function()
    return AfterHoursTerbyte
end)

AfterHoursTerbyte = {
    interiorId = 272129,
    Base = {
        base = "int_03_ba_tint",

        Enable = function(state, refresh)
            SetIplPropState(AfterHoursTerbyte.interiorId, AfterHoursTerbyte.Base.base, state, refresh)
        end,

        Tint = {
            multiColor = 0,
            black = 1,
            pink = 2,
            green = 3,
            pinkblueyellow = 4,
            orangeblackwhite = 5,
            greenpurpleorange = 6,
            blackwhite = 7,
            whitetan = 8,
            blacktan = 9,
            superpink = 10,
            SetColor = function(color)
                SetInteriorEntitySetColor(AfterHoursTerbyte.interiorId, "int_03_ba_tint", color)
            end
        }
    },
    Style = {
        none = "",
        style1 = "int_03_ba_design_01",
        style2 = "int_03_ba_design_02",
        style3 = "int_03_ba_design_03",
        style4 = "int_03_ba_design_04",
        style5 = "int_03_ba_design_05",
        style6 = "int_03_ba_design_06",
        style7 = "int_03_ba_design_07",
        style8 = "int_03_ba_design_08",
        style9 = "int_03_ba_design_09",
        style10 = "int_03_ba_design_10",
        style11 = "int_03_ba_design_11",
        style12 = "int_03_ba_design_12",
        style13 = "int_03_ba_design_13",
        style14 = "int_03_ba_design_14",
        style15 = "int_03_ba_design_15",
        style16 = "int_03_ba_design_16",
        style17 = "int_03_ba_design_17",
        style18 = "int_03_ba_design_18",
        style19 = "int_03_ba_design_19",
        style20 = "int_03_ba_design_20",
        style21 = "int_03_ba_design_21",
        style22 = "int_03_ba_design_22",
        style23 = "int_03_ba_design_23",
        style24 = "int_03_ba_design_24",

        Set = function(style, refresh)
            AfterHoursTerbyte.Style.Clear(false)
            SetIplPropState(AfterHoursTerbyte.interiorId, style, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(AfterHoursTerbyte.interiorId, {
                "int_03_ba_design_01",
                "int_03_ba_design_02",
                "int_03_ba_design_03",
                "int_03_ba_design_04",
                "int_03_ba_design_05",
                "int_03_ba_design_06",
                "int_03_ba_design_07",
                "int_03_ba_design_08",
                "int_03_ba_design_09",
                "int_03_ba_design_10",
                "int_03_ba_design_11",
                "int_03_ba_design_12",
                "int_03_ba_design_13",
                "int_03_ba_design_14",
                "int_03_ba_design_15",
                "int_03_ba_design_16",
                "int_03_ba_design_17",
                "int_03_ba_design_18",
                "int_03_ba_design_19",
                "int_03_ba_design_20",
                "int_03_ba_design_21",
                "int_03_ba_design_22",
                "int_03_ba_design_23",
                "int_03_ba_design_24"
            }, false, refresh)
        end
    },
    Mods = {
        drone = "int_03_ba_drone",
        weapon = "int_03_ba_weapons_mod",
        bike = "int_03_ba_bikemod",

        Set = function(mod, state, refresh)
            SetIplPropState(AfterHoursTerbyte.interiorId, mod, state, refresh)
        end
    },
    Lighting = {
        light1 = "int_03_ba_light_rig1",
        light2 = "int_03_ba_light_rig2",
        light3 = "int_03_ba_light_rig3",
        light4 = "int_03_ba_light_rig4",
        light5 = "int_03_ba_light_rig5",
        light6 = "int_03_ba_light_rig6",
        light7 = "int_03_ba_light_rig7",
        light8 = "int_03_ba_light_rig8",
        light9 = "int_03_ba_light_rig9",

        Set = function(light, refresh)
            SetIplPropState(AfterHoursTerbyte.interiorId, light, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(AfterHoursTerbyte.interiorId, {
                "int_03_ba_light_rig1",
                "int_03_ba_light_rig2",
                "int_03_ba_light_rig3",
                "int_03_ba_light_rig4",
                "int_03_ba_light_rig5",
                "int_03_ba_light_rig6",
                "int_03_ba_light_rig7",
                "int_03_ba_light_rig8",
                "int_03_ba_light_rig9"
            }, false, refresh)
        end
    },
    LoadDefault = function()
        AfterHoursTerbyte.Base.Enable(true, false)
        AfterHoursTerbyte.Base.Tint.SetColor(AfterHoursTerbyte.Base.Tint.orangeblackwhite)
        AfterHoursTerbyte.Style.Set(AfterHoursTerbyte.Style.style5, false)
        AfterHoursTerbyte.Mods.Set(AfterHoursTerbyte.Mods.drone, true, false)
        AfterHoursTerbyte.Mods.Set(AfterHoursTerbyte.Mods.weapon, true, false)
        AfterHoursTerbyte.Mods.Set(AfterHoursTerbyte.Mods.bike, true, false)
        AfterHoursTerbyte.Lighting.Set(AfterHoursTerbyte.Lighting.light5, false)
        RefreshInterior(AfterHoursTerbyte.interiorId)
    end
}