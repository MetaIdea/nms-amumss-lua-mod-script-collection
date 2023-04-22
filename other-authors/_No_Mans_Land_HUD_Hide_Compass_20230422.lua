Author = "youngneil1"
ModName = "No Mans Land HUD Hide Compass (mostly)"
ModNameSub = ""
BaseDescription = "This hides the compass mostly; it will reappear in a very barebones form after using the analysis visor though."
GameVersion = "423"
ModVersion = "a"
FileSource = "GCUIGLOBALS.GLOBAL.MBIN"

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
						{"CompassScreenWidth",0},
{"CompassScreenHeight",0},
{"CompassHeight",0},
{"CompassWidth",0},
{"CompassLineThickness",0},
{"CompassDistanceShipMinScale",0},
{"CompassDistanceMarkerMinScale",0}
					}
				}
			}
		}
	}
}
}}


