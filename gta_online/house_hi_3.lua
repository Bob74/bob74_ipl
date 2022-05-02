-- 2045 North Conker Avenue
-- High end house 3: 373.023 416.105 145.7006
exports('GetGTAOHouseHi3Object', function()
    return GTAOHouseHi3
end)

GTAOHouseHi3 = {
    interiorId = 206337,

    Strip = {
        A = "Apart_Hi_Strip_A",
        B = "Apart_Hi_Strip_B",
        C = "Apart_Hi_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseHi3.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseHi3.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A",
        B = "Apart_Hi_Smokes_B",
        C = "Apart_Hi_Smokes_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseHi3.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        GTAOHouseHi3.Strip.Enable({
            GTAOHouseHi3.Strip.A,
            GTAOHouseHi3.Strip.B,
            GTAOHouseHi3.Strip.C
        }, false)
        GTAOHouseHi3.Booze.Enable({
            GTAOHouseHi3.Booze.A,
            GTAOHouseHi3.Booze.B,
            GTAOHouseHi3.Booze.C
        }, false)
        GTAOHouseHi3.Smoke.Enable({
            GTAOHouseHi3.Smoke.A,
            GTAOHouseHi3.Smoke.B,
            GTAOHouseHi3.Smoke.C
        }, false)

        RefreshInterior(GTAOHouseHi3.interiorId)
    end
}
