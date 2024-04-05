-- Train crash: 2630.595, 1458.144, 25.3669
exports('GetDrugWarsTrainCrashObject', function()
    return DrugWarsTrainCrash
end)

DrugWarsTrainCrash = {
    ipl = "xm3_train_crash",

    Enable = function(state)
        EnableIpl(DrugWarsTrainCrash.ipl, state)
    end
}
