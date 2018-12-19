
-- Office 4: -1392.667, -480.4736, 72.04217 (Maze Bank West)

exports('GetFinanceOffice4Object', function()
	return FinanceOffice4
end)

FinanceOffice4 = {
    currentInteriorId = -1,

    Style = {
        Theme = {
            warm = {interiorId = 243201, ipl = "ex_sm_15_office_01a"},
            classical = {interiorId = 243457, ipl = "ex_sm_15_office_01b"},
            vintage = {interiorId = 243713, ipl = "ex_sm_15_office_01c"},
            contrast = {interiorId = 243969, ipl = "ex_sm_15_office_02a"},
            rich = {interiorId = 244225, ipl = "ex_sm_15_office_02b"},
            cool = {interiorId = 244481, ipl = "ex_sm_15_office_02c"},
            ice = {interiorId = 244737, ipl = "ex_sm_15_office_03a"},
            conservative = {interiorId = 244993, ipl = "ex_sm_15_office_03b"},
            polished = {interiorId = 245249, ipl = "ex_sm_15_office_03c"}
        },
        Set = function(style, refresh)
            if (refresh == nil) then refresh = false end
            if (IsTable(style)) then
                FinanceOffice4.Style.Clear()
                FinanceOffice4.currentInteriorId = style.interiorId
                EnableIpl(style.ipl, true)
                if (refresh) then RefreshInterior(style.interiorId) end
            end
        end,
        Clear = function()
            for themeKey, themeValue in pairs(FinanceOffice4.Style.Theme) do
                for swagKey, swagValue in pairs(FinanceOffice4.Swag) do
                    if (IsTable(swagValue)) then
                        SetIplPropState(themeValue.interiorId, {swagValue.A, swagValue.B, swagValue.C}, false)
                    end
                end
                SetIplPropState(themeValue.interiorId, "office_chairs", false, false)
                SetIplPropState(themeValue.interiorId, "office_booze", false, true)
                EnableIpl(themeValue.ipl, false)
            end
        end
    },
    Swag = {
        Cash = {
            A = "cash_set_01", B = "cash_set_02", C = "cash_set_03", D = "cash_set_04", E = "cash_set_05",
            F = "cash_set_06", G = "cash_set_07", H = "cash_set_08", I = "cash_set_09", J = "cash_set_10",
            K = "cash_set_11", L = "cash_set_12", M = "cash_set_13", N = "cash_set_14", O = "cash_set_15",
            P = "cash_set_16", Q = "cash_set_17", R = "cash_set_18", S = "cash_set_19", T = "cash_set_20",
            U = "cash_set_21", V = "cash_set_22", W = "cash_set_23", X = "cash_set_24"
        },
        BoozeCigs = {A = "swag_booze_cigs", B = "swag_booze_cigs2", C = "swag_booze_cigs3"},
        Counterfeit = {A = "swag_counterfeit", B = "swag_counterfeit2", C = "swag_counterfeit3"},
        DrugBags = {A = "swag_drugbags", B = "swag_drugbags2", C = "swag_drugbags3"},
        DrugStatue = {A = "swag_drugstatue", B = "swag_drugstatue2", C = "swag_drugstatue3"},
        Electronic = {A = "swag_electronic", B = "swag_electronic2", C = "swag_electronic3"},
        FurCoats = {A = "swag_furcoats", B = "swag_furcoats2", C = "swag_furcoats3"},
        Gems = {A = "swag_gems", B = "swag_gems2", C = "swag_gems3"},
        Guns = {A = "swag_guns", B = "swag_guns2", C = "swag_guns3"},
        Ivory = {A = "swag_ivory", B = "swag_ivory2", C = "swag_ivory3"},
        Jewel = {A = "swag_jewelwatch", B = "swag_jewelwatch2", C = "swag_jewelwatch3"},
        Med = {A = "swag_med", B = "swag_med2", C = "swag_med3"},
        Painting = {A = "swag_art", B = "swag_art2", C = "swag_art3"},
        Pills = {A = "swag_pills", B = "swag_pills2", C = "swag_pills3"},
        Silver = {A = "swag_silver", B = "swag_silver2", C = "swag_silver3"},
        Enable = function (details, state, refresh)
            SetIplPropState(FinanceOffice4.currentInteriorId, details, state, refresh)
        end
    },
    Chairs = {
        off = "", on = "office_chairs",
        Set = function(chairs, refresh)
            FinanceOffice4.Chairs.Clear(false)
            if (chairs ~= nil) then
                SetIplPropState(FinanceOffice4.currentInteriorId, chairs, true, refresh)
            else
                if (refresh) then RefreshInterior(FinanceOffice4.currentInteriorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(FinanceOffice4.currentInteriorId, FinanceOffice4.Chairs.on, false, refresh)
        end
    },
    Booze = {
        off = "", on = "office_booze",
        Set = function(booze, refresh)
            FinanceOffice4.Booze.Clear(false)
            if (booze ~= nil) then
                SetIplPropState(FinanceOffice4.currentInteriorId, booze, true, refresh)
            else
                if (refresh) then RefreshInterior(FinanceOffice4.currentInteriorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(FinanceOffice4.currentInteriorId, FinanceOffice4.Booze.on, false, refresh)
        end
    },

    LoadDefault = function()
        FinanceOffice4.Style.Set(FinanceOffice4.Style.Theme.cool)
        FinanceOffice4.Chairs.Set(FinanceOffice4.Chairs.on, true)
    end
}
