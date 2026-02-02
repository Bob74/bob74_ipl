-- The Vinewood Residence: 543.852, 712.754, 201.0
exports("GetMansionBasement1", function()
    return MansionBasement1
end)

MansionBasement1 = {
    interiorId = 304641,

    Vault = {
        open = "set_vault_door_open",
        closed = "set_vault_door_closed",

        Set = function(state, refresh)
            MansionBasement1.Vault.Clear(refresh)

            SetIplPropState(MansionBasement1.interiorId, state, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement1.interiorId, {
                MansionBasement1.Vault.open,
                MansionBasement1.Vault.closed
            }, false, refresh)
        end
    },

    Assistant = {
        og = "set_base_ai_tablets_01",
        haviland = "set_base_ai_tablets_02",
        angel = "set_base_ai_tablets_03",

        Set = function(assistant, refresh)
            MansionBasement1.Assistant.Clear(refresh)

            SetIplPropState(MansionBasement1.interiorId, assistant, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement1.interiorId, {
                MansionBasement1.Assistant.angel,
                MansionBasement1.Assistant.haviland,
                MansionBasement1.Assistant.og
            }, false, refresh)
        end
    },

    Decorations = {
        xmas = "set_base_xmas",
        halloween = "set_base_halloween",
        lunar = "set_base_new_year",

        Set = function(decorations, refresh)
            MansionBasement1.Decorations.Clear(refresh)

            SetIplPropState(MansionBasement1.interiorId, decorations, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MansionBasement1.interiorId, {
                MansionBasement1.Decorations.xmas,
                MansionBasement1.Decorations.halloween,
                MansionBasement1.Decorations.lunar
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
            SetIplPropState(MansionBasement1.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        MansionBasement1.Vault.Set(MansionBasement1.Vault.open, false)
        MansionBasement1.Assistant.Set(MansionBasement1.Assistant.angel, false)

        MansionBasement1.Details.Enable(MansionBasement1.Details.elevator, true, false)
        MansionBasement1.Details.Enable(MansionBasement1.Details.money, true, false)

        RefreshInterior(MansionBasement1.interiorId)
    end
}