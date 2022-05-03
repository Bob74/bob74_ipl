-- Pillbox hospital: 307.1680, -590.807, 43.280
exports('GetPillboxHospitalObject', function()
    return PillboxHospital
end)

PillboxHospital = {
    ipl = "rc12b_default",

    Enable = function(state)
        EnableIpl(PillboxHospital.ipl, state)
    end
}
