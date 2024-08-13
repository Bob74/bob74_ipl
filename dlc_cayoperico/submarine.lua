-- Submarine: 1560.0, 400.0, -50.0
exports('GetCayoPericoSubmarine', function()
    return CayoPericoSubmarine
end)

CayoPericoSubmarine = {
    interiorId = 281345,

    Workshop = {
        brig = "entity_set_brig",
        workshop = "entity_set_weapons",

        Set = function(room, refresh)
            CayoPericoSubmarine.Workshop.Clear(false)

            SetIplPropState(CayoPericoSubmarine.interiorId, room, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(CayoPericoSubmarine.interiorId, {
                CayoPericoSubmarine.Workshop.brig,
                CayoPericoSubmarine.Workshop.workshop
            }, false, refresh)
        end
    },

    Chairs = {
        chairs = "entity_set_guide",

        Enable = function(state, refresh)
            SetIplPropState(CayoPericoSubmarine.interiorId, CayoPericoSubmarine.Chairs.chairs, state, refresh)
        end
    },

    Lights = {
        on = "entity_set_hatch_lights_on",
        off = "entity_set_hatch_lights_off",

        Set = function(lights, refresh)
            CayoPericoSubmarine.Lights.Clear(false)

            SetIplPropState(CayoPericoSubmarine.interiorId, lights, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(CayoPericoSubmarine.interiorId, {
                CayoPericoSubmarine.Lights.on,
                CayoPericoSubmarine.Lights.off
            }, false, refresh)
        end
    },

    Details = {
        bomb = "entity_set_demolition",
        torch = "entity_set_acetylene",
        cutter = "entity_set_plasma",
        fingerprint = "entity_set_fingerprint",
        suppressors = "entity_set_suppressors",
        jammer = "entity_set_jammer",

        Enable = function(details, state, refresh)
            SetIplPropState(CayoPericoSubmarine.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        CayoPericoSubmarine.Workshop.Set(CayoPericoSubmarine.Workshop.brig, false)
        CayoPericoSubmarine.Chairs.Enable(true, false)
        CayoPericoSubmarine.Lights.Set(CayoPericoSubmarine.Lights.off, false)

        RefreshInterior(CayoPericoSubmarine.interiorId)
    end
}