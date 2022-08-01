Author = "Gumsk"
ModName = "gEnviro"
ModNameSub = "Safe Space"
BaseDescription = "Environment globals"
GameVersion = "398"
ModVersion = "a"
FileSource = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN"

SpaceTemp = 19									--0 ; 
SpaceRad = 0									--5 ; 

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
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] =
							{
								{"SpaceTemperature", SpaceTemp},
								{"SpaceRadiation", SpaceRad}
							},
						},
					},
				},
			}
		}
	}
}