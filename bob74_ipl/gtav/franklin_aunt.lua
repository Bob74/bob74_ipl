
exports('GetFranklinAuntObject', function()
    return FranklinAunt
end)

FranklinAunt = {
    interiorId = 197889,
    Style = {
        empty = "", franklinStuff = "V_57_FranklinStuff", franklinLeft = "V_57_Franklin_LEFT",
        Set = function(style, refresh)
            FranklinAunt.Style.Clear(false)
            if style ~= "" then
                SetIplPropState(FranklinAunt.interiorId, style, true, refresh)
            else
                if (refresh) then RefreshInterior(FranklinAunt.interiorId) end
            end
        end,
        Clear = function(refresh) SetIplPropState(FranklinAunt.interiorId, {FranklinAunt.Style.franklinStuff, FranklinAunt.Style.franklinLeft}, false, refresh) end
    },
    Details = {
        bandana = "V_57_GangBandana",				-- Bandana on the bed
        bag = "V_57_Safari",						-- Bag in the closet
        Enable = function (details, state, refresh) SetIplPropState(FranklinAunt.interiorId, details, state, refresh) end
    },

    LoadDefault = function()
        FranklinAunt.Style.Set(FranklinAunt.Style.empty)
        FranklinAunt.Details.Enable(FranklinAunt.Details.bandana, false)
        FranklinAunt.Details.Enable(FranklinAunt.Details.bag, false)
        RefreshInterior(FranklinAunt.interiorId)
    end
}
