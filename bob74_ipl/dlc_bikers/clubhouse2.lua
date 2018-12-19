
-- Clubhouse2: 998.4809, -3164.711, -38.90733

exports('GetBikerClubhouse2Object', function()
    return BikerClubhouse2
end)

BikerClubhouse2 = {
    interiorId = 246529,
    Ipl = {
        Interior = {
            ipl = "bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo",
            Load = function() EnableIpl(BikerClubhouse2.Ipl.Interior.ipl, true) end,
            Remove = function() EnableIpl(BikerClubhouse2.Ipl.Interior.ipl, false) end
        },
    },
    Walls = {
        brick = "walls_01", plain = "walls_02",
        Color = {
            greenAndGray = 1,
            multicolor = 2,
            orangeAndGray = 3,
            blue = 4,
            lightBlueAndSable = 5,
            greenAndRed = 6,
            yellowAndGray = 7,
            red = 8,
            fuchsiaAndGray = 9
        },
        Set = function(walls, color, refresh)
            if color == nil then color = 0 end
            BikerClubhouse2.Walls.Clear(false)
            SetIplPropState(BikerClubhouse2.interiorId, walls, true, refresh)
            SetInteriorPropColor(BikerClubhouse2.interiorId, walls, color)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Walls.brick, BikerClubhouse2.Walls.plain}, false, refresh)
        end
    },
    LowerWalls = {
        default = "lower_walls_default",
        SetColor = function(color, refresh)
            SetIplPropState(BikerClubhouse2.interiorId, BikerClubhouse2.LowerWalls.default, true, refresh)
            SetInteriorPropColor(BikerClubhouse2.interiorId, BikerClubhouse2.LowerWalls.default, color)
        end,
    },
    Furnitures = {
        A = "furnishings_01", B = "furnishings_02",
        -- Colors for "furnishings_01" only
        Color = {
            turquoise = 0,
            darkBrown = 1,
            brown = 2,
            -- 3 equal 1
            brown2 = 4,
            gray = 5,
            red = 6,
            darkGray = 7,
            black = 8,
            red2 = 9
        },
        Set = function(furn, color, refresh)
            if color == nil then color = 0 end
            BikerClubhouse2.Furnitures.Clear(false)
            SetIplPropState(BikerClubhouse2.interiorId, furn, true, refresh)
            SetInteriorPropColor(BikerClubhouse2.interiorId, furn, color)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Furnitures.A, BikerClubhouse2.Furnitures.B}, false, refresh)
        end
    },
    Decoration = {
        A = "decorative_01", B = "decorative_02",
        Set = function(deco, refresh)
            BikerClubhouse2.Decoration.Clear(false)
            SetIplPropState(BikerClubhouse2.interiorId, deco, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Decoration.A, BikerClubhouse2.Decoration.B}, false, refresh)
        end
    },
    Mural = {
        none = "", death1 = "mural_01", cityColor1 = "mural_02", death2 = "mural_03", cityColor2 = "mural_04",
        graffitis = "mural_05", cityColor3 = "mural_06", cityColor4 = "mural_07", cityBlack = "mural_08",
        death3 = "mural_09",
        Set = function(mural, refresh)
            BikerClubhouse2.Mural.Clear(false)
            if mural ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, mural, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Mural.death1, BikerClubhouse2.Mural.cityColor1, BikerClubhouse2.Mural.death2, BikerClubhouse2.Mural.cityColor2,
            BikerClubhouse2.Mural.graffitis, BikerClubhouse2.Mural.cityColor3, BikerClubhouse2.Mural.cityColor4, BikerClubhouse2.Mural.cityBlack, BikerClubhouse2.Mural.death3}, false, refresh)
        end
    },
    GunLocker = {
        on = "gun_locker", off = "no_gun_locker",
        Set = function(locker, refresh)
            BikerClubhouse2.GunLocker.Clear(false)
            if locker ~= "" then SetIplPropState(BikerClubhouse2.interiorId, locker, true, refresh) end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.GunLocker.on, BikerClubhouse2.GunLocker.off}, false, refresh)
        end
    },
    ModBooth = {
        none = "", on = "mod_booth", off = "no_mod_booth",
        Set = function(mod, refresh)
            BikerClubhouse2.ModBooth.Clear(false)
            if mod ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, mod, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.ModBooth.on, BikerClubhouse2.ModBooth.off}, false, refresh)
        end
    },
    Meth = {
        none = "", stage1 = "meth_small", stage2 = {"meth_small", "meth_medium"}, stage3 = {"meth_small", "meth_medium", "meth_large"},
        Set = function(stage, refresh)
            BikerClubhouse2.Meth.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Meth.stage1, BikerClubhouse2.Meth.stage2, BikerClubhouse2.Meth.stage3}, false, refresh)
        end
    },
    Cash = {
        none = "", stage1 = "cash_small", stage2 = {"cash_small", "cash_medium"}, stage3 = {"cash_small", "cash_medium", "cash_large"},
        Set = function(stage, refresh)
            BikerClubhouse2.Cash.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Cash.stage1, BikerClubhouse2.Cash.stage2, BikerClubhouse2.Cash.stage3}, false, refresh)
        end
    },
    Weed = {
        none = "", stage1 = "weed_small", stage2 = {"weed_small", "weed_medium"}, stage3 = {"weed_small", "weed_medium", "weed_large"},
        Set = function(stage, refresh)
            BikerClubhouse2.Weed.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Weed.stage1, BikerClubhouse2.Weed.stage2, BikerClubhouse2.Weed.stage3}, false, refresh)
        end
    },
    Coke = {
        none = "", stage1 = "coke_small", stage2 = {"coke_small", "coke_medium"}, stage3 = {"coke_small", "coke_medium", "coke_large"},
        Set = function(stage, refresh)
            BikerClubhouse2.Coke.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Coke.stage1, BikerClubhouse2.Coke.stage2, BikerClubhouse2.Coke.stage3}, false, refresh)
        end
    },
    Counterfeit = {
        none = "", stage1 = "counterfeit_small", stage2 = {"counterfeit_small", "counterfeit_medium"}, stage3 = {"counterfeit_small", "counterfeit_medium", "counterfeit_large"},
        Set = function(stage, refresh)
            BikerClubhouse2.Counterfeit.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Counterfeit.stage1, BikerClubhouse2.Counterfeit.stage2, BikerClubhouse2.Counterfeit.stage3}, false, refresh)
        end
    },
    Documents = {
        none = "", stage1 = "id_small", stage2 = {"id_small", "id_medium"}, stage3 = {"id_small", "id_medium", "id_large"},
        Set = function(stage, refresh)
            BikerClubhouse2.Documents.Clear(false)
            if stage ~= "" then
                SetIplPropState(BikerClubhouse2.interiorId, stage, true, refresh)
            else
                if (refresh) then RefreshInterior(BikerClubhouse2.interiorId) end
            end
        end,
        Clear = function(refresh)
            SetIplPropState(BikerClubhouse2.interiorId, {BikerClubhouse2.Documents.stage1, BikerClubhouse2.Documents.stage2, BikerClubhouse2.Documents.stage3}, false, refresh)
        end
    },

    LoadDefault = function()
        BikerClubhouse2.Ipl.Interior.Load()
        
        BikerClubhouse2.Walls.Set(BikerClubhouse2.Walls.brick, BikerClubhouse2.Walls.Color.red)
        BikerClubhouse2.LowerWalls.SetColor(BikerClubhouse2.Walls.Color.red)

        BikerClubhouse2.Furnitures.Set(BikerClubhouse2.Furnitures.B, BikerClubhouse2.Furnitures.Color.black)
        BikerClubhouse2.Decoration.Set(BikerClubhouse2.Decoration.B)
        BikerClubhouse2.Mural.Set(BikerClubhouse2.Mural.death3)

        BikerClubhouse2.ModBooth.Set(BikerClubhouse2.ModBooth.off)
        BikerClubhouse2.GunLocker.Set(BikerClubhouse2.GunLocker.off)

        BikerClubhouse2.Meth.Set(BikerClubhouse2.Meth.none)
        BikerClubhouse2.Cash.Set(BikerClubhouse2.Cash.none)
        BikerClubhouse2.Coke.Set(BikerClubhouse2.Coke.none)
        BikerClubhouse2.Weed.Set(BikerClubhouse2.Weed.none)
        BikerClubhouse2.Counterfeit.Set(BikerClubhouse2.Counterfeit.none)
        BikerClubhouse2.Documents.Set(BikerClubhouse2.Documents.none)
        
        RefreshInterior(BikerClubhouse2.interiorId)
    end
}

