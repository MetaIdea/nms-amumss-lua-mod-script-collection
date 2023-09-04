ModName = "PTSd Rarer Free Sentinel Ship"
GameVersion = "4_41"
Description = "Makes the random space encounter leading to a crashed Sentinel Interceptor (if you haven't already claimed one) more rare"


Path1 = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"

SpawnChance = 4								--12		Relative weighting to spawn this encounter while Pulsing in space. Random Traders hailing you have a weight of 12, most other enocunters have a weight of around 1

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {Path1},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SENT_SHIP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"SpawnChance", SpawnChance}
							}
						},
					}
				}
			}
		}
	}
}