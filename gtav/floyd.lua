
exports('GetFloydObject', function()
    return Floyd
end)

Floyd = {
    interiorId = 171777,
    Style = {
        normal = {"swap_clean_apt", "layer_debra_pic", "layer_whiskey", "swap_sofa_A"},
        messedUp = {"layer_mess_A", "layer_mess_B", "layer_mess_C", "layer_sextoys_a", "swap_sofa_B", "swap_wade_sofa_A", "layer_wade_shit", "layer_torture"},
        Set = function(style, refresh)
            Floyd.Style.Clear(false)
            SetIplPropState(Floyd.interiorId, style, true, refresh)
        end,
        Clear = function(refresh) SetIplPropState(Floyd.interiorId, {Floyd.Style.normal, Floyd.Style.messedUp}, false, refresh) end
    },
    MrJam = {
        normal = "swap_mrJam_A", jammed = "swap_mrJam_B", jammedOnTable = "swap_mrJam_C",
        Set = function(mrJam, refresh)
            Floyd.MrJam.Clear(false)
            SetIplPropState(Floyd.interiorId, mrJam, true, refresh)
        end,
        Clear = function(refresh) SetIplPropState(Floyd.interiorId, {Floyd.MrJam.normal, Floyd.MrJam.jammed, Floyd.MrJam.jammedOnTable}, false, refresh) end
    },

    LoadDefault = function()
        Floyd.Style.Set(Floyd.Style.normal)
        Floyd.MrJam.Set(Floyd.MrJam.normal)
        RefreshInterior(Floyd.interiorId)
    end
}
