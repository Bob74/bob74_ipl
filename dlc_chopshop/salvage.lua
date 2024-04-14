-- Salvage Yard: 1077.276, -2274.876, -50.000
exports('GetChopShopSalvageObject', function()
    return ChopShopSalvage
end)

ChopShopSalvage = {
    interiorId = 293377,

    Ipl = {
        Exterior = {
            ipl = {
                "m23_2_sp1_03_reds",
                "m23_2_sc1_03_reds",
                "m23_2_id2_04_reds",
                "m23_2_cs1_05_reds",
                "m23_2_cs4_11_reds",
            },

            Load = function()
                EnableIpl(ChopShopSalvage.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(ChopShopSalvage.Ipl.Exterior.ipl, false)
            end
        }
    },

    Style = {
        basic = {
            "set_mechanic_basic",
            "set_safe_basic"
        },
        upgrade = {
            "set_mechanic_upgrade",
            "set_safe_upgrade"
        },

        Set = function(style, refresh)
            ChopShopSalvage.Style.Clear(false)

            SetIplPropState(ChopShopSalvage.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(ChopShopSalvage.interiorId, {
                ChopShopSalvage.Style.basic,
                ChopShopSalvage.Style.upgrade
            }, false, refresh)
        end
    },

    Lift1 = {
        down = "set_car_lift_01_down",
        up = "set_car_lift_01_up",

        Set = function(lift, refresh)
            ChopShopSalvage.Lift1.Clear(false)

            SetIplPropState(ChopShopSalvage.interiorId, lift, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(ChopShopSalvage.interiorId, {
                ChopShopSalvage.Lift1.down,
                ChopShopSalvage.Lift1.up
            }, false, refresh)
        end
    },

    Lift2 = {
        down = "set_car_lift_02_down",
        up = "set_car_lift_02_up",

        Set = function(lift, refresh)
            ChopShopSalvage.Lift2.Clear(false)

            SetIplPropState(ChopShopSalvage.interiorId, lift, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(ChopShopSalvage.interiorId, {
                ChopShopSalvage.Lift2.down,
                ChopShopSalvage.Lift2.up
            }, false, refresh)
        end
    },

    Tint = {
        gray = 1,
        red = 2,
        blue = 3,
        orange = 4,
        yellow = 5,
        green = 6,
        pink = 7,
        teal = 8,
        darkGray = 9,

        SetColor = function(color, refresh)
            SetIplPropState(ChopShopSalvage.interiorId, "set_tint_b", true, refresh)
            SetInteriorEntitySetColor(ChopShopSalvage.interiorId, "set_tint_b", color)
        end
    },

    LoadDefault = function()
        -- Exterior
        ChopShopSalvage.Ipl.Exterior.Load()

        -- Interior
        ChopShopSalvage.Tint.SetColor(ChopShopSalvage.Tint.gray, false)
        ChopShopSalvage.Style.Set(ChopShopSalvage.Style.upgrade, false)

        ChopShopSalvage.Lift1.Set(ChopShopSalvage.Lift1.up, false)
        ChopShopSalvage.Lift2.Set(ChopShopSalvage.Lift2.up, false)

        RefreshInterior(ChopShopSalvage.interiorId)
    end
}