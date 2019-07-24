exports('GetUFOObject', function()
    return UFO
end)

UFO = {
    Hippie = {
        ipl = "ufo", -- Hippie base: 2490.47729, 3774.84351, 2414.035
        Enable = function(state)
            EnableIpl(UFO.Hippie.ipl, state)
            AddBlipForBuilding(2490.47729, 3774.84351, 2414.035, _U('ufo'), 66)
        end
    },
    Chiliad = {
        ipl = "ufo_eye", -- Chiliad: 501.5288, 5593.865, 796.2325
        Enable = function(state)
            EnableIpl(UFO.Chiliad.ipl, state)
            AddBlipForBuilding(501.5288, 5593.865, 796.2325, _U('ufo'), 66)
        end
    },
    Zancudo = {
        ipl = "ufo_lod", -- Zancudo: -2051.99463, 3237.05835, 1456.97021
        Enable = function(state)
            EnableIpl(UFO.Zancudo.ipl, state)
            AddBlipForBuilding(-2051.99463, 3237.05835, 1456.97021, _U('ufo'), 66)
        end
    }
}

