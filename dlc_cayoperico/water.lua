-- Code overrides wave strength near Cayo every frame

CreateThread(function()
	while true do
		Wait(0)
		WaterOverrideSetStrength(0.5)
	end
end)

-- Code that allows you to use GPS on Cayo

CreateThread(function()
	Wait(2500)
	local islandLoaded = false
	local islandCoords = vector3(4840.571, -5174.425, 2.0)
	SetDeepOceanScaler(0.0)
	while true do
		local pCoords = GetEntityCoords(PlayerPedId())
		if #(pCoords - islandCoords) < 2000.0 then
			if not islandLoaded then
				islandLoaded = true
				SetAiGlobalPathNodesType(1)
			end
		else
			if islandLoaded then
				islandLoaded = false
				SetAiGlobalPathNodesType(0)
			end
		end
		Wait(5000)
	end
end)
