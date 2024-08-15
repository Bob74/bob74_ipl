-- The Music Locker: 1550.0, 250.0, -50.0
exports('GetCayoPericoNightclub', function()
    return CayoPericoNightclub
end)

CayoPericoNightclub = {
    interiorId = 281089,

    Security = {
        security = "int01_ba_security_upgrade",

        Enable = function(state, refresh)
            SetIplPropState(CayoPericoNightclub.interiorId, CayoPericoNightclub.Security.security, state, refresh)
        end
    },

    Speakers = {
        basic = "int01_ba_equipment_setup",
        upgrade = {
            "int01_ba_equipment_setup",
            "int01_ba_equipment_upgrade"
        },

        Set = function(speakers, refresh)
            CayoPericoNightclub.Speakers.Clear(false)

            SetIplPropState(CayoPericoNightclub.interiorId, speakers, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(CayoPericoNightclub.interiorId, {
                CayoPericoNightclub.Speakers.basic,
                CayoPericoNightclub.Speakers.upgrade
            }, false, refresh)
        end
    },

    Podium = {
        podium = "int01_ba_style02_podium",

        Enable = function(state, refresh)
            SetIplPropState(CayoPericoNightclub.interiorId, CayoPericoNightclub.Podium.podium, state, refresh)
        end
    },

    Turntables = {
        style01 = "int01_ba_dj01",
        style02 = "int01_ba_dj02",
        style03 = "int01_ba_dj03",
        style04 = "int01_ba_dj04",
        style05 = "int01_ba_dj_palms_trax",
        style06 = "int01_ba_dj_keinemusik",
        style07 = "int01_ba_dj_moodyman",

        Set = function(style, refresh)
            CayoPericoNightclub.Turntables.Clear(false)

            SetIplPropState(CayoPericoNightclub.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            for key, value in pairs(CayoPericoNightclub.Turntables) do
                if type(value) == "string" then
                    SetIplPropState(CayoPericoNightclub.interiorId, value, false, refresh)
                end
            end
        end
    },

    Bar = {
        bar = "int01_ba_bar_content",

        Enable = function(state, refresh)
            SetIplPropState(CayoPericoNightclub.interiorId, CayoPericoNightclub.Bar.bar, state, refresh)
        end
    },

    Screen = {
        front = "int01_ba_lights_screen",
        back = "int01_ba_screen",

        Enable = function(screen, state, refresh)
            SetIplPropState(CayoPericoNightclub.interiorId, screen, state, refresh)
        end
    },

    DryIce = {
        dryIce = "int01_ba_dry_ice",

        Enable = function(state, refresh)
            SetIplPropState(CayoPericoNightclub.interiorId, CayoPericoNightclub.DryIce.dryIce, state, refresh)
        end
    },

    Lights = {
        off = "light_rigs_off",
        droplets01 = "dj_01_lights_01",
        droplets02 = "dj_02_lights_01",
        droplets03 = "dj_03_lights_01",
        droplets04 = "dj_04_lights_01",
        neons01 = "dj_01_lights_02",
        neons02 = "dj_02_lights_02",
        neons03 = "dj_03_lights_02",
        neons04 = "dj_04_lights_02",
        bands01 = "dj_01_lights_03",
        bands02 = "dj_02_lights_03",
        bands03 = "dj_03_lights_03",
        bands04 = "dj_04_lights_03",
        lasers01 = "dj_01_lights_04",
        lasers02 = "dj_02_lights_04",
        lasers03 = "dj_03_lights_04",
        lasers04 = "dj_04_lights_04",

        Set = function(style, refresh)
            CayoPericoNightclub.Lights.Clear(false)

            SetIplPropState(CayoPericoNightclub.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            for key, value in pairs(CayoPericoNightclub.Lights) do
                if type(value) == "string" then
                    SetIplPropState(CayoPericoNightclub.interiorId, value, false, refresh)
                end
            end
        end
    },

    LoadDefault = function()
        CayoPericoNightclub.Security.Enable(true, false)
        CayoPericoNightclub.Speakers.Set(CayoPericoNightclub.Speakers.basic, false)
        CayoPericoNightclub.Podium.Enable(true, false)
        CayoPericoNightclub.Turntables.Set(CayoPericoNightclub.Turntables.style01, false)
        CayoPericoNightclub.Bar.Enable(true, false)
        CayoPericoNightclub.Screen.Enable(CayoPericoNightclub.Screen.front, true, false)
        
        CayoPericoNightclub.Lights.Set(CayoPericoNightclub.Lights.neons01, false)

        RefreshInterior(CayoPericoNightclub.interiorId)
    end
}