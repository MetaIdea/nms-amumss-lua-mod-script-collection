Author = "Gumsk"
ModName = "gBase"
ModNameSub = "Items Freighter Power"
BaseDescription = "Increases amount of free power on freighters"
GameVersion = "452"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"

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
							["SPECIAL_KEY_WORDS"] = {"ID","AIRLCKCONNECTOR"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 1000000},
							},
						},
					},
				}
			},
		}
	}
}