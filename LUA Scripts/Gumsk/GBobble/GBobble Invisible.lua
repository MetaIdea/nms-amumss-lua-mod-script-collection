Author = "Gumsk"
ModName = "gBobble"
ModNameSub = "Invisible"
BaseDescription = "Hides bobbleheads completely"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "METADATA\GAMESTATE\PLAYERDATA\BOBBLEHEADCUSTOMISATIONDATA.MBIN"

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
					["PRECEDING_KEY_WORDS"] = "",
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"Filename", ""},
					}
				},
			}
		}
	}
}
}}