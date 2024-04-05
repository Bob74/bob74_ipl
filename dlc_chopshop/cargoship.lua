-- Cargo ship: -344.4349, -4062.832, 17.000
exports('GetChopShopCargoShipObject', function()
    return ChopShopCargoShip
end)

ChopShopCargoShip = {
    Ipl = {
        ipl = {
            "m23_2_cargoship",
            "m23_2_cargoship_bridge"
        },

        Load = function()
            EnableIpl(ChopShopCargoShip.Ipl.ipl, true)
        end,
        Remove = function()
            EnableIpl(ChopShopCargoShip.Ipl.ipl, false)
        end
    },

    LoadDefault = function()
        ChopShopCargoShip.Ipl.Load()
    end
}
