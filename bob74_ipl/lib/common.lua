
exports('EnableIpl', function(ipl, activate)
    EnableIpl(ipl, activate)
end)

exports('GetPedheadshotTexture', function(ped)
    return GetPedheadshotTexture(ped)
end)

-- Load or remove IPL(s)
function EnableIpl(ipl, activate)
    if IsTable(ipl) then
        for key, value in pairs(ipl) do
            EnableIpl(value, activate)
        end
    else
        if activate then
            if not IsIplActive(ipl) then RequestIpl(ipl) end
        else
            if IsIplActive(ipl) then RemoveIpl(ipl) end
        end
    end
end

-- Enable or disable the specified props in an interior
function SetIplPropState(interiorId, props, state, refresh)
    if refresh == nil then refresh = false end
    if IsTable(interiorId) then
        for key, value in pairs(interiorId) do
            SetIplPropState(value, props, state, refresh)
        end
    else
        if IsTable(props) then
            for key, value in pairs(props) do
                SetIplPropState(interiorId, value, state, refresh)
            end
        else
            if state then
                if not IsInteriorPropEnabled(interiorId, props) then EnableInteriorProp(interiorId, props) end
            else
                if IsInteriorPropEnabled(interiorId, props) then DisableInteriorProp(interiorId, props) end
            end
        end
        if refresh == true then RefreshInterior(interiorId) end
    end
end

function CreateNamedRenderTargetForModel(name, model)
    local handle = 0
    if not IsNamedRendertargetRegistered(name) then
        RegisterNamedRendertarget(name, false)
    end
    if not IsNamedRendertargetLinked(model) then
        LinkNamedRendertarget(model)
    end
    if IsNamedRendertargetRegistered(name) then
        handle = GetNamedRendertargetRenderId(name)
    end

    return handle
end

function DrawEmptyRect(name, model)
    local step = 250
    local timeout = 5 * 1000
    local currentTime = 0
    local renderId = CreateNamedRenderTargetForModel(name, model)

    while (not IsNamedRendertargetRegistered(name)) do
        Citizen.Wait(step)
        currentTime = currentTime + step
        if (currentTime >= timeout) then return false end
    end
    if (IsNamedRendertargetRegistered(name)) then
        SetTextRenderId(renderId)
        SetUiLayer(4)
        DrawRect(0.5, 0.5, 1.0, 1.0, 0, 0, 0, 0)
        SetTextRenderId(GetDefaultScriptRendertargetRenderId())

        ReleaseNamedRendertarget(0, name)
    end

    return true
end

--[[
    TO REMOVE
]]--
function LoadEmptyScaleform(renderTarget, prop, scaleform, sfFunction)
    local renderId = CreateNamedRenderTargetForModel(renderTarget, prop)
    local gfxHandle = -1

    SetTextRenderId(renderId)
    SetTextRenderId(GetDefaultScriptRendertargetRenderId())

    if (scaleform ~= nil) then
        gfxHandle = RequestScaleformMovie(scaleform)
    end

    if (sfFunction ~= nil) then
        BeginScaleformMovieMethod(gfxHandle, sfFunction)
        PushScaleformMovieMethodParameterInt(-1)
        EndScaleformMovieMethod()
    end
end

function SetupScaleform(movieId, scaleformFunction, parameters)
    BeginScaleformMovieMethod(movieId, scaleformFunction)
    N_0x77fe3402004cd1b0(name)
    if (IsTable(parameters)) then
        for i = 0, Tablelength(parameters) - 1 do
            local p = parameters["p" .. tostring(i)]
            if (p.type == "bool") then
                PushScaleformMovieMethodParameterBool(p.value)
            elseif (p.type == "int") then
                PushScaleformMovieMethodParameterInt(p.value)
            elseif (p.type == "float") then
                PushScaleformMovieMethodParameterFloat(p.value)
            elseif (p.type == "string") then
                PushScaleformMovieMethodParameterString(p.value)
            elseif (p.type == "buttonName") then
                PushScaleformMovieMethodParameterButtonName(p.value)
            end
        end
    end
    EndScaleformMovieMethod()
    N_0x32f34ff7f617643b(movieId, 1)
end

function LoadStreamedTextureDict(texturesDict)
    local step = 1000
    local timeout = 5 * 1000
    local currentTime = 0

    RequestStreamedTextureDict(texturesDict, 0)
    while not HasStreamedTextureDictLoaded(texturesDict) do
        Citizen.Wait(step)
        currentTime = currentTime + step
        if (currentTime >= timeout) then return false end
    end
    return true
end

function LoadScaleform(scaleform)
    local step = 1000
    local timeout = 5 * 1000
    local currentTime = 0
    local handle = RequestScaleformMovie(scaleform)

    while (not HasScaleformMovieLoaded(handle)) do
        Citizen.Wait(step)
        currentTime = currentTime + step
        if (currentTime >= timeout) then return -1 end
    end

    return handle
end

function GetPedheadshot(ped)
    local step = 1000
    local timeout = 5 * 1000
    local currentTime = 0
    local pedheadshot = RegisterPedheadshot(ped)

    while not IsPedheadshotReady(pedheadshot) do
        Citizen.Wait(step)
        currentTime = currentTime + step
        if (currentTime >= timeout) then return -1 end
    end

    return pedheadshot
end

function GetPedheadshotTexture(ped)
    local textureDict = nil
    local pedheadshot = GetPedheadshot(ped)

    if (pedheadshot ~= -1) then
        textureDict = GetPedheadshotTxdString(pedheadshot)
        local IsTextureDictLoaded = LoadStreamedTextureDict(textureDict)
        if (not IsTextureDictLoaded) then
            Citizen.Trace("ERROR: BikerClubhouseDrawMembers - Textures dictionnary \"" .. tostring(textureDict) .. "\" cannot be loaded.")
        end
    else
        Citizen.Trace("ERROR: BikerClubhouseDrawMembers - PedHeadShot not ready.")
    end

    return textureDict
end

-- Check if a variable is a table
function IsTable(T)
    return type(T) == 'table'
end
-- Return the number of elements of the table
function Tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

