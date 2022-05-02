-- Middle end house 1: 347.2686 -999.2955 -99.19622
exports('GetGTAOHouseMid1Object', function()
    return GTAOHouseMid1
end)

GTAOHouseMid1 = {
    interiorId = 148225,

    Strip = {
        A = "Apart_Mid_Strip_A",
        B = "Apart_Mid_Strip_B",
        C = "Apart_Mid_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseMid1.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Mid_Booze_A",
        B = "Apart_Mid_Booze_B",
        C = "Apart_Mid_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseMid1.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        none = "",
        stage1 = "Apart_Mid_Smoke_A",
        stage2 = "Apart_Mid_Smoke_B",
        stage3 = "Apart_Mid_Smoke_C",

        Set = function(smoke, refresh)
            GTAOHouseMid1.Smoke.Clear(false)

            if smoke ~= nil then
                SetIplPropState(GTAOHouseMid1.interiorId, smoke, true, refresh)
            else
                if refresh then
                    RefreshInterior(GTAOHouseMid1.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(GTAOHouseMid1.interiorId, {
                GTAOHouseMid1.Smoke.stage1,
                GTAOHouseMid1.Smoke.stage2,
                GTAOHouseMid1.Smoke.stage3
            }, false, refresh)
        end
    },

    LoadDefault = function()
        GTAOHouseMid1.Strip.Enable({
            GTAOHouseMid1.Strip.A,
            GTAOHouseMid1.Strip.B,
            GTAOHouseMid1.Strip.C
        }, false)
        GTAOHouseMid1.Booze.Enable({
            GTAOHouseMid1.Booze.A,
            GTAOHouseMid1.Booze.B,
            GTAOHouseMid1.Booze.C
        }, false)
        GTAOHouseMid1.Smoke.Set(GTAOHouseMid1.Smoke.none)

        RefreshInterior(GTAOHouseMid1.interiorId)
    end
}
