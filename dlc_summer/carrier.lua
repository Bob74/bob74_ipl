-- Aircraft carrier: -3208.03, 3954.54, 14.0
exports('GetSummerCarrierObject', function()
    return SummerCarrier
end)

SummerCarrier = {
    hangar1Id = 295681,
    hangar2Id = 296193,
    hangar3Id = 296449,

    Ipl = {
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

        Load = function()
            EnableIpl(SummerCarrier.Ipl.ipl, true)
        end,

        Remove = function()
            EnableIpl(SummerCarrier.Ipl.ipl, false)
        end
    },

    Hangar1 = {
        CoverBayDoorOpen = "set_hangar_1_spwn_cbd_open",
        CoverBayDoorClosed = "set_hangar_1_spwn_cbd_closed",

        Set = function(state, refresh)
            SummerCarrier.Hangar1.Clear(false)
            SetIplPropState(SummerCarrier.hangar1Id, state, true, refresh)
            RefreshInterior(SummerCarrier.hangar1Id)
        end,

        Clear = function(refresh)
            SetIplPropState(SummerCarrier.hangar1Id, {
                SummerCarrier.Hangar1.CoverBayDoorOpen,
                SummerCarrier.Hangar1.CoverBayDoorClosed
            }, false, refresh)
        end
    },

    Hangar2 = {
        CoverBayDoor = {
            CoverBayDoorOpen = "set_hangar_2_spwn_cbd_open",
            CoverBayDoorClosed = "set_hangar_2_spwn_cbd_closed",

            Set = function(state, refresh)
                SummerCarrier.Hangar2.CoverBayDoor.Clear(false)
                SetIplPropState(SummerCarrier.hangar2Id, state, true, refresh)
                RefreshInterior(SummerCarrier.hangar2Id)
            end,

            Clear = function(refresh)
                SetIplPropState(SummerCarrier.hangar2Id, {
                    SummerCarrier.Hangar2.CoverBayDoor.CoverBayDoorOpen,
                    SummerCarrier.Hangar2.CoverBayDoor.CoverBayDoorClosed
                }, false, refresh)
            end
        },

        HangarDoor = {
            HangarDoorOpen = "set_hangar_2_doors_open",
            HangarDoorClosed = "set_hangar_2_doors_closed",

            Set = function(state, refresh)
                SummerCarrier.Hangar2.HangarDoor.Clear(false)
                SetIplPropState(SummerCarrier.hangar2Id, state, true, refresh)
                RefreshInterior(SummerCarrier.hangar2Id)
            end,

            Clear = function(refresh)
                SetIplPropState(SummerCarrier.hangar2Id, {
                    SummerCarrier.Hangar2.HangarDoor.HangarDoorOpen,
                    SummerCarrier.Hangar2.HangarDoor.HangarDoorClosed
                }, false, refresh)
            end
        }
    },

    Hangar3 = {
        CoverBayDoor = {
            CoverBayDoorOpen = "set_hangar_3_spwn_cbd_open",
            CoverBayDoorClosed = "set_hangar_3_spwn_cbd_closed",

            Set = function(state, refresh)
                SummerCarrier.Hangar3.CoverBayDoor.Clear(false)
                SetIplPropState(SummerCarrier.hangar3Id, state, true, refresh)
                RefreshInterior(SummerCarrier.hangar3Id)
            end,

            Clear = function(refresh)
                SetIplPropState(SummerCarrier.hangar3Id, {
                    SummerCarrier.Hangar3.CoverBayDoor.CoverBayDoorOpen,
                    SummerCarrier.Hangar3.CoverBayDoor.CoverBayDoorClosed
                }, false, refresh)
            end
        },

        HangarDoor = {
            HangarDoorOpen = "set_hangar_3_doors_open",
            HangarDoorClosed = "set_hangar_3_doors_closed",

            Set = function(state, refresh)
                SummerCarrier.Hangar3.HangarDoor.Clear(false)
                SetIplPropState(SummerCarrier.hangar3Id, state, true, refresh)
                RefreshInterior(SummerCarrier.hangar3Id)
            end,

            Clear = function(refresh)
                SetIplPropState(SummerCarrier.hangar3Id, {
                    SummerCarrier.Hangar3.HangarDoor.HangarDoorOpen,
                    SummerCarrier.Hangar3.HangarDoor.HangarDoorClosed
                }, false, refresh)
            end
        }
    },

    LoadDefault = function()
        SummerCarrier.Ipl.Load()
        -- Hangar 1
        SummerCarrier.Hangar1.Set(SummerCarrier.Hangar1.CoverBayDoorOpen, false)
        -- Hangar 2
        SummerCarrier.Hangar2.CoverBayDoor.Set(SummerCarrier.Hangar2.CoverBayDoor.CoverBayDoorOpen, false)
        SummerCarrier.Hangar2.HangarDoor.Set(SummerCarrier.Hangar2.HangarDoor.HangarDoorOpen, false)
        -- Hangar 3
        SummerCarrier.Hangar3.CoverBayDoor.Set(SummerCarrier.Hangar3.CoverBayDoor.CoverBayDoorOpen, false)
        SummerCarrier.Hangar3.HangarDoor.Set(SummerCarrier.Hangar3.HangarDoor.HangarDoorOpen, false)

    end
}