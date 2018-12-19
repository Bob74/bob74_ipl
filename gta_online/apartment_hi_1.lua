
-- 4 Integrity Way, Apt 30
-- High end apartment 1: -35.31277 -580.4199 88.71221

exports('GetGTAOApartmentHi1Object', function()
    return GTAOApartmentHi1
end)

GTAOApartmentHi1 = {
    interiorId = 141313,
    Strip = {
        A = "Apart_Hi_Strip_A", B = "Apart_Hi_Strip_B", C = "Apart_Hi_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOApartmentHi1.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A", B = "Apart_Hi_Booze_B", C = "Apart_Hi_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOApartmentHi1.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A", B = "Apart_Hi_Smokes_B", C = "Apart_Hi_Smokes_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOApartmentHi1.interiorId, details, state, refresh)
        end
    },
    LoadDefault = function()
        GTAOApartmentHi1.Strip.Enable({GTAOApartmentHi1.Strip.A, GTAOApartmentHi1.Strip.B, GTAOApartmentHi1.Strip.C}, false)
        GTAOApartmentHi1.Booze.Enable({GTAOApartmentHi1.Booze.A, GTAOApartmentHi1.Booze.B, GTAOApartmentHi1.Booze.C}, false)
        GTAOApartmentHi1.Smoke.Enable({GTAOApartmentHi1.Smoke.A, GTAOApartmentHi1.Smoke.B, GTAOApartmentHi1.Smoke.C}, false)
        RefreshInterior(GTAOApartmentHi1.interiorId)
    end
}
