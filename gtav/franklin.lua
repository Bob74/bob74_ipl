exports('GetFranklinObject', function()
    return Franklin
end)

Franklin = {
    interiorId = 206849,

    Style = {
        empty = "",
        unpacking = "franklin_unpacking",
        settled = {
            "franklin_unpacking",
            "franklin_settled"
        },
        cardboxes = "showhome_only",

        Set = function(style, refresh)
            Franklin.Style.Clear(false)

            if style ~= "" then
                SetIplPropState(Franklin.interiorId, style, true, refresh)
            else
                if refresh then
                    RefreshInterior(Franklin.interiorId)
                end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(Franklin.interiorId, {
                Franklin.Style.settled,
                Franklin.Style.unpacking,
                Franklin.Style.cardboxes
            }, false, refresh)
        end
    },
    GlassDoor = {
        opened = "unlocked",
        closed = "locked",

        Set = function(door, refresh)
            Franklin.GlassDoor.Clear(false)

            SetIplPropState(Franklin.interiorId, door, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Franklin.interiorId, {
                Franklin.GlassDoor.opened,
                Franklin.GlassDoor.closed
            }, false, refresh)
        end
    },
    Details = {
        flyer = "progress_flyer", -- Mountain flyer on the kitchen counter
        tux = "progress_tux", -- Tuxedo suit in the wardrobe
        tshirt = "progress_tshirt", -- "I <3 LS" tshirt on the bed
        bong = "bong_and_wine", -- Bong on the table

        Enable = function(details, state, refresh)
            SetIplPropState(Franklin.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        Franklin.Style.Set(Franklin.Style.empty)
        Franklin.GlassDoor.Set(Franklin.GlassDoor.opened)
        Franklin.Details.Enable(Franklin.Details.flyer, false)
        Franklin.Details.Enable(Franklin.Details.tux, false)
        Franklin.Details.Enable(Franklin.Details.tshirt, false)
        Franklin.Details.Enable(Franklin.Details.bong, false)

        RefreshInterior(Franklin.interiorId)
    end
}
