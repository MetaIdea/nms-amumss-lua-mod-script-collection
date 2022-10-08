NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_Mission_Timer_Redux.pak",
["MOD_DESCRIPTION"] 			= "Reduce Mission Timer, Atlas, Base Computer, Living Ship and Fleet",
["MOD_AUTHOR"]				= "NooBzPoWaH",
["LUA_AUTHOR"] 				= "Babscoole",
["NMS_VERSION"]				= "4.+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\ATLASPATHTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_POLO_LONGWAIT_MSG"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",				"0"}, 
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",
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
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
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
				{
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TimeTakenForExpeditionEvent_Easy", "180"},		-- Original 900
								{"TimeTakenForExpeditionEvent",		 "900"},		-- Original 5400
							}
						},
					}
				},
				{	-- This section is for the Settlement Timers
					["MBIN_FILE_SOURCE"]     = "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"]     =
					{
						{
							["VALUE_CHANGE_TABLE"]     =
							{
							  {"BuildingUpgradeTimeInSeconds",    "60"},        -- original value is "7200" whihc is 2 hrs
							  {"JudgementWaitTimeMin",         "120"},        -- original value is "900" which is 30 mins
							  {"JudgementWaitTimeMax",        "300"},        -- original value is "7200" which is 2 hrs
							  {"Settlement_LandingZone",        "30"},        -- original value is "14400" which is 4 hrs
							  {"Settlement_Bar",            "30"},        -- original value is "3600" which is 1 hr
							  {"Settlement_Tower",            "30"},        -- original value is "14400" which is 4 hrs
							  {"Settlement_Market",            "30"},        -- original value is "7200" which is 2 hrs
							  {"Settlement_Small",            "30"},        -- original value is "1200" which is 20 mins
							  {"Settlement_SmallIndustrial",    "30"},        -- original value is "1200" which is 20 mins
							  {"Settlement_Medium",            "30"},        -- original value is "2800" which is 46 mins and 39 secs
							  {"Settlement_Large",            "30"},        -- original value is "7200" which is 2 hrs
							  {"Settlement_SheriffsOffice",        "90"},        -- original value is "90"
							  {"Settlement_Double",            "30"},        -- original value is "3600" which is 1 hr
							  {"Settlement_Farm",            "30"},        -- original value is "5600" which is 1 hr 30 mins and 20 secs
							  {"Settlement_Factory",        "30"},        -- original value is "5600" which is 1 hr 30 mins and 20 secs
							 }
						},
					}
				},				
			}
		},
	}	
}