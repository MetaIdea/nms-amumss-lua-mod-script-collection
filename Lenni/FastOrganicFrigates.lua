NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FastOrganicFrigates.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "6.04",
["MOD_DESCRIPTION"]			= "Makes the Dream Aerial not useless",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/TABLES/SPACEPOIMISSIONTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG"},
							["PRECEDING_KEY_WORDS"]	=	"CancelingConditions",
							["REMOVE"] = "SECTION",
							["CREATE_HOES"] = "TRUE", --this needs to be here, otherwise the section isn't removed properly
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RestartOnCompletion", "true"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG", "Stage", "GcMissionSequenceCreateSpecificPulseEncounter"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"PulseEncounterID", "BIO_FRIG"},
							}
						},
						{
							["SKW"]	=  
							{
								{"MissionID", "BIO_FRIG", "MissionTitles", "GcNumberedTextList"},
								{"MissionID", "BIO_FRIG", "MissionSubtitles", "GcNumberedTextList"},
								{"MissionID", "BIO_FRIG", "MissionDescriptions", "GcNumberedTextList"},
							},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Format", ""}, --remove messages about "dream aerial is missing" if the aerial is not in the inventory
							}
						},
					},
				},
			}
		}
	}	
}