-- Lifeguard: -1488.153, -1021.166, 5.000
exports('GetChopShopLifeguardObject', function()
    return ChopShopLifeguard
end)

ChopShopLifeguard = {
    Ipl = {
        ipl = "m23_2_lifeguard_access",

        Load = function()
            EnableIpl(ChopShopLifeguard.Ipl.ipl, true)
        end,
        Remove = function()
            EnableIpl(ChopShopLifeguard.Ipl.ipl, false)
        end
    },

    LoadDefault = function()
        ChopShopLifeguard.Ipl.Load()
    end
}
