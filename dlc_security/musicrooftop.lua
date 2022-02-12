exports('GetMpSecurityMusicRoofTopObject', function()
    return MpSecurityMusicRoofTop
end)

MpSecurityMusicRoofTop = {
    Ipl = {
        Interior = {
            ipl = {
                'sf_billboards', -- -592.6896, 273.1052, 116.302444
            }
        },
        Load = function ()
            EnableIpl(MpSecurityMusicRoofTop.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(MpSecurityMusicRoofTop.Ipl.Interior.ipl, false)
        end,
    },
    LoadDefault = function()
        MpSecurityMusicRoofTop.Ipl.Load()
    end
}
