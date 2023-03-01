Author = "Gumsk"
ModName = "gDebug"
ModNameSub = "Test"
BaseDescription = "Test"
GameVersion = "399"
ModVersion = "a"
FileSource = "GCDEBUGOPTIONS.GLOBAL.MBIN"

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
					["EXML_CHANGE_TABLE"] 	= {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"DisableNPCs", "True"},
							},
						},
					},
				},
			}
		}
	}
}