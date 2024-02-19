CreateThread(function()
	RequestIpl("ch_int_placement_ch_interior_1_dlc_arcade_milo_")
	RequestIpl("ch_int_placement_ch_interior_2_dlc_plan_milo_")

	-- ARCADE
	-- 2730, -380, -50
	local interiorid_arcade = 278273

	-- Interior props / entitysets

	-- MAIN STYLES (Choose one)
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_style_01") 
	EnableInteriorProp(interiorid_arcade, "casino_arcade_style_02")

	-- DESTROYED VERSION
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_destroyed")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_destroyed_extras") -- (extras for the destroyed version)

	-- TEXTURE STYLES (Choose one)
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_01") 
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_02") 
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_03")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_04") 
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_09")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_10")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_11")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_texture_style_16")

	-- WALL DESIGNS (Choose one)
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_01")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_02")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_03")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_04")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_05")
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_06")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_07")
	-- EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wall_08")


	-- PROPS: Can all be used at same time without colliding
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_streetgames_01")
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wallmonitors")
	EnableInteriorProp(interiorid_arcade, "casino_arcade_no_idea") -- Some floor stuff
	EnableInteriorProp(interiorid_arcade, "casino_arcade_no_idea2") -- Neon stuff i think
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_barstuff")
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_walltv")
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_lights_01") -- This also has trophies etc
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_lights_02")
	EnableInteriorProp(interiorid_arcade, "casino_arcade_extraprops_wire") -- Main Arcade room ligting, cables and arcade props

	-- always refresh the interior or they won't appear
	RefreshInterior(interiorid_arcade)

	-- UNDERGROUND BASE
	-- 2697.615, -376.3892, -56.46193
	local interiorid_arcade_underbase = 278529

	-- PROPS: Can all be used at same time without colliding
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_hacking")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_keypads")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_hacking2")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_work")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_work2")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_vaultplan")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_work3")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_casino_tablemodel") -- Has to be used together with: casino_plan_work3 (its on a table)
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_work4")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_work5")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_board_drawing")
	-- EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_machines") -- Blocks path to back room vehicle parking
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_blueprints")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_c4")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_insect")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_equipment_01")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_equipment_02")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_equipment_03")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_equipment_04")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_equipment_05")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_equipment_hat")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_drone")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_noidea_xd")
	EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_equipment_07")

    --  DESTROYED/OLD GARAGE VERSION	(ONLY LOAD THESE 3)
	-- EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_destroyed")
	-- EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_destroyed2") -- Enables the walls
	-- EnableInteriorProp(interiorid_arcade_underbase, "casino_plan_destroyed3") -- Extra props

	-- always refresh the interior or they won't appear
	RefreshInterior(interiorid_arcade_underbase)
end)
