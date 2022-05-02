exports('GetDiamondCasinoObject', function()
    return DiamondCasino
end)

DiamondCasino = {
    Ipl = {
        Building = {
            ipl = {
                "hei_dlc_windows_casino",
                "hei_dlc_casino_aircon",
                "vw_dlc_casino_door",
                "hei_dlc_casino_door"
            },

            Load = function()
                EnableIpl(DiamondCasino.Ipl.Building.ipl, true)
            end,
            Remove = function()
                EnableIpl(DiamondCasino.Ipl.Building.ipl, false)
            end
        },
        Main = {
            ipl = "vw_casino_main",

            Load = function()
                EnableIpl(DiamondCasino.Ipl.Main.ipl, true)
            end,
            Remove = function()
                EnableIpl(DiamondCasino.Ipl.Main.ipl, false)
            end
        },
        Garage = {
            ipl = "vw_casino_garage",

            Load = function()
                EnableIpl(DiamondCasino.Ipl.Garage.ipl, true)
            end,
            Remove = function()
                EnableIpl(DiamondCasino.Ipl.Garage.ipl, false)
            end
        },
        Carpark = {
            ipl = "vw_casino_carpark",

            Load = function()
                EnableIpl(DiamondCasino.Ipl.Carpark.ipl, true)
            end,
            Remove = function()
                EnableIpl(DiamondCasino.Ipl.Carpark.ipl, false)
            end
        }
    },

    LoadDefault = function()
        DiamondCasino.Ipl.Building.Load()
        DiamondCasino.Ipl.Main.Load()
        DiamondCasino.Ipl.Carpark.Load()
        DiamondCasino.Ipl.Garage.Load()
    end
}
