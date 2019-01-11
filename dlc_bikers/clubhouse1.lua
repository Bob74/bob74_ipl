
-- Clubhouse1: 1107.04, -3157.399, -37.51859

exports('GetBikerClubhouse1Object', function()
    return BikerClubhouse1
end)

BikerClubhouse1 = {
    interiorId = 246273,
    Ipl = {
        Interior = {
            ipl = "bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo",
            Load = function() EnableIpl(BikerClubhouse1.Ipl.Interior.ipl, true) end,
            Remove = function() EnableIpl(BikerClubhouse1.Ipl.Interior.ipl, false) end
        },
    },
    Walls = {
        brick = "walls_01", plain = "walls_02",
        Color = {
            sable = 0,
            yellowGray = 1,
            red = 2,
            brown = 3,
            yellow = 4,
            lightYellow = 5,
            lightYellowGray = 6,
            lightGray = 7,
            orange = 8,
            gray = 9
        },
        Set = function(walls, color, refresh)
            if color == nil then color = 0 end
            BikerClubhouse1.Walls.Clear(false)
            SetIplPropState(BikerClubhouse1.interiorId, walls, true, refresh)
            SetInteriorPropColor(BikerClubhouse1.interiorId, walls, color)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Walls.brick, BikerClubhouse1.Walls.plain}, false, refresh)
        end
    },
    Furnitures = {
        A = "furnishings_01", B = "furnishings_02",
        Set = function(furn, color, refresh)
            if color == nil then color = 0 end
            BikerClubhouse1.Furnitures.Clear(false)
            SetIplPropState(BikerClubhouse1.interiorId, furn, true, refresh)
            SetInteriorPropColor(BikerClubhouse1.interiorId, furn, color)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Furnitures.A, BikerClubhouse1.Furnitures.B}, false, refresh)
        end
    },
    Decoration = {
        A = "decorative_01", B = "decorative_02",
        Set = function(deco, refresh)
            BikerClubhouse1.Decoration.Clear(false)
            SetIplPropState(BikerClubhouse1.interiorId, deco, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Decoration.A, BikerClubhouse1.Decoration.B}, false, refresh)
        end
    },
    Mural = {
        none = "", rideFree = "mural_01", mods = "mural_02", brave = "mural_03", fist = "mural_04",
        forest = "mural_05", mods2 = "mural_06", rideForever = "mural_07", heart = "mural_08",
        route68 = "mural_09",
        Set = function(mural, refresh)
            BikerClubhouse1.Mural.Clear(false)
            if mural ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, mural, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Mural.rideFree, BikerClubhouse1.Mural.mods, BikerClubhouse1.Mural.brave, BikerClubhouse1.Mural.fist,
            BikerClubhouse1.Mural.forest, BikerClubhouse1.Mural.mods2, BikerClubhouse1.Mural.rideForever, BikerClubhouse1.Mural.heart, BikerClubhouse1.Mural.route68}, false, refresh)
        end
    },
    GunLocker = {
        none = "", on = "gun_locker", off = "no_gun_locker",
        Set = function(locker, refresh)
            BikerClubhouse1.GunLocker.Clear(false)
            if locker ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, locker, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.GunLocker.on, BikerClubhouse1.GunLocker.off}, false, refresh)
        end
    },
    ModBooth = {
        none = "", on = "mod_booth", off = "no_mod_booth",
        Set = function(mod, refresh)
            BikerClubhouse1.ModBooth.Clear(false)
            if mod ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, mod, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.ModBooth.on, BikerClubhouse1.ModBooth.off}, false, refresh)
        end
    },
    Meth = {
        none = "", stage1 = "meth_stash1", stage2 = {"meth_stash1", "meth_stash2"}, stage3 = {"meth_stash1", "meth_stash2", "meth_stash3"},
        Set = function(stage, refresh)
            BikerClubhouse1.Meth.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Meth.stage1, BikerClubhouse1.Meth.stage2, BikerClubhouse1.Meth.stage3}, false, refresh)
        end
    },
    Cash = {
        none = "", stage1 = "cash_stash1", stage2 = {"cash_stash1", "cash_stash2"}, stage3 = {"cash_stash1", "cash_stash2", "cash_stash3"},
        Set = function(stage, refresh)
            BikerClubhouse1.Cash.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Cash.stage1, BikerClubhouse1.Cash.stage2, BikerClubhouse1.Cash.stage3}, false, refresh)
        end
    },
    Weed = {
        none = "", stage1 = "weed_stash1", stage2 = {"weed_stash1", "weed_stash2"}, stage3 = {"weed_stash1", "weed_stash2", "weed_stash3"},
        Set = function(stage, refresh)
            BikerClubhouse1.Weed.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Weed.stage1, BikerClubhouse1.Weed.stage2, BikerClubhouse1.Weed.stage3}, false, refresh)
        end
    },
    Coke = {
        none = "", stage1 = "coke_stash1", stage2 = {"coke_stash1", "coke_stash2"}, stage3 = {"coke_stash1", "coke_stash2", "coke_stash3"},
        Set = function(stage, refresh)
            BikerClubhouse1.Coke.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Coke.stage1, BikerClubhouse1.Coke.stage2, BikerClubhouse1.Coke.stage3}, false, refresh)
        end
    },
    Counterfeit = {
        none = "", stage1 = "counterfeit_stash1", stage2 = {"counterfeit_stash1", "counterfeit_stash2"}, stage3 = {"counterfeit_stash1", "counterfeit_stash2", "counterfeit_stash3"},
        Set = function(stage, refresh)
            BikerClubhouse1.Counterfeit.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Counterfeit.stage1, BikerClubhouse1.Counterfeit.stage2, BikerClubhouse1.Counterfeit.stage3}, false, refresh)
        end
    },
    Documents = {
        none = "", stage1 = "id_stash1", stage2 = {"id_stash1", "id_stash2"}, stage3 = {"id_stash1", "id_stash2", "id_stash3"},
        Set = function(stage, refresh)
            BikerClubhouse1.Documents.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse1.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse1.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse1.interiorId, {BikerClubhouse1.Documents.stage1, BikerClubhouse1.Documents.stage2, BikerClubhouse1.Documents.stage3}, false, refresh)
        end
    },

    LoadDefault = function()
        BikerClubhouse1.Ipl.Interior.Load()
        
        BikerClubhouse1.Walls.Set(BikerClubhouse1.Walls.plain, BikerClubhouse1.Walls.Color.brown)

        BikerClubhouse1.Furnitures.Set(BikerClubhouse1.Furnitures.A, 3)
        BikerClubhouse1.Decoration.Set(BikerClubhouse1.Decoration.A)
        BikerClubhouse1.Mural.Set(BikerClubhouse1.Mural.rideFree)

        BikerClubhouse1.ModBooth.Set(BikerClubhouse1.ModBooth.none)
        BikerClubhouse1.GunLocker.Set(BikerClubhouse1.GunLocker.none)

        BikerClubhouse1.Meth.Set(BikerClubhouse1.Meth.none)
        BikerClubhouse1.Cash.Set(BikerClubhouse1.Cash.none)
        BikerClubhouse1.Coke.Set(BikerClubhouse1.Coke.none)
        BikerClubhouse1.Weed.Set(BikerClubhouse1.Weed.none)
        BikerClubhouse1.Counterfeit.Set(BikerClubhouse1.Counterfeit.none)
        BikerClubhouse1.Documents.Set(BikerClubhouse1.Documents.none)

        RefreshInterior(BikerClubhouse1.interiorId)
    end
}

