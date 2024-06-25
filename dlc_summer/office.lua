-- Bail office: 565.886, -2688.761, -50.0
exports('GetSummerOfficeObject', function()
    return SummerOffice
end)

SummerOffice = {
    interiorId = 0,

    Style = {
        vintage = {
            "set_style_01",
            "set_quarters_closed_s1"
        },
        patterns = {
            "set_style_02",
            "set_quarters_closed_s2"
        },
        teak = {
            "set_style_03",
            "set_quarters_closed_s3"
        },

        Set = function(style, refresh)
            SummerOffice.Style.Clear(false)

            SetIplPropState(SummerOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(SummerOffice.interiorId, {
                SummerOffice.Style.vintage,
                SummerOffice.Style.patterns,
                SummerOffice.Style.teak
            }, false, refresh)
        end
    },

    Desk = {
        files = "set_no_staff",
        computers = "set_staff_upgrade",

        Set = function(style, refresh)
            SummerOffice.Desk.Clear(false)

            SetIplPropState(SummerOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(SummerOffice.interiorId, {
                SummerOffice.Desk.files,
                SummerOffice.Desk.computers
            }, false, refresh)
        end
    },

    Gunsafe = {
        cabinet = "set_gunsafe_off",
        gunsafe = "set_gunsafe_on",

        Set = function(style, refresh)
            SummerOffice.Gunsafe.Clear(false)

            SetIplPropState(SummerOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(SummerOffice.interiorId, {
                SummerOffice.Gunsafe.cabinet,
                SummerOffice.Gunsafe.gunsafe
            }, false, refresh)
        end
    },

    Trophy = {
        plaque = "set_trophy_10x",
        badge = "set_trophy_24x",
        handcuffs = "set_trophy_100x",

        Enable = function(trophy, state, refresh)
            SetIplPropState(SummerOffice.interiorId, trophy, state, refresh)
        end
    },

    Plant = {
        plant = "set_new_plant",

        Enable = function(state, refresh)
            SetIplPropState(SummerOffice.interiorId, SummerOffice.Plant.plant, state, refresh)
        end
    },

    LoadDefault = function()
        SummerOffice.Style.Set(SummerOffice.Style.teak, false)
        SummerOffice.Desk.Set(SummerOffice.Desk.files, false)
        SummerOffice.Gunsafe.Set(SummerOffice.Gunsafe.cabinet, false)

        SummerOffice.Trophy.Enable(SummerOffice.Trophy.plaque, true, false)
        SummerOffice.Trophy.Enable(SummerOffice.Trophy.badge, true, false)
        SummerOffice.Trophy.Enable(SummerOffice.Trophy.handcuffs, true, false)

        SummerOffice.Plant.Enable(true, false)

        RefreshInterior(SummerOffice.interiorId)
    end
}