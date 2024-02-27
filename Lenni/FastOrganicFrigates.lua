NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FastOrganicFrigates.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "Makes the Dream Aerial not useless",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG"},
							["PRECEDING_KEY_WORDS"]	=	"CancelingConditions",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG"},
							["SECTION_ACTIVE"]		=	1,
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RestartOnCompletion", "True"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"MissionID", "BIO_FRIG", "Stage", "GcMissionSequenceCreateSpecificPulseEncounter.xml"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"PulseEncounterID", "BIO_FRIG"},
							}
						},
						{
							["FOREACH_SKW_GROUP"]	=  
							{  
								{"MissionID", "BIO_FRIG", "MissionTitles", "GcNumberedTextList.xml"},
								{"MissionID", "BIO_FRIG", "MissionSubtitles", "GcNumberedTextList.xml"},
								{"MissionID", "BIO_FRIG", "MissionDescriptions", "GcNumberedTextList.xml"},
							},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Format", ""},
							}
						},
					},
				},
			}
		}
	}	
}