
-- 2044 North Conker Avenue
-- High end house 2: 340.9412 437.1798 149.3925

exports('GetGTAOHouseHi2Object', function()
    return GTAOHouseHi2
end)

GTAOHouseHi2 = {
    interiorId = 206081,
    Strip = {
        A = "Apart_Hi_Strip_A", B = "Apart_Hi_Strip_B", C = "Apart_Hi_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi2.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A", B = "Apart_Hi_Booze_B", C = "Apart_Hi_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi2.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A", B = "Apart_Hi_Smokes_B", C = "Apart_Hi_Smokes_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseHi2.interiorId, details, state, refresh)
        end
    },
    LoadDefault = function()
        GTAOHouseHi2.Strip.Enable({GTAOHouseHi2.Strip.A, GTAOHouseHi2.Strip.B, GTAOHouseHi2.Strip.C}, false)
        GTAOHouseHi2.Booze.Enable({GTAOHouseHi2.Booze.A, GTAOHouseHi2.Booze.B, GTAOHouseHi2.Booze.C}, false)
        GTAOHouseHi2.Smoke.Enable({GTAOHouseHi2.Smoke.A, GTAOHouseHi2.Smoke.B, GTAOHouseHi2.Smoke.C}, false)
        RefreshInterior(GTAOHouseHi2.interiorId)
    end
}
