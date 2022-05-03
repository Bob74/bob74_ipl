-- Apartment 3: -787.78050000 334.92320000 186.11340000
exports('GetExecApartment3Object', function()
    return ExecApartment3
end)

ExecApartment3 = {
    currentInteriorId = -1,

    Style = {
        Theme = {
            modern = {
                interiorId = 227841,
                ipl = "apa_v_mp_h_01_c"
            },
            moody = {
                interiorId = 228609,
                ipl = "apa_v_mp_h_02_c"
            },
            vibrant = {
                interiorId = 229377,
                ipl = "apa_v_mp_h_03_c"
            },
            sharp = {
                interiorId = 230145,
                ipl = "apa_v_mp_h_04_c"
            },
            monochrome = {
                interiorId = 230913,
                ipl = "apa_v_mp_h_05_c"
            },
            seductive = {
                interiorId = 231681,
                ipl = "apa_v_mp_h_06_c"
            },
            regal = {
                interiorId = 232449,
                ipl = "apa_v_mp_h_07_c"
            },
            aqua = {
                interiorId = 233217,
                ipl = "apa_v_mp_h_08_c"
            }
        },

        Set = function(style, refresh)
            if type(style) == "table" then
                ExecApartment3.Style.Clear()
                ExecApartment3.currentInteriorId = style.interiorId

                EnableIpl(style.ipl, true)

                if refresh then
                    RefreshInterior(style.interiorId)
                end
            end
        end,
        Clear = function()
            for key, value in pairs(ExecApartment3.Style.Theme) do
                SetIplPropState(value.interiorId, {
                    "Apart_Hi_Strip_A",
                    "Apart_Hi_Strip_B",
                    "Apart_Hi_Strip_C"
                }, false)
                SetIplPropState(value.interiorId, {
                    "Apart_Hi_Booze_A",
                    "Apart_Hi_Booze_B",
                    "Apart_Hi_Booze_C"
                }, false)
                SetIplPropState(value.interiorId, {
                    "Apart_Hi_Smokes_A",
                    "Apart_Hi_Smokes_B",
                    "Apart_Hi_Smokes_C"
                }, false, true)
                EnableIpl(value.ipl, false)
            end
        end
    },
    Strip = {
        A = "Apart_Hi_Strip_A",
        B = "Apart_Hi_Strip_B",
        C = "Apart_Hi_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(ExecApartment3.currentInteriorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(ExecApartment3.currentInteriorId, details, state, refresh)
        end
    },
    Smoke = {
        none = "",
        stage1 = "Apart_Hi_Smokes_A",
        stage2 = "Apart_Hi_Smokes_B",
        stage3 = "Apart_Hi_Smokes_C",

        Set = function(smoke, refresh)
            ExecApartment3.Smoke.Clear(false)

            if smoke ~= nil then
                SetIplPropState(ExecApartment3.currentInteriorId, smoke, true, refresh)
            else
                if refresh then
                    RefreshInterior(ExecApartment3.currentInteriorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(ExecApartment3.currentInteriorId, {
                ExecApartment3.Smoke.stage1,
                ExecApartment3.Smoke.stage2,
                ExecApartment3.Smoke.stage3
            }, false, refresh)
        end
    },

    LoadDefault = function()
        ExecApartment3.Style.Set(ExecApartment3.Style.Theme.sharp, true)
        ExecApartment3.Strip.Enable({
            ExecApartment3.Strip.A,
            ExecApartment3.Strip.B,
            ExecApartment3.Strip.C
        }, false)
        ExecApartment3.Booze.Enable({
            ExecApartment3.Booze.A,
            ExecApartment3.Booze.B,
            ExecApartment3.Booze.C
        }, false)
        ExecApartment3.Smoke.Set(ExecApartment3.Smoke.none)
    end
}
