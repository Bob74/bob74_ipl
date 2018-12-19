
-- 2133 Mad Wayne Thunder 
-- High end house 8: -1288 440.748 97.69459

exports('GetGTAOHouseHi8Object', function()
    return GTAOHouseHi8
end)

GTAOHouseHi8 = {
    interiorId = 208385,
    Strip = {
        A = "Apart_Hi_Strip_A", B = "Apart_Hi_Strip_B", C = "Apart_Hi_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi8.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A", B = "Apart_Hi_Booze_B", C = "Apart_Hi_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi8.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A", B = "Apart_Hi_Smokes_B", C = "Apart_Hi_Smokes_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi8.interiorId, details, state, refresh)
        end
    },
    LoadDefault = function()
        GTAOHouseHi8.Strip.Enable({GTAOHouseHi8.Strip.A, GTAOHouseHi8.Strip.B, GTAOHouseHi8.Strip.C}, false)
        GTAOHouseHi8.Booze.Enable({GTAOHouseHi8.Booze.A, GTAOHouseHi8.Booze.B, GTAOHouseHi8.Booze.C}, false)
        GTAOHouseHi8.Smoke.Enable({GTAOHouseHi8.Smoke.A, GTAOHouseHi8.Smoke.B, GTAOHouseHi8.Smoke.C}, false)
        RefreshInterior(GTAOHouseHi8.interiorId)
    end
}
