-- Heist Carrier: 3082.3117 -4717.1191 15.2622
exports('GetHeistCarrierObject', function()
    return HeistCarrier
end)

HeistCarrier = {
    ipl = {
        "hei_carrier",
        "hei_carrier_int1",
        "hei_carrier_int1_lod",
        "hei_carrier_int2",
        "hei_carrier_int2_lod",
        "hei_carrier_int3",
        "hei_carrier_int3_lod",
        "hei_carrier_int4",
        "hei_carrier_int4_lod",
        "hei_carrier_int5",
        "hei_carrier_int5_lod",
        "hei_carrier_int6",
        "hei_carrier_int6_lod",
        "hei_carrier_lod",
        "hei_carrier_slod"
    },

    Enable = function(state)
        EnableIpl(HeistCarrier.ipl, state)
    end
}
