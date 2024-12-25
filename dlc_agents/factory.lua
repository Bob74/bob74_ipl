-- Garment Factory: 752.31, -997.24, -47.0
exports("GetAgentsFactory", function()
    return AgentsFactory
end)

AgentsFactory = {
    interiorId = 297729,

    Ipl = {
        Exterior = {
            ipl = "m24_2_garment_factory",

            Load = function()
                EnableIpl(AgentsFactory.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(AgentsFactory.Ipl.Exterior.ipl, false)
            end
        }
    },

    Trophy = {
        egg = "set_pent_rob_egg",
        idol01 = "set_pent_rob_idol_01",
        idol02 = "set_pent_rob_idol_02",
        scarab = "set_zanc_scarab",
        drive = "set_whistle_drive",
        plane = "set_cargo",

        Enable = function(trophy, state, refresh)
            SetIplPropState(AgentsFactory.interiorId, trophy, state, refresh)
        end
    },

    Details = {
        sonar = "set_sonar",
        drive = "set_malware_drive",
        controller = "set_rc_controller",
        thermite = "set_thermal",
        key = "set_smartkey",
        drone = "set_pent_drone",
        case = "set_pent_emp",
        armor = "set_zanc_armor",
        keycard = "set_zanc_keycard",

        Enable = function(details, state, refresh)
            SetIplPropState(AgentsFactory.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        AgentsFactory.Ipl.Exterior.Load()

        -- Interior
        AgentsFactory.Trophy.Enable(AgentsFactory.Trophy.idol01, true, false)
        AgentsFactory.Trophy.Enable(AgentsFactory.Trophy.idol02, true, false)

        AgentsFactory.Details.Enable(AgentsFactory.Details.armor, true, false)
        AgentsFactory.Details.Enable(AgentsFactory.Details.sonar, true, false)
        AgentsFactory.Details.Enable(AgentsFactory.Details.drive, true, false)

        RefreshInterior(AgentsFactory.interiorId)
    end
}
