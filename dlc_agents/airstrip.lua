-- Airstrip: -2082.29, 1467.68, 280.58
exports("GetAgentsAirstrip", function()
    return AgentsAirstrip
end)

AgentsAirstrip = {
    Ipl = {
        ipl = "m24_2_airstrip",

        Load = function()
            EnableIpl(AgentsAirstrip.Ipl.ipl, true)
        end,
        Remove = function()
            EnableIpl(AgentsAirstrip.Ipl.ipl, false)
        end
    },

    LoadDefault = function()
        AgentsAirstrip.Ipl.Load()
    end
}
