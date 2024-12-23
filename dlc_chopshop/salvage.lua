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

    Trophy = {
        anchor = "set_trophy_anchor",
        policeBadge = "set_trophy_badge",
        casinoChips = "set_trophy_chips",
        jersey = "set_trophy_jersey",
        submarine = "set_trophy_sub",

        Set = function(trophy, refresh)
            SetIplPropState(ChopShopSalvage.interiorId, trophy, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopSalvage.interiorId, {
                ChopShopSalvage.Trophy.anchor,
                ChopShopSalvage.Trophy.policeBadge,
                ChopShopSalvage.Trophy.casinoChips,
                ChopShopSalvage.Trophy.jersey,
                ChopShopSalvage.Trophy.submarine
            }, false, refresh)
        end
    },

    Extras = {
        blowtorch = "set_blowtorch",
        boltCutter = "set_bolt_cutter",
        flares = "set_box_flares",
        armorCrate = "set_armor_crate",
        maskCrate = "set_crate_mask",
        boxSanitation = "set_box_sanitation",
        tearGasCase = "set_case_teargas",
        gunCase = "set_guncase",
        hddCase = "set_case_hdd",
        --mazeCard = "set_card_maze",
        --casinoCard = "set_card_casino",
        sonar = "set_sonar",
        uv = "set_uv_plan_rt",
        
        -- bags
        bagPanic = "set_bag_panic",
        bagCoastGuard = "set_bag_coastguard",
        bagRappel = "set_bag_rappel",
        bagScuba = "set_bag_scuba",

        Set = function(extra, refresh)
            ChopShopSalvage.Extras.Clear(false)
            SetIplPropState(ChopShopSalvage.interiorId, extra, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ChopShopSalvage.interiorId, {
                ChopShopSalvage.Extras.blowtorch,
                ChopShopSalvage.Extras.boltCutter,
                ChopShopSalvage.Extras.flares,
                ChopShopSalvage.Extras.armorCrate,
                ChopShopSalvage.Extras.maskCrate,
                ChopShopSalvage.Extras.boxSanitation,
                ChopShopSalvage.Extras.tearGasCase,
                ChopShopSalvage.Extras.gunCase,
                ChopShopSalvage.Extras.hddCase,
                --ChopShopSalvage.Extras.mazeCard,
                --ChopShopSalvage.Extras.casinoCard,
                ChopShopSalvage.Extras.sonar,
                ChopShopSalvage.Extras.bagPanic,
                ChopShopSalvage.Extras.bagCoastGuard,
                ChopShopSalvage.Extras.bagRappel,
                ChopShopSalvage.Extras.bagScuba,
                ChopShopSalvage.Extras.uv
            }, false, refresh)
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
        ChopShopSalvage.Trophy.Set(ChopShopSalvage.Trophy.anchor, false)
        ChopShopSalvage.Trophy.Set(ChopShopSalvage.Trophy.policeBadge, false)
        ChopShopSalvage.Trophy.Set(ChopShopSalvage.Trophy.casinoChips, false)
        ChopShopSalvage.Trophy.Set(ChopShopSalvage.Trophy.jersey, false)
        ChopShopSalvage.Trophy.Set(ChopShopSalvage.Trophy.submarine, false)

        ChopShopSalvage.Extras.Set(ChopShopSalvage.Extras.bagScuba, false)

        RefreshInterior(ChopShopSalvage.interiorId)
    end
}