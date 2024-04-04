-- Vinewood Car Club: 1202.407, -3251.251, -50.000
exports('GetMercenariesClubObject', function()
    return MercenariesClub
end)

MercenariesClub = {
    interiorId = 291841,

    Style = {
        empty = "entity_set_no_plus", -- The lamps if the podium is not there
        club = {
            "entity_set_plus",
            "entity_set_backdrop_frames",
            "entity_set_signs"
        },

        Set = function(style, refresh)
            MercenariesClub.Style.Clear(false)

            SetIplPropState(MercenariesClub.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(MercenariesClub.interiorId, {
                MercenariesClub.Style.empty,
                MercenariesClub.Style.club
            }, false, refresh)
        end
    },

    Stairs = {
        stairs = "entity_set_stairs",

        Enable = function(state, refresh)
            SetIplPropState(MercenariesClub.interiorId, MercenariesClub.Stairs.stairs, state, refresh)
        end
    },

    LoadDefault = function()
        MercenariesClub.Style.Set(MercenariesClub.Style.warehouse, false)
        MercenariesClub.Stairs.Enable(true, false)

        RefreshInterior(MercenariesClub.interiorId)
    end
}