exports('GetMpSecurityOffice4Object', function()
    return MpSecurityOffice4
end)

MpSecurityOffice4 = {
    InteriorId = 287745,

    Ipl = {
        Interior = {
            ipl = {
                'sf_fixeroffice_kt1_08'
            }
        },

        Load = function()
            EnableIpl(MpSecurityOffice4.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(MpSecurityOffice4.Ipl.Interior.ipl, false)
        end,
    },
    Entities = {
        Entity_Set_Armoury = true,
        Entity_Set_Standard_Office = false,
        Entity_Set_Blocker = false,
        Entity_Set_Wpaper_1 = false,
        Entity_Set_Wpaper_3 = true,
        Entity_Set_Wpaper_2 = false,
        Entity_Set_Wpaper_4 = false,
        Entity_Set_Wpaper_5 = false,
        Entity_Set_Wpaper_6 = false,
        Entity_Set_Wpaper_7 = false,
        Entity_Set_Wpaper_8 = false,
        Entity_Set_Wpaper_9 = false,
        Entity_Set_Moving = true,
        Entity_Set_Tint_AG = true,
        Entity_Set_Spare_Seats = true,
        Entity_Set_Player_Seats = true,
        Entity_Set_Player_Desk = true,
        Entity_Set_M_Golf_Intro = true,
        Entity_Set_M_Setup = true,
        Entity_Set_M_Nightclub = true,
        Entity_Set_M_Yacht = true,
        Entity_Set_M_Promoter = true,
        Entity_Set_M_Limo_Photo = true,
        Entity_Set_M_Limo_Wallet = true,
        Entity_Set_M_The_Way = true,
        Entity_Set_M_Billionaire = true,
        Entity_Set_M_Families = true,
        Entity_Set_M_Ballas = true,
        Entity_Set_M_Hood = true,
        Entity_Set_M_Fire_Booth = true,
        Entity_Set_M_50 = true,
        Entity_Set_M_Taxi = true,
        Entity_Set_M_Gone_Golfing = true,
        Entity_Set_M_Motel = true,
        Entity_Set_M_Construction = true,
        Entity_Set_M_Hit_List = true,
        Entity_Set_M_Tuner = true,
        Entity_Set_M_Attack = true,
        Entity_Set_M_Vehicles = true,
        Entity_Set_M_Trip_01 = true,
        Entity_Set_M_Trip_02 = true,
        Entity_Set_M_Trip_03 = true,
        Entity_set_disc_01 = false,
        Entity_set_disc_02 = false,
        Entity_set_disc_03 = false,
        Entity_set_disc_04 = false,
        Entity_set_disc_05 = true,
        Entity_set_disc_06 = false,
        Entity_Set_Art_1 = true,
        Entity_Set_Art_2 = false,
        Entity_Set_Art_3 = false,

        Set = function(name, state)
            for entity, _ in pairs(MpSecurityOffice4.Entities) do
                if entity == name then
                    MpSecurityOffice4.Entities[entity] = state
                    MpSecurityOffice4.Entities.Clear()
                    MpSecurityOffice4.Entities.Load()
                end
            end
        end,
        Load = function()
            for entity, state in pairs(MpSecurityOffice4.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(MpSecurityOffice4.InteriorId, entity)
                end
            end
        end,
        Clear = function()
            for entity, _ in pairs(MpSecurityOffice4.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(MpSecurityOffice4.InteriorId, entity)
                end
            end
        end,
    },

    LoadDefault = function()
        MpSecurityOffice4.Ipl.Load()
        MpSecurityOffice4.Entities.Load()

        RefreshInterior(MpSecurityOffice4.interiorId)
    end
}
