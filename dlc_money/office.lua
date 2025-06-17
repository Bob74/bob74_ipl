-- Office: -1160.493, -1538.932, -50.0
exports("GetMoneyOffice", function()
    return MoneyOffice
end)

MoneyOffice = {
    interiorId = 298753,

    Style = {
        heli = {
            "set_heli",
            "set_heli_tint"
        },
        smoke = {
            "set_smoke",
            "set_smoke_tint"
        },

        Set = function(style, refresh)
            MoneyOffice.Style.Clear(refresh)

            SetIplPropState(MoneyOffice.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MoneyOffice.interiorId, {
                MoneyOffice.Style.heli,
                MoneyOffice.Style.smoke
            }, false, refresh)
        end
    },

    LoadDefault = function()
        MoneyOffice.Style.Set(MoneyOffice.Style.heli, false)

        RefreshInterior(MoneyOffice.interiorId)
    end
}