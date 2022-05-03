-- Weed farm: 1051.491, -3196.536, -39.14842
exports('GetBikerWeedFarmObject', function()
    return BikerWeedFarm
end)

BikerWeedFarm = {
    interiorId = 247297,

    Ipl = {
        Interior = {
            ipl = "bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo",

            Load = function()
                EnableIpl(BikerWeedFarm.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(BikerWeedFarm.Ipl.Interior.ipl, false)
            end
        },
    },
    Style = {
        basic = "weed_standard_equip",
        upgrade = "weed_upgrade_equip",

        Set = function(style, refresh)
            BikerWeedFarm.Style.Clear(false)

            SetIplPropState(BikerWeedFarm.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerWeedFarm.interiorId, {
                BikerWeedFarm.Style.basic,
                BikerWeedFarm.Style.upgrade
            }, false, refresh)
        end
    },
    Security = {
        basic = "weed_low_security",
        upgrade = "weed_security_upgrade",

        Set = function(security, refresh)
            BikerWeedFarm.Security.Clear(false)

            SetIplPropState(BikerWeedFarm.interiorId, security, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerWeedFarm.interiorId, {
                BikerWeedFarm.Security.basic,
                BikerWeedFarm.Security.upgrade
            }, false, refresh)
        end
    },
    Plant1 = {
        Stage = {
            small = "weed_growtha_stage1",
            medium = "weed_growtha_stage2",
            full = "weed_growtha_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant1.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant1.Stage.small,
                    BikerWeedFarm.Plant1.Stage.medium,
                    BikerWeedFarm.Plant1.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growtha_stage23_standard",
            upgrade = "light_growtha_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant1.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant1.Light.basic,
                    BikerWeedFarm.Plant1.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hosea", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant1.Stage.Set(stage, false)
            BikerWeedFarm.Plant1.Light.Set(upgrade, false)
            BikerWeedFarm.Plant1.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant1.Stage.Clear()
            BikerWeedFarm.Plant1.Light.Clear()
            BikerWeedFarm.Plant1.Hose.Enable(false, true)
        end
    },
    Plant2 = {
        Stage = {
            small = "weed_growthb_stage1",
            medium = "weed_growthb_stage2",
            full = "weed_growthb_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant2.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant2.Stage.small,
                    BikerWeedFarm.Plant2.Stage.medium,
                    BikerWeedFarm.Plant2.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthb_stage23_standard",
            upgrade = "light_growthb_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant2.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant2.Light.basic,
                    BikerWeedFarm.Plant2.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hoseb", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant2.Stage.Set(stage, false)
            BikerWeedFarm.Plant2.Light.Set(upgrade, false)
            BikerWeedFarm.Plant2.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant2.Stage.Clear()
            BikerWeedFarm.Plant2.Light.Clear()
            BikerWeedFarm.Plant2.Hose.Enable(false, true)
        end
    },
    Plant3 = {
        Stage = {
            small = "weed_growthc_stage1",
            medium = "weed_growthc_stage2",
            full = "weed_growthc_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant3.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant3.Stage.small,
                    BikerWeedFarm.Plant3.Stage.medium,
                    BikerWeedFarm.Plant3.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthc_stage23_standard",
            upgrade = "light_growthc_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant3.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant3.Light.basic,
                    BikerWeedFarm.Plant3.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hosec", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant3.Stage.Set(stage, false)
            BikerWeedFarm.Plant3.Light.Set(upgrade, false)
            BikerWeedFarm.Plant3.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant3.Stage.Clear()
            BikerWeedFarm.Plant3.Light.Clear()
            BikerWeedFarm.Plant3.Hose.Enable(false, true)
        end
    },
    Plant4 = {
        Stage = {
            small = "weed_growthd_stage1",
            medium = "weed_growthd_stage2",
            full = "weed_growthd_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant4.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant4.Stage.small,
                    BikerWeedFarm.Plant4.Stage.medium,
                    BikerWeedFarm.Plant4.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthd_stage23_standard",
            upgrade = "light_growthd_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant4.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant4.Light.basic,
                    BikerWeedFarm.Plant4.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hosed", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant4.Stage.Set(stage, false)
            BikerWeedFarm.Plant4.Light.Set(upgrade, false)
            BikerWeedFarm.Plant4.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant4.Stage.Clear()
            BikerWeedFarm.Plant4.Light.Clear()
            BikerWeedFarm.Plant4.Hose.Enable(false, true)
        end
    },
    Plant5 = {
        Stage = {
            small = "weed_growthe_stage1",
            medium = "weed_growthe_stage2",
            full = "weed_growthe_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant5.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant5.Stage.small,
                    BikerWeedFarm.Plant5.Stage.medium,
                    BikerWeedFarm.Plant5.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthe_stage23_standard",
            upgrade = "light_growthe_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant5.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant5.Light.basic,
                    BikerWeedFarm.Plant5.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hosee", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant5.Stage.Set(stage, false)
            BikerWeedFarm.Plant5.Light.Set(upgrade, false)
            BikerWeedFarm.Plant5.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant5.Stage.Clear()
            BikerWeedFarm.Plant5.Light.Clear()
            BikerWeedFarm.Plant5.Hose.Enable(false, true)
        end
    },
    Plant6 = {
        Stage = {
            small = "weed_growthf_stage1",
            medium = "weed_growthf_stage2",
            full = "weed_growthf_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant6.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant6.Stage.small,
                    BikerWeedFarm.Plant6.Stage.medium,
                    BikerWeedFarm.Plant6.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthf_stage23_standard",
            upgrade = "light_growthf_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant6.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant6.Light.basic,
                    BikerWeedFarm.Plant6.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hosef", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant6.Stage.Set(stage, false)
            BikerWeedFarm.Plant6.Light.Set(upgrade, false)
            BikerWeedFarm.Plant6.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant6.Stage.Clear()
            BikerWeedFarm.Plant6.Light.Clear()
            BikerWeedFarm.Plant6.Hose.Enable(false, true)
        end
    },
    Plant7 = {
        Stage = {
            small = "weed_growthg_stage1",
            medium = "weed_growthg_stage2",
            full = "weed_growthg_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant7.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant7.Stage.small,
                    BikerWeedFarm.Plant7.Stage.medium,
                    BikerWeedFarm.Plant7.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthg_stage23_standard",
            upgrade = "light_growthg_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant7.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant7.Light.basic,
                    BikerWeedFarm.Plant7.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hoseg", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant7.Stage.Set(stage, false)
            BikerWeedFarm.Plant7.Light.Set(upgrade, false)
            BikerWeedFarm.Plant7.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant7.Stage.Clear()
            BikerWeedFarm.Plant7.Light.Clear()
            BikerWeedFarm.Plant7.Hose.Enable(false, true)
        end
    },
    Plant8 = {
        Stage = {
            small = "weed_growthh_stage1",
            medium = "weed_growthh_stage2",
            full = "weed_growthh_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant8.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant8.Stage.small,
                    BikerWeedFarm.Plant8.Stage.medium,
                    BikerWeedFarm.Plant8.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthh_stage23_standard",
            upgrade = "light_growthh_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant8.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant8.Light.basic,
                    BikerWeedFarm.Plant8.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hoseh", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant8.Stage.Set(stage, false)
            BikerWeedFarm.Plant8.Light.Set(upgrade, false)
            BikerWeedFarm.Plant8.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant8.Stage.Clear()
            BikerWeedFarm.Plant8.Light.Clear()
            BikerWeedFarm.Plant8.Hose.Enable(false, true)
        end
    },
    Plant9 = {
        Stage = {
            small = "weed_growthi_stage1",
            medium = "weed_growthi_stage2",
            full = "weed_growthi_stage3",

            Set = function(stage, refresh)
                BikerWeedFarm.Plant9.Stage.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, stage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant9.Stage.small,
                    BikerWeedFarm.Plant9.Stage.medium,
                    BikerWeedFarm.Plant9.Stage.full
                }, false, refresh)
            end
        },
        Light = {
            basic = "light_growthi_stage23_standard",
            upgrade = "light_growthi_stage23_upgrade",

            Set = function(light, refresh)
                BikerWeedFarm.Plant9.Light.Clear(false)

                SetIplPropState(BikerWeedFarm.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(BikerWeedFarm.interiorId, {
                    BikerWeedFarm.Plant9.Light.basic,
                    BikerWeedFarm.Plant9.Light.upgrade
                }, false, refresh)
            end
        },
        Hose = {
            Enable = function(state, refresh)
                SetIplPropState(BikerWeedFarm.interiorId, "weed_hosei", state, refresh)
            end
        },
        Set = function(stage, upgrade, refresh)
            BikerWeedFarm.Plant9.Stage.Set(stage, false)
            BikerWeedFarm.Plant9.Light.Set(upgrade, false)
            BikerWeedFarm.Plant9.Hose.Enable(true, true)
        end,
        Clear = function(refresh)
            BikerWeedFarm.Plant9.Stage.Clear()
            BikerWeedFarm.Plant9.Light.Clear()
            BikerWeedFarm.Plant9.Hose.Enable(false, true)
        end
    },
    Details = {
        production = "weed_production", -- Weed on the tables
        fans = "weed_set_up", -- Fans + mold buckets
        drying = "weed_drying", -- Drying weed hooked to the ceiling
        chairs = "weed_chairs", -- Chairs at the tables

        Enable = function(details, state, refresh)
            SetIplPropState(BikerWeedFarm.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        BikerWeedFarm.Ipl.Interior.Load()
        BikerWeedFarm.Style.Set(BikerWeedFarm.Style.upgrade)
        BikerWeedFarm.Security.Set(BikerWeedFarm.Security.basic)
        BikerWeedFarm.Details.Enable(BikerWeedFarm.Details.drying, false)
        BikerWeedFarm.Details.Enable(BikerWeedFarm.Details.chairs, false)
        BikerWeedFarm.Details.Enable(BikerWeedFarm.Details.production, false)

        BikerWeedFarm.Details.Enable({
            BikerWeedFarm.Details.production,
            BikerWeedFarm.Details.chairs,
            BikerWeedFarm.Details.drying
        }, true)

        BikerWeedFarm.Plant1.Set(BikerWeedFarm.Plant1.Stage.medium, BikerWeedFarm.Plant1.Light.basic)
        BikerWeedFarm.Plant2.Set(BikerWeedFarm.Plant2.Stage.full, BikerWeedFarm.Plant2.Light.basic)
        BikerWeedFarm.Plant3.Set(BikerWeedFarm.Plant3.Stage.medium, BikerWeedFarm.Plant3.Light.basic)
        BikerWeedFarm.Plant4.Set(BikerWeedFarm.Plant4.Stage.full, BikerWeedFarm.Plant4.Light.basic)
        BikerWeedFarm.Plant5.Set(BikerWeedFarm.Plant5.Stage.medium, BikerWeedFarm.Plant5.Light.basic)
        BikerWeedFarm.Plant6.Set(BikerWeedFarm.Plant6.Stage.full, BikerWeedFarm.Plant6.Light.basic)
        BikerWeedFarm.Plant7.Set(BikerWeedFarm.Plant7.Stage.medium, BikerWeedFarm.Plant7.Light.basic)
        BikerWeedFarm.Plant8.Set(BikerWeedFarm.Plant8.Stage.full, BikerWeedFarm.Plant8.Light.basic)
        BikerWeedFarm.Plant9.Set(BikerWeedFarm.Plant9.Stage.full, BikerWeedFarm.Plant9.Light.basic)

        RefreshInterior(BikerWeedFarm.interiorId)
    end
}
