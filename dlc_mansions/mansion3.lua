-- The Tongva Estate: -2601.712, 1874.826, 166.0
exports("GetMansion3", function()
    return Mansion3
end)

Mansion3 = {
    interiorId = 303617,

    Ipl = {
        Exterior = {
            ipl = {
                "hei_ch1_09_mansion_shared",
                "m25_2_ch1_09_mansion_interior_a",
                "m25_2_ch1_09_mansion_interior_b",
                "m25_2_ch1_09_mansion_interior_c",
                "hei_ch1_09_mansion_private",
                "hei_ch1_09_mansion_furniture",
                "hei_ch1_09_mansion_firepit",
                "hei_ch1_09_mansion_railings_p",
                "m25_2_tongva_mansion_gym",
                "m25_2_tongva_dog_house",
                "m25_2_mansion_props",
                "hei_ch1_roads_mansion"
            },

            Load = function()
                EnableIpl(Mansion3.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(Mansion3.Ipl.Exterior.ipl, false)
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
            Mansion3.Style.Clear(refresh)

            SetIplPropState(Mansion3.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion3.interiorId, {
                Mansion3.Style.cali,
                Mansion3.Style.loft,
                Mansion3.Style.holly
            }, false, refresh)
        end
    },

    Tint = {
        cream = 0,
        mint = 1,
        lavender = 2,
        salmon = 3,

        SetColor = function(color, refresh)
            SetIplPropState(Mansion3.interiorId, "set_style_cali_tint", true, refresh)
            SetInteriorEntitySetColor(Mansion3.interiorId, "set_style_cali_tint", color)
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
            Mansion3.Wallpaper.Clear(refresh)

            SetIplPropState(Mansion3.interiorId, wallpaper, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion3.interiorId, {
                Mansion3.Wallpaper.rustic,
                Mansion3.Wallpaper.deco,
                Mansion3.Wallpaper.coastal,
                Mansion3.Wallpaper.subtle,
                Mansion3.Wallpaper.safari,
                Mansion3.Wallpaper.popart
            }, false, refresh)
        end
    },

    Decorations = {
        xmas = "set_xmas",
        halloween = "set_halloween",
        lunar = "set_lunar",
        birthday = "set_birthday",

        Set = function(decorations, refresh)
            Mansion3.Decorations.Clear(refresh)

            SetIplPropState(Mansion3.interiorId, decorations, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion3.interiorId, {
                Mansion3.Decorations.xmas,
                Mansion3.Decorations.halloween,
                Mansion3.Decorations.lunar,
                Mansion3.Decorations.birthday
            }, false, refresh)
        end
    },

    Assistant = {
        og = "set_ai_tablets_01",
        haviland = "set_ai_tablets_02",
        angel = "set_ai_tablets_03",

        Set = function(assistant, refresh)
            Mansion3.Assistant.Clear(refresh)

            SetIplPropState(Mansion3.interiorId, assistant, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion3.interiorId, {
                Mansion3.Assistant.angel,
                Mansion3.Assistant.haviland,
                Mansion3.Assistant.og
            }, false, refresh)
        end
    },

    Details = {
        cat = "set_pet_cat",
        bowl = "set_pet_dog",
        poster = "set_michael_poster",

        Enable = function(details, state, refresh)
            SetIplPropState(Mansion3.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        Mansion3.Ipl.Exterior.Load()

        -- Interior
        Mansion3.Style.Set(Mansion3.Style.cali, false)
        Mansion3.Wallpaper.Set(Mansion3.Wallpaper.deco, false)
        Mansion3.Tint.SetColor(Mansion3.Tint.cream, false)

        Mansion3.Assistant.Set(Mansion3.Assistant.angel, false)
        Mansion3.Details.Enable(Mansion3.Details.cat, true, false)
        Mansion3.Details.Enable(Mansion3.Details.bowl, true, false)

        RefreshInterior(Mansion3.interiorId)
    end
}