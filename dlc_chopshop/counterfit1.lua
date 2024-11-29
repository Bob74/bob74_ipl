-- Counterfit Lab: 930.0, -2270.0, -50.0
exports('GetChopShopCounterfit', function()
    return ChopShopCounterfit1
end)

ChopShopCounterfit1 = {
    interiorId = 293121,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit1.interiorId, ChopShopCounterfit1.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfit1.interiorId, ChopShopCounterfit1.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit1.interiorId, ChopShopCounterfit1.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit1.interiorId, ChopShopCounterfit1.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit1.interiorId, ChopShopCounterfit1.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit1.interiorId, ChopShopCounterfit1.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfit1.Tint.Set(false)
        ChopShopCounterfit1.RightDoor.Set(false)
        ChopShopCounterfit1.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfit1.interiorId)
    end

}