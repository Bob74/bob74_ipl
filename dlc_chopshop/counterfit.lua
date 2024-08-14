-- Counterfit Lab : 930.0, -2270.0, -50.0
exports('GetChopShopCounterfit', function()
    return ChopShopCounterfit
end)

ChopShopCounterfit = {
    interiorId1 = 293121,
    interiorId2 = 293889,
    interiorId3 = 294145,
    interiorId4 = 294401,

    Tint = {
        tint = "Set_Tints",

        Set = function(interiorId, refresh)
            SetIplPropState(interiorId, ChopShopCounterfit.Tint.tint, true, refresh)
        end,

        Clear = function(interiorId, refresh)
            SetIplPropState(interiorId, ChopShopCounterfit.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(interiorId, refresh)
            SetIplPropState(interiorId, ChopShopCounterfit.RightDoor.door, true, refresh)
        end,

        Clear = function(interiorId, refresh)
            SetIplPropState(interiorId, ChopShopCounterfit.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(interiorId, refresh)
            SetIplPropState(interiorId, ChopShopCounterfit.LeftDoor.door, true, refresh)
        end,

        Clear = function(interiorId, refresh)
            SetIplPropState(interiorId, ChopShopCounterfit.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        -- Location 1 -- 930.0, -2270.0, -50.0
        ChopShopCounterfit.Tint.Set(ChopShopCounterfit.interiorId1, false)
        ChopShopCounterfit.RightDoor.Set(ChopShopCounterfit.interiorId1, false)
        ChopShopCounterfit.LeftDoor.Set(ChopShopCounterfit.interiorId1, false)
        RefreshInterior(ChopShopCounterfit.interiorId1)

        -- Location 2 -- 930.0, -2240.1, -50.0
        ChopShopCounterfit.Tint.Set(ChopShopCounterfit.interiorId2, false)
        ChopShopCounterfit.RightDoor.Set(ChopShopCounterfit.interiorId2, false)
        ChopShopCounterfit.LeftDoor.Set(ChopShopCounterfit.interiorId2, false)
        RefreshInterior(ChopShopCounterfit.interiorId2)

        -- Location 3 -- 930.0, -2183.3, -50.0
        ChopShopCounterfit.Tint.Set(ChopShopCounterfit.interiorId3, false)
        ChopShopCounterfit.RightDoor.Set(ChopShopCounterfit.interiorId3, false)
        ChopShopCounterfit.LeftDoor.Set(ChopShopCounterfit.interiorId3, false)
        RefreshInterior(ChopShopCounterfit.interiorId3)

        -- Location 4 -- 930.0, -2213.2, -50.0
        ChopShopCounterfit.Tint.Set(ChopShopCounterfit.interiorId4, false)
        ChopShopCounterfit.RightDoor.Set(ChopShopCounterfit.interiorId4, false)
        ChopShopCounterfit.LeftDoor.Set(ChopShopCounterfit.interiorId4, false)
        RefreshInterior(ChopShopCounterfit.interiorId4)
    end

}