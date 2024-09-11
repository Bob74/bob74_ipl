-- Counterfit Lab: 930.0, -2240.1, -50.0
exports('GetChopShopCounterfit', function()
    return ChopShopCounterfit2
end)

ChopShopCounterfit2 = {
    interiorId = 293889,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit2.interiorId, ChopShopCounterfit2.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfit2.interiorId, ChopShopCounterfit2.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit2.interiorId, ChopShopCounterfit2.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit2.interiorId, ChopShopCounterfit2.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit2.interiorId, ChopShopCounterfit2.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit2.interiorId, ChopShopCounterfit2.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfit2.Tint.Set(false)
        ChopShopCounterfit2.RightDoor.Set(false)
        ChopShopCounterfit2.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfit2.interiorId)
    end

}