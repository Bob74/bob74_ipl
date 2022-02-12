exports('GetMpSecurityBillboardsObject', function()
    return MpSecurityBillboards
end)

MpSecurityBillboards = {
    Ipl = {
        Interior = {
            ipl = {
                'sf_billboards',
            }
        },
        Load = function ()
            EnableIpl(MpSecurityBillboards.Ipl.Interior.ipl, true)
        end,
        Remove = function()
            EnableIpl(MpSecurityBillboards.Ipl.Interior.ipl, false)
        end,
    },
    LoadDefault = function()
        MpSecurityBillboards.Ipl.Load()
    end
}
