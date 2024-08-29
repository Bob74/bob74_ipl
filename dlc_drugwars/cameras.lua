exports('GetDrugWarsCamerasObject', function()
    return DrugWarsCameras
end)

DrugWarsCameras = {

    ipl = "xm3_stash_cams",

    Enable = function(state)
        EnableIpl(DrugWarsCameras.ipl, state)
    end
}