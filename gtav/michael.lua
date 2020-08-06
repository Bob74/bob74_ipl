
exports('GetMichaelObject', function()
    return Michael
end)

Michael = {
    interiorId = 166657,
    garageId = 166401,
    Style = {
        normal = {"V_Michael_bed_tidy", "V_Michael_M_items", "V_Michael_D_items", "V_Michael_S_items", "V_Michael_L_Items"},
        moved = {"V_Michael_bed_Messy", "V_Michael_M_moved", "V_Michael_D_Moved", "V_Michael_L_Moved", "V_Michael_S_items_swap", "V_Michael_M_items_swap"},
        Set = function(style, refresh)
            Michael.Style.Clear(false)
            SetIplPropState(Michael.interiorId, style, true, refresh)
        end,
        Clear = function(refresh) SetIplPropState(Michael.interiorId, {Michael.Style.normal, Michael.Style.moved}, false, refresh) end
    },
    Bed = {
        tidy = "V_Michael_bed_tidy", messy = "V_Michael_bed_Messy",
        Set = function(bed, refresh)
            Michael.Bed.Clear(false)
            SetIplPropState(Michael.interiorId, bed, true, refresh)
        end,
        Clear = function(refresh) SetIplPropState(Michael.interiorId, {Michael.Bed.tidy, Michael.Bed.messy}, false, refresh) end
    },
    Garage = {
        scuba = "V_Michael_Scuba",					-- Scuba diver gear
        Enable = function (scuba, state, refresh) SetIplPropState(Michael.garageId, scuba, state, refresh) end
    },
    Details = {
        moviePoster = "Michael_premier",			-- Meltdown movie poster
        fameShamePoste = "V_Michael_FameShame",		-- Next to Tracey's bed
        planeTicket = "V_Michael_plane_ticket",		-- Plane ticket
        spyGlasses = "V_Michael_JewelHeist",		-- On the shelf inside Michael's bedroom
        bugershot = "burgershot_yoga",				-- Bag and cup in the kitchen, next to the sink

        Enable = function (details, state, refresh) SetIplPropState(Michael.interiorId, details, state, refresh) end
    },

    LoadDefault = function()
        Michael.Garage.Enable(Michael.Garage.scuba, false, true)
        Michael.Style.Set(Michael.Style.normal)
        Michael.Bed.Set(Michael.Bed.tidy)
        Michael.Details.Enable(Michael.Details.moviePoster, false)
        Michael.Details.Enable(Michael.Details.fameShamePoste, false)
        Michael.Details.Enable(Michael.Details.spyGlasses, false)
        Michael.Details.Enable(Michael.Details.planeTicket, false)
        Michael.Details.Enable(Michael.Details.bugershot, false)
        RefreshInterior(Michael.interiorId)
    end
}
