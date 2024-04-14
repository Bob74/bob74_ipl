-- Eclipse Boulevard Garage: 519.2477, -2618.788, -50.000
exports('GetDrugWarsGarageObject', function()
    return DrugWarsGarage
end)

DrugWarsGarage = {
    interiorId = 290561,

    Ipl = {
        Exterior = {
            ipl = "xm3_garage_fix",

            Load = function()
                EnableIpl(DrugWarsGarage.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(DrugWarsGarage.Ipl.Exterior.ipl, false)
            end
        }
    },

    Banner = {
        model = `ss1_13_clth_ss1_13`,
        position = vector3(-277.1116, 281.5493, 98.6691),

        Hide = function()
            CreateModelHide(DrugWarsGarage.Banner.position, 10.0, DrugWarsGarage.Banner.model, true)
        end,
        Restore = function()
            RemoveModelHide(DrugWarsGarage.Banner.position, 10.0, DrugWarsGarage.Banner.model, false)
        end
    },

    Numbering = {
        none = "",
        level1 = "entity_set_numbers_01",
        level2 = "entity_set_numbers_02",
        level3 = "entity_set_numbers_03",
        level4 = "entity_set_numbers_04",
        level5 = "entity_set_numbers_05",

        Set = function(num, refresh)
            DrugWarsGarage.Numbering.Clear(false)

            if num ~= "" then
                SetIplPropState(DrugWarsGarage.interiorId, num, true, refresh)
            else
                if refresh then
                    RefreshInterior(DrugWarsGarage.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(DrugWarsGarage.interiorId, {
                DrugWarsGarage.Numbering.level1,
                DrugWarsGarage.Numbering.level2,
                DrugWarsGarage.Numbering.level3,
                DrugWarsGarage.Numbering.level4,
                DrugWarsGarage.Numbering.level5
            }, false, refresh)
        end
    },

    Style = {
        immaculate = "entity_set_shell_01",
        industrial = "entity_set_shell_02",
        indulgent = "entity_set_shell_03",

        Set = function(style, refresh)
            DrugWarsGarage.Style.Clear(false)

            SetIplPropState(DrugWarsGarage.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(DrugWarsGarage.interiorId, {
                DrugWarsGarage.Style.immaculate,
                DrugWarsGarage.Style.industrial,
                DrugWarsGarage.Style.indulgent
            }, false, refresh)
        end
    },

    Tint = {
        white = 1,
        gray = 2,
        black = 3,
        purple = 4,
        orange = 5,
        yellow = 6,
        blue = 7,
        red = 8,
        green = 9,
        lightBlue = 10,
        lightGreen = 11,

        SetColor = function(color, refresh)
            SetIplPropState(DrugWarsGarage.interiorId, "entity_set_tint_01", true, refresh)
            SetInteriorEntitySetColor(DrugWarsGarage.interiorId, "entity_set_tint_01", color)
        end
    },

    LoadDefault = function()
        -- Exterior
        DrugWarsGarage.Ipl.Exterior.Load()
        DrugWarsGarage.Banner.Hide()

        -- Interior
        DrugWarsGarage.Numbering.Set(DrugWarsGarage.Numbering.level1, false)
        DrugWarsGarage.Style.Set(DrugWarsGarage.Style.immaculate, false)
        DrugWarsGarage.Tint.SetColor(DrugWarsGarage.Tint.white, false)

        RefreshInterior(DrugWarsGarage.interiorId)
    end
}
