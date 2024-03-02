MissionSuccessChance = 100	--Edit only this value

--------------------------------------------------
--------------------------------------------------

MissionSuccessChance = (MissionSuccessChance - 100)*(-1)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Pleasant_Rescue_Lifeform.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.52",
["MOD_DESCRIPTION"]			= "Increases the chance of the authenticator scan to work in the Rescue Stranded Lifeform nexus mission",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/COMMUNITYMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["FSKWG"]  = {
								{"MissionID", "MPREP_ANALYSE_1"},
								{"MissionID", "MPREP_ANALYSE_2"},
								{"MissionID", "MPREP_ANALYSE_3"},
							},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Percent",	MissionSuccessChance},  --original : 50
							},
						},	
					},
				},
			}
		}
	}	
}