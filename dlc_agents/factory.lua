-- Garment Factory: 752.31, -997.24, -50.0
exports("GetAgentsFactory", function()
    return AgentsFactory
end)

AgentsFactory = {
    interiorId = 0,

    Trophy = {
        egg = "set_pent_rob_egg",
        idol01 = "set_pent_rob_idol_01",
        idol02 = "set_pent_rob_idol_02",
        scarab = "set_zanc_scarab",
        armor = "set_zanc_armor",
        keycard = "set_zanc_keycard",

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

        Enable = function(details, state, refresh)
            SetIplPropState(AgentsOffice.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        RefreshInterior(AgentsFactory.interiorId)
    end
}
