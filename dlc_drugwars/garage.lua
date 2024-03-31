-- Garage: -272.9271, 283.2581, 103.9920
exports('GetDrugWarsGarageObject', function()
    return DrugWarsGarage
end)

DrugWarsGarage = {
    Ipl = {
        ipl = {
            "xm3_garage_fix",
            "xm3_collision_fixes"
        },

        Load = function()
            EnableIpl(DrugWarsGarage.Ipl.ipl, true)
        end,
        Remove = function()
            EnableIpl(DrugWarsGarage.Ipl.ipl, false)
        end
    },

    Banner = {
        model = `ss1_13_clth_ss1_13`,
        position = vector3(-277.1116, 281.5493, 98.6691),

        Hide = function()
            CreateModelHide(DrugWarsGarage.Banner.position, 10.0, DrugWarsGarage.Banner.model, true)
        end,
        Restore = function()
            RemoveModelHide(DrugWarsGarage.Banner.position, 10.0, DrugWarsGarage.Banner.model, false)
        end
    },

    LoadDefault = function()
        DrugWarsGarage.Ipl.Load()
        DrugWarsGarage.Banner.Hide()
    end
}
