NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "TitleTest.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.84",
["LUA_AUTHOR"]		= "Lenni",
["MOD_DESCRIPTION"]	= "Reduces requirements for certain titles.",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\PLAYERDATA\PLAYERTITLEDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"AlienRace","Explorers",},
							["SECTION_UP"]		= 1,
							["REPLACE_TYPE"]	= "ALL",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "UnlockedByInteractionIndex", "1" },
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"AlienRace","Warriors",},
							["SECTION_UP"]		= 1,
							["REPLACE_TYPE"]	= "ALL",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "UnlockedByInteractionIndex", "1" },
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"AlienRace","Traders",},
							["SECTION_UP"]		= 1,
							["REPLACE_TYPE"]	= "ALL",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "UnlockedByInteractionIndex", "1" },
							},
						},
					},
				},
				
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","R_STARCHART_D",},
							["REPLACE_TYPE"]	= "ALL",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "DoAerialScan", "False" },
								{ "PercentageChance", "0" },
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","R_STARCHART_D","Event", "MONOLITH"},
							["SECTION_UP"]		= 1,
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "PercentageChance", "100" },
							},
						},
					},
				},
			}
		}
	}	
}	