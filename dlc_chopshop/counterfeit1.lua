-- Counterfit Lab: 930.0, -2270.0, -50.0
exports('GetChopShopCounterfeit1', function()
    return ChopShopCounterfeit1
end)

ChopShopCounterfeit1 = {
    interiorId = 293121,

    Tint = {
        tint = "Set_Tints",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.Tint.tint, true, refresh)
        end,

        Clear = function( refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.Tint.tint, false, refresh)
        end
    },

    RightDoor = {
        door = "Set_Door_Right",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.RightDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.RightDoor.door, false, refresh)
        end
    },

    LeftDoor = {
        door = "Set_Door_Left",

        Set = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.LeftDoor.door, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopCounterfeit1.interiorId, ChopShopCounterfeit1.LeftDoor.door, false, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCounterfeit1.Tint.Set(false)
        ChopShopCounterfeit1.RightDoor.Set(false)
        ChopShopCounterfeit1.LeftDoor.Set(false)
        RefreshInterior(ChopShopCounterfeit1.interiorId)
    end

}