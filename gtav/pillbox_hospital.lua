-- Pillbox hospital: 307.1680, -590.807, 43.280
exports('GetPillboxHospitalObject', function()
    return PillboxHospital
end)

PillboxHospital = {
    default = 'rc12b_default',
    fixed = 'rc12b_fixed',
    destroyed = 'rc12b_destroyed', -- Destroyed and hospital interior need to be loaded at the same time
    hospitalinterior = 'rc12b_hospitalinterior',

    Enable = function(ipl, state)
        EnableIpl(ipl, state)
    end,

    Clear = function()
        EnableIpl(PillboxHospital.default, false)
        EnableIpl(PillboxHospital.fixed, false)
        EnableIpl(PillboxHospital.destroyed, false)
        EnableIpl(PillboxHospital.hospitalinterior, false)
    end,

    LoadDefault = function()
        PillboxHospital.Clear()
        -- [DEFAULT HOSPITAL]
        --EnableIpl(PillboxHospital.default, true)
        -- [FIXED HOSPITAL]
        --EnableIpl(PillboxHospital.fixed, true)
        -- [DESTROYED HOSPITAL]
        EnableIpl(PillboxHospital.destroyed, true)
        EnableIpl(PillboxHospital.hospitalinterior, true)
    end,
}
