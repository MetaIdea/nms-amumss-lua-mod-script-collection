Author = "Gumsk"
ModName = "Test"
ModNameSub = "Season Three"
BaseDescription = "Test"
GameVersion = "363"
ModVersion = "a"
FileSource1 = "METADATA\GAMESTATE\SEASONTHREE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {
				{
					["VALUE_CHANGE_TABLE"] = {
						{"StartTimeUTC",1630908962},
						{"EndTimeUTC",1662444962},
					}
				},
			}
		}
	}
}}}