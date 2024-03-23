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

    Enable = function(state)
        NorthYankton.Grave.Clear()

        EnableIpl(NorthYankton.ipl, state)
    end
}
