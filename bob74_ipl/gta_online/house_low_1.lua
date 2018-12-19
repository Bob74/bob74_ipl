
-- Low end house 1: 261.4586 -998.8196 -99.00863

exports('GetGTAOHouseLow1Object', function()
    return GTAOHouseLow1
end)

GTAOHouseLow1 = {
    interiorId = 149761,
    Strip = {
        A = "Studio_Lo_Strip_A", B = "Studio_Lo_Strip_B", C = "Studio_Lo_Strip_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseLow1.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Studio_Lo_Booze_A", B = "Studio_Lo_Booze_B", C = "Studio_Lo_Booze_C",
        Enable = function (details, state, refresh)
            SetIplPropState(GTAOHouseLow1.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        none = "", stage1 = "Studio_Lo_Smoke_A", stage2 = "Studio_Lo_Smoke_B", stage3 = "Studio_Lo_Smoke_C",
        Set = function(smoke, refresh)
            GTAOHouseLow1.Smoke.Clear(false)
            if (smoke ~= nil) then
                SetIplPropState(GTAOHouseLow1.interiorId, smoke, true, refresh)
            else
                if (refresh) then RefreshInterior(GTAOHouseLow1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(GTAOHouseLow1.interiorId, {GTAOHouseLow1.Smoke.stage1, GTAOHouseLow1.Smoke.stage2, GTAOHouseLow1.Smoke.stage3}, false, refresh)
        end
    },
    LoadDefault = function()
        GTAOHouseLow1.Strip.Enable({GTAOHouseLow1.Strip.A, GTAOHouseLow1.Strip.B, GTAOHouseLow1.Strip.C}, false)
        GTAOHouseLow1.Booze.Enable({GTAOHouseLow1.Booze.A, GTAOHouseLow1.Booze.B, GTAOHouseLow1.Booze.C}, false)
        GTAOHouseLow1.Smoke.Set(GTAOHouseLow1.Smoke.none)
        RefreshInterior(GTAOHouseLow1.interiorId)
    end
}
