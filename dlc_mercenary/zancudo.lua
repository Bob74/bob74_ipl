local function ToggleEntitySet(interior, entitySet, toggle)
	if toggle then
		ActivateInteriorEntitySet(interior, entitySet)
	else
		DeactivateInteriorEntitySet(interior, entitySet)
	end
end

CreateThread(function()
	-- -1876.62, 3750.0, -100.0
	local interiorid = 292097

	ToggleEntitySet(interiorid, "entity_set_lever", true)
	ToggleEntitySet(interiorid, "entity_set_light", true)
	ToggleEntitySet(interiorid, "entity_set_weapons", true)
	ToggleEntitySet(interiorid, "entity_set_create", true)

	RefreshInterior(interiorid)
end)
