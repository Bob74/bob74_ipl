-- Avenger: -880.00, -2770.00, -50.00
exports('GetMercenariesAvengerObject', function()
    return MercenariesAvenger
end)

MercenariesAvenger = {
    interiorId = 291585,

    Style = {
        base = "shell_tint",
        goldBling = "gold_bling",

        Set = function(style, refresh)
            SetIplPropState(MercenariesAvenger.interiorId, style, true, refresh)
        end,

        Clear = function(style, refresh)
            SetIplPropState(MercenariesAvenger.interiorId, style, false, refresh)
        end
    },

    Control = {
        control1 = "control_1",
        control2 = "control_2",
        control3 = "control_3",

        Set = function(control, refresh)

            SetIplPropState(MercenariesAvenger.interiorId, control, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(MercenariesAvenger.interiorId, {
                MercenariesAvenger.Control.control1,
                MercenariesAvenger.Control.control2,
                MercenariesAvenger.Control.control3
            }, false, refresh)
        end
    },

    Mods = {
        weapon = "weapons_mod",
        vehicle = "vehicle_mod",

        Set = function(mod, refresh)
            SetIplPropState(MercenariesAvenger.interiorId, mod, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(MercenariesAvenger.interiorId, {
                MercenariesAvenger.Mods.weapon,
                MercenariesAvenger.Mods.vehicle
            }, false, refresh)
        end
    },

    JumperSeat = {
        seat1 = "seat_no_screen",
        seat2 = "seat_no_thruster",

        Set = function(seat, refresh)
            SetIplPropState(MercenariesAvenger.interiorId, seat, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(MercenariesAvenger.interiorId, {
                MercenariesAvenger.JumperSeat.seat1,
                MercenariesAvenger.JumperSeat.seat2
            }, false, refresh)
        end
    },

    Screen = {
        screen = "touch_screen",

        Set = function(screen, refresh)
            SetIplPropState(MercenariesAvenger.interiorId, screen, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(MercenariesAvenger.interiorId, MercenariesAvenger.Screen.screen, false, refresh)
        end
    },

    Thruster = {
        thruster = "seat_no_thruster",

        Set = function(thruster, refresh)
            SetIplPropState(MercenariesAvenger.interiorId, thruster, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(MercenariesAvenger.interiorId, MercenariesAvenger.Thruster.thruster, false, refresh)
        end
    },

    LoadDefault = function()
        -- Base
        MercenariesAvenger.Style.Set(MercenariesAvenger.Style.base, false)

        -- Gold Bling
        MercenariesAvenger.Style.Set(MercenariesAvenger.Style.goldBling, false)

        -- Control Pannels
        MercenariesAvenger.Control.Set(MercenariesAvenger.Control.control1, false)
        MercenariesAvenger.Control.Set(MercenariesAvenger.Control.control2, false)
        MercenariesAvenger.Control.Set(MercenariesAvenger.Control.control3, false)

        -- Seats
        --MercenariesAvenger.JumperSeat.Set(MercenariesAvenger.JumperSeat.seat1, false)
        MercenariesAvenger.JumperSeat.Set(MercenariesAvenger.JumperSeat.seat2, false)

        -- Mods
        MercenariesAvenger.Mods.Set(MercenariesAvenger.Mods.weapon, false)
        MercenariesAvenger.Mods.Set(MercenariesAvenger.Mods.vehicle, false)

        -- Screen
        MercenariesAvenger.Screen.Set(MercenariesAvenger.Screen.screen, false)

        -- Thruster
        --MercenariesAvenger.Thruster.Set(MercenariesAvenger.Thruster.thruster, false)

        RefreshInterior(MercenariesAvenger.interiorId)
    end
    
}