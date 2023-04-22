Author = "youngneil1"
ModName = "No Man's Land HUD Hide mission info bottom right"
ModNameSub = ""
BaseDescription = "UI modifications"
GameVersion = "4.23"
ModVersion = "a"
FileSource = "UI/HUD/HUDNOTIFICATIONPANEL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource,
			["EXML_CHANGE_TABLE"] = {
				{
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"Width",0},
{"Height",0},

					}
				}
			}
		}
	}
}
}}

