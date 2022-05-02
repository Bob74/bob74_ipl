exports('GetMpSecurityGarageObject', function()
    return MpSecurityGarage
end)

MpSecurityGarage = {
    InteriorId = 286721,

    Ipl = {
        Interior = {
            ipl = {
                'sf_int_placement_sec_interior_2_dlc_garage_sec_milo_'
            }
        },

        Load = function()
            EnableIpl(MpSecurityGarage.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(MpSecurityGarage.Ipl.Interior.ipl, false)
        end
    },
    Entities = {
        Entity_Set_Workshop_Wall = false,
        Entity_Set_Wallpaper_01 = false,
        Entity_Set_Wallpaper_02  = false,
        Entity_Set_Wallpaper_03 = false,
        Entity_Set_Wallpaper_04 = false,
        Entity_Set_Wallpaper_05 = false,
        Entity_Set_Wallpaper_06 = false,
        Entity_Set_Wallpaper_07 = true,
        Entity_Set_Wallpaper_08 = false,
        Entity_Set_Wallpaper_09 = false,
        Entity_Set_Art_1 = false,
        Entity_Set_Art_2 = false,
        Entity_Set_Art_3 = false,
        Entity_Set_Art_1_NoMod = false,
        Entity_Set_Art_2_NoMod = false,
        Entity_Set_Art_3_NoMod = false,
        entity_set_tints = true,
        Entity_Set_Workshop_Lights = true,

        Set = function(name, state)
            for entity, _ in pairs(MpSecurityGarage.Entities) do
                if entity == name then
                    MpSecurityGarage.Entities[entity] = state
                    MpSecurityGarage.Entities.Clear()
                    MpSecurityGarage.Entities.Load()
                end
            end
        end,
        Load = function()
            for entity, state in pairs(MpSecurityGarage.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(MpSecurityGarage.InteriorId, entity)
                end
            end
        end,
        Clear = function()
            for entity, _ in pairs(MpSecurityGarage.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(MpSecurityGarage.InteriorId, entity)
                end
            end
        end
    },

    LoadDefault = function()
        MpSecurityGarage.Ipl.Load()
        MpSecurityGarage.Entities.Load()

        RefreshInterior(MpSecurityGarage.interiorId)
    end
}
