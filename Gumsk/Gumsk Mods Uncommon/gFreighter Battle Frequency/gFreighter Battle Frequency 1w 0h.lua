Author = "Gumsk"
ModName = "gFreighter Battle Frequency"
ModNameSub = "1w 0h"
BaseDescription = "Changes the frequency of freighter battles"
GameVersion = "5.2.2.0"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

WarpsBetweenBattles = 1							--5
HoursBetweenBattles = 0							--3

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = FileSource1,
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"WarpsBetweenBattles", WarpsBetweenBattles},
								{"HoursBetweenBattles", HoursBetweenBattles},
							}
						},
					}
				},
			}
		},
	}
}