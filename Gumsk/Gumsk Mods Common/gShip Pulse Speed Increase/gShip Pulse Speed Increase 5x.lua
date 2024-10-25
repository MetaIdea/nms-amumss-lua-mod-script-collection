Author = "Gumsk"
ModName = "gShip Pulse Speed Increase"
ModNameSub = "5"
BaseDescription = "Increases pulse speed by a multiplier"
GameVersion = "5.2.0.0"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.."x "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							MATH_OPERATION      = "*",
							VALUE_CHANGE_TABLE = {
								{"MiniWarpSpeed",ModNameSub},
							},
						},
					},
				},
			}
		}
	}
}