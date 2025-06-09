-- Arcade basement: 2710.0, -360.780, -56.0
exports('GetDiamondArcadeBasementObject', function()
    return DiamondArcadeBasement
end)

DiamondArcadeBasement = {
    interiorId = 278529,

    Style = {
        derelict = "set_plan_pre_setup",
        normal = {
            "set_plan_setup",
            "set_plan_scribbles"
        },

        Set = function(style, refresh)
            DiamondArcadeBasement.Style.Clear(false)

            SetIplPropState(DiamondArcadeBasement.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DiamondArcadeBasement.interiorId, {
                DiamondArcadeBasement.Style.derelict,
                DiamondArcadeBasement.Style.normal
            }, false, refresh)
        end
    },

    Garage = {
        garage = "set_plan_garage",
        wall = "set_plan_wall",

        Set = function(garage, refresh)
            DiamondArcadeBasement.Garage.Clear(false)

            SetIplPropState(DiamondArcadeBasement.interiorId, garage, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DiamondArcadeBasement.interiorId, {
                DiamondArcadeBasement.Garage.garage,
                DiamondArcadeBasement.Garage.wall
            }, false, refresh)
        end
    },

    Bed = {
        bed = "set_plan_bed",
        trash = "set_plan_no_bed",

        Set = function(bed, refresh)
            DiamondArcadeBasement.Bed.Clear(false)

            SetIplPropState(DiamondArcadeBasement.interiorId, bed, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DiamondArcadeBasement.interiorId, {
                DiamondArcadeBasement.Bed.bed,
                DiamondArcadeBasement.Bed.trash
            }, false, refresh)
        end
    },

    Details = {
        computer = "set_plan_computer",
        cabinets = "set_plan_arcade_x4",
        plans = "set_plan_plans",
        casino = "set_plan_casino",
        keypad = "set_plan_keypad",
        vault = "set_plan_vault",
        mechanic = "set_plan_mechanic",
        hacker = "set_plan_hacker",
        weapons = "set_plan_weapons",
        vaultLaser = "set_plan_vault_laser",
        vaultDrill = "set_plan_vault_drill",
        drill = "set_plan_electric_drill",
        explosives = "set_plan_plastic_explosives",
        dongle = "set_plan_hacking_device",
        cockroaches = "set_plan_cockroaches",
        stealthOutfits = "set_plan_stealth_outfits",
        securityOutfits = "set_plan_gruppe_sechs_outfits",
        helmet = "set_plan_fireman_helmet",
        drone = "set_plan_drone_parts",
        keycards = "set_plan_vault_keycard_01a",
        keycard1 = "set_plan_swipe_card_01a",
        keycard2 = "set_plan_swipe_card_01b",
        vaultLaser2 = "set_plan_vault_laser_alt",
        vaultDrill2 = "set_plan_vault_drill_alt",

        Enable = function(details, state, refresh)
            SetIplPropState(DiamondArcadeBasement.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        DiamondArcadeBasement.Style.Set(DiamondArcadeBasement.Style.normal, false)
        DiamondArcadeBasement.Garage.Set(DiamondArcadeBasement.Garage.garage, false)
        DiamondArcadeBasement.Bed.Set(DiamondArcadeBasement.Bed.bed, false)

        DiamondArcadeBasement.Details.Enable(DiamondArcadeBasement.Details.computer, true, false)
        DiamondArcadeBasement.Details.Enable(DiamondArcadeBasement.Details.plans, true, false)
        DiamondArcadeBasement.Details.Enable(DiamondArcadeBasement.Details.mechanic, true, false)
        DiamondArcadeBasement.Details.Enable(DiamondArcadeBasement.Details.cockroaches, true, false)

        RefreshInterior(DiamondArcadeBasement.interiorId)
    end
}