-- Sewers: 2662.276, 5928.208, -67.0
exports("GetKortzSewers", function()
    return KortzSewers
end)

KortzSewers = {
    interiorId = 305665,

    Gates = {
        gate01c = "set_gate_01c",
        gate03a = "set_gate_03a",
        gate04e = "set_gate_04e",
        gate05a = "set_gate_05a",
        gate05e = "set_gate_05e",
        gate02c = "set_gate_02c",
        gate03c = "set_gate_03c",
        gate04c = "set_gate_04c",
        gate06d = "set_gate_06d",
        gate01a = "set_gate_01a",
        gate01b = "set_gate_01b",
        gate03b = "set_gate_03b",
        gate02b = "set_gate_02b",
        gate06c = "set_gate_06c",
        gate05c = "set_gate_05c",
        gate06e = "set_gate_06e",
        gate03e = "set_gate_03e",
        gate02a = "set_gate_02a",
        gate03d = "set_gate_03d",
        gate04b = "set_gate_04b",

        Close = function(gate, state, refresh)
            SetIplPropState(KortzSewers.interiorId, gate, state, refresh)
        end,
    }
}