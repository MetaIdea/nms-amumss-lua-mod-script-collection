Author = "Gumsk"
ModName = "GShip Flight NPC"
ModNameSub = "Station Approach"
BaseDescription = "Flight modifications"
GameVersion = "321"
ModVersion = "a"
FileSource1 = "MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
	["EXML_CHANGE_TABLE"] = {
		{
			["VALUE_CHANGE_TABLE"] = {
				{"ApproachRange", 1200},
				{"LandingHeight", 0.01},
			},
		},
	}
}}}}}