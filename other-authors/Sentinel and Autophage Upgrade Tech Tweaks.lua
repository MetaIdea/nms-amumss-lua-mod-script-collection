

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Sentinel and Autophage Upgrade Tech Tweaks.pak",
  ["MOD_DESCRIPTION"]		= "Improves sentinel upgrade tech and Autophage Upgrade Tech to be less annoying",
  ["MOD_AUTHOR"]				= "Rynax15",
  ["NMS_VERSION"]				= "5.02",
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
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumStatsMin",	"3"},		--Original "2"
								{"NumStatsMax",	"3"},		--Original "4"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SNSUIT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumStatsMin",	"4"},		--Original "2"
								{"NumStatsMax",	"4"},		--Original "4"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SNSUIT","StatsType","Suit_Armour_Shield_Strength"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ValueMin",	"0.35"},			--Original "0.1"
								{"AlwaysChoose",	"True"},		--Original "False"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SNSUIT","StatsType","Suit_Armour_Health"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AlwaysChoose",	"True"},		--Original "False"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_RBSUIT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumStatsMin",	"4"},		--Original "2"
								{"NumStatsMax",	"4"},		--Original "4"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_RBSUIT","StatsType","Suit_Armour_Shield_Strength"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ValueMin",	"0.35"},			--Original "0.1"
								{"AlwaysChoose",	"True"},		--Original "False"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_RBSUIT","StatsType","Suit_Armour_Health"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AlwaysChoose",	"True"},		--Original "False"
							}
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED