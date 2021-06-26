SiloStorage = 9999999		--Original 1400000

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GBase 232a Items Silos Only.pak",
["MOD_DESCRIPTION"]	= "Removes restrictions on base building items",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.3.2",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
["EXML_CHANGE_TABLE"] = {
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["PRECEDING_KEY_WORDS"] = {"LinkGridData"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",SiloStorage}}}
}}}}}}