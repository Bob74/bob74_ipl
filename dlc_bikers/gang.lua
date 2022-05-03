exports('GetBikerGangObject', function()
    return BikerGang
end)

AddEventHandler('onClientResourceStop', function(res)
    if GetCurrentResourceName() ~= res then
        return
    end

    BikerGang.Clubhouse.ClearAll()
end)

BikerGang = {
    Name = {
        Colors = {
            black = 0,
            gray = 1,
            white = 2,
            orange = 3,
            red = 4,
            green = 5,
            yellow = 6,
            blue = 7
        },
        Fonts = {
            font1 = 0,
            font2 = 1,
            font3 = 2,
            font4 = 3,
            font5 = 4,
            font6 = 5,
            font7 = 6,
            font8 = 7,
            font9 = 8,
            font10 = 9,
            font11 = 10,
            font12 = 11,
            font13 = 12
        },
        name = "",
        color = 0,
        font = 0,

        Set = function(name, color, font)
            BikerGang.Name.name = name
            BikerGang.Name.color = color
            BikerGang.Name.font = font
            BikerGang.Clubhouse.ClubName.stage = 0
        end
    },
    Emblem = {
        Logo = {
            eagle = "MPClubPreset1",
            skull = "MPClubPreset2",
            ace = "MPClubPreset3",
            brassKnuckles = "MPClubPreset4",
            UR = "MPClubPreset5",
            fox = "MPClubPreset6",
            city = "MPClubPreset7",
            dices = "MPClubPreset8",
            target = "MPClubPreset9"
        },
        emblem = "MPClubPreset1",
        rot = 90.0, -- Rotation for 0.0 to 360.0

        Set = function(logo, rotation)
            BikerGang.Emblem.emblem = logo
            BikerGang.Emblem.rot = rotation
            BikerGang.Clubhouse.Emblem.stage = 0
        end
    },
    Clubhouse = {
        interiorId1 = 246273,
        interiorId2 = 246529,

        Members = {
            President = {
                needToLoad = false,
                loaded = false,
                renderId = -1,
                textureDict = "",
                pedheadshot = -1,
                target = "memorial_wall_president",
                prop = "bkr_prop_rt_memorial_president",
                stage = 0,

                Init = function()
                    DrawEmptyRect(BikerGang.Clubhouse.Members.President.target, BikerGang.Clubhouse.Members.President.prop)
                end,
                Enable = function(state)
                    BikerGang.Clubhouse.Members.President.needToLoad = state
                end,
                Set = function(ped)
                    BikerGang.Clubhouse.Members.Set(BikerGang.Clubhouse.Members.President, ped)
                end,
                Clear = function()
                    BikerGang.Clubhouse.Members.Clear(BikerGang.Clubhouse.Members.President)
                end
            },
            VicePresident = {
                needToLoad = false,
                loaded = false,
                renderId = -1,
                textureDict = "",
                pedheadshot = -1,
                target = "memorial_wall_vice_president",
                prop = "bkr_prop_rt_memorial_vice_pres",
                stage = 0,

                Init = function()
                    DrawEmptyRect(BikerGang.Clubhouse.Members.VicePresident.target, BikerGang.Clubhouse.Members.VicePresident.prop)
                end,
                Enable = function(state)
                    BikerGang.Clubhouse.Members.VicePresident.needToLoad = state
                end,
                Set = function(ped)
                    BikerGang.Clubhouse.Members.Set(BikerGang.Clubhouse.Members.VicePresident, ped)
                end,
                Clear = function()
                    BikerGang.Clubhouse.Members.Clear(BikerGang.Clubhouse.Members.VicePresident)
                end
            },
            RoadCaptain = {
                needToLoad = false,
                loaded = false,
                renderId = -1,
                textureDict = "",
                pedheadshot = -1,
                target = "memorial_wall_active_01",
                prop = "bkr_prop_rt_memorial_active_01",
                stage = 0,

                Init = function()
                    DrawEmptyRect(BikerGang.Clubhouse.Members.RoadCaptain.target, BikerGang.Clubhouse.Members.RoadCaptain.prop)
                end,
                Enable = function(state)
                    BikerGang.Clubhouse.Members.RoadCaptain.needToLoad = state
                end,
                Set = function(ped)
                    BikerGang.Clubhouse.Members.Set(BikerGang.Clubhouse.Members.RoadCaptain, ped)
                end,
                Clear = function()
                    BikerGang.Clubhouse.Members.Clear(BikerGang.Clubhouse.Members.RoadCaptain)
                end
            },
            Enforcer = {
                needToLoad = false,
                loaded = false,
                renderId = -1,
                textureDict = "",
                pedheadshot = -1,
                target = "memorial_wall_active_02",
                prop = "bkr_prop_rt_memorial_active_02",
                stage = 0,

                Init = function()
                    DrawEmptyRect(BikerGang.Clubhouse.Members.Enforcer.target, BikerGang.Clubhouse.Members.Enforcer.prop)
                end,
                Enable = function(state)
                    BikerGang.Clubhouse.Members.Enforcer.needToLoad = state
                end,
                Set = function(ped)
                    BikerGang.Clubhouse.Members.Set(BikerGang.Clubhouse.Members.Enforcer, ped)
                end,
                Clear = function()
                    BikerGang.Clubhouse.Members.Clear(BikerGang.Clubhouse.Members.Enforcer)
                end
            },
            SergeantAtArms = {
                needToLoad = false,
                loaded = false,
                renderId = -1,
                textureDict = "",
                pedheadshot = -1,
                target = "memorial_wall_active_03",
                prop = "bkr_prop_rt_memorial_active_03",
                stage = 0,

                Init = function()
                    DrawEmptyRect(BikerGang.Clubhouse.Members.SergeantAtArms.target, BikerGang.Clubhouse.Members.SergeantAtArms.prop)
                end,
                Enable = function(state)
                    BikerGang.Clubhouse.Members.SergeantAtArms.needToLoad = state
                end,
                Set = function(ped)
                    BikerGang.Clubhouse.Members.Set(BikerGang.Clubhouse.Members.SergeantAtArms, ped)
                end,
                Clear = function()
                    BikerGang.Clubhouse.Members.Clear(BikerGang.Clubhouse.Members.SergeantAtArms)
                end
            },
            Set = function(member, ped)
                member.Clear()
                member.pedheadshot = GetPedheadshot(ped)

                if member.pedheadshot ~= -1 then
                    member.textureDict = GetPedheadshotTxdString(member.pedheadshot)

                    local IsTextureDictLoaded = LoadStreamedTextureDict(member.textureDict)

                    if not IsTextureDictLoaded then
                        Citizen.Trace("ERROR: BikerClubhouseDrawMembers - Textures dictionnary \"" .. tostring(member.textureDict) .. "\" cannot be loaded.")
                    end
                else
                    Citizen.Trace("ERROR: BikerClubhouseDrawMembers - PedHeadShot not ready.")
                end
            end,
            Clear = function(member)
                if IsNamedRendertargetRegistered(member.target) then
                    ReleaseNamedRendertarget(GetHashKey(member.target))
                end

                if member.pedheadshot ~= -1 then
                    UnregisterPedheadshot(member.pedheadshot)
                end

                if member.textureDict ~= "" then
                    SetStreamedTextureDictAsNoLongerNeeded(member.textureDict)
                end

                member.renderId = -1
                member.textureDict = ""
                member.pedheadshot = -1
                member.stage = 0
            end
        },

        ClubName = {
            needToLoad = false,
            loaded = false,
            target = "clubname_blackboard_01a",
            prop = "bkr_prop_clubhouse_blackboard_01a",
            renderId = -1,
            movieId = -1,
            stage = 0,

            Init = function()
                DrawEmptyRect(BikerGang.Clubhouse.ClubName.target, BikerGang.Clubhouse.ClubName.prop)
            end,
            Enable = function(state)
                BikerGang.Clubhouse.ClubName.needToLoad = state
            end,
            Clear = function()
                if IsNamedRendertargetRegistered(BikerGang.Clubhouse.ClubName.target) then
                    ReleaseNamedRendertarget(GetHashKey(BikerGang.Clubhouse.ClubName.target))
                end

                if HasNamedScaleformMovieLoaded(BikerGang.Clubhouse.ClubName.movieId) then
                    SetScaleformMovieAsNoLongerNeeded(BikerGang.Clubhouse.ClubName.movieId)
                end

                BikerGang.Clubhouse.ClubName.renderId = -1
                BikerGang.Clubhouse.ClubName.movieId = -1
                BikerGang.Clubhouse.ClubName.stage = 0
            end
        },

        Emblem = {
            needToLoad = false,
            loaded = false,
            target = "clubhouse_table",
            prop = "bkr_prop_rt_clubhouse_table",
            renderId = -1,
            movieId = -1,
            stage = 0,

            Enable = function(state)
                BikerGang.Clubhouse.Emblem.needToLoad = state
            end,
            Init = function()
                DrawEmptyRect(BikerGang.Clubhouse.Emblem.target, BikerGang.Clubhouse.Emblem.prop)
            end,
            Clear = function()
                if IsNamedRendertargetRegistered(BikerGang.Clubhouse.Emblem.target) then
                    ReleaseNamedRendertarget(GetHashKey(BikerGang.Clubhouse.Emblem.target))
                end

                BikerGang.Clubhouse.Emblem.renderId = -1
                BikerGang.Clubhouse.Emblem.stage = 0
            end
        },

        MissionsWall = {
            Missions = {
                Titles = {
                    byThePoundUpper = "BDEAL_DEALN",
                    byThePound = "DEAL_DEALN",
                    prisonerOfWarUpper = "BIGM_RESCN",
                    prisonerOfWar = "CELL_BIKER_RESC",
                    gunsForHire = "LR_INTRO_ST",
                    weaponOfChoice = "CELL_BIKER_CK",
                    gunrunningUpper = "GB_BIGUNLOAD_U",
                    gunrunning = "GB_BIGUNLOAD_T",
                    nineTenthsOfTheLawUpper = "SB_INTRO_TITLE",
                    nineTenthsOfTheLaw = "SB_MENU_TITLE",
                    jailbreakUpper = "FP_INTRO_TITLE",
                    jailbreak = "FP_MENU_TITLE",
                    crackedUpper = "SC_INTRO_TITLE",
                    cracked = "SC_MENU_TITLE",
                    fragileGoodsUpper = "DV_SH_BIG",
                    fragileGoods = "DV_SH_TITLE",
                    torchedUpper = "BA_SH_BIG",
                    torched = "BA_SH_TITLE",
                    outriderUpper = "SHU_SH_BIG",
                    outrider = "SHU_SH_TITLE"
                },
                Descriptions = {
                    byThePound = "DEAL_DEALND",
                    prisonerOfWar = "CELL_BIKER_RESD",
                    gunsForHire = "GFH_MENU_DESC",
                    weaponOfChoice = "CELL_BIKER_CKD",
                    gunrunning = "GB_BIGUNLOAD_D",
                    nineTenthsOfTheLaw = "SB_MENU_DESC",
                    jailbreak = "FP_MENU_DESC",
                    cracked = "SC_MENU_DESC",
                    fragileGoods = "DV_MENU_DESC",
                    torched = "BA_MENU_DESC",
                    outrider = "SHU_MENU_DESC"
                },
                Pictures = {
                    byThePound = "CHM_IMG0", -- Pickup car parked
                    prisonerOfWar = "CHM_IMG8", -- Police with man down
                    gunsForHire = "CHM_IMG4", -- Limo
                    weaponOfChoice = "CHM_IMG10", -- Prisoner being beaten
                    gunrunning = "CHM_IMG3", -- Shipment
                    nineTenthsOfTheLaw = "CHM_IMG6", -- Wheeling
                    jailbreak = "CHM_IMG5", -- Prison bus
                    cracked = "CHM_IMG1", -- Safe
                    fragileGoods = "CHM_IMG2", -- Lost Van
                    torched = "CHM_IMG9", -- Explosive crate
                    outrider = "CHM_IMG7" -- Sport ride
                },
            },
            needToLoad = false,
            loaded = false,
            target = "clubhouse_Plan_01a",
            prop = "bkr_prop_rt_clubhouse_plan_01a",
            renderId = -1,
            movieId = -1,
            stage = 0,
            Position = {
                none = -1,
                left = 0,
                middle = 1,
                right = 2
            },

            Init = function()
                if not DrawEmptyRect(BikerGang.Clubhouse.MissionsWall.target, BikerGang.Clubhouse.MissionsWall.prop) then
                    Citizen.Trace("ERROR: BikerGang.Clubhouse.MissionsWall.Init() - DrawEmptyRect - Timeout")
                end
            end,
            Enable = function(state)
                BikerGang.Clubhouse.MissionsWall.needToLoad = state
            end,
            SelectMission = function(position)
                if BikerGang.Clubhouse.MissionsWall.movieId ~= -1 then
                    BeginScaleformMovieMethod(BikerGang.Clubhouse.MissionsWall.movieId, "SET_SELECTED_MISSION")
                    PushScaleformMovieMethodParameterInt(position) -- Mission index 0 to 2 (-1 = no mission)
                    EndScaleformMovieMethod()
                end
            end,
            SetMission = function(position, title, desc, textDict, x, y)
                if BikerGang.Clubhouse.MissionsWall.needToLoad then
                    if not HasNamedScaleformMovieLoaded(BikerGang.Clubhouse.MissionsWall.movieId) then
                        BikerGang.Clubhouse.MissionsWall.movieId = LoadScaleform("BIKER_MISSION_WALL")
                    end

                    if BikerGang.Clubhouse.MissionsWall.movieId ~= -1 then
                        if position > -1 then
                            BeginScaleformMovieMethod(BikerGang.Clubhouse.MissionsWall.movieId, "SET_MISSION")
                            PushScaleformMovieMethodParameterInt(position) -- Mission index 0 to 2 (-1 = no mission)
                            PushScaleformMovieMethodParameterString(title)
                            PushScaleformMovieMethodParameterString(desc)
                            PushScaleformMovieMethodParameterButtonName(textDict)
                            PushScaleformMovieMethodParameterFloat(x) -- Mission 0: world coordinates X
                            PushScaleformMovieMethodParameterFloat(y) -- Mission 0: world coordinates Y
                            EndScaleformMovieMethod()
                        else
                            -- Remove all missions
                            for key, value in pairs(BikerGang.Clubhouse.MissionsWall.Position) do
                                BikerGang.Clubhouse.MissionsWall.RemoveMission(value)
                            end

                            BikerGang.Clubhouse.MissionsWall.SelectMission(BikerGang.Clubhouse.MissionsWall.Position.none)
                        end
                    end
                end
            end,
            RemoveMission = function(position)
                BeginScaleformMovieMethod(BikerGang.Clubhouse.MissionsWall.movieId, "HIDE_MISSION")
                PushScaleformMovieMethodParameterInt(position)
                EndScaleformMovieMethod()
            end,
            Clear = function()
                -- Removing missions
                BikerGang.Clubhouse.MissionsWall.SelectMission(BikerGang.Clubhouse.MissionsWall.Position.none)
                BikerGang.Clubhouse.MissionsWall.SetMission(BikerGang.Clubhouse.MissionsWall.Position.none)

                -- Releasing handles
                if IsNamedRendertargetRegistered(BikerGang.Clubhouse.MissionsWall.prop) then
                    ReleaseNamedRendertarget(GetHashKey(BikerGang.Clubhouse.MissionsWall.prop))
                end

                if HasNamedScaleformMovieLoaded(BikerGang.Clubhouse.MissionsWall.movieId) then
                    SetScaleformMovieAsNoLongerNeeded(BikerGang.Clubhouse.MissionsWall.movieId)
                end

                -- Resetting
                BikerGang.Clubhouse.MissionsWall.renderId = -1
                BikerGang.Clubhouse.MissionsWall.movieId = -1
                BikerGang.Clubhouse.MissionsWall.stage = 0
            end
        },

        ClearAll = function()
            BikerGang.Clubhouse.ClubName.Clear()
            BikerGang.Clubhouse.ClubName.loaded = false

            BikerGang.Clubhouse.Emblem.Clear()
            BikerGang.Clubhouse.Emblem.loaded = false

            BikerGang.Clubhouse.MissionsWall.Clear()
            BikerGang.Clubhouse.MissionsWall.loaded = false

            for key, member in pairs(BikerGang.Clubhouse.Members) do
                if type(member) == "table" then
                    member.Clear()
                    member.loaded = false
                end
            end
        end
    }
}

