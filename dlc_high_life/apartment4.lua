-- Apartment 4: -778.50610000, 331.31600000, 210.39720
exports('GetHLApartment4Object', function()
    return HLApartment4
end)

HLApartment4 = {
    interiorId = 146945,

    Ipl = {
        Interior = {
            ipl = "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__3",

            Load = function()
                EnableIpl(HLApartment4.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(HLApartment4.Ipl.Interior.ipl, false)
            end
        },
    },
    Strip = {
        A = "Apart_Hi_Strip_A",
        B = "Apart_Hi_Strip_B",
        C = "Apart_Hi_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment4.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment4.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A",
        B = "Apart_Hi_Smokes_B",
        C = "Apart_Hi_Smokes_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment4.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        HLApartment4.Ipl.Interior.Load()
        HLApartment4.Strip.Enable({
            HLApartment4.Strip.A,
            HLApartment4.Strip.B,
            HLApartment4.Strip.C
        }, false)
        HLApartment4.Booze.Enable({
            HLApartment4.Booze.A,
            HLApartment4.Booze.B,
            HLApartment4.Booze.C
        }, false)
        HLApartment4.Smoke.Enable({
            HLApartment4.Smoke.A,
            HLApartment4.Smoke.B,
            HLApartment4.Smoke.C
        }, false)

        RefreshInterior(HLApartment4.interiorId)
    end
}
