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

    Interior1 = {
        interiorId = 295681,

        Storage = {
            open = "set_hangar_1_spwn_cbd_open",
            closed = "set_hangar_1_spwn_cbd_closed",
    
            Set = function(storage, refresh)
                SummerCarrier.Interior1.Storage.Clear(false)
                SetIplPropState(SummerCarrier.Interior1.interiorId, storage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(SummerCarrier.Interior1.interiorId, {
                    SummerCarrier.Interior1.Storage.open,
                    SummerCarrier.Interior1.Storage.closed
                }, false, refresh)
            end
        },
    },

    Interior2 = {
        interiorId = 296193,

        Door = {
            open = "set_hangar_2_doors_open",
            closed = "set_hangar_2_doors_closed",
    
            Set = function(door, refresh)
                SummerCarrier.Interior2.Door.Clear(false)
                SetIplPropState(SummerCarrier.Interior2.interiorId, door, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(SummerCarrier.Interior2.interiorId, {
                    SummerCarrier.Interior2.Door.open,
                    SummerCarrier.Interior2.Door.closed
                }, false, refresh)
            end
        },

        Storage = {
            open = "set_hangar_2_spwn_cbd_open",
            closed = "set_hangar_2_spwn_cbd_closed",
    
            Set = function(storage, refresh)
                SummerCarrier.Interior2.Storage.Clear(false)
                SetIplPropState(SummerCarrier.Interior2.interiorId, storage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(SummerCarrier.Interior2.interiorId, {
                    SummerCarrier.Interior2.Storage.open,
                    SummerCarrier.Interior2.Storage.closed
                }, false, refresh)
            end
        },
    },

    Interior3 = {
        interiorId = 296449,

        Door = {
            open = "set_hangar_3_doors_open",
            closed = "set_hangar_3_doors_closed",
    
            Set = function(door, refresh)
                SummerCarrier.Interior3.Door.Clear(false)
                SetIplPropState(SummerCarrier.Interior3.interiorId, door, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(SummerCarrier.Interior3.interiorId, {
                    SummerCarrier.Interior3.Door.open,
                    SummerCarrier.Interior3.Door.closed
                }, false, refresh)
            end
        },

        Storage = {
            open = "set_hangar_3_spwn_cbd_open",
            closed = "set_hangar_3_spwn_cbd_closed",
    
            Set = function(storage, refresh)
                SummerCarrier.Interior3.Storage.Clear(false)
                SetIplPropState(SummerCarrier.Interior3.interiorId, storage, true, refresh)
            end,
            Clear = function(refresh)
                SetIplPropState(SummerCarrier.Interior3.interiorId, {
                    SummerCarrier.Interior3.Storage.open,
                    SummerCarrier.Interior3.Storage.closed
                }, false, refresh)
            end
        },
    },

    LoadDefault = function()
        SummerCarrier.Enable(true)

        SummerCarrier.Interior2.Door.Set(SummerCarrier.Interior2.Door.closed, false)
        SummerCarrier.Interior3.Door.Set(SummerCarrier.Interior3.Door.open, false)

        SummerCarrier.Interior1.Storage.Set(SummerCarrier.Interior1.Storage.closed, false)
        SummerCarrier.Interior2.Storage.Set(SummerCarrier.Interior2.Storage.closed, false)
        SummerCarrier.Interior3.Storage.Set(SummerCarrier.Interior3.Storage.closed, false)

        RefreshInterior(SummerCarrier.Interior1.interiorId)
        RefreshInterior(SummerCarrier.Interior2.interiorId)
        RefreshInterior(SummerCarrier.Interior3.interiorId)
    end
}
