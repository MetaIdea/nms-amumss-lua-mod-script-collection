Author = "Gumsk"
ModName = "gPlayer"
ModNameSub = "No Falling Damage"
BaseDescription = "No falling damage"
GameVersion = "411"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"HardLandMax",150},		--18
							},
						},
					},
				},
			}
		}
	}
}