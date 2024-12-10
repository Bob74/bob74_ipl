-- McKenzie Field Office: 2149.45, 4788.06, -50.0
exports("GetAgentsOffice", function()
    return AgentsOffice
end)

AgentsOffice = {
    interiorId = 0,

    Style = {
        bed = "set_bed",
        mess = "collision_z9mhn5",

        Set = function(style, refresh)
            AgentsOffice.Style.Clear(refresh)

            SetIplPropState(AgentsOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(AgentsOffice.interiorId, {
                AgentsOffice.Style.bed,
                AgentsOffice.Style.mess
            }, false, refresh)
        end
    },

    Details = {
        laptop = "set_laptop",
        ammo = "set_ammo",
        intel = "set_intel",
        weapons = "set_weapons",
        booze = "set_24_2",

        Enable = function(details, state, refresh)
            SetIplPropState(AgentsOffice.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        AgentsOffice.Style.Set(AgentsOffice.Style.bed, false)

        AgentsOffice.Details.Enable(AgentsOffice.Details.laptop, true, false)
        AgentsOffice.Details.Enable(AgentsOffice.Details.intel, true, false)

        RefreshInterior(AgentsOffice.interiorId)
    end
}
