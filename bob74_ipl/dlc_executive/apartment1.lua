
-- Apartment 1: -787.78050000 334.92320000 215.83840000

exports('GetExecApartment1Object', function()
	return ExecApartment1
end)

ExecApartment1 = {
    currentInteriorId = -1,

    Style = {
        Theme = {
            modern = {interiorId = 227329, ipl = "apa_v_mp_h_01_a"},
            moody = {interiorId = 228097, ipl = "apa_v_mp_h_02_a"},
            vibrant = {interiorId = 228865, ipl = "apa_v_mp_h_03_a"},
            sharp = {interiorId = 229633, ipl = "apa_v_mp_h_04_a"},
            monochrome = {interiorId = 230401, ipl = "apa_v_mp_h_05_a"},
            seductive = {interiorId = 231169, ipl = "apa_v_mp_h_06_a"},
            regal = {interiorId = 231937, ipl = "apa_v_mp_h_07_a"},
            aqua = {interiorId = 232705, ipl = "apa_v_mp_h_08_a"}
        },

        Set = function(style, refresh)
            if (IsTable(style)) then
                ExecApartment1.Style.Clear()
                ExecApartment1.currentInteriorId = style.interiorId
                EnableIpl(style.ipl, true)
                if (refresh) then RefreshInterior(style.interiorId) end
            end
        end,
        Clear = function()
            for key, value in pairs(ExecApartment1.Style.Theme) do
                SetIplPropState(value.interiorId, {"Apart_Hi_Strip_A", "Apart_Hi_Strip_B", "Apart_Hi_Strip_C"}, false)
                SetIplPropState(value.interiorId, {"Apart_Hi_Booze_A", "Apart_Hi_Booze_B", "Apart_Hi_Booze_C"}, false)
                SetIplPropState(value.interiorId, {"Apart_Hi_Smokes_A", "Apart_Hi_Smokes_B", "Apart_Hi_Smokes_C"}, false, true)
                EnableIpl(value.ipl, false)
            end
        end
    },
    Strip = {
        A = "Apart_Hi_Strip_A", B = "Apart_Hi_Strip_B", C = "Apart_Hi_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(ExecApartment1.currentInteriorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A", B = "Apart_Hi_Booze_B", C = "Apart_Hi_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(ExecApartment1.currentInteriorId, details, state, refresh)
        end
    },
    Smoke = {
        none = "", stage1 = "Apart_Hi_Smokes_A", stage2 = "Apart_Hi_Smokes_B", stage3 = "Apart_Hi_Smokes_C",
        Set = function(smoke, refresh)
            ExecApartment1.Smoke.Clear(false)
            if (smoke ~= nil) then
                SetIplPropState(ExecApartment1.currentInteriorId, smoke, true, refresh)
            else
                if (refresh) then RefreshInterior(ExecApartment1.currentInteriorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(ExecApartment1.currentInteriorId, {ExecApartment1.Smoke.stage1, ExecApartment1.Smoke.stage2, ExecApartment1.Smoke.stage3}, false, refresh)
        end
    }, 
    LoadDefault = function()
        ExecApartment1.Style.Set(ExecApartment1.Style.Theme.modern, true)
        ExecApartment1.Strip.Enable({ExecApartment1.Strip.A, ExecApartment1.Strip.B, ExecApartment1.Strip.C}, false)
        ExecApartment1.Booze.Enable({ExecApartment1.Booze.A, ExecApartment1.Booze.B, ExecApartment1.Booze.C}, false)
        ExecApartment1.Smoke.Set(ExecApartment1.Smoke.none)
    end
}
