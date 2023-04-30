Author = "youngneil1"
ModName = "No Mans Land HUD Hide Ship Marker"
ModNameSub = ""
BaseDescription = "This hides the Ship Marker"
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
						{"ShipHUDMarkerHideDistance", 100000},

					}
				}
			}
		}
	}
}
}}


