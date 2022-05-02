-- Apartment 5: -22.61353000, -590.14320000, 78.430910
exports('GetHLApartment5Object', function()
    return HLApartment5
end)

HLApartment5 = {
    interiorId = 147201,

    Ipl = {
        Interior = {
            ipl = "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__4",

            Load = function()
                EnableIpl(HLApartment5.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(HLApartment5.Ipl.Interior.ipl, false)
            end
        },
    },
    Strip = {
        A = "Apart_Hi_Strip_A",
        B = "Apart_Hi_Strip_B",
        C = "Apart_Hi_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment5.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment5.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A",
        B = "Apart_Hi_Smokes_B",
        C = "Apart_Hi_Smokes_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment5.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        HLApartment5.Ipl.Interior.Load()
        HLApartment5.Strip.Enable({
            HLApartment5.Strip.A,
            HLApartment5.Strip.B,
            HLApartment5.Strip.C
        }, false)
        HLApartment5.Booze.Enable({
            HLApartment5.Booze.A,
            HLApartment5.Booze.B,
            HLApartment5.Booze.C
        }, false)
        HLApartment5.Smoke.Enable({
            HLApartment5.Smoke.A,
            HLApartment5.Smoke.B,
            HLApartment5.Smoke.C
        }, false)

        RefreshInterior(HLApartment5.interiorId)
    end
}
