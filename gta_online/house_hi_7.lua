
-- 2677 Whispymound Drive
-- High end house 7: 120.5 549.952 184.097

exports('GetGTAOHouseHi7Object', function()
    return GTAOHouseHi7
end)

GTAOHouseHi7 = {
    interiorId = 206593,
    Strip = {
        A = "Apart_Hi_Strip_A", B = "Apart_Hi_Strip_B", C = "Apart_Hi_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi7.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A", B = "Apart_Hi_Booze_B", C = "Apart_Hi_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi7.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A", B = "Apart_Hi_Smokes_B", C = "Apart_Hi_Smokes_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi7.interiorId, details, state, refresh)
        end
    },
    LoadDefault = function()
        GTAOHouseHi7.Strip.Enable({GTAOHouseHi7.Strip.A, GTAOHouseHi7.Strip.B, GTAOHouseHi7.Strip.C}, false)
        GTAOHouseHi7.Booze.Enable({GTAOHouseHi7.Booze.A, GTAOHouseHi7.Booze.B, GTAOHouseHi7.Booze.C}, false)
        GTAOHouseHi7.Smoke.Enable({GTAOHouseHi7.Smoke.A, GTAOHouseHi7.Smoke.B, GTAOHouseHi7.Smoke.C}, false)
        RefreshInterior(GTAOHouseHi7.interiorId)
    end
}
