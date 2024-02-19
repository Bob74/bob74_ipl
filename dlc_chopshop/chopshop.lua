local ColorDic = { ['default'] = 0, ['white'] = 1, ['red'] = 2, ['blue'] = 3,['orange'] = 4, ['yellow'] = 5, ['green'] = 6,['pink'] = 7, ['turquoise'] = 8, ['gray'] = 9, ['black'] = 10  }
local EntitySets = {
    ["m23_2_dlc_int_salvage"] = {
        ['Color'] = 'default', -- default, white, red, blue, orange, yellow, green, pink, turquoise, gray, black
        ["Coords"] = {
            vec3(1088.0, -2275.0, -50.0),
        },
        ["Entities"] = {
            "SET_UV_PLAN_RT",
            "set_mechanic_upgrade",
            "set_mechanic_basic",
            "set_car_lift_01_down",
            "set_car_lift_01_up",
            "set_car_lift_02_down",
            "set_car_lift_02_up",
            "set_safe_basic",
            "set_safe_upgrade",
            "set_tint_b",
            "SET_BAG_COASTGUARD",
            "SET_BOLT_CUTTER",
            "SET_BOX_FLARES",
            "SET_ARMOR_CRATE",
            "SET_CASE_TEARGAS",
            "SET_GUNCASE",
            "SET_CARD_MAZE",
            "SET_CASE_HDD",
            "SET_BAG_PANIC",
            "SET_CARD_CASINO",
            "SET_BOX_SANITATION",
            "SET_CRATE_MASK",
            "SET_BAG_RAPPEL",
            "SET_SONAR",
            "SET_BLOWTORCH",
            "SET_BAG_SCUBA",
            "SET_TROPHY_JERSEY",
            "SET_TROPHY_BADGE",
            "SET_TROPHY_CHIPS",
            "SET_TROPHY_SUB",
            "SET_TROPHY_ANCHOR"
        }
    },
    ["m23_2_int_counterfeit"] = {
        ["Coords"] = {
            vec3(930.0, -2270.0, -50.0),
            vec3(930.0, -2240.1, -50.0),
            vec3(930.0, -2183.3, -50.0),
            vec3(930.0, -2213.2, -50.0),
        },
        ["Entities"] = {
            "Set_Tints",
            "Set_Door_Right",
            "Set_Door_Left"
        }
    },
    ['m23_2_int_warehouse'] = {
        ['Coords'] = {
            vec3(1220.0, -2280.0, -50.0)
        },
        ["Entities"] = {
            "mp2023_02_DLC_INT_6_CB"
        }
    },
    ["m23_2_dlc_int_casinobase"] = {
        ["Coords"] = {
            vec3(858.0, -2275.0, -50.0)
        },
        ["Entities"] = {
            3347615165 -- 0xC7888DBD | v_ilev_garageliftdoor | 827.48, -2204.76, -48.39
        }
    }
}
 
local IPLs = {
    -- mpchristmas3
    "xm3_garage_fix", -- -299.1, 288.0, 103.9
    "xm3_warehouse", -- 593.7, -407.8, 28.6
    "xm3_collision_fixes", -- -301.8, 282.4, 88.5
    "xm3_doc_sign", -- -676.6, 329.5, 111.4
    "xm3_stash_cams", -- -157.0, 6293.8, 33.2
    "xm3_sum2_fix", -- -789.2, -217.8, 49.0
    "xm3_security_fix", -- -868.8, -221.1, 60.3
    "xm3_warehouse_grnd", -- 627.0, -401.5, 23.6
    -- mp2023_01
    "m23_1_legacy_fixes", -- 3515.5, 3644.5, 31.8
    -- mp2023_02
    "m23_2_acp_collision_fixes_01", -- 5002.6, -5168.3, 0.5
    "m23_2_acp_collision_fixes_02", -- 4540.2, -4520.0, 5.5
    "m23_2_tug_collision", -- -292.0, -2780.8, 3.9
    "m23_2_hei_yacht_collision_fixes", -- -2047.5, -1030.2, 6.2
    "m23_2_legacy_fixes", -- 457.2, -995.8, 40.2

    -- Salvage Yard Exterior
    "m23_2_sp1_03_Reds", -- -527.2, -1729.3, 21.0
    "m23_2_sc1_03_Reds", -- -29.9, -1306.9, 28.8
    "m23_2_id2_04_Reds", -- 1194.2, -1256.9, 34.6
    "m23_2_cs4_11_Reds", -- 2513.8, 4110.3, 42.2
    "m23_2_cs1_05_Reds", -- -196.0, 6263.7, 34.8

    -- Random Ymap from DLC
    "m23_2_lifeguard_access", -- -1486.9, -1034.7, 5.1

    -- Uboat on land in Paleto (from DLC heist) - (no uboat only sand - You need to spawn it in as a vehicle to get the whole thing)
    -- "m23_2_submarine_sand", -- -485.1, 6430.4, 3.1
    
    -- High Quality Shells (could be used for housing scripts)
    "m23_2_int_warehouse", -- 1220.0, -2280.0, -50.0
    "m23_2_dlc_int_casinobase", -- 858.0, -2275.0, -50.0
    "m23_2_int_counterfeit", -- 930.0, -2270.0, -50.0 | 930.0, -2240.1, -50.0 | 930.0, -2183.3, -50.0 | 930.0, -2213.2, -50.0
    "m23_2_dlc_int_salvage", -- 1088.0, -2275.0, -50.0 | Entrance: -194.5653 6268.5596 30.4893 | Exit: 1098.8727, -2268.5957, -49.9999
    "m23_2_dlc_int_warehouse2", -- 1000.0, -2200.0, -50.0 | 1000.0, -2230.0, -50.0
    
    -- cargoship
    "m23_2_cargoship", -- -398.2, -4118.8, 25.4
    "m23_2_cargoship_bridge"
}
 
 
local function LoadMaps()
    for i = 1, #IPLs do
 
        local iplName = IPLs[i]
        if not IsIplActive(iplName) then
            RequestIpl(iplName)
        end
 
        if EntitySets[iplName] then
            for k = 1, #EntitySets[iplName]['Coords'] do
                local cds = EntitySets[iplName]['Coords'][k]
                local id = GetInteriorAtCoords(cds.x,cds.y,cds.z)
                if EntitySets[iplName]['Entities'] then
                    for v =  1, #EntitySets[iplName]['Entities'] do
                        local sets = EntitySets[iplName]['Entities'][v]
                        if not IsInteriorEntitySetActive(id,sets) then
                            ActivateInteriorEntitySet(id,sets)
                        end
    
                        if EntitySets[iplName]['Color'] then
                            SetInteriorEntitySetColor(id, sets, ColorDic[EntitySets[iplName]['Color']])
                        end
                    end
                end
                RefreshInterior(id)
            end
        end
    end
end
 
function CargoShipMapRadar()
    local cds = vec3(-398.2, -4118.8, 25.4)
    local hash = "M23_2_DLC_INT_Ship"
    while true do
        local idle = 2000
        local pCoords = GetEntityCoords(PlayerPedId())
        local dist = #(pCoords - cds)
        if dist < 200 then idle = 1 end
        SetRadarAsInteriorThisFrame(hash, cds.x, cds.y, 40, 0)
        SetRadarAsExteriorThisFrame()
        Wait(idle)
    end
end
 
function CargoShipHideDoor()
    local posEntity = vec3(-400.0109, -4124.1377, 24.3427)
    local modelHash = "port_xr_door_01"
    while true do
 
        local pDist = #(GetEntityCoords(PlayerPedId()) - posEntity) 
        if pDist < 10.0 then
            CreateModelHideExcludingScriptObjects(posEntity.x,posEntity.y,posEntity.z, 2.0, modelHash, true)
            break
        end
        Wait(2000)
    end
end

LoadMaps()
CargoShipHideDoor()
CargoShipMapRadar()