Citizen.CreateThread(function()
    -- Removing the black texture
    BikerGang.Clubhouse.Members.President.Init()
    BikerGang.Clubhouse.Members.VicePresident.Init()
    BikerGang.Clubhouse.Members.RoadCaptain.Init()
    BikerGang.Clubhouse.Members.Enforcer.Init()
    BikerGang.Clubhouse.Members.SergeantAtArms.Init()

    BikerGang.Clubhouse.ClubName.Init()
    BikerGang.Clubhouse.Emblem.Init()
    BikerGang.Clubhouse.MissionsWall.Init()

    while true do
        if BikerGang.Clubhouse.ClubName.needToLoad or BikerGang.Clubhouse.Emblem.needToLoad or BikerGang.Clubhouse.MissionsWall.needToLoad or BikerGang.Clubhouse.Members.President.needToLoad or BikerGang.Clubhouse.Members.VicePresident.needToLoad or BikerGang.Clubhouse.Members.RoadCaptain.needToLoad or BikerGang.Clubhouse.Members.Enforcer.needToLoad or BikerGang.Clubhouse.Members.SergeantAtArms.needToLoad then
            -- If we are inside a clubhouse, then we load
            if Global.Biker.isInsideClubhouse1 or Global.Biker.isInsideClubhouse2 then
                -- Club name
                if BikerGang.Clubhouse.ClubName.needToLoad then
                    DrawClubName(BikerGang.Name.name, BikerGang.Name.color, BikerGang.Name.font)

                    BikerGang.Clubhouse.ClubName.loaded = true
                elseif BikerGang.Clubhouse.ClubName.loaded then
                    BikerGang.Clubhouse.ClubName.Clear()
                    BikerGang.Clubhouse.ClubName.loaded = false
                end

                -- Emblem
                if BikerGang.Clubhouse.Emblem.needToLoad then
                    DrawEmblem(BikerGang.Emblem.emblem, BikerGang.Emblem.rot)

                    BikerGang.Clubhouse.Emblem.loaded = true
                elseif BikerGang.Clubhouse.Emblem.loaded then
                    BikerGang.Clubhouse.Emblem.Clear()
                    BikerGang.Clubhouse.Emblem.loaded = false
                end

                -- Missions wall
                if BikerGang.Clubhouse.MissionsWall.needToLoad then
                    DrawMissions()

                    BikerGang.Clubhouse.MissionsWall.loaded = true
                elseif BikerGang.Clubhouse.MissionsWall.loaded then
                    BikerGang.Clubhouse.MissionsWall.Clear()
                    BikerGang.Clubhouse.MissionsWall.loaded = false
                end

                -- Members: President
                for key, member in pairs(BikerGang.Clubhouse.Members) do
                    if type(member) == "table" then
                        if member.needToLoad then
                            DrawMember(member)
                            member.loaded = true
                        elseif member.loaded then
                            member.Clear()
                            member.loaded = false
                        end
                    end
                end

                Citizen.Wait(0) -- We need to call all this every frame
            else
                -- Not in a clubhouse
                Citizen.Wait(1000)
            end
        else
            -- No load needed
            Citizen.Wait(1000)
        end
    end
end)

