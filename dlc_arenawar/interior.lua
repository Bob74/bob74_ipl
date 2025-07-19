-- Interior Arena War Building: 205.000, 5180.000, -90.000
exports('GetArenaWarInteriorObject', function()
    return ArenaWarInterior
end)

ArenaWarInterior = {
    interiorId = 272641,
    Ipl = {
        ipl = "xs_arena_interior_mod",

        Load = function()
            EnableIpl(ArenaWarInterior.Ipl.ipl, true)
        end,

        Remove = function()
            EnableIpl(ArenaWarInterior.Ipl.ipl, false)
        end
    },
    Shell = {
        shell = "set_int_mod_shell_def",
        arena1 = "set_arena_peds",
        arena2 = "set_arena_no peds",

        Enable = function(shell, state, refresh)
            SetIplPropState(ArenaWarInterior.interiorId, shell, state, refresh)
        end
    },
    Style = {
        none = "",
        style1 = "set_mod1_style_01",
        style2 = "set_mod1_style_02",
        style3 = "set_mod1_style_03",
        style4 = "set_mod1_style_04",
        style5 = "set_mod1_style_05",
        style6 = "set_mod1_style_06",
        style7 = "set_mod1_style_07",
        style8 = "set_mod1_style_08",
        style9 = "set_mod1_style_09",

        Set = function(style, refresh)
            ArenaWarInterior.Style.Clear(false)

            SetIplPropState(ArenaWarInterior.interiorId, style, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ArenaWarInterior.interiorId, {
                ArenaWarInterior.Style.style1,
                ArenaWarInterior.Style.style2,
                ArenaWarInterior.Style.style3,
                ArenaWarInterior.Style.style4,
                ArenaWarInterior.Style.style5,
                ArenaWarInterior.Style.style6,
                ArenaWarInterior.Style.style7,
                ArenaWarInterior.Style.style8,
                ArenaWarInterior.Style.style9
            }, false, refresh)
        end
    },
    ModBooth = {
        none = "",
        default = "set_int_mod_booth_def",
        booth1 = "set_int_mod_booth_ben",
        booth2 = "set_int_mod_booth_wp",
        combo = "set_int_mod_booth_combo",

        Set = function(booth, refresh)
            ArenaWarInterior.ModBooth.Clear(false)

            SetIplPropState(ArenaWarInterior.interiorId, booth, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ArenaWarInterior.interiorId, {
                ArenaWarInterior.ModBooth.default,
                ArenaWarInterior.ModBooth.booth1,
                ArenaWarInterior.ModBooth.booth2,
                ArenaWarInterior.ModBooth.combo
            }, false, refresh)
        end
    },
    Construction = {
        construction1 = "set_int_mod_construction_01",
        construction2 = "set_int_mod_construction_02",
        construction3 = "set_int_mod_construction_03",

        Set = function(construction, state, refresh)
            SetIplPropState(ArenaWarInterior.interiorId, construction, state, refresh)
        end
    },
    Office = {
        standard = "set_office_standard",
        industrial = "set_office_industrial",
        hitech = "set_office_hitech",

        Set = function(office, refresh)
            ArenaWarInterior.Office.Clear(false)
            SetIplPropState(ArenaWarInterior.interiorId, office, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ArenaWarInterior.interiorId, {
                ArenaWarInterior.Office.standard,
                ArenaWarInterior.Office.industrial,
                ArenaWarInterior.Office.hitech
            }, false, refresh)
        end,

        Trophy = {
            career = "set_int_mod_trophy_career",
            score  = "set_int_mod_trophy_score",
            timeserved = "set_int_mod_trophy_time_served",
            gotone = "set_int_mod_trophy_got_one",
            outtahere = "set_int_mod_trophy_outta_here",
            shunt = "set_int_mod_trophy_shunt",
            bobby = "set_int_mod_trophy_bobby",
            killed = "set_int_mod_trophy_killed",
            crowd = "set_int_mod_trophy_crowd",
            duck = "set_int_mod_trophy_duck",
            bandito = "set_int_mod_trophy_bandito",
            spinner = "set_int_mod_trophy_spinner",
            lens = "set_int_mod_trophy_lens",
            war = "set_int_mod_trophy_war",
            unstoppable = "set_int_mod_trophy_unstoppable",
            contact = "set_int_mod_trophy_contact",
            tower = "set_int_mod_trophy_tower",
            step = "set_int_mod_trophy_step",
            pegasus = "set_int_mod_trophy_pegasus",
            wageworker = "set_int_mod_trophy_wageworker",

            Enable = function(trophy, state, refresh)
                SetIplPropState(ArenaWarInterior.interiorId, trophy, state, refresh)
            end
        },

        BedroomBlocker = {
            bedroomblocker = "set_int_mod_bedroom_blocker",

            Enable = function(state, refresh)
                SetIplPropState(ArenaWarInterior.interiorId, ArenaWarInterior.Office.BedroomBlocker.bedroomblocker, state, refresh)
            end
        },

        Trinket = {
            trinket1 = "set_office_trinket_01",
            trinket2 = "set_office_trinket_02",
            trinket3 = "set_office_trinket_03",
            trinket4 = "set_office_trinket_04",
            trinket5 = "set_office_trinket_05",
            trinket6 = "set_office_trinket_06",
            trinket7 = "set_office_trinket_07",

            Enable = function(trinket, state, refresh)
                SetIplPropState(ArenaWarInterior.interiorId, trinket, state, refresh)
            end
        }
    },
    WorkBench = {
        clutter = "set_bench_clutter",
        bandito = "set_bandito_rc",

        Set = function(workbench, refresh)
            ArenaWarInterior.WorkBench.Clear(false)
            SetIplPropState(ArenaWarInterior.interiorId, workbench, true, refresh)
        end,

        Clear = function(refresh)
            SetIplPropState(ArenaWarInterior.interiorId, {
                ArenaWarInterior.WorkBench.clutter,
                ArenaWarInterior.WorkBench.bandito
            }, false, refresh)
        end
    },
    Christmas = {
        tree = "set_xmas_decorations",

        Enable = function(state, refresh)
            SetIplPropState(ArenaWarInterior.interiorId, ArenaWarInterior.Christmas.tree, state, refresh)
        end
    },
    LoadDefault = function()
        ArenaWarInterior.Ipl.Load()
        ArenaWarInterior.Shell.Enable(ArenaWarInterior.Shell.shell, true, false)
        -- Peds vs no peds
        ArenaWarInterior.Shell.Enable(ArenaWarInterior.Shell.arena1, true, false)
        ArenaWarInterior.Style.Set(ArenaWarInterior.Style.style6, false)
        ArenaWarInterior.ModBooth.Set(ArenaWarInterior.ModBooth.combo, false)
        -- Construction
        ArenaWarInterior.Construction.Set(ArenaWarInterior.Construction.construction1, true, false)
        ArenaWarInterior.Construction.Set(ArenaWarInterior.Construction.construction2, true, false)
        ArenaWarInterior.Construction.Set(ArenaWarInterior.Construction.construction3, true, false)
        -- Office
        ArenaWarInterior.Office.Set(ArenaWarInterior.Office.industrial, false)
        -- Trophys
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.career, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.score, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.timeserved, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.gotone, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.outtahere, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.shunt, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.bobby, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.killed, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.crowd, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.duck, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.bandito, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.spinner, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.lens, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.war, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.unstoppable, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.contact, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.tower, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.step, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.pegasus, true, false)
        ArenaWarInterior.Office.Trophy.Enable(ArenaWarInterior.Office.Trophy.wageworker, true, false)
        -- Bedroom Blocker (Below office)
        ArenaWarInterior.Office.BedroomBlocker.Enable(false, false)
        -- Office Trinkets
        ArenaWarInterior.Office.Trinket.Enable(ArenaWarInterior.Office.Trinket.trinket1, true, false)
        ArenaWarInterior.Office.Trinket.Enable(ArenaWarInterior.Office.Trinket.trinket2, true, false)
        ArenaWarInterior.Office.Trinket.Enable(ArenaWarInterior.Office.Trinket.trinket3, true, false)
        ArenaWarInterior.Office.Trinket.Enable(ArenaWarInterior.Office.Trinket.trinket4, true, false)
        ArenaWarInterior.Office.Trinket.Enable(ArenaWarInterior.Office.Trinket.trinket5, true, false)
        ArenaWarInterior.Office.Trinket.Enable(ArenaWarInterior.Office.Trinket.trinket6, true, false)
        ArenaWarInterior.Office.Trinket.Enable(ArenaWarInterior.Office.Trinket.trinket7, true, false)
        -- Workbench
        ArenaWarInterior.WorkBench.Set(ArenaWarInterior.WorkBench.clutter, false)
        -- Christmas Tree
        ArenaWarInterior.Christmas.Enable(true, false)

        RefreshInterior(ArenaWarInterior.interiorId)
    end
}