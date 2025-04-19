-- Counterfit Lab: 930.0, -2183.3, -50.0
exports('GetChopShopCounterfeit3', function()
    return ChopShopCounterfeit3
end)

ChopShopCounterfeit3 = {
    interiorId = 294145,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit3.interiorId, ChopShopCounterfeit3.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit3.Tint.Set(false)
        ChopShopCounterfeit3.RightDoor.Set(false)
        ChopShopCounterfeit3.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfeit3.interiorId)
    end

}