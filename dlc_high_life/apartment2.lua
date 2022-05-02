-- Apartment 2: -914.90260000, -374.87310000, 112.6748
exports('GetHLApartment2Object', function()
    return HLApartment2
end)

HLApartment2 = {
    interiorId = 146177,

    Ipl = {
        Interior = {
            ipl = "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__1",

            Load = function()
                EnableIpl(HLApartment2.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(HLApartment2.Ipl.Interior.ipl, false)
            end
        },
    },
    Strip = {
        A = "Apart_Hi_Strip_A",
        B = "Apart_Hi_Strip_B",
        C = "Apart_Hi_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment2.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment2.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A",
        B = "Apart_Hi_Smokes_B",
        C = "Apart_Hi_Smokes_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment2.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        HLApartment2.Ipl.Interior.Load()
        HLApartment2.Strip.Enable({
            HLApartment2.Strip.A,
            HLApartment2.Strip.B,
            HLApartment2.Strip.C
        }, false)
        HLApartment2.Booze.Enable({
            HLApartment2.Booze.A,
            HLApartment2.Booze.B,
            HLApartment2.Booze.C
        }, false)
        HLApartment2.Smoke.Enable({
            HLApartment2.Smoke.A,
            HLApartment2.Smoke.B,
            HLApartment2.Smoke.C
        }, false)

        RefreshInterior(HLApartment2.interiorId)
    end
}
