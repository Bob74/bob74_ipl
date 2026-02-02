-- Richman Villa: -1630.434, 470.852, 128.0
exports("GetMansion2", function()
    return Mansion2
end)

Mansion2 = {
    interiorId = 302593,

    Ipl = {
        Exterior = {
            ipl = {
                "hei_ch1_06e_mansion_shared",
                "hei_ch1_06f_mansion_shared",
                "m25_2_ch1_06e_mansion_interior_a",
                "m25_2_ch1_06e_mansion_interior_b",
                "m25_2_ch1_06e_mansion_interior_c",
                "hei_ch1_06e_mansion_private",
                "hei_ch1_06e_mansion_furniture",
                "hei_ch1_06e_mansion_firepit",
                "hei_ch1_06e_mansion_railings_p",
                "m25_2_mansion_gym",
                "m25_2_dog_house",
                "m25_2_mansion_props",
                "hei_ch1_roads_mansion"
            },

            Load = function()
                EnableIpl(Mansion2.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(Mansion2.Ipl.Exterior.ipl, false)
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
            Mansion2.Style.Clear(refresh)

            SetIplPropState(Mansion2.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion2.interiorId, {
                Mansion2.Style.cali,
                Mansion2.Style.loft,
                Mansion2.Style.holly
            }, false, refresh)
        end
    },

    Tint = {
        cream = 0,
        mint = 1,
        lavender = 2,
        salmon = 3,

        SetColor = function(color, refresh)
            SetIplPropState(Mansion2.interiorId, "set_style_cali_tint", true, refresh)
            SetInteriorEntitySetColor(Mansion2.interiorId, "set_style_cali_tint", color)
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
            Mansion2.Wallpaper.Clear(refresh)

            SetIplPropState(Mansion2.interiorId, wallpaper, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion2.interiorId, {
                Mansion2.Wallpaper.rustic,
                Mansion2.Wallpaper.deco,
                Mansion2.Wallpaper.coastal,
                Mansion2.Wallpaper.subtle,
                Mansion2.Wallpaper.safari,
                Mansion2.Wallpaper.popart
            }, false, refresh)
        end
    },

    Decorations = {
        xmas = "set_xmas",
        halloween = "set_halloween",
        lunar = "set_lunar",
        birthday = "set_birthday",

        Set = function(decorations, refresh)
            Mansion2.Decorations.Clear(refresh)

            SetIplPropState(Mansion2.interiorId, decorations, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion2.interiorId, {
                Mansion2.Decorations.xmas,
                Mansion2.Decorations.halloween,
                Mansion2.Decorations.lunar,
                Mansion2.Decorations.birthday
            }, false, refresh)
        end
    },

    Assistant = {
        og = "set_ai_tablets_01",
        haviland = "set_ai_tablets_02",
        angel = "set_ai_tablets_03",

        Set = function(assistant, refresh)
            Mansion2.Assistant.Clear(refresh)

            SetIplPropState(Mansion2.interiorId, assistant, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion2.interiorId, {
                Mansion2.Assistant.angel,
                Mansion2.Assistant.haviland,
                Mansion2.Assistant.og
            }, false, refresh)
        end
    },

    Details = {
        cat = "set_pet_cat",
        bowl = "set_pet_dog",
        poster = "set_michael_poster",

        Enable = function(details, state, refresh)
            SetIplPropState(Mansion2.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        Mansion2.Ipl.Exterior.Load()

        -- Interior
        Mansion2.Style.Set(Mansion2.Style.cali, false)
        Mansion2.Wallpaper.Set(Mansion2.Wallpaper.deco, false)
        Mansion2.Tint.SetColor(Mansion2.Tint.cream, false)

        Mansion2.Assistant.Set(Mansion2.Assistant.angel, false)
        Mansion2.Details.Enable(Mansion2.Details.cat, true, false)
        Mansion2.Details.Enable(Mansion2.Details.bowl, true, false)

        RefreshInterior(Mansion2.interiorId)
    end
}