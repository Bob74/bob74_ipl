-- Arena War Warkshop: 170.000, 5190.000, 10.000
exports('GetArenaWarWorkshopObject', function()
    return ArenaWarWorkshop
end)

ArenaWarWorkshop = {
    interiorId = 272897,
    Ipl = {
        ipl = "xs_arena_interior_mod_2",

        Load = function()
            EnableIpl(ArenaWarWorkshop.Ipl.ipl, true)
        end,

        Remove = function()
            EnableIpl(ArenaWarWorkshop.Ipl.ipl, false)
        end
    },
    Base = {
        base = "set_int_mod2_b_tint",

        Enable = function(state, refresh)
            SetIplPropState(ArenaWarWorkshop.interiorId, ArenaWarWorkshop.Base.base, state, refresh)
        end,

        Tint = {
            gray = 1,
            pink = 2,
            black = 3,
            white = 4,
            green = 5,
            purple = 6,
            cream = 7,
            darkblue = 8,
            lightblue = 9,

    
            SetColor = function(color, refresh)
                SetInteriorEntitySetColor(ArenaWarWorkshop.interiorId, "set_int_mod2_b_tint", color)
            end
        },
    },
    Level = {
        level1 = "set_int_mod2_b1",
        level2 = "set_int_mod2_b2",

        Set = function(level, refresh)
            ArenaWarWorkshop.Level.Clear(false)
            SetIplPropState(ArenaWarWorkshop.interiorId, level, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ArenaWarWorkshop.interiorId, {
                ArenaWarWorkshop.Level.level1,
                ArenaWarWorkshop.Level.level2
            }, false, refresh)
        end
    },
    Style = {
        style1 = "set_mod2_style_01",
        style2 = "set_mod2_style_02",
        style3 = "set_mod2_style_03",
        style4 = "set_mod2_style_04",
        style5 = "set_mod2_style_05",
        style6 = "set_mod2_style_06",
        style7 = "set_mod2_style_07",
        style8 = "set_mod2_style_08",
        style9 = "set_mod2_style_09",

        Set = function(style, refresh)
            ArenaWarWorkshop.Style.Clear(false)
            SetIplPropState(ArenaWarWorkshop.interiorId, style, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ArenaWarWorkshop.interiorId, {
                ArenaWarWorkshop.Style.style1,
                ArenaWarWorkshop.Style.style2,
                ArenaWarWorkshop.Style.style3,
                ArenaWarWorkshop.Style.style4,
                ArenaWarWorkshop.Style.style5,
                ArenaWarWorkshop.Style.style6,
                ArenaWarWorkshop.Style.style7,
                ArenaWarWorkshop.Style.style8,
                ArenaWarWorkshop.Style.style9
            }, false, refresh)
        end
    },
    LoadDefault = function()
        ArenaWarWorkshop.Ipl.Load()
        ArenaWarWorkshop.Base.Enable(true, false)
        ArenaWarWorkshop.Level.Set(ArenaWarWorkshop.Level.level1, false)
        ArenaWarWorkshop.Style.Set(ArenaWarWorkshop.Style.style2, false)
        ArenaWarWorkshop.Base.Tint.SetColor(ArenaWarWorkshop.Base.Tint.lightblue, false)

        RefreshInterior(ArenaWarWorkshop.interiorId)
    end
}