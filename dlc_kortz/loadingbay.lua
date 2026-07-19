-- Loading bay: 2693.671, 5877.493, -62.0
exports("GetKortzLoadingBay", function()
    return KortzLoadingBay
end)

KortzLoadingBay = {
    interiorId = 305409,

    Truck = {
        truck = "set_mule_cargo",

        Enable = function(state, refresh)
            SetIplPropState(KortzLoadingBay.interiorId, KortzLoadingBay.Truck.truck, state, refresh)
        end
    },

    Details = {
        keypad = "set_keypads_loading_bay",
        camera = "set_cameras_04",

        Enable = function(details, state, refresh)
            SetIplPropState(KortzLoadingBay.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        KortzLoadingBay.Truck.Enable(true, false)

        KortzLoadingBay.Details.Enable(KortzLoadingBay.Details.keypad, true, false)
        KortzLoadingBay.Details.Enable(KortzLoadingBay.Details.camera, true, false)

        RefreshInterior(KortzLoadingBay.interiorId)
    end
}