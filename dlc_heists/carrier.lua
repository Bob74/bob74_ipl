-- Heist Carrier: 3082.3117 -4717.1191 15.2622
exports('GetHeistCarrierObject', function()
    return HeistCarrier
end)

HeistCarrier = {
    ipl = {
        "hei_carrier",
        "hei_carrier_int1",
        "hei_carrier_int2",
        "hei_carrier_int3",
        "hei_carrier_int4",
        "hei_carrier_int5",
        "hei_carrier_int6",
        "hei_carrier_lodlights"
    },

    Enable = function(state)
        EnableIpl(HeistCarrier.ipl, state)
    end
}
