exports('GetLesterFactoryObject', function()
    return LesterFactory
end)

LesterFactory = {
    interiorId = 92674,

    Details = {
        bluePrint = "V_53_Agency_Blueprint", -- Blueprint on the office desk
        bag = "V_35_KitBag", -- Bag under the office desk
        fireMan = "V_35_Fireman", -- Firemans helmets in the office
        armour = "V_35_Body_Armour", -- Body armor in storage
        gasMask = "Jewel_Gasmasks", -- Gas mask and suit in storage
        janitorStuff = "v_53_agency_overalls", -- Janitor stuff in the storage (yes, there is a whitespace)

        Enable = function(details, state, refresh)
            SetIplPropState(LesterFactory.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        LesterFactory.Details.Enable(LesterFactory.Details.bluePrint, true, false)
        LesterFactory.Details.Enable(LesterFactory.Details.bag, true, false)
        LesterFactory.Details.Enable(LesterFactory.Details.fireMan, true, false)
        LesterFactory.Details.Enable(LesterFactory.Details.armour, true, false)
        LesterFactory.Details.Enable(LesterFactory.Details.gasMask, true, false)
        LesterFactory.Details.Enable(LesterFactory.Details.janitorStuff, true, false)

        RefreshInterior(LesterFactory.interiorId)
    end
}
