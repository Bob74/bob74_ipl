exports('GetNorthYanktonObject', function()
    return NorthYankton
end)

NorthYankton = {
    ipl = {
        "prologue01",
        "prologue01c",
        "prologue01d",
        "prologue01e",
        "prologue01f",
        "prologue01g",
        "prologue01h",
        "prologue01i",
        "prologue01j",
        "prologue01k",
        "prologue01z",
        "prologue02",
        "prologue03",
        "prologue03b",
        "prologue04",
        "prologue04b",
        "prologue05",
        "prologue05b",
        "prologue06",
        "prologue06b",
        "prologue_occl",
        "prologue06_int",
        "prologuerd",
        "prologuerdb",
        "prologue_DistantLights",
        "prologue_LODLights",
        "DES_ProTree_start",
        "prologue_m2_door",
        "prologue03_grv_cov"
    },

    Grave = {
        covered = "prologue03_grv_cov",
        dug = "prologue03_grv_dug",
        funeral = "prologue03_grv_fun",

        Set = function(grave)
            NorthYankton.Grave.Clear()

            EnableIpl(grave, true)
        end,
        Clear = function()
            EnableIpl({
                NorthYankton.Grave.covered,
                NorthYankton.Grave.dug,
                NorthYankton.Grave.funeral
            }, false)
        end
    },

    Traffic = {
        Enable = function(state)
            SetAllPathsCacheBoundingstruct(state)

            SetRoadsInAngledArea(5526.24, -5137.23, 61.78925, 3679.327, -4973.879, 125.0828, 192, false, state, true);
            SetRoadsInAngledArea(3691.211, -4941.24, 94.59368, 3511.115, -4869.191, 126.7621, 16, false, state, true);
            SetRoadsInAngledArea(3510.004, -4865.81, 94.69557, 3204.424, -4833.817, 126.8152, 16, false, state, true);
            SetRoadsInAngledArea(3186.534, -4832.798, 109.8148, 3202.187, -4833.993, 114.815, 16, false, state, true);
        end
    },

    Enable = function(state)
        NorthYankton.Grave.Clear()
        NorthYankton.Traffic.Enable(state)

        EnableIpl(NorthYankton.ipl, state)
    end
}
