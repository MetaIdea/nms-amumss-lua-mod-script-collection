Author = "Gumsk"
ModName = "gCreatures Giants"
ModNameSub = "2x"
BaseDescription = "Increases creature sizes"
GameVersion = "397"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {

	{["MATH_OPERATION"] = "*",
		["INTEGER_TO_FLOAT"] = "FORCE",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"MaxScale", 2},
	}},

	

}}}}}}