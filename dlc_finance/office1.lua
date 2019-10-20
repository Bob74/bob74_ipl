
-- Office 1: -141.1987, -620.913, 168.8205 (Arcadius Business Centre)

exports('GetFinanceOffice1Object', function()
    return FinanceOffice1
end)

FinanceOffice1 = {
    currentInteriorId = -1,
    currentSafeDoors = {hashL = "", hashR = ""},
    
    Style = {
        Theme = {
            warm = {interiorId = 236289, ipl = "ex_dt1_02_office_01a", safe = "ex_prop_safedoor_office1a"},
            classical = {interiorId = 236545, ipl = "ex_dt1_02_office_01b", safe = "ex_prop_safedoor_office1b"},
            vintage = {interiorId = 236801, ipl = "ex_dt1_02_office_01c", safe = "ex_prop_safedoor_office1c"},
            contrast = {interiorId = 237057, ipl = "ex_dt1_02_office_02a", safe = "ex_prop_safedoor_office2a"},
            rich = {interiorId = 237313, ipl = "ex_dt1_02_office_02b", safe = "ex_prop_safedoor_office2a"},
            cool = {interiorId = 237569, ipl = "ex_dt1_02_office_02c", safe = "ex_prop_safedoor_office2a"},
            ice = {interiorId = 237825, ipl = "ex_dt1_02_office_03a", safe = "ex_prop_safedoor_office3a"},
            conservative = {interiorId = 238081, ipl = "ex_dt1_02_office_03b", safe = "ex_prop_safedoor_office3a"},
            polished = {interiorId = 238337, ipl = "ex_dt1_02_office_03c", safe = "ex_prop_safedoor_office3c"}
        },
        Set = function(style, refresh)
            if (refresh == nil) then refresh = false end
            if (IsTable(style)) then
                FinanceOffice1.Style.Clear()
                FinanceOffice1.currentInteriorId = style.interiorId
                FinanceOffice1.currentSafeDoors = {hashL = GetHashKey(style.safe .. "_l"), hashR = GetHashKey(style.safe .. "_r")}
                EnableIpl(style.ipl, true)
                if (refresh) then RefreshInterior(style.interiorId) end
            end
        end,
        Clear = function()
            for themeKey, themeValue in pairs(FinanceOffice1.Style.Theme) do
                for swagKey, swagValue in pairs(FinanceOffice1.Swag) do
                    if (IsTable(swagValue)) then
                        SetIplPropState(themeValue.interiorId, {swagValue.A, swagValue.B, swagValue.C}, false)
                    end
                end
                SetIplPropState(themeValue.interiorId, "office_chairs", false, false)
                SetIplPropState(themeValue.interiorId, "office_booze", false, true)
                FinanceOffice1.currentSafeDoors = {hashL = 0, hashR = 0}
                EnableIpl(themeValue.ipl, false)
            end
        end
    },
    Safe = {
        doorHeadingL = 96.0, -- Only need the heading of the Left door to get the Right ones
        Position = {x = -124.25, y = -641.30, z = 168.870}, -- Approximately between the two doors

        -- These values are checked from "doorHandler.lua" and
        isLeftDoorOpen = false, isRightDoorOpen = false,

        -- Safe door API
        Open = function(doorSide)
            if (doorSide:lower() == "left") then FinanceOffice1.Safe.isLeftDoorOpen = true
            elseif (doorSide:lower() == "right") then FinanceOffice1.Safe.isRightDoorOpen = true
            else
                Citizen.Trace("[bob74_ipl] Warning: " .. doorSide .. " is not a correct value. Valid values are:")
                Citizen.Trace("left right")
            end
        end,
        Close = function(doorSide)
            if (doorSide:lower() == "left") then FinanceOffice1.Safe.isLeftDoorOpen = false
            elseif (doorSide:lower() == "right") then FinanceOffice1.Safe.isRightDoorOpen = false
            else
                Citizen.Trace("[bob74_ipl] Warning: " .. doorSide .. " is not a correct value. Valid values are:")
                Citizen.Trace("left right")
            end
        end,

        -- Internal use only
        SetDoorState = function(doorSide, open)
            local doorHandle = 0
            local heading = FinanceOffice1.Safe.doorHeadingL

            if (doorSide:lower() == "left") then
                doorHandle = FinanceOffice1.Safe.GetDoorHandle(FinanceOffice1.currentSafeDoors.hashL)
                if (open) then heading = heading - 90.0 end
            elseif (doorSide:lower() == "right") then
                doorHandle = FinanceOffice1.Safe.GetDoorHandle(FinanceOffice1.currentSafeDoors.hashR)
                heading = heading - 180
                if (open) then heading = heading + 90.0 end
            end

            if (doorHandle == 0) then
                Citizen.Trace("[bob74_ipl] Warning: " .. doorSide .. " safe door handle is 0")
                return
            end

            SetEntityHeading(doorHandle, heading)
        end,

        -- /!\ handle changes whenever the interior is refreshed /!\
        GetDoorHandle = function(doorHash)
            local timeout = 4
            local doorHandle = GetClosestObjectOfType(FinanceOffice1.Safe.Position.x, FinanceOffice1.Safe.Position.y, FinanceOffice1.Safe.Position.z, 5.0, doorHash, false, false, false)

            while (doorHandle == 0) do
                Wait(25)
                doorHandle = GetClosestObjectOfType(FinanceOffice1.Safe.Position.x, FinanceOffice1.Safe.Position.y, FinanceOffice1.Safe.Position.z, 5.0, doorHash, false, false, false)
                timeout = timeout - 1
                if (timeout <= 0) then
                    break
                end
            end
            return doorHandle
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
            SetIplPropState(FinanceOffice1.currentInteriorId, details, state, refresh)
        end
    },
    Chairs = {
        off = "", on = "office_chairs",
        Set = function(chairs, refresh)
            FinanceOffice1.Chairs.Clear(false)
            if (chairs ~= nil) then
                SetIplPropState(FinanceOffice1.currentInteriorId, chairs, true, refresh)
            else
                if (refresh) then RefreshInterior(FinanceOffice1.currentInteriorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(FinanceOffice1.currentInteriorId, FinanceOffice1.Chairs.on, false, refresh)
        end
    },
    Booze = {
        off = "", on = "office_booze",
        Set = function(booze, refresh)
            FinanceOffice1.Booze.Clear(false)
            if (booze ~= nil) then
                SetIplPropState(FinanceOffice1.currentInteriorId, booze, true, refresh)
            else
                if (refresh) then RefreshInterior(FinanceOffice1.currentInteriorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(FinanceOffice1.currentInteriorId, FinanceOffice1.Booze.on, false, refresh)
        end
    },

    LoadDefault = function()
        FinanceOffice1.Style.Set(FinanceOffice1.Style.Theme.polished)
        FinanceOffice1.Chairs.Set(FinanceOffice1.Chairs.on, true)
    end
}
