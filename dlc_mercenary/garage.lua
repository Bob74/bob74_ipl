local function ToggleEntitySet(interior, entitySet, toggle)
	if toggle then
		ActivateInteriorEntitySet(interior, entitySet)
	else
		DeactivateInteriorEntitySet(interior, entitySet)
	end
end

CreateThread(function()
	-- 1200.0, -3250.0, -50.0
	local interiorid = 291841

	ToggleEntitySet(interiorid, "showroom", true) -- expo zone
	ToggleEntitySet(interiorid, "extra_light", false) -- extra light
	ToggleEntitySet(interiorid, "showroom_wall", true) -- wall vinewood car club on expo zone
	ToggleEntitySet(interiorid, "extra_door", true) -- extra door
	ToggleEntitySet(interiorid, "wall_sign", true) -- sign on the wall

	RefreshInterior(interiorid)
end)
