NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "MOD_Mission_Timer_Reduced.pak",
["MOD_AUTHOR"]    = "NooBzPoWaH",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.35",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\MISSIONS\ATLASPATHTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_POLO_LONGWAIT_MSG"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time",				"0"}, 
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BASEFLAG_COOLDOWN_MSG"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time",				"0"}, 
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION1_MSG3"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time",				"0"}, 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION2_MSG3"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time",				"0"}, 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION3_MSG3"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time",				"0"}, 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION4_MSG3"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time",				"0"}, 
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TimeTakenForExpeditionEvent_Easy", "250"},
								{"TimeTakenForExpeditionEvent",		 "1000"},
							}
						},
					}
				},				
			}
		},
	}	
}