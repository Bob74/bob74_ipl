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
            
            -- Normal Version: 1110.20, 216.60 -49.45
            -- Heist Version: 2490.67, -280.40, -58.71

            Load = function()
                EnableIpl(DiamondCasino.Ipl.Main.ipl, true)
            end,
            Remove = function()
                EnableIpl(DiamondCasino.Ipl.Main.ipl, false)
            end
        },
        Garage = {
            ipl = "vw_casino_garage",
            
            -- Loading Bay Garage: 2536.276, -278.98, -64.722
            -- Vault Lobby: 2483.151, -278.58, -70.694
            -- Vault: 2516.765, -238.056, -70.737

            Load = function()
                EnableIpl(DiamondCasino.Ipl.Garage.ipl, true)
            end,
            Remove = function()
                EnableIpl(DiamondCasino.Ipl.Garage.ipl, false)
            end
        },
        Carpark = {
            ipl = "vw_casino_carpark",
            
            -- Carpark Garage: 1380.000 200.000 -50.000
            -- VIP Carpark Garage: 1295.000 230.000 -50.000

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
