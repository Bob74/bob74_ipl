-- Exhibition basement: 2631.411, 5893.864, -62.0
exports("GetKortzBasement", function()
    return KortzBasement
end)

KortzBasement = {
    interiorId = 306177,

    Cabinets = {
        cabinets = "set_lock_box",

        Enable = function(state, refresh)
            SetIplPropState(KortzBasement.interiorId, KortzBasement.Cabinets.cabinets, state, refresh)
        end
    },

    Station = {
        locked = "set_station_1",
        unlocked = "set_station_2",

        Set = function(station, refresh)
            KortzBasement.Station.Clear(refresh)

            SetIplPropState(KortzBasement.interiorId, station, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(KortzBasement.interiorId, {
                KortzBasement.Station.locked,
                KortzBasement.Station.unlocked
            }, false, refresh)
        end
    },


    Details = {
        computer = "set_code_computer",
        keypads = "set_keypads_basement",
        cameras = "set_cameras_03",
        switches = "set_lazer_switches",
        painting = "collision_8p4piob",

        Enable = function(details, state, refresh)
            SetIplPropState(KortzBasement.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        KortzBasement.Cabinets.Enable(true, false)
        KortzBasement.Station.Set(KortzBasement.Station.unlocked, false)

        KortzBasement.Details.Enable(KortzBasement.Details.computer, true, false)
        KortzBasement.Details.Enable(KortzBasement.Details.keypads, true, false)
        KortzBasement.Details.Enable(KortzBasement.Details.cameras, true, false)
        KortzBasement.Details.Enable(KortzBasement.Details.switches, true, false)
        KortzBasement.Details.Enable(KortzBasement.Details.painting, true, false)

        RefreshInterior(KortzBasement.interiorId)
    end
}