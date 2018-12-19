
exports('GetGunrunningBunkerObject', function()
    return GunrunningBunker
end)

GunrunningBunker = {
    interiorId = 258561,
    Ipl = {
        Interior = {
            ipl = "gr_grdlc_interior_placement_interior_1_grdlc_int_02_milo_",
            -- Load interiors IPLs.
            Load = function() EnableIpl(GunrunningBunker.Ipl.Interior.ipl, true) end,

            -- Remove interiors IPLs.
            Remove = function() EnableIpl(GunrunningBunker.Ipl.Interior.ipl, false) end
        },
    
        Exterior = {
            ipl = {
                "gr_case0_bunkerclosed",	-- Desert: 848.6175, 2996.567, 45.81612
                "gr_case1_bunkerclosed",	-- SmokeTree: 2126.785, 3335.04, 48.21422
                "gr_case2_bunkerclosed",	-- Scrapyard: 2493.654, 3140.399, 51.28789
                "gr_case3_bunkerclosed",	-- Oilfields: 481.0465, 2995.135, 43.96672
                "gr_case4_bunkerclosed",	-- RatonCanyon: -391.3216, 4363.728, 58.65862
                "gr_case5_bunkerclosed",	-- Grapeseed: 1823.961, 4708.14, 42.4991
                "gr_case6_bunkerclosed",	-- Farmhouse: 1570.372, 2254.549, 78.89397
                "gr_case7_bunkerclosed",	-- Paletto: -783.0755, 5934.686, 24.31475
                "gr_case9_bunkerclosed",	-- Route68: 24.43542, 2959.705, 58.35517
                "gr_case10_bunkerclosed",	-- Zancudo: -3058.714, 3329.19, 12.5844
                "gr_case11_bunkerclosed"	-- Great Ocean Highway: -3180.466, 1374.192, 19.9597
            },
            -- Load exteriors IPLs.
            Load = function() EnableIpl(GunrunningBunker.Ipl.Exterior.ipl, true) end,

            -- Remove exteriors IPLs.
            Remove = function() EnableIpl(GunrunningBunker.Ipl.Exterior.ipl, false) end
        }
    },

    Style = {
        default = "Bunker_Style_A", blue = "Bunker_Style_B", yellow = "Bunker_Style_C",

        -- Set the style (color) of the bunker.
        -- 	style: Wall color (values: GunrunningBunker.Style.default / GunrunningBunker.Style.blue / GunrunningBunker.Style.yellow)
        -- 	refresh: Reload the whole interior (values: true / false)
        Set = function(style, refresh)
            GunrunningBunker.Style.Clear(false)
            SetIplPropState(GunrunningBunker.interiorId, style, true, refresh)
        end,

        -- Removes the style.
        -- 	refresh: Reload the whole interior (values: true / false)
        Clear = function(refresh) SetIplPropState(GunrunningBunker.interiorId, {GunrunningBunker.Style.default, GunrunningBunker.Style.blue, GunrunningBunker.Style.yellow}, false, refresh) end
    },

    Tier = {
        default = "standard_bunker_set", upgrade = "upgrade_bunker_set",

        -- Set the tier (quality) of the bunker.
        -- 	tier: Upgrade state (values: GunrunningBunker.Tier.default / GunrunningBunker.Tier.upgrade)
        -- 	refresh: Reload the whole interior (values: true / false)
        Set = function(tier, refresh)
            GunrunningBunker.Tier.Clear(false)
            SetIplPropState(GunrunningBunker.interiorId, tier, true, refresh)
        end,

        -- Removes the tier.
        -- 	refresh: Reload the whole interior (values: true / false)
        Clear = function(refresh) SetIplPropState(GunrunningBunker.interiorId, {GunrunningBunker.Tier.default, GunrunningBunker.Tier.upgrade}, false, refresh) end
    },

    Security = {
        noEntryGate = "", default = "standard_security_set", upgrade = "security_upgrade",

        -- Set the security stage of the bunker.
        -- 	security: Upgrade state (values: GunrunningBunker.Security.default / GunrunningBunker.Security.upgrade)
        -- 	refresh: Reload the whole interior (values: true / false)
        Set = function(security, refresh)
            GunrunningBunker.Security.Clear(false)
            if (security ~= "") then
                SetIplPropState(GunrunningBunker.interiorId, security, true, refresh)
            else
                if (refresh) then RefreshInterior(GunrunningBunker.interiorId) end
            end
        end,

        -- Removes the security.
        -- 	refresh: Reload the whole interior (values: true / false)
        Clear = function(refresh) SetIplPropState(GunrunningBunker.interiorId, {GunrunningBunker.Security.default, GunrunningBunker.Security.upgrade}, false, refresh) end
    },

    Details = {
        office = "Office_Upgrade_set",				-- Office interior
        officeLocked = "Office_blocker_set",		-- Metal door blocking access to the office
        locker = "gun_locker_upgrade",				-- Locker next to the office door
        rangeLights = "gun_range_lights",			-- Lights next to the shooting range
        rangeWall = "gun_wall_blocker",				-- Wall blocking access to the shooting range
        rangeLocked = "gun_range_blocker_set",		-- Metal door blocking access to the shooting range
        schematics = "Gun_schematic_set",			-- Gun schematic on the table and whiteboard

        -- Enable or disable a detail.
        -- 	details: Prop to enable or disable (values: GunrunningBunker.Details.office / GunrunningBunker.Details.officeLocked / GunrunningBunker.Details.locker...)
        --  state: Enable or Disable (values: true / false)
        -- 	refresh: Reload the whole interior (values: true / false)
        Enable = function (details, state, refresh)
            SetIplPropState(GunrunningBunker.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        GunrunningBunker.Ipl.Interior.Load()
        GunrunningBunker.Ipl.Exterior.Load()

        GunrunningBunker.Style.Set(GunrunningBunker.Style.default)
        GunrunningBunker.Tier.Set(GunrunningBunker.Tier.default)
        GunrunningBunker.Security.Set(GunrunningBunker.Security.default)
    
        GunrunningBunker.Details.Enable(GunrunningBunker.Details.office, true)
        GunrunningBunker.Details.Enable(GunrunningBunker.Details.officeLocked, false)
        GunrunningBunker.Details.Enable(GunrunningBunker.Details.locker, true)
        GunrunningBunker.Details.Enable(GunrunningBunker.Details.rangeLights, true)
        GunrunningBunker.Details.Enable(GunrunningBunker.Details.rangeWall, false)
        GunrunningBunker.Details.Enable(GunrunningBunker.Details.rangeLocked, false)
        GunrunningBunker.Details.Enable(GunrunningBunker.Details.schematics, false)

        -- Must be called in order to spawn or remove the props
        RefreshInterior(GunrunningBunker.interiorId)
    end

}
