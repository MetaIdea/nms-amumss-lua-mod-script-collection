MissionSuccessChance = 100	--Edit only this value

--------------------------------------------------
--------------------------------------------------

MissionSuccessChance = (MissionSuccessChance - 100)*(-1)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Pleasant_Rescue_Lifeform.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.81",
["MOD_DESCRIPTION"]			= "Increases the chance of the authenticator scan to work in the Rescue Stranded Lifeform nexus mission",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\COMMUNITYMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"MissionID", "MPREP_ANALYSE_1"},
							--["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Percent",	MissionSuccessChance},  --original : 80
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"MissionID", "MPREP_ANALYSE_2"},
							--["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Percent",	MissionSuccessChance},  --original : 80
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"MissionID", "MPREP_ANALYSE_3"},
							--["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Percent",	MissionSuccessChance},  --original : 80
							},
						},
					},
				},
			}
		}
	}	
}