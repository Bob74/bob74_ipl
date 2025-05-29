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

    LoadDefault = function()
        DiamondArcade.Style.Set(DiamondArcade.Style.normal, false)
        DiamondArcade.Ceiling.Set(DiamondArcade.Ceiling.flat, false)
        DiamondArcade.Mural.Set(DiamondArcade.Mural.forever, false);
        DiamondArcade.Floor.Set(DiamondArcade.Floor.proper, false)

        RefreshInterior(DiamondArcade.interiorId)
    end
}