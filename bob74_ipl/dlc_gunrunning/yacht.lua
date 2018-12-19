
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
    Enable = function(state) EnableIpl(GunrunningYacht.ipl, state) end
}

