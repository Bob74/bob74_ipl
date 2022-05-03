-- Apartment 2: -773.22580000 322.82520000 194.88620000
exports('GetExecApartment2Object', function()
    return ExecApartment2
end)

ExecApartment2 = {
    currentInteriorId = -1,

    Style = {
        Theme = {
            modern = {
                interiorId = 227585,
                ipl = "apa_v_mp_h_01_b"
            },
            moody = {
                interiorId = 228353,
                ipl = "apa_v_mp_h_02_b"
            },
            vibrant = {
                interiorId = 229121,
                ipl = "apa_v_mp_h_03_b"
            },
            sharp = {
                interiorId = 229889,
                ipl = "apa_v_mp_h_04_b"
            },
            monochrome = {
                interiorId = 230657,
                ipl = "apa_v_mp_h_05_b"
            },
            seductive = {
                interiorId = 231425,
                ipl = "apa_v_mp_h_06_b"
            },
            regal = {
                interiorId = 232193,
                ipl = "apa_v_mp_h_07_b"
            },
            aqua = {
                interiorId = 232961,
                ipl = "apa_v_mp_h_08_b"
            }
        },

        Set = function(style, refresh)
            if type(style) == "table" then
                ExecApartment2.Style.Clear()
                ExecApartment2.currentInteriorId = style.interiorId

                EnableIpl(style.ipl, true)

                if refresh then
                    RefreshInterior(style.interiorId)
                end
            end
        end,
        Clear = function()
            for key, value in pairs(ExecApartment2.Style.Theme) do
                SetIplPropState(value.interiorId, {
                    "Apart_Hi_Strip_A",
                    "Apart_Hi_Strip_B",
                    "Apart_Hi_Strip_C"}, false)
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
            SetIplPropState(ExecApartment2.currentInteriorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(ExecApartment2.currentInteriorId, details, state, refresh)
        end
    },
    Smoke = {
        none = "",
        stage1 = "Apart_Hi_Smokes_A",
        stage2 = "Apart_Hi_Smokes_B",
        stage3 = "Apart_Hi_Smokes_C",

        Set = function(smoke, refresh)
            ExecApartment2.Smoke.Clear(false)

            if smoke ~= nil then
                SetIplPropState(ExecApartment2.currentInteriorId, smoke, true, refresh)
            else
                if refresh then
                    RefreshInterior(ExecApartment2.currentInteriorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(ExecApartment2.currentInteriorId, {
                ExecApartment2.Smoke.stage1,
                ExecApartment2.Smoke.stage2,
                ExecApartment2.Smoke.stage3
            }, false, refresh)
        end
    },

    LoadDefault = function()
        ExecApartment2.Style.Set(ExecApartment2.Style.Theme.seductive, true)
        ExecApartment2.Strip.Enable({
            ExecApartment2.Strip.A,
            ExecApartment2.Strip.B,
            ExecApartment2.Strip.C
        }, false)
        ExecApartment2.Booze.Enable({
            ExecApartment2.Booze.A,
            ExecApartment2.Booze.B,
            ExecApartment2.Booze.C
        }, false)
        ExecApartment2.Smoke.Set(ExecApartment2.Smoke.none)
    end
}
