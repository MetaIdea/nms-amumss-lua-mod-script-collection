Author = "Gumsk"
ModName = "gFreighter Battle Frequency"
ModNameSub = "10w 5h"
BaseDescription = "Changes the frequency of freighter battles"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

WarpsBetweenBattles = 10						--5
HoursBetweenBattles = 5							--3

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
							["VALUE_CHANGE_TABLE"] = {
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