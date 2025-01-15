-- Studio rooftop: -854.19, -225.73, 60.00
exports('GetMpSecurityMusicRoofTopObject', function()
    return MpSecurityMusicRoofTop
end)

MpSecurityMusicRoofTop = {
    Ipl = {
        Interior = {
            ipl = {
                'sf_musicrooftop'
            }
        },

        Load = function()
            EnableIpl(MpSecurityMusicRoofTop.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(MpSecurityMusicRoofTop.Ipl.Interior.ipl, false)
        end
    },

    LoadDefault = function()
        MpSecurityMusicRoofTop.Ipl.Load()
    end
}
