-- Richman Villa: -1630.434, 470.852, 128.0
exports("GetMansionBasement2", function()
    return MansionBasement2
end)

MansionBasement2 = {
    interiorId = 303105,

    Vault = {
        open = "set_vault_door_open",
        closed = "set_vault_door_closed",

        Set = function(state, refresh)
            MansionBasement2.Vault.Clear(refresh)

            SetIplPropState(MansionBasement2.interiorId, state, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement2.interiorId, {
                MansionBasement2.Vault.open,
                MansionBasement2.Vault.closed
            }, false, refresh)
        end
    },

    Assistant = {
        og = "set_base_ai_tablets_01",
        haviland = "set_base_ai_tablets_02",
        angel = "set_base_ai_tablets_03",

        Set = function(assistant, refresh)
            MansionBasement2.Assistant.Clear(refresh)

            SetIplPropState(MansionBasement2.interiorId, assistant, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement2.interiorId, {
                MansionBasement2.Assistant.angel,
                MansionBasement2.Assistant.haviland,
                MansionBasement2.Assistant.og
            }, false, refresh)
        end
    },

    Decorations = {
        xmas = "set_base_xmas",
        halloween = "set_base_halloween",
        lunar = "set_base_new_year",

        Set = function(decorations, refresh)
            MansionBasement2.Decorations.Clear(refresh)

            SetIplPropState(MansionBasement2.interiorId, decorations, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement2.interiorId, {
                MansionBasement2.Decorations.xmas,
                MansionBasement2.Decorations.halloween,
                MansionBasement2.Decorations.lunar
            }, false, refresh)
        end
    },

    Details = {
        elevator = "set_elev_std",
        money = {
             -- There's some logic for these sets but I can't be bothered so implement it properly
            "set_base_vault_00",
            "set_base_vault_01",
            "set_base_vault_02",
            "set_base_vault_03",
            "set_base_vault_04"
        },

        Enable = function(details, state, refresh)
            SetIplPropState(MansionBasement2.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        MansionBasement2.Vault.Set(MansionBasement2.Vault.open, false)
        MansionBasement2.Assistant.Set(MansionBasement2.Assistant.angel, false)

        MansionBasement2.Details.Enable(MansionBasement2.Details.elevator, true, false)
        MansionBasement2.Details.Enable(MansionBasement2.Details.money, true, false)

        RefreshInterior(MansionBasement2.interiorId)
    end
}