function DrawClubName(name, color, font)
    if BikerGang.Clubhouse.ClubName.stage == 0 then
        if BikerGang.Clubhouse.ClubName.renderId == -1 then
            BikerGang.Clubhouse.ClubName.renderId = CreateNamedRenderTargetForModel(BikerGang.Clubhouse.ClubName.target, BikerGang.Clubhouse.ClubName.prop)
        end

        if BikerGang.Clubhouse.ClubName.movieId == -1 then
            BikerGang.Clubhouse.ClubName.movieId = RequestScaleformMovie("CLUBHOUSE_NAME")
        end

        BikerGang.Clubhouse.ClubName.stage = 1
    elseif BikerGang.Clubhouse.ClubName.stage == 1 then
        if HasScaleformMovieLoaded(BikerGang.Clubhouse.ClubName.movieId) then
            local parameters = {
                p0 = {type = "string", value = name},
                p1 = {type = "int", value = color},
                p2 = {type = "int", value = font}
            }

            SetupScaleform(BikerGang.Clubhouse.ClubName.movieId, "SET_CLUBHOUSE_NAME", parameters)

            BikerGang.Clubhouse.ClubName.stage = 2
        else
            BikerGang.Clubhouse.ClubName.movieId = RequestScaleformMovie("CLUBHOUSE_NAME")
        end
    elseif BikerGang.Clubhouse.ClubName.stage == 2 then
        SetTextRenderId(BikerGang.Clubhouse.ClubName.renderId)
        SetScriptGfxDrawOrder(4)
        SetScriptGfxDrawBehindPausemenu(true)
        SetScriptGfxAlign(73, 73)
        DrawScaleformMovie(BikerGang.Clubhouse.ClubName.movieId, 0.0975, 0.105, 0.235, 0.35, 255, 255, 255, 255, 0)
        SetTextRenderId(GetDefaultScriptRendertargetRenderId())
        ResetScriptGfxAlign()
    end
