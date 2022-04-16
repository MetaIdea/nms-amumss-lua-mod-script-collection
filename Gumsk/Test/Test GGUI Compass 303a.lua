NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Compass Test 303a.pak",
["MOD_DESCRIPTION"]	= "test",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "303",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
["EXML_CHANGE_TABLE"] = {

	{
	--["SPECIAL_KEY_WORDS"] = {"Id","CASING"},
	--["PRECEDING_KEY_WORDS"] = {"Requirements"},
	--["LINE_OFFSET"] = "-2",
	--["ADD"] = NewRequirements
	["VALUE_CHANGE_TABLE"] = {
	{"CompassLineNumNotches","6"},
	},

}},}},}}}