-- Gunrunning Yacht: -1363.724, 6734.108, 2.44598
exports('GetGunrunningYachtObject', function()
    return GunrunningYacht
end)

GunrunningYacht = {
    ipl = {
        "gr_heist_yacht2",
        "gr_heist_yacht2_bar",
        "gr_heist_yacht2_bar_lod",
        "gr_heist_yacht2_bedrm",
        "gr_heist_yacht2_bedrm_lod",
        "gr_heist_yacht2_bridge",
        "gr_heist_yacht2_bridge_lod",
        "gr_heist_yacht2_enginrm",
        "gr_heist_yacht2_enginrm_lod",
        "gr_heist_yacht2_lod",
        "gr_heist_yacht2_lounge",
        "gr_heist_yacht2_lounge_lod",
        "gr_heist_yacht2_slod",
    },

    Enable = function(state)
        EnableIpl(GunrunningYacht.ipl, state)
    end,
    Water = {
        modelHash = `apa_mp_apa_yacht_jacuzzi_ripple1`,

        Enable = function(state)
            local handle = GetClosestObjectOfType(-1369.0, 6736.0, 5.40, 5.0, GunrunningYacht.Water.modelHash, false, false, false)

            if state then
                -- Enable
                if handle == 0 then
                    RequestModel(GunrunningYacht.Water.modelHash)
                    while not HasModelLoaded(GunrunningYacht.Water.modelHash) do
                        Wait(0)
                    end

                    local water = CreateObjectNoOffset(GunrunningYacht.Water.modelHash, -1369.0, 6736.0, 5.40, false, false, false)

                    SetEntityAsMissionEntity(water, false, false)
                end
            else
                -- Disable
                if handle ~= 0 then
                    SetEntityAsMissionEntity(handle, false, false)
                    DeleteEntity(handle)
                end
            end
        end
    },

    LoadDefault = function()
        GunrunningYacht.Enable(true)
    end
}
