-- Fort Zancudo Lab: -1916.119, 3749.719, -100.000
exports('GetMercenariesLabObject', function()
    return MercenariesLab
end)

MercenariesLab = {
    interiorId = 292097,

    Details = {
        levers = "entity_set_levers",
        crates = "entity_set_crates",
        weapons = "entity_set_weapons",
        lights = "entity_set_lift_lights",

        Enable = function(details, state, refresh)
            SetIplPropState(MercenariesLab.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        MercenariesLab.Details.Enable(MercenariesLab.Details.levers, true, false)
        MercenariesLab.Details.Enable(MercenariesLab.Details.crates, true, false)
        MercenariesLab.Details.Enable(MercenariesLab.Details.weapons, true, false)
        MercenariesLab.Details.Enable(MercenariesLab.Details.lights, true, false)

        RefreshInterior(MercenariesLab.interiorId)
    end
}