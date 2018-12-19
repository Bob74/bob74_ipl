
-- DoomsdayFacility: 345.00000000 4842.00000000 -60.00000000

exports('GetDoomsdayFacilityObject', function()
    return DoomsdayFacility
end)

DoomsdayFacility = {
    interiorId = 269313,
    Ipl = {
        Interior = {
            ipl = "xm_x17dlc_int_placement_interior_33_x17dlc_int_02_milo_",
            Load = function(color)
                EnableIpl(DoomsdayFacility.Ipl.Interior.ipl, true)
                SetIplPropState(DoomsdayFacility.interiorId, "set_int_02_shell", true, true)
            end,
            Remove = function() EnableIpl(DoomsdayFacility.Ipl.Interior.ipl, false) end
        },
        Exterior = {
            ipl = {
                "xm_hatch_01_cutscene",         -- 1286.924 2846.06 49.39426
                "xm_hatch_02_cutscene",         -- 18.633 2610.834 86.0
                "xm_hatch_03_cutscene",         -- 2768.574 3919.924 45.82
                "xm_hatch_04_cutscene",         -- 3406.90 5504.77 26.28
                "xm_hatch_06_cutscene",         -- 1.90 6832.18 15.82
                "xm_hatch_07_cutscene",         -- -2231.53 2418.42 12.18
                "xm_hatch_08_cutscene",         -- -6.92 3327.0 41.63
                "xm_hatch_09_cutscene",         -- 2073.62 1748.77 104.51
                "xm_hatch_10_cutscene",         -- 1874.35 284.34 164.31
                "xm_hatch_closed",              -- Closed hatches (all)
                "xm_siloentranceclosed_x17",    -- Closed silo: 598.4869 5556.846 716.7615
                "xm_bunkerentrance_door",       -- Bunker entrance closed door: 2050.85 2950.0 47.75
                "xm_hatches_terrain",           -- Terrain adjustments for facilities (all) + silo
                "xm_hatches_terrain_lod",
            },
            Load = function()
                EnableIpl(DoomsdayFacility.Ipl.Exterior.ipl, true)
            end,
            Remove = function() EnableIpl(DoomsdayFacility.Ipl.Exterior.ipl, false) end
        }
    },
    Colors = {
        utility = 1, expertise = 2, altitude = 3,
        power = 4, authority = 5, influence = 6,
        order = 7, empire = 8, supremacy = 9
    },
    Walls = {
        SetColor = function(color, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, "set_int_02_shell", color)
            if (refresh) then RefreshInterior(DoomsdayFacility.interiorId) end
        end
    },
    Decals = {
        none = "",
        style01 = "set_int_02_decal_01", style02 = "set_int_02_decal_02", style03 = "set_int_02_decal_03",
        style04 = "set_int_02_decal_04", style05 = "set_int_02_decal_05", style06 = "set_int_02_decal_06",
        style07 = "set_int_02_decal_07", style08 = "set_int_02_decal_08", style09 = "set_int_02_decal_09",
        Set = function(decal, refresh)
            DoomsdayFacility.Decals.Clear(refresh)
            if decal ~= "" then
                SetIplPropState(DoomsdayFacility.interiorId, decal, true, refresh)
            else
                if (refresh) then RefreshInterior(DoomsdayFacility.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {
                DoomsdayFacility.Decals.style01, DoomsdayFacility.Decals.style02, DoomsdayFacility.Decals.style03,
                DoomsdayFacility.Decals.style04, DoomsdayFacility.Decals.style05, DoomsdayFacility.Decals.style06,
                DoomsdayFacility.Decals.style07, DoomsdayFacility.Decals.style08, DoomsdayFacility.Decals.style09
            }, false, refresh)
        end
    },
    Lounge = {
        utility = "set_int_02_lounge1", prestige = "set_int_02_lounge2", premier = "set_int_02_lounge3",
        Set = function(lounge, color, refresh)
            DoomsdayFacility.Lounge.Clear(false)
            SetIplPropState(DoomsdayFacility.interiorId, lounge, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, lounge, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {DoomsdayFacility.Lounge.utility, DoomsdayFacility.Lounge.prestige, DoomsdayFacility.Lounge.premier}, false, refresh)
        end
    },
    Sleeping = {
        none = "set_int_02_no_sleep",
        utility = "set_int_02_sleep", prestige = "set_int_02_sleep2", premier = "set_int_02_sleep3",
        Set = function(sleep, color, refresh)
            DoomsdayFacility.Sleeping.Clear(false)
            SetIplPropState(DoomsdayFacility.interiorId, sleep, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, sleep, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {DoomsdayFacility.Sleeping.none, DoomsdayFacility.Sleeping.utility, DoomsdayFacility.Sleeping.prestige, DoomsdayFacility.Sleeping.premier}, false, refresh)
        end
    },
    Security = {
        off = "set_int_02_no_security", on = "set_int_02_security",
        Set = function(security, color, refresh)
            DoomsdayFacility.Security.Clear(false)
            SetIplPropState(DoomsdayFacility.interiorId, security, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, security, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {DoomsdayFacility.Security.off, DoomsdayFacility.Security.on}, false, refresh)
        end
    },
    Cannon = {
        off = "set_int_02_no_cannon", on = "set_int_02_cannon",
        Set = function(cannon, color, refresh)
            DoomsdayFacility.Cannon.Clear(false)
            SetIplPropState(DoomsdayFacility.interiorId, cannon, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, cannon, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {DoomsdayFacility.Cannon.off, DoomsdayFacility.Cannon.on}, false, refresh)
        end
    },
    Details = {
        KhanjaliParts = {A = "Set_Int_02_Parts_Panther1", B = "Set_Int_02_Parts_Panther2", C = "Set_Int_02_Parts_Panther3"},
        RiotParts = {A = "Set_Int_02_Parts_Riot1", B = "Set_Int_02_Parts_Riot2", C = "Set_Int_02_Parts_Riot3"},
        ChenoParts = {A = "Set_Int_02_Parts_Cheno1", B = "Set_Int_02_Parts_Cheno2", C = "Set_Int_02_Parts_Cheno3"},
        ThrusterParts = {A = "Set_Int_02_Parts_Thruster1", B = "Set_Int_02_Parts_Thruster2", C = "Set_Int_02_Parts_Thruster3"},
        AvengerParts = {A = "Set_Int_02_Parts_Avenger1", B = "Set_Int_02_Parts_Avenger2", C = "Set_Int_02_Parts_Avenger3"},
        
        Outfits = {
            paramedic = "Set_Int_02_outfit_paramedic", morgue = "Set_Int_02_outfit_morgue", serverFarm = "Set_Int_02_outfit_serverfarm",
            iaa = "Set_Int_02_outfit_iaa", stealAvenger = "Set_Int_02_outfit_steal_avenger", foundry = "Set_Int_02_outfit_foundry",
            riot = "Set_Int_02_outfit_riot_van", stromberg = "Set_Int_02_outfit_stromberg", submarine = "Set_Int_02_outfit_sub_finale",
            predator = "Set_Int_02_outfit_predator", khanjali = "Set_Int_02_outfit_khanjali", volatol = "Set_Int_02_outfit_volatol"
        },

        Trophies = {
            eagle = "set_int_02_trophy1", iaa = "set_int_02_trophy_iaa", submarine = "set_int_02_trophy_sub",
            SetColor = function(color, refresh)
                SetInteriorPropColor(DoomsdayFacility.interiorId, "set_int_02_trophy_sub", color)
                if (refresh) then RefreshInterior(DoomsdayFacility.interiorId) end
            end
        },

        Clutter = {A = "set_int_02_clutter1", B = "set_int_02_clutter2", C = "set_int_02_clutter3", D = "set_int_02_clutter4", E = "set_int_02_clutter5"},

        crewEmblem = "set_int_02_crewemblem",

        Enable = function (details, state, refresh)
            SetIplPropState(DoomsdayFacility.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        DoomsdayFacility.Ipl.Exterior.Load()
        DoomsdayFacility.Ipl.Interior.Load()
        
        DoomsdayFacility.Walls.SetColor(DoomsdayFacility.Colors.utility)
        DoomsdayFacility.Decals.Set(DoomsdayFacility.Decals.style01)
        DoomsdayFacility.Lounge.Set(DoomsdayFacility.Lounge.premier, DoomsdayFacility.Colors.utility)
        DoomsdayFacility.Sleeping.Set(DoomsdayFacility.Sleeping.premier, DoomsdayFacility.Colors.utility)
        DoomsdayFacility.Security.Set(DoomsdayFacility.Security.on, DoomsdayFacility.Colors.utility)
        DoomsdayFacility.Cannon.Set(DoomsdayFacility.Cannon.on, DoomsdayFacility.Colors.utility)

        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.crewEmblem, false)

        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.AvengerParts, true)

        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.Outfits, true)
        
        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.Trophies, true)
        DoomsdayFacility.Details.Trophies.SetColor(DoomsdayFacility.Colors.utility)

        DoomsdayFacility.Details.Enable({DoomsdayFacility.Details.Clutter.A, DoomsdayFacility.Details.Clutter.B}, true)

        RefreshInterior(DoomsdayFacility.interiorId)
    end
}
