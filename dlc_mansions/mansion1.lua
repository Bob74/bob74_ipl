-- The Vinewood Residence: 543.852, 712.754, 201.0
exports("GetMansion1", function()
    return Mansion1
end)

Mansion1 = {
    interiorId = 304385,

    Ipl = {
        Exterior = {
            ipl = {
                "m25_2_ch2_04_mansion_interior_a",
                "m25_2_ch2_04_mansion_interior_b",
                "m25_2_ch2_04_mansion_interior_c",
                "apa_ch2_04_mansion_shared",
                "apa_ch2_04_mansion_private",
                "apa_ch2_04_mansion_furniture",
                "apa_ch2_04_mansion_firepit",
                "apa_ch2_04_mansion_railings_p",
                "m25_2_east_mansion_gym",
                "m25_2_east_dog_house",
                "m25_2_mansion_props",
                "hei_ch1_roads_mansion"
            },

            Load = function()
                EnableIpl(Mansion1.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(Mansion1.Ipl.Exterior.ipl, false)
            end
        }
    },

    Style = {
        cali = {
            "set_style_cali",
            "set_elev_cali",
            "set_art_coastal",
            "set_trophy_planter",
            "set_shelving_planter"
        },
        loft = {
            "set_style_loft",
            "set_elev_loft",
            "set_art_loft",
            "set_loft_trophy_planter",
            "set_loft_shelving_planter"
        },
        holly = {
            "set_style_holly",
            "set_elev_holly",
            "set_art_regency",
            "set_reg_shelving_planter",
            "set_reg_trophy_planter"
        },

        Set = function(style, refresh)
            Mansion1.Style.Clear(refresh)

            SetIplPropState(Mansion1.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion1.interiorId, {
                Mansion1.Style.cali,
                Mansion1.Style.loft,
                Mansion1.Style.holly
            }, false, refresh)
        end
    },

    Tint = {
        cream = 0,
        mint = 1,
        lavender = 2,
        salmon = 3,

        SetColor = function(color, refresh)
            SetIplPropState(Mansion1.interiorId, "set_style_cali_tint", true, refresh)
            SetInteriorEntitySetColor(Mansion1.interiorId, "set_style_cali_tint", color)
        end
    },

    Wallpaper = {
        rustic = "set_wallpaper_rustic",
        deco = "set_wallpaper_deco",
        coastal = "set_wallpaper_coastal",
        subtle = "set_wallpaper_subtle",
        safari = "set_wallpaper_safari",
        popart = "set_wallpaper_popart",

        Set = function(wallpaper, refresh)
            Mansion1.Wallpaper.Clear(refresh)

            SetIplPropState(Mansion1.interiorId, wallpaper, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion1.interiorId, {
                Mansion1.Wallpaper.rustic,
                Mansion1.Wallpaper.deco,
                Mansion1.Wallpaper.coastal,
                Mansion1.Wallpaper.subtle,
                Mansion1.Wallpaper.safari,
                Mansion1.Wallpaper.popart
            }, false, refresh)
        end
    },

    Decorations = {
        xmas = "set_xmas",
        halloween = "set_halloween",
        lunar = "set_lunar",
        birthday = "set_birthday",

        Set = function(decorations, refresh)
            Mansion1.Decorations.Clear(refresh)

            SetIplPropState(Mansion1.interiorId, decorations, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion1.interiorId, {
                Mansion1.Decorations.xmas,
                Mansion1.Decorations.halloween,
                Mansion1.Decorations.lunar,
                Mansion1.Decorations.birthday
            }, false, refresh)
        end
    },

    Assistant = {
        og = "set_ai_tablets_01",
        haviland = "set_ai_tablets_02",
        angel = "set_ai_tablets_03",

        Set = function(assistant, refresh)
            Mansion1.Assistant.Clear(refresh)

            SetIplPropState(Mansion1.interiorId, assistant, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion1.interiorId, {
                Mansion1.Assistant.angel,
                Mansion1.Assistant.haviland,
                Mansion1.Assistant.og
            }, false, refresh)
        end
    },

    Details = {
        cat = "set_pet_cat",
        bowl = "set_pet_dog",
        poster = "set_michael_poster",

        Enable = function(details, state, refresh)
            SetIplPropState(Mansion1.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        Mansion1.Ipl.Exterior.Load()

        -- Interior
        Mansion1.Style.Set(Mansion1.Style.cali, false)
        Mansion1.Wallpaper.Set(Mansion1.Wallpaper.deco, false)
        Mansion1.Tint.SetColor(Mansion1.Tint.cream, false)

        Mansion1.Assistant.Set(Mansion1.Assistant.angel, false)
        Mansion1.Details.Enable(Mansion1.Details.cat, true, false)
        Mansion1.Details.Enable(Mansion1.Details.bowl, true, false)

        RefreshInterior(Mansion1.interiorId)
    end
}