-- Cartel Garage: 1220.0, -2280.0, -50.0
exports('GetChopShopGarageObject', function()
    return ChopShopGarage
end)

ChopShopGarage = {
    interiorId = 293633,

    Entities = {
        entities = "mp2023_02_dlc_int_6_cb",

        Enable = function(state, refresh)
            SetIplPropState(ChopShopGarage.interiorId, ChopShopGarage.Entities.entities, state, refresh)
        end
    },

    LoadDefault = function()
        ChopShopGarage.Entities.Enable(true, false)

        RefreshInterior(ChopShopGarage.interiorId)
    end
}