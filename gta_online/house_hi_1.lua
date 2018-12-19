
-- 3655 Wild Oats Drive 
-- High end house 1: -169.286 486.4938 137.4436

exports('GetGTAOHouseHi1Object', function()
    return GTAOHouseHi1
end)

GTAOHouseHi1 = {
    interiorId = 207105,
    Strip = {
        A = "Apart_Hi_Strip_A", B = "Apart_Hi_Strip_B", C = "Apart_Hi_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi1.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A", B = "Apart_Hi_Booze_B", C = "Apart_Hi_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi1.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A", B = "Apart_Hi_Smokes_B", C = "Apart_Hi_Smokes_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi1.interiorId, details, state, refresh)
        end
    },
    LoadDefault = function()
        GTAOHouseHi1.Strip.Enable({GTAOHouseHi1.Strip.A, GTAOHouseHi1.Strip.B, GTAOHouseHi1.Strip.C}, false)
        GTAOHouseHi1.Booze.Enable({GTAOHouseHi1.Booze.A, GTAOHouseHi1.Booze.B, GTAOHouseHi1.Booze.C}, false)
        GTAOHouseHi1.Smoke.Enable({GTAOHouseHi1.Smoke.A, GTAOHouseHi1.Smoke.B, GTAOHouseHi1.Smoke.C}, false)
        RefreshInterior(GTAOHouseHi1.interiorId)
    end
}
