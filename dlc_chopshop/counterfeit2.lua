-- Counterfit Lab: 930.0, -2240.1, -50.0
exports('GetChopShopCounterfeit2', function()
    return ChopShopCounterfeit2
end)

ChopShopCounterfeit2 = {
    interiorId = 293889,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit2.interiorId, ChopShopCounterfeit2.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit2.Tint.Set(false)
        ChopShopCounterfeit2.RightDoor.Set(false)
        ChopShopCounterfeit2.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfeit2.interiorId)
    end

}