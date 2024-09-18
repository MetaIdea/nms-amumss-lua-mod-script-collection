Author = "Gumsk"
ModName = "gVehicle Lights"
ModNameSub = "Brighter"
BaseDescription = "Increases vehicle headlight intensity"
GameVersion = "5.1.2.0"
ModVersion = "a"
FileSource = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = FileSource,
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"HeadlightIntensity","9"},
							},
						},
					},
				},
			}
		}
	}
}