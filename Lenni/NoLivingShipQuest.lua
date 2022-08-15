NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoLivingShipQuest.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.98",
["MOD_DESCRIPTION"]	= "Removes the long Living Ship introduction quest",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]		= {"Id", "ALIEN_SHIP1"},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "Dialog", "ALIEN_HAIL_LOOP" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"]		= {"Id", "ALIEN_SHIP2"},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "Dialog", "ALIEN_HAIL_LOOP" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"]		= {"Id", "ALIEN_SHIP3"},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "Dialog", "ALIEN_HAIL_LOOP" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"]		= {"Id", "ALIEN_SHIP4"},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "Dialog", "ALIEN_HAIL_LOOP" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"]		= {"Id", "ALIEN_SHIP5"},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "Dialog", "ALIEN_HAIL_LOOP" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"]		= {"Id", "ALIEN_SHIP_LOOP"},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "RequiresMissionComplete", "" },
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]		= {"MissionID", "BIOSHIP_REPEAT"},
							["PRECEDING_KEY_WORDS"]		= "StartingConditions",
							["REMOVE"] = "SECTION",
						}
					}
				}
			}
		}
	}	
}