end

function DrawEmblem(texturesDict, rotation)
    if BikerGang.Clubhouse.Emblem.stage == 0 then
        if BikerGang.Clubhouse.Emblem.renderId == -1 then
            BikerGang.Clubhouse.Emblem.renderId = CreateNamedRenderTargetForModel(BikerGang.Clubhouse.Emblem.target, BikerGang.Clubhouse.Emblem.prop)
        end

        local IsTextureDictLoaded = LoadStreamedTextureDict(texturesDict)

        if not IsTextureDictLoaded then
            Citizen.Trace("ERROR: DrawEmblem - Textures dictionnary cannot be loaded.")
        end

        BikerGang.Clubhouse.Emblem.stage = 1
    elseif BikerGang.Clubhouse.Emblem.stage == 1 then
        BikerGang.Clubhouse.Emblem.renderId = CreateNamedRenderTargetForModel(BikerGang.Clubhouse.Emblem.target, BikerGang.Clubhouse.Emblem.prop)
        BikerGang.Clubhouse.Emblem.stage = 2
    elseif BikerGang.Clubhouse.Emblem.stage == 2 then
        SetTextRenderId(BikerGang.Clubhouse.Emblem.renderId)
        SetScriptGfxAlign(73, 73)
        SetScriptGfxDrawOrder(4)
        SetScriptGfxDrawBehindPausemenu(true)
        DrawInteractiveSprite(texturesDict, texturesDict, 0.5, 0.5, 1.0, 1.0, rotation, 255, 255, 255, 255);
        ResetScriptGfxAlign()
        SetTextRenderId(GetDefaultScriptRendertargetRenderId())
    end
