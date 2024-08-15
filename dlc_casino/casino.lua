exports('GetDiamondCasinoObject', function()
    return DiamondCasino
end)

DiamondCasino = {
    Ipl = {
        interiorId = 275201,
        vaultId = 276993,
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
            end,

            Table = {
                default = "casino_manager_default",
                workout = "casino_manager_workout",

                Set = function(prop, state, refresh)
                    SetIplPropState(DiamondCasino.Ipl.interiorId, prop, state, refresh)
                end,
            }
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
        },
        Vault = {
            Door = {
                closed = "set_vault_door",
                broken = "set_vault_door_broken",

                Set = function(door, state, refresh)
                    DiamondCasino.Ipl.Vault.Door.Clear(false)
                    SetIplPropState(DiamondCasino.Ipl.vaultId, door, state, refresh)
                end,

                Clear = function(refresh)
                    SetIplPropState(DiamondCasino.Ipl.vaultId, {
                        DiamondCasino.Ipl.Vault.Door.closed,
                        DiamondCasino.Ipl.Vault.Door.broken,
                    }, false, refresh)
                end
            },
            Dressings = {
                dressing = "set_vault_dressing",
                
                Set = function(dressing, state, refresh)
                    SetIplPropState(DiamondCasino.Ipl.vaultId, dressing, state, refresh)
                end,
            },
            OuterLoot = {
                group1 = "set_spawn_group1",
                group2 = "set_spawn_group2",

                Set = function(loot, refresh)
                    DiamondCasino.Ipl.Vault.OuterLoot.Clear(false)
                    SetIplPropState(DiamondCasino.Ipl.vaultId, loot, true, refresh)
                end,

                Clear = function(refresh)
                    SetIplPropState(DiamondCasino.Ipl.vaultId, {
                        DiamondCasino.Ipl.Vault.OuterLoot.group1,
                        DiamondCasino.Ipl.Vault.OuterLoot.group2
                    }, false, refresh)
                end
            },
            -- Only set 1 category at a time because they do overlap
            MainLoot = {
                Cash = {
                    cash1 = "set_vault_cash_01",
                    cash2 = "set_vault_cash_02",
                },

                Art = {
                    art1 = "set_vault_art_01",
                    art2 = "set_vault_art_02",
                },

                Gold = {
                    gold1 = "set_vault_gold_01",
                    gold2 = "set_vault_gold_02",
                },

                Diamonds = {
                    diamond1 = "set_vault_diamonds_01",
                    diamond2 = "set_vault_diamonds_02",
                },

                Set = function(loot, refresh)
                    SetIplPropState(DiamondCasino.Ipl.vaultId, loot, true, refresh)
                end,

                Clear = function(refresh)
                    SetIplPropState(DiamondCasino.Ipl.vaultId, {
                        DiamondCasino.Ipl.Vault.MainLoot.Cash.cash1,
                        DiamondCasino.Ipl.Vault.MainLoot.Cash.cash2,
                        DiamondCasino.Ipl.Vault.MainLoot.Art.art1,
                        DiamondCasino.Ipl.Vault.MainLoot.Art.art2,
                        DiamondCasino.Ipl.Vault.MainLoot.Gold.gold1,
                        DiamondCasino.Ipl.Vault.MainLoot.Gold.gold2,
                        DiamondCasino.Ipl.Vault.MainLoot.Diamonds.diamond1,
                        DiamondCasino.Ipl.Vault.MainLoot.Diamonds.diamond2
                    }, false, refresh)
                end
            }
        }
    },

    LoadDefault = function()
        DiamondCasino.Ipl.Building.Load()
        DiamondCasino.Ipl.Main.Load()
        DiamondCasino.Ipl.Main.Table.Set(DiamondCasino.Ipl.Main.Table.default, true, false)
        DiamondCasino.Ipl.Carpark.Load()
        DiamondCasino.Ipl.Garage.Load()
        DiamondCasino.Ipl.Vault.Door.Set(DiamondCasino.Ipl.Vault.Door.broken, true, false)
        DiamondCasino.Ipl.Vault.Dressings.Set(DiamondCasino.Ipl.Vault.Dressings.dressing, true, false)
        DiamondCasino.Ipl.Vault.OuterLoot.Set(DiamondCasino.Ipl.Vault.OuterLoot.group1, false)
        DiamondCasino.Ipl.Vault.MainLoot.Set(DiamondCasino.Ipl.Vault.MainLoot.Cash.cash1, false)
        DiamondCasino.Ipl.Vault.MainLoot.Set(DiamondCasino.Ipl.Vault.MainLoot.Art.cash2, false)
        print(GetInteriorAtCoords(2508.700, -238.500, -70.700))

        RefreshInterior(DiamondCasino.Ipl.interiorId)
        RefreshInterior(DiamondCasino.Ipl.vaultId)
    end
}
