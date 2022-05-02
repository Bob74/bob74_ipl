exports('GetAmmunationsObject', function()
    return Ammunations
end)

Ammunations = {
    ammunationsId = {
        140289, -- 249.8, -47.1, 70.0
        153857, -- 844.0, -1031.5, 28.2
        168193, -- -664.0, -939.2, 21.8
        164609, -- -1308.7, -391.5, 36.7
        176385, -- -3170.0, 1085.0, 20.8
        175617, -- -1116.0, 2694.1, 18.6
        200961, -- 1695.2, 3756.0, 34.7
        180481, -- -328.7, 6079.0, 31.5
        178689 -- 2569.8, 297.8, 108.7
    },
    gunclubsId = {
        137729,     -- 19.1, -1110.0, 29.8
        248065 -- 811.0, -2152.0, 29.6
    },

    Details = {
        hooks = "GunStoreHooks", -- Hooks for gun displaying
        hooksClub = "GunClubWallHooks", -- Hooks for gun displaying

        Enable = function(details, state, refresh)
            if details == Ammunations.Details.hooks then
                SetIplPropState(Ammunations.ammunationsId, details, state, refresh)
            elseif details == Ammunations.Details.hooksClub then
                SetIplPropState(Ammunations.gunclubsId, details, state, refresh)
            end
        end
    },

    LoadDefault = function()
        Ammunations.Details.Enable(Ammunations.Details.hooks, true, true)
        Ammunations.Details.Enable(Ammunations.Details.hooksClub, true, true)
    end
}
