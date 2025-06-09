-- After Hours Nightclub Basement: -1505.783, -3012.587, -80.000
exports('GetAfterHoursNightclubBasementObject', function()
    return AfterHoursNightclubBasement
end)

AfterHoursNightclubBasement = {
    interiorId = 271873,

    Floor = {
        floor1 = "int02_ba_floor01",
        floor2 = "int02_ba_floor02",
        floor3 = "int02_ba_floor03",
        floor4 = "int02_ba_floor04",
        floor5 = "int02_ba_floor05",

        Set = function(floor, refresh)
            AfterHoursNightclubBasement.Floor.Clear(false)
            SetIplPropState(AfterHoursNightclubBasement.interiorId, floor, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(AfterHoursNightclubBasement.interiorId, {
                AfterHoursNightclubBasement.Floor.floor1,
                AfterHoursNightclubBasement.Floor.floor2,
                AfterHoursNightclubBasement.Floor.floor3,
                AfterHoursNightclubBasement.Floor.floor4,
                AfterHoursNightclubBasement.Floor.floor5
            }, false, refresh)
        end
    },

    Drugs = {
        Coke = {
            coke1 = "int02_ba_coke01",
            coke2 = "int02_ba_coke02",
            cokeequiptment = "int02_ba_coke_eqp",

            Enable = function(item, state, refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, item, state, refresh)
            end
        },

        Meth = {
            meth1 = "int02_ba_meth01",
            meth2 = "int02_ba_meth02",
            meth3 = "int02_ba_meth03",
            meth4 = "int02_ba_meth04",
            methequiptment = "int02_ba_meth_eqp",

            Enable = function(item, state, refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, item, state, refresh)
            end
        },

        Weed = {
            weed1 = "int02_ba_weed01",
            weed2 = "int02_ba_weed02",
            weed3 = "int02_ba_weed03",
            weed4 = "int02_ba_weed04",
            weed5 = "int02_ba_weed05",
            weed6 = "int02_ba_weed06",
            weed7 = "int02_ba_weed07",
            weed8 = "int02_ba_weed08",
            weed9 = "int02_ba_weed09",
            weed10 = "int02_ba_weed10",
            weed11 = "int02_ba_weed11",
            weed12 = "int02_ba_weed12",
            weed13 = "int02_ba_weed13",
            weed14 = "int02_ba_weed14",
            weed15 = "int02_ba_weed15",
            weed16 = "int02_ba_weed16",
            weedequiptment = "int02_ba_weed_eqp",

            Enable = function(item, state, refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, item, state, refresh)
            end
        },

        Forged = {
            forged1 = "int02_ba_forged01",
            forged2 = "int02_ba_forged02",
            forged3 = "int02_ba_forged03",
            forged4 = "int02_ba_forged04",
            forged5 = "int02_ba_forged05",
            forged6 = "int02_ba_forged06",
            forged7 = "int02_ba_forged07",
            forged8 = "int02_ba_forged08",
            forged9 = "int02_ba_forged09",
            forged10 = "int02_ba_forged10",
            forged11 = "int02_ba_forged11",
            forged12 = "int02_ba_forged12",
            forgedequiptment = "int02_ba_forged_eqp",

            Enable = function(item, state, refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, item, state, refresh)
            end
        },

        Cash = {
            cash1 = "int02_ba_cash01",
            cash2 = "int02_ba_cash02",
            cash3 = "int02_ba_cash03",
            cash4 = "int02_ba_cash04",
            cash5 = "int02_ba_cash05",
            cash6 = "int02_ba_cash06",
            cash7 = "int02_ba_cash07",
            cash8 = "int02_ba_cash08",
            cashequiptment = "int02_ba_cash_eqp",

            Enable = function(item, state, refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, item, state, refresh)
            end
        }
    },

    AccessBlockers = {
        fan = "int02_ba_fanblocker01",
        storage = "int02_ba_storage_blocker",
        garage = "int02_ba_garage_blocker",

        Enable = function(blocker, state, refresh)
            SetIplPropState(AfterHoursNightclubBasement.interiorId, blocker, state, refresh)
        end
    },

    Upgrades = {
        security = "int02_ba_sec_upgrade_grg",
        equipment = "int02_ba_equipment_upgrade",
        storage = "int02_ba_sec_upgrade_strg",
        truck = "int02_ba_truckmod",

        Enable = function(upgrade, state, refresh)
            SetIplPropState(AfterHoursNightclubBasement.interiorId, upgrade, state, refresh)
        end
    },

    Desk = {
        basic = {
            front = "int02_ba_deskpc",
            back = "int02_ba_sec_desks_l1",

            Set = function(desk, state, refresh)
                --AfterHoursNightclubBasement.Desk.upgrade.Clear(false)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, desk, state, refresh)
            end,

            Clear = function(refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, {
                    AfterHoursNightclubBasement.Desk.basic.front,
                    AfterHoursNightclubBasement.Desk.basic.back
                }, false, refresh)
            end
        },

        upgrade = {
            front = "int02_ba_deskpc",
            frontupgrade = "int02_ba_sec_upgrade_desk",
            back = "int02_ba_sec_desks_l2345",
            backupgrade = "int02_ba_sec_upgrade_desk02",

            Set = function(desk, state, refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, desk, state, refresh)
            end,

            Clear = function(refresh)
                SetIplPropState(AfterHoursNightclubBasement.interiorId, {
                    AfterHoursNightclubBasement.Desk.upgrade.front,
                    AfterHoursNightclubBasement.Desk.upgrade.frontupgrade,
                    AfterHoursNightclubBasement.Desk.upgrade.back,
                    AfterHoursNightclubBasement.Desk.upgrade.backupgrade
                }, false, refresh)
            end
        },
    },

    Clutter = {
        clutter = "int02_ba_clutterstuff",

        Enable = function(clutter, state, refresh)
            AfterHoursNightclubBasement.Desk.basic.Clear(false)
            AfterHoursNightclubBasement.Desk.upgrade.Clear(false)
            SetIplPropState(AfterHoursNightclubBasement.interiorId, clutter, state, refresh)
        end
    },

    LoadDefault = function()
        AfterHoursNightclubBasement.Floor.Set(AfterHoursNightclubBasement.Floor.floor1, false)
        -- Drugs
        -- Coke
        AfterHoursNightclubBasement.Drugs.Coke.Enable(AfterHoursNightclubBasement.Drugs.Coke.coke1, true, false)
        AfterHoursNightclubBasement.Drugs.Coke.Enable(AfterHoursNightclubBasement.Drugs.Coke.coke2, true, false)
        AfterHoursNightclubBasement.Drugs.Coke.Enable(AfterHoursNightclubBasement.Drugs.Coke.cokeequiptment, true, false)
        -- Meth
        AfterHoursNightclubBasement.Drugs.Meth.Enable(AfterHoursNightclubBasement.Drugs.Meth.meth1, true, false)
        AfterHoursNightclubBasement.Drugs.Meth.Enable(AfterHoursNightclubBasement.Drugs.Meth.meth2, true, false)
        AfterHoursNightclubBasement.Drugs.Meth.Enable(AfterHoursNightclubBasement.Drugs.Meth.meth3, true, false)
        AfterHoursNightclubBasement.Drugs.Meth.Enable(AfterHoursNightclubBasement.Drugs.Meth.meth4, true, false)
        AfterHoursNightclubBasement.Drugs.Meth.Enable(AfterHoursNightclubBasement.Drugs.Meth.methequiptment, true, false)
        -- Weed
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed1, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed2, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed3, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed4, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed5, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed6, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed7, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed8, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed9, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed10, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed11, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed12, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed13, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed14, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed15, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weed16, true, false)
        AfterHoursNightclubBasement.Drugs.Weed.Enable(AfterHoursNightclubBasement.Drugs.Weed.weedequiptment, true, false)
        -- Forged
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged1, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged2, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged3, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged4, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged5, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged6, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged7, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged8, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged9, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged10, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged11, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forged12, true, false)
        AfterHoursNightclubBasement.Drugs.Forged.Enable(AfterHoursNightclubBasement.Drugs.Forged.forgedequiptment, false, false)
        -- Cash
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash1, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash2, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash3, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash4, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash5, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash6, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash7, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cash8, true, false)
        AfterHoursNightclubBasement.Drugs.Cash.Enable(AfterHoursNightclubBasement.Drugs.Cash.cashequiptment, true, false)
        -- Access Blockers [ONLY FAN IS BLOCKED BY DEFAULT]
        AfterHoursNightclubBasement.AccessBlockers.Enable(AfterHoursNightclubBasement.AccessBlockers.fan, true, false)
        AfterHoursNightclubBasement.AccessBlockers.Enable(AfterHoursNightclubBasement.AccessBlockers.storage, false, false)
        AfterHoursNightclubBasement.AccessBlockers.Enable(AfterHoursNightclubBasement.AccessBlockers.garage, false, false)
        -- Upgrades
        AfterHoursNightclubBasement.Upgrades.Enable(AfterHoursNightclubBasement.Upgrades.security, true, false)
        AfterHoursNightclubBasement.Upgrades.Enable(AfterHoursNightclubBasement.Upgrades.equipment, true, false)
        AfterHoursNightclubBasement.Upgrades.Enable(AfterHoursNightclubBasement.Upgrades.storage, true, false)
        AfterHoursNightclubBasement.Upgrades.Enable(AfterHoursNightclubBasement.Upgrades.truck, true, false)
        -- Desk [CONFIGURED TO SHOW UPGRADE, CAN SHOW BASIC WITH CHANGE BELOW]
        --AfterHoursNightclubBasement.Desk.basic.Set(AfterHoursNightclubBasement.Desk.basic.front, true, false)
        --AfterHoursNightclubBasement.Desk.basic.Set(AfterHoursNightclubBasement.Desk.basic.back, true, false)
        
        AfterHoursNightclubBasement.Desk.upgrade.Set(AfterHoursNightclubBasement.Desk.upgrade.front, true, false)
        AfterHoursNightclubBasement.Desk.upgrade.Set(AfterHoursNightclubBasement.Desk.upgrade.frontupgrade, true, false)
        AfterHoursNightclubBasement.Desk.upgrade.Set(AfterHoursNightclubBasement.Desk.upgrade.back, true, false)
        AfterHoursNightclubBasement.Desk.upgrade.Set(AfterHoursNightclubBasement.Desk.upgrade.backupgrade, true, false)
        -- Clutter [HAVE TO HAVE BOTH DESKS DISABLED TO SHOW CLUTTER]
        --AfterHoursNightclubBasement.Clutter.Enable(AfterHoursNightclubBasement.Clutter.clutter, false, false)

        
        RefreshInterior(AfterHoursNightclubBasement.interiorId)
    end,
}