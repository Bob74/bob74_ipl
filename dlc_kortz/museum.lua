-- Museum: -2242.157, 270.780, 173.5
exports("GetKortzMuseum", function()
    return KortzMuseum
end)

KortzMuseum = {
    Ipl = {
        ipl = {
            "m26_1_mp2026_01_additions_exterior",
            "m26_1_mp2026_01_additions_exterior_cctv"
        },

        Load = function()
            EnableIpl(KortzMuseum.Ipl.ipl, true)
        end,
        Remove = function()
            EnableIpl(KortzMuseum.Ipl.ipl, false)
        end
    },

    Gates = {
        up = "m26_1_mp2026_01_additions_kortz_lowerbarriers_up",
        down = "m26_1_mp2026_01_additions_kortz_lowerbarriers",

        Set = function(state)
            KortzMuseum.Gates.Clear()

            EnableIpl(state, true)
        end,
        Clear = function()
            EnableIpl({
                KortzMuseum.Gates.up,
                KortzMuseum.Gates.down
            }, false)
        end
    },

    Maintenance = {
        maintenance = "m26_1_mp2026_01_additions_exterior_maintenance",

        Enable = function(state)
            EnableIpl(KortzMuseum.Maintenance.maintenance, state)
        end
    },

    LoadDefault = function()
        KortzMuseum.Ipl.Load()
        KortzMuseum.Gates.Set(KortzMuseum.Gates.up)
    end
}