-- Car wash: 26.074, -1398.979, -75.0
exports("GetMoneyCarwash", function()
    return MoneyCarwash
end)

MoneyCarwash = {
    interiorId = 298497,

    Ipl = {
        Exterior = {
            ipl = "m25_1_carwash",

            Load = function()
                EnableIpl(MoneyCarwash.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(MoneyCarwash.Ipl.Exterior.ipl, false)
            end
        }
    },

    Style = {
        default = "set_carwash_tints",

        Set = function(style, refresh)
            MoneyCarwash.Style.Clear(refresh)

            SetIplPropState(MoneyCarwash.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MoneyCarwash.interiorId, MoneyCarwash.Style.default, false, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        MoneyCarwash.Ipl.Exterior.Load()

        -- Interior
        MoneyCarwash.Style.Set(MoneyCarwash.Style.default, false)

        RefreshInterior(MoneyCarwash.interiorId)
    end
}