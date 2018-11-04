
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

-- Check if a variable is a table
function IsTable(t)
    return type(t) == 'table'
end

function LoadEmptyScaleform(renderTarget, prop, scaleform, sfFunction)
    local renderId = -1
    local gfxHandle = -1

    if (not IsNamedRendertargetRegistered(renderTarget)) then
        RegisterNamedRendertarget(renderTarget, false)
    end

    if (not IsNamedRendertargetLinked(prop)) then
        LinkNamedRendertarget(prop)
        if (renderId == -1) then
            renderId = GetNamedRendertargetRenderId(renderTarget)
        end
    end

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
