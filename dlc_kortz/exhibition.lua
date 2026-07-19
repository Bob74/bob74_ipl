-- Exhibition: 2603.167, 5903.761, -50.0
exports("GetKortzExhibition", function()
    return KortzExhibition
end)

KortzExhibition = {
    interiorId = 305921,

    Exhibit = {
        art = {
            "set_background_art",
            "set_exhibit_walls",
        },
        cabinets = "set_exhibit_robbable",

        Enable = function(details, state, refresh)
            SetIplPropState(KortzExhibition.interiorId, details, state, refresh)
        end
    },

    Details = {
        banners = "set_exhibit_dressing",
        alarm = "set_alarm_panel",
        button = "set_camera_button",
        cameras = "set_cameras_02",
        keypads = "set_keypads_exhibit",
        glass = "set_glass_pane",
        tvs = "set_tvs",

        Enable = function(details, state, refresh)
            SetIplPropState(KortzExhibition.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        KortzExhibition.Exhibit.Enable(KortzExhibition.Exhibit.art, true, false)
        KortzExhibition.Exhibit.Enable(KortzExhibition.Exhibit.cabinets, true, false)

        KortzExhibition.Details.Enable(KortzExhibition.Details.banners, true, false)
        KortzExhibition.Details.Enable(KortzExhibition.Details.alarm, true, false)
        KortzExhibition.Details.Enable(KortzExhibition.Details.button, true, false)
        KortzExhibition.Details.Enable(KortzExhibition.Details.cameras, true, false)
        KortzExhibition.Details.Enable(KortzExhibition.Details.keypads, true, false)
        KortzExhibition.Details.Enable(KortzExhibition.Details.glass, true, false)
        KortzExhibition.Details.Enable(KortzExhibition.Details.tvs, true, false)

        RefreshInterior(KortzExhibition.interiorId)
    end
}