-- Cartel Garage: 1220.133, -2277.844, -50.000
exports('GetChopShopCartelGarageObject', function()
    return ChopShopCartelGarage
end)

ChopShopCartelGarage = {
    interiorId = 293633,

    Entities = {
        entities = "mp2023_02_dlc_int_6_cb",

        Enable = function(state, refresh)
            SetIplPropState(ChopShopCartelGarage.interiorId, ChopShopCartelGarage.Entities.entities, state, refresh)
        end
    },

    LoadDefault = function()
        ChopShopCartelGarage.Entities.Enable(true, false)

        RefreshInterior(ChopShopCartelGarage.interiorId)
    end
}