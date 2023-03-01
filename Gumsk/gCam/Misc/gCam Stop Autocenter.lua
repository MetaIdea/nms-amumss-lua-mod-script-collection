Author = "Gumsk+Azzinoth"
ModName = "gCam"
ModNameSub = "Centered"
BaseDescription = "Camera modifications"
GameVersion = "405"
ModVersion = "a"
FileSource = "GCCAMERAGLOBALS.GLOBAL.MBIN"

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
						{"CenterStartTime",99},
					}
				}
			}
		}
	}
}
}}