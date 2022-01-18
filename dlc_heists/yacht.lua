
-- Heist Yatch: -2043.974,-1031.582, 11.981

exports('GetHeistYachtObject', function()
    return HeistYacht
end)

HeistYacht = {
    ipl = {
        "hei_yacht_heist",
        "hei_yacht_heist_bar",
        "hei_yacht_heist_bar_lod",
        "hei_yacht_heist_bedrm",
        "hei_yacht_heist_bedrm_lod",
        "hei_yacht_heist_bridge",
        "hei_yacht_heist_bridge_lod",
        "hei_yacht_heist_enginrm",
        "hei_yacht_heist_enginrm_lod",
        "hei_yacht_heist_lod",
        "hei_yacht_heist_lounge",
        "hei_yacht_heist_lounge_lod",
        "hei_yacht_heist_slod"
    },
    Enable = function(state) EnableIpl(HeistYacht.ipl, state) end,
    Water = {
        modelHash = GetHashKey("apa_mp_apa_yacht_jacuzzi_ripple1"),

        Enable = function(state)
            local handle = GetClosestObjectOfType(-2023.773, -1038.0, 5.40, 5.0, HeistYacht.Water.modelHash, false, false, false)

            if (state) then
                -- Enable
                if (handle == 0) then
                    RequestModel(HeistYacht.Water.modelHash)
                    while not HasModelLoaded(HeistYacht.Water.modelHash) do
                        Wait(0)
                    end
        
                    local water = CreateObjectNoOffset(HeistYacht.Water.modelHash, -2023.773, -1038.0, 5.40, false, false, false)
                    SetEntityAsMissionEntity(water, false, false)
                end
            else
                -- Disable
                if (handle ~= 0) then
                    SetEntityAsMissionEntity(handle, false, false)
                    DeleteEntity(handle)
                end
            end
        end
    },
    LoadDefault = function()
        HeistYacht.Enable(true)
    end
}

