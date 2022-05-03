-- Counterfeit cash factory: 1121.897, -3195.338, -40.4025
exports('GetBikerCounterfeitObject', function()
    return BikerCounterfeit
end)

BikerCounterfeit = {
    interiorId = 247809,

    Ipl = {
        Interior = {
            ipl = "bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo",

            Load = function()
                EnableIpl(BikerCounterfeit.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(BikerCounterfeit.Ipl.Interior.ipl, false)
            end
        }
    },
    Printer = {
        none = "",
        basic = "counterfeit_standard_equip_no_prod",
        basicProd = "counterfeit_standard_equip",
        upgrade = "counterfeit_upgrade_equip_no_prod",
        upgradeProd = "counterfeit_upgrade_equip",

        Set = function(printer, refresh)
            BikerCounterfeit.Printer.Clear(false)

            if printer ~= "" then
                SetIplPropState(BikerCounterfeit.interiorId, printer, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerCounterfeit.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCounterfeit.interiorId, {
                BikerCounterfeit.Printer.basic,
                BikerCounterfeit.Printer.basicProd,
                BikerCounterfeit.Printer.upgrade,
                BikerCounterfeit.Printer.upgradeProd
            }, false, refresh)
        end
    },
    Security = {
        basic = "counterfeit_low_security",
        upgrade = "counterfeit_security",

        Set = function(security, refresh)
            BikerCounterfeit.Security.Clear(false)

            SetIplPropState(BikerCounterfeit.interiorId, security, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCounterfeit.interiorId, {
                BikerCounterfeit.Security.basic,
                BikerCounterfeit.Security.upgrade
            }, false, refresh)
        end
    },
    Dryer1 = {
        none = "",
        on = "dryera_on",
        off = "dryera_off",
        open = "dryera_open",

        Set = function(dryer, refresh)
            BikerCounterfeit.Dryer1.Clear(false)

            if dryer ~= "" then
                SetIplPropState(BikerCounterfeit.interiorId, dryer, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerCounterfeit.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCounterfeit.interiorId, {
                BikerCounterfeit.Dryer1.on,
                BikerCounterfeit.Dryer1.off,
                BikerCounterfeit.Dryer1.open
            }, false, refresh)
        end
    },
    Dryer2 = {
        none = "",
        on = "dryerb_on",
        off = "dryerb_off",
        open = "dryerb_open",

        Set = function(dryer, refresh)
            BikerCounterfeit.Dryer2.Clear(false)

            if dryer ~= "" then
                SetIplPropState(BikerCounterfeit.interiorId, dryer, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerCounterfeit.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCounterfeit.interiorId, {
                BikerCounterfeit.Dryer2.on,
                BikerCounterfeit.Dryer2.off,
                BikerCounterfeit.Dryer2.open
            }, false, refresh)
        end
    },
    Dryer3 = {
        none = "",
        on = "dryerc_on",
        off = "dryerc_off",
        open = "dryerc_open",

        Set = function(dryer, refresh)
            BikerCounterfeit.Dryer3.Clear(false)

            if dryer ~= "" then
                SetIplPropState(BikerCounterfeit.interiorId, dryer, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerCounterfeit.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCounterfeit.interiorId, {
                BikerCounterfeit.Dryer3.on,
                BikerCounterfeit.Dryer3.off,
                BikerCounterfeit.Dryer3.open
            }, false, refresh)
        end
    },
    Dryer4 = {
        none = "",
        on = "dryerd_on",
        off = "dryerd_off",
        open = "dryerd_open",

        Set = function(dryer, refresh)
            BikerCounterfeit.Dryer4.Clear(false)

            if dryer ~= "" then
                SetIplPropState(BikerCounterfeit.interiorId, dryer, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerCounterfeit.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCounterfeit.interiorId, {
                BikerCounterfeit.Dryer4.on,
                BikerCounterfeit.Dryer4.off,
                BikerCounterfeit.Dryer4.open
            }, false, refresh)
        end
    },
    Details = {
        Cash10 = {
            A = "counterfeit_cashpile10a",
            B = "counterfeit_cashpile10b",
            C = "counterfeit_cashpile10c",
            D = "counterfeit_cashpile10d",
        },
        Cash20 = {
            A = "counterfeit_cashpile20a",
            B = "counterfeit_cashpile20b",
            C = "counterfeit_cashpile20c",
            D = "counterfeit_cashpile20d",
        },
        Cash100 = {
            A = "counterfeit_cashpile100a",
            B = "counterfeit_cashpile100b",
            C = "counterfeit_cashpile100c",
            D = "counterfeit_cashpile100d",
        },
        chairs = "special_chairs", -- Brown chairs at the end of the room
        cutter = "money_cutter", -- Money cutting machine
        furnitures = "counterfeit_setup", -- Paper, counting machines, cups

        Enable = function(details, state, refresh)
            SetIplPropState(BikerCounterfeit.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        BikerCounterfeit.Ipl.Interior.Load()
        BikerCounterfeit.Printer.Set(BikerCounterfeit.Printer.basicProd)
        BikerCounterfeit.Security.Set(BikerCounterfeit.Security.upgrade)
        BikerCounterfeit.Dryer1.Set(BikerCounterfeit.Dryer1.open)
        BikerCounterfeit.Dryer2.Set(BikerCounterfeit.Dryer2.on)
        BikerCounterfeit.Dryer3.Set(BikerCounterfeit.Dryer3.on)
        BikerCounterfeit.Dryer4.Set(BikerCounterfeit.Dryer4.on)
        BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.cutter, true)
        BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.furnitures, true)
        BikerCounterfeit.Details.Enable(BikerCounterfeit.Details.Cash100, true)

        RefreshInterior(BikerCounterfeit.interiorId)
    end
}
