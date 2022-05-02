-- Apartment 6: -609.56690000, 51.28212000, -183.98080
exports('GetHLApartment6Object', function()
    return HLApartment6
end)

HLApartment6 = {
    interiorId = 147457,

    Ipl = {
        Interior = {
            ipl = "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__5",

            Load = function()
                EnableIpl(HLApartment6.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(HLApartment6.Ipl.Interior.ipl, false)
            end
        }
    },
    Strip = {
        A = "Apart_Hi_Strip_A",
        B = "Apart_Hi_Strip_B",
        C = "Apart_Hi_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment6.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment6.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A",
        B = "Apart_Hi_Smokes_B",
        C = "Apart_Hi_Smokes_C",

        Enable = function(details, state, refresh)
            SetIplPropState(HLApartment6.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        HLApartment6.Ipl.Interior.Load()
        HLApartment6.Strip.Enable({
            HLApartment6.Strip.A,
            HLApartment6.Strip.B,
            HLApartment6.Strip.C
        }, false)
        HLApartment6.Booze.Enable({
            HLApartment6.Booze.A,
            HLApartment6.Booze.B,
            HLApartment6.Booze.C
        }, false)
        HLApartment6.Smoke.Enable({
            HLApartment6.Smoke.A,
            HLApartment6.Smoke.B,
            HLApartment6.Smoke.C
        }, false)

        RefreshInterior(HLApartment6.interiorId)
    end
}
