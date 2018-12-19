
exports('GetRedCarpetObject', function()
	return RedCarpet
end)

RedCarpet = {
	ipl = "redCarpet",
	Enable = function(state) EnableIpl(RedCarpet.ipl, state) end
}
