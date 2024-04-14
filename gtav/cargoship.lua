-- Cargo ship: -168.1825, -2364.8259, 20.000
exports('GetCargoShipObject', function()
    return CargoShip
end)

CargoShip = {
    State = {
        normal = {
            "cargoship",
            "ship_occ_grp1"
        },
        sunk = {
            "sunkcargoship",
            "ship_occ_grp2"
        },

        Set = function(state)
            CargoShip.State.Clear(false)

            EnableIpl(state, state)
        end,
        Clear = function(refresh)
            EnableIpl({
                CargoShip.State.normal,
                CargoShip.State.sunk
            }, false)
        end
    },

    LoadDefault = function()
        CargoShip.State.Set(CargoShip.State.normal)
    end
}