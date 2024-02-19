local function ToggleEntitySet(interior, entitySet, toggle)
	if toggle then
		ActivateInteriorEntitySet(interior, entitySet)
	else
		DeactivateInteriorEntitySet(interior, entitySet)
	end
end

CreateThread(function()
	RequestIpl("m23_1_int_placement_m23_1_interior_0_dlc_int_01_m23_1_milo_")

	-- -880.0, -2770.0, -50.0
	local interiorid = 291585

	EnableInteriorProp(interiorid, "m23_1_m231_1_tint_fabric_01a")

	EnableInteriorProp(interiorid, "m23_1_m231_1_avenger_door")

	EnableInteriorProp(interiorid, "prop_fire_exting_2a")

	EnableInteriorProp(interiorid, "m23_1_m231_1_tint_netting_01a")

	EnableInteriorProp(interiorid, "m23_1_m231_1_tint_seat_01a")
	EnableInteriorProp(interiorid, "m23_1_m231_1_tint_seat_01b")
	EnableInteriorProp(interiorid, "m23_1_m231_1_tint_seat_01c")

	EnableInteriorProp(interiorid, "m23_1_m231_1_prop_am_decal_strip_01c")
	EnableInteriorProp(interiorid, "m23_1_m231_1_prop_am_decal_strip_01b")
	EnableInteriorProp(interiorid, "m23_1_m231_1_prop_am_decal_strip_01a")

	EnableInteriorProp(interiorid, "m23_1_m231_1_cctv_unit")

	EnableInteriorProp(interiorid, "m23_1_m231_1_tint_floor_01a")

	EnableInteriorProp(interiorid, "m23_1_m231_1_tint_bolts_01a")

	EnableInteriorProp(interiorid, "m23_1_m231_1_shadow_mesh")

	EnableInteriorProp(interiorid, "m23_1_m231_1_avenger_col_dummy")

	ToggleEntitySet(interiorid, "vehicle_mod", true)
	SetInteriorEntitySetColor(interiorid, "vehicle_mod", 1)

	ToggleEntitySet(interiorid, "weapons_mod", true)
	SetInteriorEntitySetColor(interiorid, "weapons_mod", 1)

	ToggleEntitySet(interiorid, "control_1", true)
	SetInteriorEntitySetColor(interiorid, "control_1", 1)

	ToggleEntitySet(interiorid, "control_2", true)
	SetInteriorEntitySetColor(interiorid, "control_2", 1)

	ToggleEntitySet(interiorid, "control_3", true)
	SetInteriorEntitySetColor(interiorid, "control_3", 1)

	ToggleEntitySet(interiorid, "gold_bling", true)

	ToggleEntitySet(interiorid, "screen_control", true) -- Controle table
	SetInteriorEntitySetColor(interiorid, "screen_control", 1)
	ToggleEntitySet(interiorid, "seat_01", false) -- seat under the controle table

	ToggleEntitySet(interiorid, "jetpack_stand", true) -- Jetpack stand
	ToggleEntitySet(interiorid, "seat_02", false) -- seat under the jetpack stand

	RefreshInterior(interiorid)
end)
