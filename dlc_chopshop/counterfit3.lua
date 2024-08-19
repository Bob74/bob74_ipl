-- Counterfit Lab: 930.0, -2183.3, -50.0
exports('GetChopShopCounterfit', function()
    return ChopShopCounterfit3
end)

ChopShopCounterfit3 = {
    interiorId = 294145,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit3.interiorId, ChopShopCounterfit3.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfit3.interiorId, ChopShopCounterfit3.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit3.interiorId, ChopShopCounterfit3.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit3.interiorId, ChopShopCounterfit3.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit3.interiorId, ChopShopCounterfit3.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit3.interiorId, ChopShopCounterfit3.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfit3.Tint.Set(false)
        ChopShopCounterfit3.RightDoor.Set(false)
        ChopShopCounterfit3.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfit3.interiorId)
    end

}