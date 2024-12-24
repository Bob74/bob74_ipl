-- Airstrip: -2106.98, 1468.31, 282.0
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
