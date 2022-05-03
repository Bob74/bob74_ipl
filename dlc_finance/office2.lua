-- Office 2: -75.8466, -826.9893, 243.3859 (Maze Bank Building)
exports('GetFinanceOffice2Object', function()
    return FinanceOffice2
end)

FinanceOffice2 = {
    currentInteriorId = -1,
    currentSafeDoors = {
        hashL = "",
        hashR = ""
    },

    Style = {
        Theme = {
            warm = {
                interiorId = 238593,
                ipl = "ex_dt1_11_office_01a",
                safe = "ex_prop_safedoor_office1a"
            },
            classical = {
                interiorId = 238849,
                ipl = "ex_dt1_11_office_01b",
                safe = "ex_prop_safedoor_office1b"
            },
            vintage = {
                interiorId = 239105,
                ipl = "ex_dt1_11_office_01c",
                safe = "ex_prop_safedoor_office1c"
            },
            contrast = {
                interiorId = 239361,
                ipl = "ex_dt1_11_office_02a",
                safe = "ex_prop_safedoor_office2a"
            },
            rich = {
                interiorId = 239617,
                ipl = "ex_dt1_11_office_02b",
                safe = "ex_prop_safedoor_office2a"
            },
            cool = {
                interiorId = 239873,
                ipl = "ex_dt1_11_office_02c",
                safe = "ex_prop_safedoor_office2a"
            },
            ice = {
                interiorId = 240129,
                ipl = "ex_dt1_11_office_03a",
                safe = "ex_prop_safedoor_office3a"
            },
            conservative = {
                interiorId = 240385,
                ipl = "ex_dt1_11_office_03b",
                safe = "ex_prop_safedoor_office3a"
            },
            polished = {
                interiorId = 240641,
                ipl = "ex_dt1_11_office_03c",
                safe = "ex_prop_safedoor_office3c"
            }
        },
        Set = function(style, refresh)
            if refresh == nil then
                refresh = false
            end

            if type(style) == "table" then
                FinanceOffice2.Style.Clear()
                FinanceOffice2.currentInteriorId = style.interiorId
                FinanceOffice2.currentSafeDoors = {
                    hashL = GetHashKey(style.safe .. "_l"),
                    hashR = GetHashKey(style.safe .. "_r")
                }

                EnableIpl(style.ipl, true)

                if refresh then
                    RefreshInterior(style.interiorId)
                end
            end
        end,
        Clear = function()
            for themeKey, themeValue in pairs(FinanceOffice2.Style.Theme) do
                for swagKey, swagValue in pairs(FinanceOffice2.Swag) do
                    if type(swagValue) == "table" then
                        SetIplPropState(themeValue.interiorId, {
                            swagValue.A,
                            swagValue.B,
                            swagValue.C
                        }, false)
                    end
                end

                SetIplPropState(themeValue.interiorId, "office_chairs", false, false)
                SetIplPropState(themeValue.interiorId, "office_booze", false, true)

                FinanceOffice2.currentSafeDoors = {
                    hashL = 0,
                    hashR = 0
                }

                EnableIpl(themeValue.ipl, false)
            end
        end
    },
    Safe = {
        doorHeadingL = 250.0, -- Only need the heading of the Left door to get the Right ones
        Position = vector3(-82.593, -801.0, 243.385), -- Approximately between the two doors
        -- These values are checked from "doorHandler.lua" and
        isLeftDoorOpen = false,
        isRightDoorOpen = false,

        -- Safe door API
        Open = function(doorSide)
            if doorSide:lower() == "left" then
                FinanceOffice2.Safe.isLeftDoorOpen = true
            elseif doorSide:lower() == "right" then
                FinanceOffice2.Safe.isRightDoorOpen = true
            else
                Citizen.Trace("[bob74_ipl] Warning: " .. doorSide .. " is not a correct value. Valid values are:")
                Citizen.Trace("left right")
            end
        end,
        Close = function(doorSide)
            if doorSide:lower() == "left" then
                FinanceOffice2.Safe.isLeftDoorOpen = false
            elseif doorSide:lower() == "right" then
                FinanceOffice2.Safe.isRightDoorOpen = false
            else
                Citizen.Trace("[bob74_ipl] Warning: " .. doorSide .. " is not a correct value. Valid values are:")
                Citizen.Trace("left right")
            end
        end,

        -- Internal use only
        SetDoorState = function(doorSide, open)
            local doorHandle = 0
            local heading = FinanceOffice2.Safe.doorHeadingL

            if doorSide:lower() == "left" then
                doorHandle = FinanceOffice2.Safe.GetDoorHandle(FinanceOffice2.currentSafeDoors.hashL)

                if open then
                    heading = heading - 90.0
                end
            elseif doorSide:lower() == "right" then
                doorHandle = FinanceOffice2.Safe.GetDoorHandle(FinanceOffice2.currentSafeDoors.hashR)
                heading = heading - 180

                if open then
                    heading = heading + 90.0
                end
            end

            if doorHandle == 0 then
                Citizen.Trace("[bob74_ipl] Warning: " .. doorSide .. " safe door handle is 0")
                return
            end

            SetEntityHeading(doorHandle, heading)
        end,

        -- /!\ handle changes whenever the interior is refreshed /!\
        GetDoorHandle = function(doorHash)
            local timeout = 4
            local doorHandle = GetClosestObjectOfType(FinanceOffice2.Safe.Position.x, FinanceOffice2.Safe.Position.y, FinanceOffice2.Safe.Position.z, 5.0, doorHash, false, false, false)

            while doorHandle == 0 do
                Citizen.Wait(25)

                doorHandle = GetClosestObjectOfType(FinanceOffice2.Safe.Position.x, FinanceOffice2.Safe.Position.y, FinanceOffice2.Safe.Position.z, 5.0, doorHash, false, false, false)
                timeout = timeout - 1

                if timeout <= 0 then
                    break
                end
            end

            return doorHandle
        end
    },
    Swag = {
        Cash = {
            A = "cash_set_01",
            B = "cash_set_02",
            C = "cash_set_03",
            D = "cash_set_04",
            E = "cash_set_05",
            F = "cash_set_06",
            G = "cash_set_07",
            H = "cash_set_08",
            I = "cash_set_09",
            J = "cash_set_10",
            K = "cash_set_11",
            L = "cash_set_12",
            M = "cash_set_13",
            N = "cash_set_14",
            O = "cash_set_15",
            P = "cash_set_16",
            Q = "cash_set_17",
            R = "cash_set_18",
            S = "cash_set_19",
            T = "cash_set_20",
            U = "cash_set_21",
            V = "cash_set_22",
            W = "cash_set_23",
            X = "cash_set_24"
        },
        BoozeCigs = {
            A = "swag_booze_cigs",
            B = "swag_booze_cigs2",
            C = "swag_booze_cigs3"
        },
        Counterfeit = {
            A = "swag_counterfeit",
            B = "swag_counterfeit2",
            C = "swag_counterfeit3"
        },
        DrugBags = {
            A = "swag_drugbags",
            B = "swag_drugbags2",
            C = "swag_drugbags3"
        },
        DrugStatue = {
            A = "swag_drugstatue",
            B = "swag_drugstatue2",
            C = "swag_drugstatue3"
        },
        Electronic = {
            A = "swag_electronic",
            B = "swag_electronic2",
            C = "swag_electronic3"
        },
        FurCoats = {
            A = "swag_furcoats",
            B = "swag_furcoats2",
            C = "swag_furcoats3"
        },
        Gems = {
            A = "swag_gems",
            B = "swag_gems2",
            C = "swag_gems3"
        },
        Guns = {
            A = "swag_guns",
            B = "swag_guns2",
            C = "swag_guns3"
        },
        Ivory = {
            A = "swag_ivory",
            B = "swag_ivory2",
            C = "swag_ivory3"
        },
        Jewel = {
            A = "swag_jewelwatch",
            B = "swag_jewelwatch2",
            C = "swag_jewelwatch3"
        },
        Med = {
            A = "swag_med",
            B = "swag_med2",
            C = "swag_med3"
        },
        Painting = {
            A = "swag_art",
            B = "swag_art2",
            C = "swag_art3"
        },
        Pills = {
            A = "swag_pills",
            B = "swag_pills2",
            C = "swag_pills3"
        },
        Silver = {
            A = "swag_silver",
            B = "swag_silver2",
            C = "swag_silver3"
        },

        Enable = function(details, state, refresh)
            SetIplPropState(FinanceOffice2.currentInteriorId, details, state, refresh)
        end
    },
    Chairs = {
        off = "",
        on = "office_chairs",

        Set = function(chairs, refresh)
            FinanceOffice2.Chairs.Clear(false)

            if chairs ~= nil then
                SetIplPropState(FinanceOffice2.currentInteriorId, chairs, true, refresh)
            else
                if refresh then
                    RefreshInterior(FinanceOffice2.currentInteriorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(FinanceOffice2.currentInteriorId, FinanceOffice2.Chairs.on, false, refresh)
        end
    },
    Booze = {
        off = "",
        on = "office_booze",

        Set = function(booze, refresh)
            FinanceOffice2.Booze.Clear(false)

            if booze ~= nil then
                SetIplPropState(FinanceOffice2.currentInteriorId, booze, true, refresh)
            else
                if refresh then
                    RefreshInterior(FinanceOffice2.currentInteriorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(FinanceOffice2.currentInteriorId, FinanceOffice2.Booze.on, false, refresh)
        end
    },

    LoadDefault = function()
        FinanceOffice2.Style.Set(FinanceOffice2.Style.Theme.warm)
        FinanceOffice2.Chairs.Set(FinanceOffice2.Chairs.on, true)
    end
}
