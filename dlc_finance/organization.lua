exports('GetFinanceOrganizationObject', function()
    return FinanceOrganization
end)

AddEventHandler('onClientResourceStop', function(res)
    if GetCurrentResourceName() ~= res then
        return
    end

    FinanceOrganization.Office.Clear()
end)

FinanceOrganization = {
    Name = {
        Colors = {
            black = 0,
            gray = 1,
            yellow = 2,
            blue = 3,
            orange = 5,
            red = 6,
            green = 7
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
        Style = {
            normal = 3,
            light = 1
        },
        name = "",
        style = 0,
        color = 0,
        font = 0,

        Set = function(name, style, color, font)
            FinanceOrganization.Name.name = name
            FinanceOrganization.Name.style = style
            FinanceOrganization.Name.color = color
            FinanceOrganization.Name.font = font
            FinanceOrganization.Office.stage = 0
        end
    },
    Office = {
        needToLoad = false,
        loaded = false,
        target = "prop_ex_office_text",
        prop = "ex_prop_ex_office_text",
        renderId = -1,
        movieId = -1,
        stage = 0,

        Init = function()
            DrawEmptyRect(FinanceOrganization.Office.target, FinanceOrganization.Office.prop)
        end,
        Enable = function(state)
            FinanceOrganization.Office.needToLoad = state
        end,
        Clear = function()
            if IsNamedRendertargetRegistered(FinanceOrganization.Office.target) then
                ReleaseNamedRendertarget(GetHashKey(FinanceOrganization.Office.target))
            end

            if HasScaleformMovieFilenameLoaded(FinanceOrganization.Office.movieId) then
                SetScaleformMovieAsNoLongerNeeded(FinanceOrganization.Office.movieId)
            end

            FinanceOrganization.Office.renderId = -1
            FinanceOrganization.Office.movieId = -1
            FinanceOrganization.Office.stage = 0
        end
    }
}

Citizen.CreateThread(function()
    FinanceOrganization.Office.Init()

    while true do
        if FinanceOrganization.Office.needToLoad then
            -- Need to load
            if Global.FinanceOffices.isInsideOffice1 or Global.FinanceOffices.isInsideOffice2 or Global.FinanceOffices.isInsideOffice3 or Global.FinanceOffices.isInsideOffice4 then
                DrawOrganizationName(FinanceOrganization.Name.name, FinanceOrganization.Name.style, FinanceOrganization.Name.color, FinanceOrganization.Name.font)

                FinanceOrganization.Office.loaded = true

                Citizen.Wait(0) -- We need to call all this every frame
            else
                Citizen.Wait(1000) -- We are not inside an office
            end
        elseif FinanceOrganization.Office.loaded then
            -- Loaded and need to unload
            FinanceOrganization.Office.Clear()
            FinanceOrganization.Office.loaded = false

            Citizen.Wait(1000) -- We can wait longer when we don't need to display text
        else
            -- Not needed to load
            Citizen.Wait(1000) -- We can wait longer when we don't need to display text
        end
    end
end)

function DrawOrganizationName(name, style, color, font)
    if FinanceOrganization.Office.stage == 0 then
        if FinanceOrganization.Office.renderId == -1 then
            FinanceOrganization.Office.renderId = CreateNamedRenderTargetForModel(FinanceOrganization.Office.target, FinanceOrganization.Office.prop)
        end

        if FinanceOrganization.Office.movieId == -1 then
            FinanceOrganization.Office.movieId = RequestScaleformMovie("ORGANISATION_NAME")
        end

        FinanceOrganization.Office.stage = 1
    elseif FinanceOrganization.Office.stage == 1 then
        if HasScaleformMovieLoaded(FinanceOrganization.Office.movieId) then
            local parameters = {
                p0 = {
                    type = "string",
                    value = name
                },
                p1 = {
                    type = "int",
                    value = style
                },
                p2 = {
                    type = "int",
                    value = color
                },
                p3 = {
                    type = "int",
                    value = font
                }
            }

            SetupScaleform(FinanceOrganization.Office.movieId, "SET_ORGANISATION_NAME", parameters)

            FinanceOrganization.Office.stage = 2
        else
            FinanceOrganization.Office.movieId = RequestScaleformMovie("ORGANISATION_NAME")
        end
    elseif FinanceOrganization.Office.stage == 2 then
        SetTextRenderId(FinanceOrganization.Office.renderId)
        SetScriptGfxDrawOrder(4)
        SetScriptGfxDrawBehindPausemenu(true)
        SetScriptGfxAlign(73, 73)
        DrawScaleformMovie(FinanceOrganization.Office.movieId, 0.196, 0.245, 0.46, 0.66, 255, 255, 255, 255, 0)
        SetTextRenderId(GetDefaultScriptRendertargetRenderId())
        ResetScriptGfxAlign()
    end
end
