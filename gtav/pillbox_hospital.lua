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
        PillboxHospital.Enable(PillboxHospital.default, false)
        PillboxHospital.Enable(PillboxHospital.fixed, false)
        PillboxHospital.Enable(PillboxHospital.destroyed, false)
        PillboxHospital.Enable(PillboxHospital.hospitalinterior, false)
    end,

    LoadDefault = function()
        PillboxHospital.Clear()
        -- [DEFAULT HOSPITAL]
        PillboxHospital.Enable(PillboxHospital.default, true)
        -- [FIXED HOSPITAL]
        -- PillboxHospital.Enable(PillboxHospital.fixed, true)
        -- [DESTROYED HOSPITAL]
        -- PillboxHospital.Enable(PillboxHospital.destroyed, true)
        -- PillboxHospital.Enable(PillboxHospital.hospitalinterior, true)
    end,
}
