-- The Music Locker: 1550.0, 250.0, -50.0
exports('GetCayoPericoNightclub', function()
    return CayoPericoNightclub
end)

CayoPericoNightclub = {
    interiorId = 281089,

    Ipl = {
        Posters = {
            palmstraxx = "h4_clubposter_palmstraxx",
            moodymann = "h4_clubposter_moodymann",
            keinemusik = "h4_clubposter_keinemusik",

            Enable = function(poster, state)
                EnableIpl(poster, state)
            end
        }
    },

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

    Lights = {
        Droplets = {
            style01 = "dj_01_lights_01",
            style02 = "dj_02_lights_01",
            style03 = "dj_03_lights_01",
            style04 = "dj_04_lights_01",

            Set = function(lights, refresh)
                CayoPericoNightclub.Lights.Droplets.Clear(false)

                SetIplPropState(CayoPericoNightclub.interiorId, lights, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(CayoPericoNightclub.interiorId, {
                    CayoPericoNightclub.Lights.Droplets.style01,
                    CayoPericoNightclub.Lights.Droplets.style02,
                    CayoPericoNightclub.Lights.Droplets.style03,
                    CayoPericoNightclub.Lights.Droplets.style04
                }, false, refresh)
            end
        },

        Neons = {
            style01 = "dj_01_lights_02",
            style02 = "dj_02_lights_02",
            style03 = "dj_03_lights_02",
            style04 = "dj_04_lights_02",

            Set = function(lights, refresh)
                CayoPericoNightclub.Lights.Neons.Clear(false)

                SetIplPropState(CayoPericoNightclub.interiorId, lights, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(CayoPericoNightclub.interiorId, {
                    CayoPericoNightclub.Lights.Neons.style01,
                    CayoPericoNightclub.Lights.Neons.style02,
                    CayoPericoNightclub.Lights.Neons.style03,
                    CayoPericoNightclub.Lights.Neons.style04
                }, false, refresh)
            end
        },

        Bands = {
            style01 = "dj_01_lights_03",
            style02 = "dj_02_lights_03",
            style03 = "dj_03_lights_03",
            style04 = "dj_04_lights_03",

            Set = function(lights, refresh)
                CayoPericoNightclub.Lights.Bands.Clear(false)

                SetIplPropState(CayoPericoNightclub.interiorId, lights, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(CayoPericoNightclub.interiorId, {
                    CayoPericoNightclub.Lights.Bands.style01,
                    CayoPericoNightclub.Lights.Bands.style02,
                    CayoPericoNightclub.Lights.Bands.style03,
                    CayoPericoNightclub.Lights.Bands.style04
                }, false, refresh)
            end
        },

        Lasers = {
            style01 = "dj_01_lights_04",
            style02 = "dj_02_lights_04",
            style03 = "dj_03_lights_04",
            style04 = "dj_04_lights_04",

            Set = function(lights, refresh)
                CayoPericoNightclub.Lights.Lasers.Clear(false)

                SetIplPropState(CayoPericoNightclub.interiorId, lights, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(CayoPericoNightclub.interiorId, {
                    CayoPericoNightclub.Lights.Lasers.style01,
                    CayoPericoNightclub.Lights.Lasers.style02,
                    CayoPericoNightclub.Lights.Lasers.style03,
                    CayoPericoNightclub.Lights.Lasers.style04
                }, false, refresh)
            end
        },

        Clear = function(refresh)
            CayoPericoNightclub.Lights.Droplets.Clear(refresh)
            CayoPericoNightclub.Lights.Neons.Clear(refresh)
            CayoPericoNightclub.Lights.Bands.Clear(refresh)
            CayoPericoNightclub.Lights.Lasers.Clear(refresh)
        end
    },

    LoadDefault = function()
        -- Interior
        CayoPericoNightclub.Security.Enable(true, false)
        CayoPericoNightclub.Speakers.Set(CayoPericoNightclub.Speakers.basic, false)
        CayoPericoNightclub.Podium.Enable(true, false)
        CayoPericoNightclub.Turntables.Set(CayoPericoNightclub.Turntables.style01, false)
        CayoPericoNightclub.Bar.Enable(true, false)
        CayoPericoNightclub.Screen.Enable(CayoPericoNightclub.Screen.front, true, false)
        CayoPericoNightclub.Lights.Lasers.Set(CayoPericoNightclub.Lights.Lasers.style04, false)

        -- Exterior
        CayoPericoNightclub.Ipl.Posters.Enable(CayoPericoNightclub.Ipl.Posters.palmstraxx, true)
        CayoPericoNightclub.Ipl.Posters.Enable(CayoPericoNightclub.Ipl.Posters.moodymann, true)
        CayoPericoNightclub.Ipl.Posters.Enable(CayoPericoNightclub.Ipl.Posters.keinemusik, true)

        RefreshInterior(CayoPericoNightclub.interiorId)
    end
}