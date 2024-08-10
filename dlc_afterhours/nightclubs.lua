-- Nightclub: -1604.664 -3012.583 -78.000
exports('GetAfterHoursNightclubsObject', function()
    return AfterHoursNightclubs
end)

AfterHoursNightclubs = {
    interiorId = 271617,

    Ipl = {
        Interior = {
            ipl = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_",

            Load = function()
                EnableIpl(AfterHoursNightclubs.Ipl.Interior.ipl, true)
            end,
            Remove = function()
                EnableIpl(AfterHoursNightclubs.Ipl.Interior.ipl, false)
            end
        }
    },

    Interior = {
        Name = {
            galaxy = "Int01_ba_clubname_01",
            studio = "Int01_ba_clubname_02",
            omega = "Int01_ba_clubname_03",
            technologie = "Int01_ba_clubname_04",
            gefangnis = "Int01_ba_clubname_05",
            maisonette = "Int01_ba_clubname_06",
            tony = "Int01_ba_clubname_07",
            palace = "Int01_ba_clubname_08",
            paradise = "Int01_ba_clubname_09",

            Set = function(name, refresh)
                AfterHoursNightclubs.Interior.Name.Clear(false)

                SetIplPropState(AfterHoursNightclubs.interiorId, name, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(AfterHoursNightclubs.Interior.Name) do
                    if type(value) == "string" then
                        SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Style = {
            trad = "Int01_ba_Style01",
            edgy = "Int01_ba_Style02",
            glam = "Int01_ba_Style03",

            Set = function(style, refresh)
                AfterHoursNightclubs.Interior.Style.Clear(false)

                SetIplPropState(AfterHoursNightclubs.interiorId, style, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(AfterHoursNightclubs.Interior.Style) do
                    if type(value) == "string" then
                        SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Podium = {
            none = "",
            trad = "Int01_ba_style01_podium",
            edgy = "Int01_ba_style02_podium",
            glam = "Int01_ba_style03_podium",

            Set = function(podium, refresh)
                AfterHoursNightclubs.Interior.Podium.Clear(false)

                SetIplPropState(AfterHoursNightclubs.interiorId, podium, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(AfterHoursNightclubs.Interior.Podium) do
                    if type(value) == "string" then
                        SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Speakers = {
            none = "",
            basic = "Int01_ba_equipment_setup",
            upgrade = {
                "Int01_ba_equipment_setup",
                "Int01_ba_equipment_upgrade"
            },

            Set = function(speakers, refresh)
                AfterHoursNightclubs.Interior.Speakers.Clear(false)

                SetIplPropState(AfterHoursNightclubs.interiorId, speakers, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(AfterHoursNightclubs.Interior.Speakers) do
                    if type(value) == "string" then
                        SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Security = {
            off = "",
            on = "Int01_ba_security_upgrade",

            Set = function(security, refresh)
                AfterHoursNightclubs.Interior.Security.Clear(false)

                SetIplPropState(AfterHoursNightclubs.interiorId, security, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(AfterHoursNightclubs.interiorId, AfterHoursNightclubs.Interior.Security.on, false, refresh)
            end
        },
        Turntables = {
            none = "",
            style01 = "Int01_ba_dj01",
            style02 = "Int01_ba_dj02",
            style03 = "Int01_ba_dj03",
            style04 = "Int01_ba_dj04",

            Set = function(turntables, refresh)
                AfterHoursNightclubs.Interior.Turntables.Clear(false)

                if turntables ~= "" then
                    SetIplPropState(AfterHoursNightclubs.interiorId, turntables, true, refresh)
                else
                    if refresh then
                        RefreshInterior(AfterHoursNightclubs.interiorId)
                    end
                end
            end,
            Clear = function(refresh)
                for key, value in pairs(AfterHoursNightclubs.Interior.Turntables) do
                    if type(value) == "string" then
                        SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Lights = {
            Droplets = {
                yellow = "DJ_01_Lights_01",
                green = "DJ_02_Lights_01",
                white = "DJ_03_Lights_01",
                purple = "DJ_04_Lights_01",

                Set = function(light, refresh)
                    AfterHoursNightclubs.Interior.Lights.Droplets.Clear(false)

                    SetIplPropState(AfterHoursNightclubs.interiorId, light, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(AfterHoursNightclubs.Interior.Lights.Droplets) do
                        if type(value) == "string" then
                            SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Neons = {
                yellow = "DJ_01_Lights_02",
                white = "DJ_02_Lights_02",
                purple = "DJ_03_Lights_02",
                cyan = "DJ_04_Lights_02",

                Set = function(light, refresh)
                    AfterHoursNightclubs.Interior.Lights.Neons.Clear(false)

                    SetIplPropState(AfterHoursNightclubs.interiorId, light, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(AfterHoursNightclubs.Interior.Lights.Neons) do
                        if type(value) == "string" then
                            SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Bands = {
                yellow = "DJ_01_Lights_03",
                green = "DJ_02_Lights_03",
                white = "DJ_03_Lights_03",
                cyan = "DJ_04_Lights_03",

                Set = function(light, refresh)
                    AfterHoursNightclubs.Interior.Lights.Bands.Clear(false)

                    SetIplPropState(AfterHoursNightclubs.interiorId, light, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(AfterHoursNightclubs.Interior.Lights.Bands) do
                        if type(value) == "string" then
                            SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Lasers = {
                yellow = "DJ_01_Lights_04",
                green = "DJ_02_Lights_04",
                white = "DJ_03_Lights_04",
                purple = "DJ_04_Lights_04",

                Set = function(light, refresh)
                    AfterHoursNightclubs.Interior.Lights.Lasers.Clear(false)

                    SetIplPropState(AfterHoursNightclubs.interiorId, light, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(AfterHoursNightclubs.Interior.Lights.Lasers) do
                        if type(value) == "string" then
                            SetIplPropState(AfterHoursNightclubs.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Clear = function()
                AfterHoursNightclubs.Interior.Lights.Droplets.Clear()
                AfterHoursNightclubs.Interior.Lights.Neons.Clear()
                AfterHoursNightclubs.Interior.Lights.Bands.Clear()
                AfterHoursNightclubs.Interior.Lights.Lasers.Clear()
            end
        },
        Bar = {
            Enable = function(state, refresh)
                SetIplPropState(AfterHoursNightclubs.interiorId, "Int01_ba_bar_content", state, refresh)
            end
        },
        Booze = {
            A = "Int01_ba_booze_01",
            B = "Int01_ba_booze_02",
            C = "Int01_ba_booze_03",

            Enable = function(booze, state, refresh)
                if type(booze) == "table" then
                    for key, value in pairs(booze) do
                        if type(value) == "string" then
                            SetIplPropState(AfterHoursNightclubs.interiorId, booze, state, refresh)
                        end
                    end
                else
                    SetIplPropState(AfterHoursNightclubs.interiorId, booze, state, refresh)
                end
            end
        },
        Trophy = {
            Color = {
                bronze = 0,
                silver = 1,
                gold = 2
            },
            number1 = "Int01_ba_trophy01",
            battler = "Int01_ba_trophy02",
            dancer = "Int01_ba_trophy03",

            Enable = function(trophy, state, color, refresh)
                SetIplPropState(AfterHoursNightclubs.interiorId, trophy, state, refresh)
                SetInteriorEntitySetColor(AfterHoursNightclubs.interiorId, trophy, color)
            end
        },
        DryIce = {
            scale = 5.0,
            Emitters = {
                {
                    pos = vector3(-1602.932, -3019.1, -79.99),
                    rot = vector3(0.0, -10.0, 66.0)
                },
                {
                    pos = vector3(-1593.238, -3017.05, -79.99),
                    rot = vector3(0.0, -10.0, 110.0)
                },
                {
                    pos = vector3(-1597.134, -3008.2, -79.99),
                    rot = vector3(0.0, -10.0, -122.53)
                },
                {
                    pos = vector3(-1589.966, -3008.518, -79.99),
                    rot = vector3(0.0, -10.0, -166.97)
                }
            },

            Enable = function(state)
                if state then
                    RequestNamedPtfxAsset("scr_ba_club")
                    while not HasNamedPtfxAssetLoaded("scr_ba_club") do
                        Wait(0)
                    end

                    for key, emitter in pairs(AfterHoursNightclubs.Interior.DryIce.Emitters) do
                        UseParticleFxAsset("scr_ba_club")
                        StartParticleFxLoopedAtCoord("scr_ba_club_smoke_machine", emitter.pos.x, emitter.pos.y, emitter.pos.z, emitter.rot.x, emitter.rot.y, emitter.rot.z, AfterHoursNightclubs.Interior.DryIce.scale, false, false, false, true)
                    end
                else
                    local radius = 1.0

                    for key, emitter in pairs(AfterHoursNightclubs.Interior.DryIce.Emitters) do
                        RemoveParticleFxInRange(emitter.pos.x, emitter.pos.y, emitter.pos.z, radius)
                    end
                end
            end,
        },
        Details = {
            clutter = "Int01_ba_Clutter", -- Clutter and graffitis
            worklamps = "Int01_ba_Worklamps", -- Work lamps + trash
            truck = "Int01_ba_deliverytruck", -- Truck parked in the garage
            dryIce = "Int01_ba_dry_ice", -- Dry ice machines (no effects)
            lightRigsOff = "light_rigs_off", -- All light rigs at once but turned off
            roofLightsOff = "Int01_ba_lightgrid_01", -- Fake lights
            floorTradLights = "Int01_ba_trad_lights", -- Floor lights meant to go with the trad style
            chest = "Int01_ba_trophy04", -- Chest on the VIP desk
            vaultAmmunations = "Int01_ba_trophy05", -- (inside vault) Ammunations
            vaultMeth = "Int01_ba_trophy07", -- (inside vault) Meth bag
            vaultFakeID = "Int01_ba_trophy08", -- (inside vault) Fake ID
            vaultWeed = "Int01_ba_trophy09", -- (inside vault) Opened weed bag
            vaultCoke = "Int01_ba_trophy10", -- (inside vault) Coke doll
            vaultCash = "Int01_ba_trophy11", -- (inside vault) Scrunched fake money

            Enable = function(details, state, refresh)
                SetIplPropState(AfterHoursNightclubs.interiorId, details, state, refresh)
            end
        }
    },

    -- 760, -1337, 27
    Mesa = {
        id = 0,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.Mesa.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.Mesa.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.Mesa.id)
            end
        }
    },

    -- 348, -979, 30
    MissionRow = {
        id = 1,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.MissionRow.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.MissionRow.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.MissionRow.id)
            end
        }
    },

    -- -118, -1260, 30
    Strawberry = {
        id = 2,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.Strawberry.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.Strawberry.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.Strawberry.id)
            end
        }
    },

    -- 9, 221, 109
    VinewoodWest = {
        id = 3,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.VinewoodWest.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.VinewoodWest.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.VinewoodWest.id)
            end
        }
    },

    -- 868, -2098, 31
    Cypress = {
        id = 4,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.Cypress.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.Cypress.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.Cypress.id)
            end
        }
    },

    -- -1287, -647, 27
    DelPerro = {
        id = 5,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.DelPerro.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.DelPerro.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.DelPerro.id)
            end
        }
    },

    -- -680, -2461, 14
    Airport = {
        id = 6,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.Airport.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.Airport.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.Airport.id)
            end
        }
    },

    -- 192, -3168, 6
    Elysian = {
        id = 7,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.Elysian.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.Elysian.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.Elysian.id)
            end
        }
    },

    -- 373, 254, 103
    Vinewood = {
        id = 8,

        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.Vinewood.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.Vinewood.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.Vinewood.id)
            end
        }
    },

    -- -1171, -1150, 6
    Vespucci = {
        id = 9,
        Barrier = {
            Enable = function(state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Barrier.Enable(AfterHoursNightclubs.Vespucci.id, state)
            end
        },
        Posters = {
            Enable = function(poster, state)
                if state == nil then
                    state = true
                end

                AfterHoursNightclubs.Posters.Enable(AfterHoursNightclubs.Vespucci.id, poster, state)
            end,
            Clear = function()
                AfterHoursNightclubs.Posters.Clear(AfterHoursNightclubs.Vespucci.id)
            end
        }
    },

    Barrier = {
        barrier = "ba_barriers_caseX",

        Enable = function(clubId, state)
            value = AfterHoursNightclubs.Barrier.barrier:gsub("caseX", "case" .. tostring(clubId))

            EnableIpl(value, state)
        end
    },
    Posters = {
        forSale = "ba_caseX_forsale",
        dixon = "ba_caseX_dixon",
        madonna = "ba_caseX_madonna",
        solomun = "ba_caseX_solomun",
        taleOfUs = "ba_caseX_taleofus",

        Enable = function(clubId, poster, state)
            if type(poster) == "table" then
                for key, value in pairs(poster) do
                    if type(value) == "string" then
                        value = value:gsub("caseX", "case" .. tostring(clubId))

                        EnableIpl(value, state)
                    end
                end
            else
                poster = poster:gsub("caseX", "case" .. tostring(clubId))

                EnableIpl(poster, state)
            end
        end,
        Clear = function(clubId)
            for key, value in pairs(AfterHoursNightclubs.Posters) do
                if type(value) == "string" then
                    value = value:gsub("caseX", "case" .. tostring(clubId))

                    EnableIpl(value, false)
                end
            end
        end
    },

    LoadDefault = function()
        -- Interior setup
        AfterHoursNightclubs.Ipl.Interior.Load()

        AfterHoursNightclubs.Interior.Name.Set(AfterHoursNightclubs.Interior.Name.galaxy)
        AfterHoursNightclubs.Interior.Style.Set(AfterHoursNightclubs.Interior.Style.edgy)

        AfterHoursNightclubs.Interior.Podium.Set(AfterHoursNightclubs.Interior.Podium.edgy)
        AfterHoursNightclubs.Interior.Speakers.Set(AfterHoursNightclubs.Interior.Speakers.upgrade)

        AfterHoursNightclubs.Interior.Security.Set(AfterHoursNightclubs.Interior.Security.on)

        AfterHoursNightclubs.Interior.Turntables.Set(AfterHoursNightclubs.Interior.Turntables.style01)
        AfterHoursNightclubs.Interior.Lights.Bands.Set(AfterHoursNightclubs.Interior.Lights.Bands.cyan)

        AfterHoursNightclubs.Interior.Bar.Enable(true)

        AfterHoursNightclubs.Interior.Booze.Enable(AfterHoursNightclubs.Interior.Booze, true)

        AfterHoursNightclubs.Interior.Trophy.Enable(AfterHoursNightclubs.Interior.Trophy.number1, true, AfterHoursNightclubs.Interior.Trophy.Color.gold)

        RefreshInterior(AfterHoursNightclubs.interiorId)

        -- Exterior IPL
        AfterHoursNightclubs.Mesa.Barrier.Enable(true)
        AfterHoursNightclubs.Mesa.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.Mesa.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.MissionRow.Barrier.Enable(true)
        AfterHoursNightclubs.MissionRow.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.MissionRow.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.Strawberry.Barrier.Enable(true)
        AfterHoursNightclubs.Strawberry.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.Strawberry.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.VinewoodWest.Barrier.Enable(true)
        AfterHoursNightclubs.VinewoodWest.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.VinewoodWest.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.Cypress.Barrier.Enable(true)
        AfterHoursNightclubs.Cypress.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.Cypress.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.DelPerro.Barrier.Enable(true)
        AfterHoursNightclubs.DelPerro.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.DelPerro.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.Airport.Barrier.Enable(true)
        AfterHoursNightclubs.Airport.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.Airport.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.Elysian.Barrier.Enable(true)
        AfterHoursNightclubs.Elysian.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.Elysian.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.Vinewood.Barrier.Enable(true)
        AfterHoursNightclubs.Vinewood.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.Vinewood.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)

        AfterHoursNightclubs.Vespucci.Barrier.Enable(true)
        AfterHoursNightclubs.Vespucci.Posters.Enable(AfterHoursNightclubs.Posters, true)
        AfterHoursNightclubs.Vespucci.Posters.Enable(AfterHoursNightclubs.Posters.forSale, false)
    end
}
