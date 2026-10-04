-- Counterfit Lab: 930.0, -2213.2, -50.0
exports('GetChopShopCounterfeit4', function()
    return ChopShopCounterfeit4
end)

ChopShopCounterfeit4 = {
    interiorId = 294401,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit4.interiorId, ChopShopCounterfeit4.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit4.Tint.Set(false)
        ChopShopCounterfeit4.RightDoor.Set(false)
        ChopShopCounterfeit4.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfeit4.interiorId)
    end

}