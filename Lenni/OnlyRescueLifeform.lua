NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "OnlyRescueLifeform.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.52",
["MOD_DESCRIPTION"]			= "Removes most Nexus missions, except for the 'Rescue Stranded Lifeform' one",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/MULTIPLAYERMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["FSKWG"]  = {
								{"MissionID", "MP_DEPOT_RAID"},
								{"MissionID", "MP_SPACEBATTLE"},
								{"MissionID", "MP_FIEND_HUNT"},
								{"MissionID", "MP_FIEND_HUNT2"},
								{"MissionID", "MP_COLLECT_S"},
								{"MissionID", "MP_COLLECT_P"},
								{"MissionID", "MP_COLLECT_COM"},
								{"MissionID", "MP_FEEDING"},
								{"MissionID", "MP_FEED_BASIC"},
								{"MissionID", "MP_PLANTKILL"},
								{"MissionID", "MP_DIGSITE"},
								{"MissionID", "MP_DISCOVER"},
								{"MissionID", "MP_HIVE"},
								{"MissionID", "MP_INFEST"},
								{"MissionID", "MP_CORRUPT"},
							},
							["REMOVE"] 	= "Section",
						},	
					},
				},
			}
		}
	}	
}