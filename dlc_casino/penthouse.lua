exports('GetDiamondPenthouseObject', function()
    return DiamondPenthouse
end)

-- Penthouse: 976.636 70.295 115.164

DiamondPenthouse = {
    interiorId = 274689,

    Ipl = {
        Interior = {
            ipl = "vw_casino_penthouse",

            Load = function()
                EnableIpl(DiamondPenthouse.Ipl.Interior.ipl, true)
                SetIplPropState(DiamondPenthouse.interiorId, "Set_Pent_Tint_Shell", true, true)
            end,
            Remove = function()
                EnableIpl(DiamondPenthouse.Ipl.Interior.ipl, false)
            end
        }
    },
    Colors = {
        default = 0,
        sharp = 1,
        vibrant = 2,
        timeless = 3
    },
    Interior = {
        Walls = {
            SetColor = function(color, refresh)
                SetInteriorEntitySetColor(DiamondPenthouse.interiorId, "Set_Pent_Tint_Shell", color)

                if refresh then
                    RefreshInterior(DiamondPenthouse.interiorId)
                end
            end
        },
        Pattern = {
            pattern01 = "Set_Pent_Pattern_01",
            pattern02 = "Set_Pent_Pattern_02",
            pattern03 = "Set_Pent_Pattern_03",
            pattern04 = "Set_Pent_Pattern_04",
            pattern05 = "Set_Pent_Pattern_05",
            pattern06 = "Set_Pent_Pattern_06",
            pattern07 = "Set_Pent_Pattern_07",
            pattern08 = "Set_Pent_Pattern_08",
            pattern09 = "Set_Pent_Pattern_09",

            Set = function(pattern, refresh)
                DiamondPenthouse.Interior.Pattern.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, pattern, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.Pattern) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end,
            SetColor = function(pattern, color, refresh)
                SetInteriorEntitySetColor(DiamondPenthouse.interiorId, pattern, color)

                if refresh then
                    RefreshInterior(DiamondPenthouse.interiorId)
                end
            end
        },
        SpaBar = {
            open = "Set_Pent_Spa_Bar_Open",
            closed = "Set_Pent_Spa_Bar_Closed",

            Set = function(state, refresh)
                DiamondPenthouse.Interior.SpaBar.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, state, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.SpaBar) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end
        },
        MediaBar = {
            open = "Set_Pent_Media_Bar_Open",
            closed = "Set_Pent_Media_Bar_Closed",

            Set = function(state, refresh)
                DiamondPenthouse.Interior.MediaBar.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, state, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.MediaBar) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Dealer = {
            open = "Set_Pent_Dealer",
            closed = "Set_Pent_NoDealer",

            Set = function(state, refresh)
                DiamondPenthouse.Interior.Dealer.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, state, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.Dealer) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Arcade = {
            none = "",
            retro = "Set_Pent_Arcade_Retro",
            modern = "Set_Pent_Arcade_Modern",

            Set = function(arcade, refresh)
                DiamondPenthouse.Interior.Arcade.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, arcade, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.Arcade) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Clutter = {
            bar = "Set_Pent_Bar_Clutter",
            clutter01 = "Set_Pent_Clutter_01",
            clutter02 = "Set_Pent_Clutter_02",
            clutter03 = "Set_Pent_Clutter_03",

            Set = function(clutter, refresh)
                DiamondPenthouse.Interior.Clutter.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, clutter, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.Clutter) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end
        },
        BarLight = {
            none = "",
            light0 = "set_pent_bar_light_0",
            light1 = "set_pent_bar_light_01",
            light2 = "set_pent_bar_light_02",

            Set = function(light, refresh)
                DiamondPenthouse.Interior.BarLight.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, light, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.BarLight) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end
        },
        BarParty = {
            none = "",
            party0 = "set_pent_bar_party_0",
            party1 = "set_pent_bar_party_1",
            party2 = "set_pent_bar_party_2",
            partyafter = "set_pent_bar_party_after",

            Set = function(party, refresh)
                DiamondPenthouse.Interior.BarParty.Clear(false)

                SetIplPropState(DiamondPenthouse.interiorId, party, true, refresh)
            end,
            Clear = function(refresh)
                for key, value in pairs(DiamondPenthouse.Interior.BarParty) do
                    if type(value) == "string" then
                        SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                    end
                end
            end
        },
        Blockers = {
            Guest = {
                enabled = "Set_Pent_GUEST_BLOCKER",
                disabled = "",

                Set = function(blocker, refresh)
                    DiamondPenthouse.Interior.Blockers.Guest.Clear(false)

                    SetIplPropState(DiamondPenthouse.interiorId, blocker, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(DiamondPenthouse.Interior.Blockers.Guest) do
                        if type(value) == "string" then
                            SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Lounge = {
                enabled = "Set_Pent_LOUNGE_BLOCKER",
                disabled = "",

                Set = function(blocker, refresh)
                    DiamondPenthouse.Interior.Blockers.Lounge.Clear(false)

                    SetIplPropState(DiamondPenthouse.interiorId, blocker, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(DiamondPenthouse.Interior.Blockers.Lounge) do
                        if type(value) == "string" then
                            SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Office = {
                enabled = "Set_Pent_OFFICE_BLOCKER",
                disabled = "",

                Set = function(blocker, refresh)
                    DiamondPenthouse.Interior.Blockers.Office.Clear(false)

                    SetIplPropState(DiamondPenthouse.interiorId, blocker, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(DiamondPenthouse.Interior.Blockers.Office) do
                        if type(value) == "string" then
                            SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Cinema = {
                enabled = "Set_Pent_CINE_BLOCKER",
                disabled = "",

                Set = function(blocker, refresh)
                    DiamondPenthouse.Interior.Blockers.Cinema.Clear(false)

                    SetIplPropState(DiamondPenthouse.interiorId, blocker, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(DiamondPenthouse.Interior.Blockers.Cinema) do
                        if type(value) == "string" then
                            SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Spa = {
                enabled = "Set_Pent_SPA_BLOCKER",
                disabled = "",

                Set = function(blocker, refresh)
                    DiamondPenthouse.Interior.Blockers.Spa.Clear(false)

                    SetIplPropState(DiamondPenthouse.interiorId, blocker, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(DiamondPenthouse.Interior.Blockers.Spa) do
                        if type(value) == "string" then
                            SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            Bar = {
                enabled = "Set_Pent_BAR_BLOCKER",
                disabled = "",

                Set = function(blocker, refresh)
                    DiamondPenthouse.Interior.Blockers.Bar.Clear(false)

                    SetIplPropState(DiamondPenthouse.interiorId, blocker, true, refresh)
                end,
                Clear = function(refresh)
                    for key, value in pairs(DiamondPenthouse.Interior.Blockers.Bar) do
                        if type(value) == "string" then
                            SetIplPropState(DiamondPenthouse.interiorId, value, false, refresh)
                        end
                    end
                end
            },
            EnableAllBlockers = function()
                DiamondPenthouse.Interior.Blockers.Bar.Set(DiamondPenthouse.Interior.Blockers.Bar.enabled)
                DiamondPenthouse.Interior.Blockers.Guest.Set(DiamondPenthouse.Interior.Blockers.Guest.enabled)
                DiamondPenthouse.Interior.Blockers.Spa.Set(DiamondPenthouse.Interior.Blockers.Spa.enabled)
                DiamondPenthouse.Interior.Blockers.Cinema.Set(DiamondPenthouse.Interior.Blockers.Cinema.enabled)
                DiamondPenthouse.Interior.Blockers.Lounge.Set(DiamondPenthouse.Interior.Blockers.Lounge.enabled)
                DiamondPenthouse.Interior.Blockers.Office.Set(DiamondPenthouse.Interior.Blockers.Office.enabled)
            end,
            DisableAllBlockers = function()
                DiamondPenthouse.Interior.Blockers.Bar.Set(DiamondPenthouse.Interior.Blockers.Bar.disabled)
                DiamondPenthouse.Interior.Blockers.Guest.Set(DiamondPenthouse.Interior.Blockers.Guest.disabled)
                DiamondPenthouse.Interior.Blockers.Spa.Set(DiamondPenthouse.Interior.Blockers.Spa.disabled)
                DiamondPenthouse.Interior.Blockers.Cinema.Set(DiamondPenthouse.Interior.Blockers.Cinema.disabled)
                DiamondPenthouse.Interior.Blockers.Lounge.Set(DiamondPenthouse.Interior.Blockers.Lounge.disabled)
                DiamondPenthouse.Interior.Blockers.Office.Set(DiamondPenthouse.Interior.Blockers.Office.disabled)
            end
        }
    },

    LoadDefault = function()
        local styleColor = DiamondPenthouse.Colors.sharp
        local stylePattern = DiamondPenthouse.Interior.Pattern.pattern01

        DiamondPenthouse.Ipl.Interior.Load()

        DiamondPenthouse.Interior.Walls.SetColor(styleColor)
        DiamondPenthouse.Interior.Pattern.Set(stylePattern)
        DiamondPenthouse.Interior.Pattern.SetColor(stylePattern, styleColor)

        DiamondPenthouse.Interior.SpaBar.Set(DiamondPenthouse.Interior.SpaBar.open)
        DiamondPenthouse.Interior.MediaBar.Set(DiamondPenthouse.Interior.MediaBar.open)
        DiamondPenthouse.Interior.Dealer.Set(DiamondPenthouse.Interior.Dealer.open)

        RefreshInterior(DiamondPenthouse.interiorId)
    end
}
