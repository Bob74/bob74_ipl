-- Counterfit Lab: 930.0, -2213.2, -50.0
exports('GetChopShopCounterfit', function()
    return ChopShopCounterfit4
end)

ChopShopCounterfit4 = {
    interiorId = 294401,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit4.interiorId, ChopShopCounterfit4.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfit4.interiorId, ChopShopCounterfit4.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit4.interiorId, ChopShopCounterfit4.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit4.interiorId, ChopShopCounterfit4.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfit4.interiorId, ChopShopCounterfit4.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfit4.interiorId, ChopShopCounterfit4.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfit4.Tint.Set(false)
        ChopShopCounterfit4.RightDoor.Set(false)
        ChopShopCounterfit4.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfit4.interiorId)
    end

}