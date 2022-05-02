exports('GetMpSecurityStudioObject', function()
    return MpSecurityStudio
end)

MpSecurityStudio = {
    InteriorId = 286977,

    Ipl = {
        Interior = {
            ipl = {
                'sf_int_placement_sec_interior_1_dlc_studio_sec_milo_ '
            }
        },

        Load = function()
            EnableIpl(MpSecurityStudio.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(MpSecurityStudio.Ipl.Interior.ipl, false)
        end,
    },
    Entities = {
        Entity_Set_FIX_STU_EXT_P3A1 = false,
        Entity_Set_FIX_TRIP1_INT_P2 = false,
        Entity_Set_FIX_STU_EXT_P1 = false,
        Entity_Set_Fire = true,
        entity_set_default = true,

        Set = function(name, state)
            for entity, _ in pairs(MpSecurityStudio.Entities) do
                if entity == name then
                    MpSecurityStudio.Entities[entity] = state
                    MpSecurityStudio.Entities.Clear()
                    MpSecurityStudio.Entities.Load()
                end
            end
        end,
        Load = function()
            for entity, state in pairs(MpSecurityStudio.Entities) do
                if type(entity) == 'string' and state then
                    ActivateInteriorEntitySet(MpSecurityStudio.InteriorId, entity)
                end
            end
        end,
        Clear = function()
            for entity, _ in pairs(MpSecurityStudio.Entities) do
                if type(entity) == 'string' then
                    DeactivateInteriorEntitySet(MpSecurityStudio.InteriorId, entity)
                end
            end
        end
    },

    LoadDefault = function()
        MpSecurityStudio.Ipl.Load()
        MpSecurityStudio.Entities.Load()

        RefreshInterior(MpSecurityStudio.interiorId)
    end
}
