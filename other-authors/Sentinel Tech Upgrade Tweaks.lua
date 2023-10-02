

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Sentinel Tech Upgrades Tweaks.pak",
  ["MOD_DESCRIPTION"]		= "Improves sentinel upgrade tech to be less annoying",
  ["MOD_AUTHOR"]				= "Rynax15",
  ["NMS_VERSION"]				= "4.41",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SENGUN"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumStatsMin",	"3"},		--Original "2"
								{"NumStatsMax",	"3"},		--Original "4"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SNSUIT"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumStatsMin",	"4"},		--Original "2"
								{"NumStatsMax",	"4"},		--Original "4"
							}
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED