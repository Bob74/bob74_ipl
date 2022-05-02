-- Meth lab: 1009.5, -3196.6, -38.99682
exports('GetBikerMethLabObject', function()
    return BikerMethLab
end)

BikerMethLab = {
    interiorId = 247041,

    Ipl = {
        Interior = {
            ipl = "bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo",

            Load = function()
                EnableIpl(BikerMethLab.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(BikerMethLab.Ipl.Interior.ipl, false)
            end
        }
    },
    Style = {
        none = "",
        empty = "meth_lab_empty",
        basic = {
            "meth_lab_basic",
            "meth_lab_setup"
        },
        upgrade = {
            "meth_lab_upgrade",
            "meth_lab_setup"
        },

        Set = function(style, refresh)
            BikerMethLab.Style.Clear(false)

            if style ~= "" then
                SetIplPropState(BikerMethLab.interiorId, style, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerMethLab.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerMethLab.interiorId, {
                BikerMethLab.Style.empty,
                BikerMethLab.Style.basic,
                BikerMethLab.Style.upgrade
            }, false, refresh)
        end
    },
    Security = {
        none = "",
        upgrade = "meth_lab_security_high",

        Set = function(security, refresh)
            BikerMethLab.Security.Clear(false)

            if security ~= "" then
                SetIplPropState(BikerMethLab.interiorId, security, true, refresh)
            else
                if refresh then
                    RefreshInterior(BikerMethLab.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerMethLab.interiorId, BikerMethLab.Security.upgrade, false, refresh)
        end
    },
    Details = {
        production = "meth_lab_production", -- Products

        Enable = function(details, state, refresh)
            SetIplPropState(BikerMethLab.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        BikerMethLab.Ipl.Interior.Load()
        BikerMethLab.Style.Set(BikerMethLab.Style.empty)
        BikerMethLab.Security.Set(BikerMethLab.Security.none)
        BikerMethLab.Details.Enable(BikerMethLab.Details.production, false)

        RefreshInterior(BikerMethLab.interiorId)
    end
}