end

function DrawMissions()
    if BikerGang.Clubhouse.MissionsWall.stage == 0 then
        if BikerGang.Clubhouse.MissionsWall.renderId == -1 then
            BikerGang.Clubhouse.MissionsWall.renderId = CreateNamedRenderTargetForModel(BikerGang.Clubhouse.MissionsWall.target, BikerGang.Clubhouse.MissionsWall.prop)
        end

        BikerGang.Clubhouse.MissionsWall.stage = 1
    elseif BikerGang.Clubhouse.MissionsWall.stage == 1 then
        if HasScaleformMovieLoaded(BikerGang.Clubhouse.MissionsWall.movieId) then
            BikerGang.Clubhouse.MissionsWall.stage = 2
        else
            BikerGang.Clubhouse.MissionsWall.movieId = RequestScaleformMovie("BIKER_MISSION_WALL")
        end
    elseif BikerGang.Clubhouse.MissionsWall.stage == 2 then
        SetTextRenderId(BikerGang.Clubhouse.MissionsWall.renderId)
        SetScriptGfxDrawOrder(4)
        SetScriptGfxDrawBehindPausemenu(false)
        DrawScaleformMovie(BikerGang.Clubhouse.MissionsWall.movieId, 0.5, 0.5, 1.0, 1.0, 255, 255, 255, 255, 0)
        SetTextRenderId(GetDefaultScriptRendertargetRenderId())
        SetScaleformFitRendertarget(BikerGang.Clubhouse.MissionsWall.movieId, true)
    end
end

function DrawMember(member)
    if member.stage == 0 then
        member.stage = 1
    elseif member.stage == 1 then
        member.renderId = CreateNamedRenderTargetForModel(member.target, member.prop)
        member.stage = 2
    elseif member.stage == 2 then
        if HasStreamedTextureDictLoaded(member.textureDict) then
            SetTextRenderId(member.renderId)
            SetScriptGfxAlign(73, 73)
            DrawInteractiveSprite(member.textureDict, member.textureDict, 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
            ResetScriptGfxAlign()
            SetTextRenderId(GetDefaultScriptRendertargetRenderId())
        end
    end
end
