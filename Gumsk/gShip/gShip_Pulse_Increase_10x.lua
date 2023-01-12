Author = "Gumsk"
ModName = "gShip Pulse Increase"
ModNameSub = "10x"
BaseDescription = "Increases pulse speed by a multiplier"
GameVersion = "408"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"MiniWarpSpeed","10"},
							},
						},
					},
				},
			}
		}
	}
}