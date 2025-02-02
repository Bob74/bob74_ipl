-- Aircraft carrier: -3208.03, 3954.54, 14.0
exports('GetSummerCarrierObject', function()
    return SummerCarrier
end)

SummerCarrier = {
    ipl = {
        "m24_1_carrier",
        "m24_1_carrier_int1",
        "m24_1_carrier_int2",
        "m24_1_carrier_int3",
        "m24_1_carrier_int4",
        "m24_1_carrier_int5",
        "m24_1_carrier_int6",
        "m24_1_carrier_ladders"
    },

    Enable = function(state)
        EnableIpl(SummerCarrier.ipl, state)
    end,

    LoadDefault = function()
        SummerCarrier.Enable(true)
    end
}