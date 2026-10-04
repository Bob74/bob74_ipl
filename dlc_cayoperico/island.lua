-- Cayo Perico Island: 4840.571, -5174.425, 2.0
exports('GetCayoPericoIsland', function()
    return CayoPericoIsland
end)

AddEventHandler('onClientResourceStop', function(res)
    if GetCurrentResourceName() ~= res then
        return
    end

    CayoPericoIsland.Clear()
end)

local _scanDelay = 1000
local _loadRadius = 2250.0

CayoPericoIsland = {
    coords = vector3(4840.571, -5174.425, 2.0),
    enabled = false,    -- Automatic distance based loading (toggled by Enable)
    loaded = false,     -- True while the island is streamed in
    scanning = false,   -- True while the distance check thread is running

    -- Enable or disable the automatic distance based loading of the island
    Enable = function(state)
        CayoPericoIsland.enabled = state

        if state then
            CayoPericoIsland.StartScan()
        else
            CayoPericoIsland.Clear()
        end
    end,

    -- Stream the island and its minimap out
    Clear = function()
        if CayoPericoIsland.loaded then
            SetIslandEnabled("HeistIsland", false)
            SetUseIslandMap(false)

            CayoPericoIsland.loaded = false
        end
    end,

    -- The island is normally only streamed during the heist. We can only enable it
    -- when the player is close enough, otherwise the minimap would be replaced by
    -- the island one while roaming the rest of the map.
    StartScan = function()
        if CayoPericoIsland.scanning then
            return
        end

        CayoPericoIsland.scanning = true

        CreateThread(function()
            while CayoPericoIsland.enabled do
                if #(GetEntityCoords(PlayerPedId()).xy - CayoPericoIsland.coords.xy) < _loadRadius then
                    if not CayoPericoIsland.loaded then
                        SetIslandEnabled("HeistIsland", true)
                        SetUseIslandMap(true)

                        CayoPericoIsland.loaded = true
                    end
                else
                    CayoPericoIsland.Clear()
                end

                Wait(_scanDelay)
            end

            CayoPericoIsland.scanning = false
        end)
    end
}
