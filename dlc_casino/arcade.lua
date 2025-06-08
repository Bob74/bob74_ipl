-- Arcade: 2732.000, -380.000, -50.000
exports('GetDiamondArcadeObject', function()
    return DiamondArcade
end)

DiamondArcade = {
    interiorId = 278273,

    Style = {
        derelict = {
            "entity_set_arcade_set_derelict",
            "entity_set_arcade_set_derelict_carpet",
            "entity_set_arcade_set_derelict_clean_up"
        },
        normal = "entity_set_constant_geometry",

        Set = function(style, refresh)
            DiamondArcade.Style.Clear(false)

            SetIplPropState(DiamondArcade.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DiamondArcade.interiorId, {
                DiamondArcade.Style.derelict,
                DiamondArcade.Style.normal
            }, false, refresh)
        end
    },

    Ceiling = {
        flat = "entity_set_arcade_set_ceiling_flat",
        mirror = "entity_set_arcade_set_ceiling_mirror",
        beams = "entity_set_arcade_set_ceiling_beams",

        Set = function(ceiling, refresh)
            DiamondArcade.Ceiling.Clear(false)

            SetIplPropState(DiamondArcade.interiorId, ceiling, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DiamondArcade.interiorId, {
                DiamondArcade.Ceiling.flat,
                DiamondArcade.Ceiling.mirror,
                DiamondArcade.Ceiling.beams
            }, false, refresh)
        end
    },

    Mural = {
        edgy = "entity_set_mural_option_01",
        stripes = "entity_set_mural_option_02",
        kawaii = "entity_set_mural_option_03",
        thought = "entity_set_mural_option_04",
        forever = "entity_set_mural_option_05",
        wireframed = "entity_set_mural_option_06",
        colors = "entity_set_mural_option_07",
        realm = "entity_set_mural_option_08",

        Set = function(mural, refresh)
            DiamondArcade.Mural.Clear(false)

            SetIplPropState(DiamondArcade.interiorId, mural, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DiamondArcade.interiorId, {
                DiamondArcade.Mural.edgy,
                DiamondArcade.Mural.stripes,
                DiamondArcade.Mural.kawaii,
                DiamondArcade.Mural.thought,
                DiamondArcade.Mural.forever,
                DiamondArcade.Mural.wireframed,
                DiamondArcade.Mural.colors,
                DiamondArcade.Mural.realm
            }, false, refresh)
        end
    },

    Floor = {
        proper = "entity_set_floor_option_01",
        scale = "entity_set_floor_option_02",
        rainbow = "entity_set_floor_option_03",
        lab = "entity_set_floor_option_04",
        intergalactic = "entity_set_floor_option_05",
        stars = "entity_set_floor_option_06",
        playthings = "entity_set_floor_option_07",
        thunderclap = "entity_set_floor_option_08",

        Set = function(floor, refresh)
            DiamondArcade.Floor.Clear(false)

            SetIplPropState(DiamondArcade.interiorId, floor, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DiamondArcade.interiorId, {
                DiamondArcade.Floor.proper,
                DiamondArcade.Floor.scale,
                DiamondArcade.Floor.rainbow,
                DiamondArcade.Floor.lab,
                DiamondArcade.Floor.intergalactic,
                DiamondArcade.Floor.stars,
                DiamondArcade.Floor.playthings,
                DiamondArcade.Floor.thunderclap
            }, false, refresh)
        end
    },

    Trophy = {
        claw = "entity_set_arcade_set_trophy_claw",
        love = "entity_set_arcade_set_trophy_love",
        teller = "entity_set_arcade_set_trophy_teller",
        gunner = "entity_set_arcade_set_trophy_gunner",
        king = "entity_set_arcade_set_trophy_king",
        racer = "entity_set_arcade_set_trophy_racer",
        patriot = "entity_set_arcade_set_trophy_patriot",
        monkey = "entity_set_arcade_set_trophy_monkey",
        brawler = "entity_set_arcade_set_trophy_brawler",
        retro = "entity_set_arcade_set_trophy_retro",
        cabs = "entity_set_arcade_set_trophy_cabs",
        strife = "entity_set_arcade_set_trophy_strife",

        Enable = function(trophy, state, refresh)
            SetIplPropState(DiamondArcade.interiorId, trophy, state, refresh)
        end
    },

    Plushie = {
        purple = "entity_set_plushie_01",
        green = "entity_set_plushie_02",
        blue = "entity_set_plushie_03",
        orange = "entity_set_plushie_04",
        yellow = "entity_set_plushie_05",
        red = "entity_set_plushie_06",
        princess = "entity_set_plushie_07",
        wasabi = "entity_set_plushie_08",
        master = "entity_set_plushie_09",

        Enable = function(plushie, state, refresh)
            SetIplPropState(DiamondArcade.interiorId, plushie, state, refresh)
        end
    },

    Details = {
        tv = "entity_set_big_screen",
        screens = "entity_set_screens",

        Enable = function(details, state, refresh)
            SetIplPropState(DiamondArcade.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        DiamondArcade.Style.Set(DiamondArcade.Style.normal, false)
        DiamondArcade.Ceiling.Set(DiamondArcade.Ceiling.flat, false)
        DiamondArcade.Mural.Set(DiamondArcade.Mural.forever, false);
        DiamondArcade.Floor.Set(DiamondArcade.Floor.proper, false)

        DiamondArcade.Trophy.Enable(DiamondArcade.Trophy.claw, true, false)
        DiamondArcade.Trophy.Enable(DiamondArcade.Trophy.teller, true, false)
        DiamondArcade.Trophy.Enable(DiamondArcade.Trophy.gunner, true, false)
        DiamondArcade.Trophy.Enable(DiamondArcade.Trophy.brawler, true, false)
        DiamondArcade.Trophy.Enable(DiamondArcade.Trophy.cabs, true, false)

        DiamondArcade.Plushie.Enable(DiamondArcade.Plushie.purple, true, false)
        DiamondArcade.Plushie.Enable(DiamondArcade.Plushie.princess, true, false)
        DiamondArcade.Plushie.Enable(DiamondArcade.Plushie.wasabi, true, false)
        DiamondArcade.Plushie.Enable(DiamondArcade.Plushie.master, true, false)

        DiamondArcade.Details.Enable(DiamondArcade.Details.tv, true, false)
        DiamondArcade.Details.Enable(DiamondArcade.Details.screens, true, false)

        RefreshInterior(DiamondArcade.interiorId)
    end
}