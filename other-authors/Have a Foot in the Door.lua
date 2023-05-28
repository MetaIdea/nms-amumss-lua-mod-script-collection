Author = "Dr Kaii"
ModName = "Have a Foot in the Door"
BaseDescription = "Build base computers in settlements. Inspired by gbase by Gumsk"
GameVersion = "423"
ModVersion = "a"
FileSource1 = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

MinRadiusForBases = 10						-- When you first build the base, how far out can you build? Original value "300"
BaseRadiusExtension = 10						-- If you place an item on the edge of your border, how much does the border bump out? Original value "50"
MaxRadiusForPlanetBases = 10					-- What is the absolute maximum border distance? Original value "1000"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "Have a Foot in the Door.pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = "",
		["VALUE_CHANGE_TABLE"] = {
		{"MinRadiusForBases", MinRadiusForBases},
		{"BaseRadiusExtension", BaseRadiusExtension},
		{"MaxRadiusForPlanetBases", MaxRadiusForPlanetBases}		
	}}
}}}}}