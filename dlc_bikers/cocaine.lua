-- Cocaine lockup: 1093.6, -3196.6, -38.99841
exports('GetBikerCocaineObject', function()
    return BikerCocaine
end)

BikerCocaine = {
    interiorId = 247553,

    Ipl = {
        Interior = {
            ipl = "bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo",

            Load = function()
                EnableIpl(BikerCocaine.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(BikerCocaine.Ipl.Interior.ipl, false)
            end
        }
    },
    Style = {
        none = "",
        basic = {
            "set_up",
            "equipment_basic",
            "coke_press_basic",
            "production_basic",
            "table_equipment"
        },
        upgrade = {
            "set_up",
            "equipment_upgrade",
            "coke_press_upgrade",
            "production_upgrade",
            "table_equipment_upgrade"
        },

        Set = function(style, refresh)
            BikerCocaine.Style.Clear(false)

            if style ~= "" then
                SetIplPropState(BikerCocaine.interiorId, style, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerCocaine.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCocaine.interiorId, {
                BikerCocaine.Style.basic,
                BikerCocaine.Style.upgrade
            }, false, refresh)
        end
    },
    Security = {
        none = "",
        basic = "security_low",
        upgrade = "security_high",

        Set = function(security, refresh)
            BikerCocaine.Security.Clear(false)

            if security ~= "" then
                SetIplPropState(BikerCocaine.interiorId, security, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerCocaine.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerCocaine.interiorId, {
                BikerCocaine.Security.basic,
                BikerCocaine.Security.upgrade
            }, false, refresh)
        end
    },
    Details = {
        cokeBasic1 = "coke_cut_01", -- On the basic tables
        cokeBasic2 = "coke_cut_02", -- On the basic tables
        cokeBasic3 = "coke_cut_03", -- On the basic tables
        cokeUpgrade1 = "coke_cut_04", -- On the upgraded tables
        cokeUpgrade2 = "coke_cut_05", -- On the upgraded tables

        Enable = function(details, state, refresh)
            SetIplPropState(BikerCocaine.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        BikerCocaine.Ipl.Interior.Load()
        BikerCocaine.Style.Set(BikerCocaine.Style.basic)
        BikerCocaine.Security.Set(BikerCocaine.Security.none)

        RefreshInterior(BikerCocaine.interiorId)
    end
}
