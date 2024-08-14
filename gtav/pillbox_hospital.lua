-- Pillbox hospital: 307.1680, -590.807, 43.280
exports('GetPillboxHospitalObject', function()
    return PillboxHospital
end)

PillboxHospital = {
    iplFixed = 'RC12B_Fixed',
    iplDefault = 'RC12B_Default',
    iplDestroyed = 'RC12B_Destroyed',
    iplHospitalInterior = 'RC12B_HospitalInterior',

    LoadDefault = function(state)
        PillboxHospital.DisableIpl()
        EnableIpl(PillboxHospital.iplDefault, state)
    end,

    LoadFixed = function(state)
        PillboxHospital.DisableIpl()
        EnableIpl(PillboxHospital.iplFixed, state)
    end,

    LoadDestroyed = function(state)
        PillboxHospital.DisableIpl()
        EnableIpl(PillboxHospital.iplDestroyed, state)
        EnableIpl(PillboxHospital.iplHospitalInterior, state)
    end,

    DisableIpl = function()
        RemoveIpl("RC12B_Fixed")
        RemoveIpl("RC12B_Default")
        RemoveIpl('RC12B_Destroyed')
        RemoveIpl("RC12B_HospitalInterior")
    end
}
