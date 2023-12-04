Citizen.CreateThread(function()
    -- Heist Jewel: -637.20159 -239.16250 38.1
    RequestIpl("post_hiest_unload")

    -- Max Renda: -585.8247, -282.72, 35.45475
    RequestIpl("refit_unload")

    -- Heist Union Depository: 2.69689322, -667.0166, 16.1306286
    RequestIpl("FINBANK")

    -- Morgue: 239.75195, -1360.64965, 39.53437
    RequestIpl("Coroner_Int_on")
    RequestIpl("coronertrash")

    -- Cluckin Bell: -146.3837, 6161.5, 30.2062
    RequestIpl("CS1_02_cf_onmission1")
    RequestIpl("CS1_02_cf_onmission2")
    RequestIpl("CS1_02_cf_onmission3")
    RequestIpl("CS1_02_cf_onmission4")

    -- Grapeseed's farm: 2447.9, 4973.4, 47.7
    RequestIpl("farm")
    RequestIpl("farmint")
    RequestIpl("farm_lod")
    RequestIpl("farm_props")
    RequestIpl("des_farmhouse")

    -- FIB lobby: 105.4557, -745.4835, 44.7548
    RequestIpl("FIBlobby")

    -- FIB Roof: 134.33, -745.95, 266.98
    RequestIpl("atriumglmission")

    -- FIB Fountain 174.184, -667.902, 43.140
    RemoveIpl('dt1_05_hc_end')
    RemoveIpl('dt1_05_hc_req')
    RequestIpl('dt1_05_hc_remove')

    -- Billboard: iFruit
    RequestIpl("FruitBB")
    RequestIpl("sc1_01_newbill")
    RequestIpl("hw1_02_newbill")
    RequestIpl("hw1_emissive_newbill")
    RequestIpl("sc1_14_newbill")
    RequestIpl("dt1_17_newbill")

    -- Lester's factory: 716.84, -962.05, 31.59
    RequestIpl("id2_14_during_door")
    RequestIpl("id2_14_during1")

    -- Life Invader lobby: -1047.9, -233.0, 39.0
    RequestIpl("facelobby")

    -- Tunnels
    RequestIpl("v_tunnel_hole")

    -- Carwash: 55.7, -1391.3, 30.5
    RequestIpl("Carwash_with_spinners")

    -- Stadium "Fame or Shame": -248.49159240722656, -2010.509033203125, 34.57429885864258
    RequestIpl("sp1_10_real_interior")
    RequestIpl("sp1_10_real_interior_lod")

    -- House in Banham Canyon: -3086.428, 339.2523, 6.3717
    RequestIpl("ch1_02_open")

    -- Garage in La Mesa (autoshop): 970.27453, -1826.56982, 31.11477
    RequestIpl("bkr_bi_id1_23_door")

    -- Hill Valley church - Grave: -282.46380000, 2835.84500000, 55.91446000
    RequestIpl("lr_cs6_08_grave_closed")

    -- Lost's trailer park: 49.49379000, 3744.47200000, 46.38629000
    RequestIpl("methtrailer_grp1")

    -- Lost safehouse: 984.1552, -95.3662, 74.50
    RequestIpl("bkr_bi_hw1_13_int")

    -- Raton Canyon river: -1652.83, 4445.28, 2.52
    RequestIpl("CanyonRvrShallow")

    -- Josh's house: -1117.1632080078, 303.090698, 66.52217
    RequestIpl("bh1_47_joshhse_unburnt")
    RequestIpl("bh1_47_joshhse_unburnt_lod")

    -- Bahama Mamas: -1388.0013, -618.41967, 30.819599
    RequestIpl("hei_sm_16_interior_v_bahama_milo_")

    -- Zancudo River (need streamed content): 86.815, 3191.649, 30.463
    RequestIpl("cs3_05_water_grp1")
    RequestIpl("cs3_05_water_grp1_lod")
    RequestIpl("trv1_trail_start")

    -- Cassidy Creek (need streamed content): -425.677, 4433.404, 27.3253
    RequestIpl("canyonriver01")
    RequestIpl("canyonriver01_lod")

    -- Ferris wheel
    RequestIpl("ferris_finale_anim")

    -- Train track: 2626.374, 2949.869, 39.1409
    RequestIpl("ld_rail_01_track")
    RequestIpl("ld_rail_02_track")
end)
