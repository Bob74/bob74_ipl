
-- Apartment 3: -609.56690000, 51.28212000, 96.60023000

exports('GetHLApartment3Object', function()
	return HLApartment3
end)

HLApartment3 = {
    interiorId = 146689,
    Ipl = {
        Interior = {
            ipl = "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__2",
            Load = function() EnableIpl(HLApartment3.Ipl.Interior.ipl, true) end,
            Remove = function() EnableIpl(HLApartment3.Ipl.Interior.ipl, false) end
        },
    },
    Strip = {
        A = "Apart_Hi_Strip_A", B = "Apart_Hi_Strip_B", C = "Apart_Hi_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(HLApartment3.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A", B = "Apart_Hi_Booze_B", C = "Apart_Hi_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(HLApartment3.interiorId, details, state, refresh)
        end
    },  
    Smoke = {
        A = "Apart_Hi_Smokes_A", B = "Apart_Hi_Smokes_B", C = "Apart_Hi_Smokes_C",
        Enable = function (details, state, refresh)
            SetIplPropState(HLApartment3.interiorId, details, state, refresh)
        end
    }, 
    LoadDefault = function()
        HLApartment3.Ipl.Interior.Load()
        HLApartment3.Strip.Enable({HLApartment3.Strip.A, HLApartment3.Strip.B, HLApartment3.Strip.C}, false)
        HLApartment3.Booze.Enable({HLApartment3.Booze.A, HLApartment3.Booze.B, HLApartment3.Booze.C}, false)
        HLApartment3.Smoke.Enable({HLApartment3.Smoke.A, HLApartment3.Smoke.B, HLApartment3.Smoke.C}, false)
        RefreshInterior(HLApartment3.interiorId)
    end
}
