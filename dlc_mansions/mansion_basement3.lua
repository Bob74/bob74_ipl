-- The Tongva Estate: -2601.712, 1874.826, 166.0
exports("GetMansionBasement3", function()
    return MansionBasement3
end)

MansionBasement3 = {
    interiorId = 303873,

    Vault = {
        open = "set_vault_door_open",
        closed = "set_vault_door_closed",

        Set = function(state, refresh)
            MansionBasement3.Vault.Clear(refresh)

            SetIplPropState(MansionBasement3.interiorId, state, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement3.interiorId, {
                MansionBasement3.Vault.open,
                MansionBasement3.Vault.closed
            }, false, refresh)
        end
    },

    Assistant = {
        og = "set_base_ai_tablets_01",
        haviland = "set_base_ai_tablets_02",
        angel = "set_base_ai_tablets_03",

        Set = function(assistant, refresh)
            MansionBasement3.Assistant.Clear(refresh)

            SetIplPropState(MansionBasement3.interiorId, assistant, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement3.interiorId, {
                MansionBasement3.Assistant.angel,
                MansionBasement3.Assistant.haviland,
                MansionBasement3.Assistant.og
            }, false, refresh)
        end
    },

    Decorations = {
        xmas = "set_base_xmas",
        halloween = "set_base_halloween",
        lunar = "set_base_new_year",

        Set = function(decorations, refresh)
            MansionBasement3.Decorations.Clear(refresh)

            SetIplPropState(MansionBasement3.interiorId, decorations, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement3.interiorId, {
                MansionBasement3.Decorations.xmas,
                MansionBasement3.Decorations.halloween,
                MansionBasement3.Decorations.lunar
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
            SetIplPropState(MansionBasement3.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        MansionBasement3.Vault.Set(MansionBasement3.Vault.open, false)
        MansionBasement3.Assistant.Set(MansionBasement3.Assistant.angel, false)

        MansionBasement3.Details.Enable(MansionBasement3.Details.elevator, true, false)
        MansionBasement3.Details.Enable(MansionBasement3.Details.money, true, false)

        RefreshInterior(MansionBasement3.interiorId)
    end
}