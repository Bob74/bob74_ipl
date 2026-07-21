-- Art studio: 2583.915, 5961.410, -50.0
exports("GetKortzWorkshop", function()
    return KortzWorkshop
end)

KortzWorkshop = {
    interiorId = 306433,

    Hacking = {
        og = {
            "set_vault_door",
            "set_hacking_usb",
            "set_vault_hacking_og"
        },
        haviland = {
            "set_vault_door",
            "set_hacking_usb",
            "set_vault_hacking_haviland"
        },
        angel = {
            "set_vault_door",
            "set_hacking_usb",
            "set_vault_hacking_angel"
        },

        Set = function(assistant, refresh)
            KortzWorkshop.Hacking.Clear(refresh)

            SetIplPropState(KortzWorkshop.interiorId, assistant, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(KortzWorkshop.interiorId, {
                KortzWorkshop.Hacking.angel,
                KortzWorkshop.Hacking.haviland,
                KortzWorkshop.Hacking.og
            }, false, refresh)
        end
    },

    Chairs = {
        easel = "set_chair_easel",
        desk = "set_chair_desk",

        Enable = function(chair, state, refresh)
            SetIplPropState(KortzWorkshop.interiorId, chair, state, refresh)
        end
    },

    Details = {
        card = "set_card",
        drills = "set_drills",
        cutter = "set_glass_cutter",
        hacking = "set_hacking",
        hazmat = "set_hazmat",
        suits = "set_mail_suits",
        militaryWeapons = "set_military_weapons",
        stealthWeapons = "set_stealth_weapons",
        streetWeapons = "set_street_weapons",
        tactical = "set_tactical",
        thermite = "set_thermite",
        tracker = "set_tracker",
        manholeKey = "set_manhole",

        Enable = function(details, state, refresh)
            SetIplPropState(KortzWorkshop.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        KortzWorkshop.Hacking.Set(KortzWorkshop.Hacking.angel, false)
        KortzWorkshop.Chairs.Enable(KortzWorkshop.Chairs.easel, true, false)

        KortzWorkshop.Details.Enable(KortzWorkshop.Details.hazmat, true, false)
        KortzWorkshop.Details.Enable(KortzWorkshop.Details.drills, true, false)

        RefreshInterior(KortzWorkshop.interiorId)
    end
}