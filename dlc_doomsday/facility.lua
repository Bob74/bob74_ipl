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
            Remove = function()
                EnableIpl(DoomsdayFacility.Ipl.Interior.ipl, false)
            end
        },
        Exterior = {
            ipl = {
                "xm_hatch_01_cutscene", -- 1286.924 2846.06 49.39426
                "xm_hatch_02_cutscene", -- 18.633 2610.834 86.0
                "xm_hatch_03_cutscene", -- 2768.574 3919.924 45.82
                "xm_hatch_04_cutscene", -- 3406.90 5504.77 26.28
                "xm_hatch_06_cutscene", -- 1.90 6832.18 15.82
                "xm_hatch_07_cutscene", -- -2231.53 2418.42 12.18
                "xm_hatch_08_cutscene", -- -6.92 3327.0 41.63
                "xm_hatch_09_cutscene", -- 2073.62 1748.77 104.51
                "xm_hatch_10_cutscene", -- 1874.35 284.34 164.31
                "xm_hatch_closed", -- Closed hatches (all)
                "xm_siloentranceclosed_x17", -- Closed silo: 598.4869 5556.846 716.7615
                "xm_bunkerentrance_door", -- Bunker entrance closed door: 2050.85 2950.0 47.75
                "xm_hatches_terrain", -- Terrain adjustments for facilities (all) + silo
                "xm_hatches_terrain_lod"
            },

            Load = function()
                EnableIpl(DoomsdayFacility.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(DoomsdayFacility.Ipl.Exterior.ipl, false)
            end
        }
    },
    Colors = {
        utility = 1,
        expertise = 2,
        altitude = 3,
        power = 4,
        authority = 5,
        influence = 6,
        order = 7,
        empire = 8,
        supremacy = 9
    },
    Walls = {
        SetColor = function(color, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, "set_int_02_shell", color)

            if refresh then
                RefreshInterior(DoomsdayFacility.interiorId)
            end
        end
    },
    Decals = {
        none = "",
        style01 = "set_int_02_decal_01",
        style02 = "set_int_02_decal_02",
        style03 = "set_int_02_decal_03",
        style04 = "set_int_02_decal_04",
        style05 = "set_int_02_decal_05",
        style06 = "set_int_02_decal_06",
        style07 = "set_int_02_decal_07",
        style08 = "set_int_02_decal_08",
        style09 = "set_int_02_decal_09",

        Set = function(decal, refresh)
            DoomsdayFacility.Decals.Clear(refresh)

            if decal ~= "" then
                SetIplPropState(DoomsdayFacility.interiorId, decal, true, refresh)
            else
                if refresh then
                    RefreshInterior(DoomsdayFacility.interiorId)
                end
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
        utility = "set_int_02_lounge1",
        prestige = "set_int_02_lounge2",
        premier = "set_int_02_lounge3",

        Set = function(lounge, color, refresh)
            DoomsdayFacility.Lounge.Clear(false)

            SetIplPropState(DoomsdayFacility.interiorId, lounge, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, lounge, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {
                DoomsdayFacility.Lounge.utility,
                DoomsdayFacility.Lounge.prestige,
                DoomsdayFacility.Lounge.premier
            }, false, refresh)
        end
    },
    Sleeping = {
        none = "set_int_02_no_sleep",
        utility = "set_int_02_sleep",
        prestige = "set_int_02_sleep2",
        premier = "set_int_02_sleep3",

        Set = function(sleep, color, refresh)
            DoomsdayFacility.Sleeping.Clear(false)

            SetIplPropState(DoomsdayFacility.interiorId, sleep, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, sleep, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {
                DoomsdayFacility.Sleeping.none,
                DoomsdayFacility.Sleeping.utility,
                DoomsdayFacility.Sleeping.prestige,
                DoomsdayFacility.Sleeping.premier
            }, false, refresh)
        end
    },
    Security = {
        off = "set_int_02_no_security",
        on = "set_int_02_security",

        Set = function(security, color, refresh)
            DoomsdayFacility.Security.Clear(false)

            SetIplPropState(DoomsdayFacility.interiorId, security, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, security, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {
                DoomsdayFacility.Security.off,
                DoomsdayFacility.Security.on
            }, false, refresh)
        end
    },
    Cannon = {
        off = "set_int_02_no_cannon",
        on = "set_int_02_cannon",

        Set = function(cannon, color, refresh)
            DoomsdayFacility.Cannon.Clear(false)

            SetIplPropState(DoomsdayFacility.interiorId, cannon, true, refresh)
            SetInteriorPropColor(DoomsdayFacility.interiorId, cannon, color)
        end,
        Clear = function(refresh)
            SetIplPropState(DoomsdayFacility.interiorId, {
                DoomsdayFacility.Cannon.off,
                DoomsdayFacility.Cannon.on
            }, false, refresh)
        end
    },
    PrivacyGlass = {
        controlModelHash = `xm_prop_x17_tem_control_01`,

        Bedroom = {
            Enable = function(state)
                local handle = GetClosestObjectOfType(367.99, 4827.745, -59.0, 1.0, `xm_prop_x17_l_glass_03`, false, false, false)

                if state then
                    if handle == 0 then
                        local model = `xm_prop_x17_l_glass_03`

                        RequestModel(model)
                        while not HasModelLoaded(model) do
                            Citizen.Wait(0)
                        end

                        local privacyGlass = CreateObject(model, 367.99, 4827.745, -59.0, false, false, false)

                        SetEntityAsMissionEntity(privacyGlass, true, 0)
                        SetEntityCollision_2(privacyGlass, false, 0)
                        SetEntityInvincible(privacyGlass, true)
                        SetEntityAlpha(privacyGlass, 254, false)
                    end
                else
                    if handle ~= 0 then
                        SetEntityAsMissionEntity(handle, false, false)
                        DeleteEntity(handle)
                    end
                end
            end,

            Control = {
                position = vector3(372.115, 4827.504, -58.47),
                rotation = vector3(0.0, 0.0, 0.0),

                Enable = function(state)
                    local handle = GetClosestObjectOfType(DoomsdayFacility.PrivacyGlass.Bedroom.Control.position.x, DoomsdayFacility.PrivacyGlass.Bedroom.Control.position.y, DoomsdayFacility.PrivacyGlass.Bedroom.Control.position.z, 1.0, DoomsdayFacility.PrivacyGlass.controlModelHash, false, false, false)

                    if state then
                        if handle == 0 then
                            RequestModel(DoomsdayFacility.PrivacyGlass.controlModelHash)
                            while not HasModelLoaded(DoomsdayFacility.PrivacyGlass.controlModelHash) do
                                Citizen.Wait(0)
                            end

                            local privacyGlass = CreateObjectNoOffset(DoomsdayFacility.PrivacyGlass.controlModelHash, DoomsdayFacility.PrivacyGlass.Bedroom.Control.position.x, DoomsdayFacility.PrivacyGlass.Bedroom.Control.position.y, DoomsdayFacility.PrivacyGlass.Bedroom.Control.position.z, true, true, false)

                            SetEntityRotation(privacyGlass, DoomsdayFacility.PrivacyGlass.Bedroom.Control.rotation.x, DoomsdayFacility.PrivacyGlass.Bedroom.Control.rotation.y, DoomsdayFacility.PrivacyGlass.Bedroom.Control.rotation.z, 2, true)
                            FreezeEntityPosition(privacyGlass, true)
                            SetEntityAsMissionEntity(privacyGlass, false, false)
                        end
                    else
                        if handle ~= 0 then
                            SetEntityAsMissionEntity(handle, false, false)
                            DeleteEntity(handle)
                        end
                    end
                end,
            }
        },
        Lounge = {
            Glasses = {
                {
                    modelHash = `xm_prop_x17_l_door_glass_01`,
                    entityHash = `xm_prop_x17_l_door_frame_01`,
                    entityPos = vector3(359.22, 4846.043, -58.85)
                },
                {
                    modelHash = `xm_prop_x17_l_door_glass_01`,
                    entityHash = `xm_prop_x17_l_door_frame_01`,
                    entityPos = vector3(369.066, 4846.273, -58.85)
                },
                {
                    modelHash = `xm_prop_x17_l_glass_01`,
                    entityHash = `xm_prop_x17_l_frame_01`,
                    entityPos = vector3(358.843, 4845.103, -60.0)
                },
                {
                    modelHash = `xm_prop_x17_l_glass_02`,
                    entityHash = `xm_prop_x17_l_frame_02`,
                    entityPos = vector3(366.309, 4847.281, -60.0)
                },
                {
                    modelHash = `xm_prop_x17_l_glass_03`,
                    entityHash = `xm_prop_x17_l_frame_03`,
                    entityPos = vector3(371.194, 4841.27, -60.0)
                }
            },

            Enable = function(state)
                for key, glass in pairs(DoomsdayFacility.PrivacyGlass.Lounge.Glasses) do
                    local handle = GetClosestObjectOfType(glass.entityPos.x, glass.entityPos.y, glass.entityPos.z, 1.0, glass.modelHash, false, false, false)

                    if state then
                        if handle == 0 then
                            local entityToAttach = GetClosestObjectOfType(glass.entityPos.x, glass.entityPos.y, glass.entityPos.z, 1.0, glass.entityHash, false, false, false)

                            if entityToAttach ~= 0 then
                                RequestModel(glass.modelHash)
                                while not HasModelLoaded(glass.modelHash) do
                                    Citizen.Wait(0)
                                end

                                local privacyGlass = CreateObject(glass.modelHash, glass.entityPos.x, glass.entityPos.y, glass.entityPos.z, false, false, false)

                                SetEntityAsMissionEntity(privacyGlass, true, false)
                                SetEntityCollision_2(privacyGlass, false, 0)
                                SetEntityInvincible(privacyGlass, true)
                                SetEntityAlpha(privacyGlass, 254, false)
                                AttachEntityToEntity(privacyGlass, entityToAttach, -1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 2, 1)
                            end
                        end
                    else
                        if handle ~= 0 then
                            SetEntityAsMissionEntity(handle, false, false)
                            DeleteEntity(handle)
                        end
                    end
                end
            end,

            Control = {
                position = vector3(367.317, 4846.729, -58.448),
                rotation = vector3(0.0, 0.0, -16.0),

                Enable = function(state)
                    local handle = GetClosestObjectOfType(DoomsdayFacility.PrivacyGlass.Lounge.Control.position.x, DoomsdayFacility.PrivacyGlass.Lounge.Control.position.y, DoomsdayFacility.PrivacyGlass.Lounge.Control.position.z, 1.0, DoomsdayFacility.PrivacyGlass.controlModelHash, false, false, false)

                    if state then
                        if handle == 0 then
                            RequestModel(DoomsdayFacility.PrivacyGlass.controlModelHash)
                            while not HasModelLoaded(DoomsdayFacility.PrivacyGlass.controlModelHash) do
                                Citizen.Wait(0)
                            end

                            local privacyGlass = CreateObjectNoOffset(DoomsdayFacility.PrivacyGlass.controlModelHash, DoomsdayFacility.PrivacyGlass.Lounge.Control.position.x, DoomsdayFacility.PrivacyGlass.Lounge.Control.position.y, DoomsdayFacility.PrivacyGlass.Lounge.Control.position.z, true, true, false)

                            SetEntityRotation(privacyGlass, DoomsdayFacility.PrivacyGlass.Lounge.Control.rotation.x, DoomsdayFacility.PrivacyGlass.Lounge.Control.rotation.y, DoomsdayFacility.PrivacyGlass.Lounge.Control.rotation.z, 2, true)
                            FreezeEntityPosition(privacyGlass, true)
                            SetEntityAsMissionEntity(privacyGlass, false, false)
                        end
                    else
                        if handle ~= 0 then
                            SetEntityAsMissionEntity(handle, false, false)
                            DeleteEntity(handle)
                        end
                    end
                end
            }
        }
    },
    Details = {
        KhanjaliParts = {
            A = "Set_Int_02_Parts_Panther1",
            B = "Set_Int_02_Parts_Panther2",
            C = "Set_Int_02_Parts_Panther3"
        },
        RiotParts = {
            A = "Set_Int_02_Parts_Riot1",
            B = "Set_Int_02_Parts_Riot2",
            C = "Set_Int_02_Parts_Riot3"
        },
        ChenoParts = {
            A = "Set_Int_02_Parts_Cheno1",
            B = "Set_Int_02_Parts_Cheno2",
            C = "Set_Int_02_Parts_Cheno3"
        },
        ThrusterParts = {
            A = "Set_Int_02_Parts_Thruster1",
            B = "Set_Int_02_Parts_Thruster2",
            C = "Set_Int_02_Parts_Thruster3"
        },
        AvengerParts = {
            A = "Set_Int_02_Parts_Avenger1",
            B = "Set_Int_02_Parts_Avenger2",
            C = "Set_Int_02_Parts_Avenger3"
        },
        Outfits = {
            paramedic = "Set_Int_02_outfit_paramedic",
            morgue = "Set_Int_02_outfit_morgue",
            serverFarm = "Set_Int_02_outfit_serverfarm",
            iaa = "Set_Int_02_outfit_iaa",
            stealAvenger = "Set_Int_02_outfit_steal_avenger",
            foundry = "Set_Int_02_outfit_foundry",
            riot = "Set_Int_02_outfit_riot_van",
            stromberg = "Set_Int_02_outfit_stromberg",
            submarine = "Set_Int_02_outfit_sub_finale",
            predator = "Set_Int_02_outfit_predator",
            khanjali = "Set_Int_02_outfit_khanjali",
            volatol = "Set_Int_02_outfit_volatol"
        },
        Trophies = {
            eagle = "set_int_02_trophy1",
            iaa = "set_int_02_trophy_iaa",
            submarine = "set_int_02_trophy_sub",

            SetColor = function(color, refresh)
                SetInteriorPropColor(DoomsdayFacility.interiorId, "set_int_02_trophy_sub", color)

                if refresh then
                    RefreshInterior(DoomsdayFacility.interiorId)
                end
            end
        },
        Clutter = {
            A = "set_int_02_clutter1",
            B = "set_int_02_clutter2",
            C = "set_int_02_clutter3",
            D = "set_int_02_clutter4",
            E = "set_int_02_clutter5"
        },
        crewEmblem = "set_int_02_crewemblem",

        Enable = function(details, state, refresh)
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

        -- Privacy glass remote
        DoomsdayFacility.PrivacyGlass.Bedroom.Control.Enable(true)
        DoomsdayFacility.PrivacyGlass.Lounge.Control.Enable(true)

        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.crewEmblem, false)

        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.AvengerParts, true)

        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.Outfits, true)

        DoomsdayFacility.Details.Enable(DoomsdayFacility.Details.Trophies, true)
        DoomsdayFacility.Details.Trophies.SetColor(DoomsdayFacility.Colors.utility)

        DoomsdayFacility.Details.Enable({
            DoomsdayFacility.Details.Clutter.A,
            DoomsdayFacility.Details.Clutter.B
        }, true)

        RefreshInterior(DoomsdayFacility.interiorId)
    end
}
