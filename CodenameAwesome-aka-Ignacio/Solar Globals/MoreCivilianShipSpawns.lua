NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "MoreCivilianShipSpawns.pak",
  ["MOD_BATCHNAME"] 			= "SpacefarerSolarGlobals",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
				
					["MBIN_FILE_SOURCE"] 	= {"GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	1.5},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"GCPLAYERGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ExperienceMaxCivilianShipSpawnsOnPlanet",	20},
								{"ExperienceMaxCivilianShipSpawnsInSpace",	100},
							}
						},
					}
				},
			}
		},
	}
}