NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_Mission_Timer_Redux.pak",
["MOD_DESCRIPTION"] 			= "Reduce Mission Timer, Base Computer, Fleet, Living Ship, Scientist and Settlement",
["MOD_AUTHOR"]				= "NooBzPoWaH",
["LUA_AUTHOR"] 				= "Babscoole",
["NMS_VERSION"]				= "5.+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{        -- This section is for Base Computer Timers
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\MISSIONS\\TABLES\\BASECOMPUTERMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BASEFLAG_COOLDOWN_MSG"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",				"0"}, 
							}
						},
					}
				},
				{        -- This section is for Living Ship Timers
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\MISSIONS\\TABLES\\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION1_MSG3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",				"0"}, 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION2_MSG3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",				"0"}, 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION3_MSG3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",				"0"}, 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION4_MSG3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",				"0"}, 
							}
						},
					}
				},
				{        -- This section is for Fleet Timers
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TimeTakenForExpeditionEvent_Easy", "120"},		-- Original 900
								{"TimeTakenForExpeditionEvent",		 "600"},		-- Original 5400
							}
						},
					}
				},
				{        -- This section is for the Scientist Timers
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\TABLES\MISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
				            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceWaitRealTime.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "60",
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] =
							{
                				                {"Time", "0"}
							}
						},
					}
				},
				{	     -- This section is for the Settlement Timers
					["MBIN_FILE_SOURCE"]     = "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"]     =
					{
						{
							["VALUE_CHANGE_TABLE"]     =
							{
							  {"BuildingUpgradeTimeInSeconds", 		"30"},        -- original value is "7200" whihc is 2 hrs
							  {"JudgementWaitTimeMin", 				"20"},        -- original value is "900" which is 15 mins
							  {"JudgementWaitTimeMax", 				"30"},        -- original value is "7200" which is 2 hrs
							  {"Settlement_LandingZone", 			"30"},        -- original value is "14400" which is 4 hrs
							  {"Settlement_Bar", 					"30"},        -- original value is "3600" which is 1 hr
							  {"Settlement_Tower", 					"30"},        -- original value is "14400" which is 4 hrs
							  {"Settlement_Market", 				"30"},        -- original value is "7200" which is 2 hrs
							  {"Settlement_Small", 					"30"},        -- original value is "1200" which is 20 mins
							  {"Settlement_SmallIndustrial", 		"30"},        -- original value is "1200" which is 20 mins
							  {"Settlement_Medium", 				"30"},        -- original value is "2800" which is 46 mins and 39 secs
							  {"Settlement_Large", 					"30"},        -- original value is "7200" which is 2 hrs
							  {"Settlement_SheriffsOffice", 		"30"},        -- original value is "90"
							  {"Settlement_Double", 				"30"},        -- original value is "3600" which is 1 hr
							  {"Settlement_Farm", 					"30"},        -- original value is "5600" which is 1 hr 30 mins and 20 secs
							  {"Settlement_Factory", 				"30"},        -- original value is "5600" which is 1 hr 30 mins and 20 secs
							 }
						},
					}
				},				
			}
		},
	}	
}