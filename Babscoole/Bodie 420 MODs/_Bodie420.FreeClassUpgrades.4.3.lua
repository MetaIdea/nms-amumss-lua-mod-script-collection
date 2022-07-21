COST_MULTIPLIER = "0"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420.FreeClassUpgrades.4.3.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.3",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_STATIONKEY",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_SUIT_SLOT",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_CUSTOMISE",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_ADOPT",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_EGG_READY",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_MILK",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_RIDE",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_TREAT",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_LIB_VAULT_FC",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_LIB_VAULT_FU",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_LIB_VAULT_FR",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_LIB_VAULT_TC",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_WEAP_UPGRADE",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_REPAIRPART",}, 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DontCharge", "True"}, -- Original "False"									
							}
						},							
						{
							["PRECEDING_KEY_WORDS"] = "Costs",
							["MATH_OPERATION"]      = "*",
							["REPLACE_TYPE"]        = "ALL",
							["VALUE_MATCH"]         = "",
							["VALUE_MATCH_TYPE"]    = "",
							["VALUE_CHANGE_TABLE"]  = 
							{
								{"IGNORE", COST_MULTIPLIER }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","NPC_BUILD1",}, 							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"CannotAffordOSDMsg", "You Broke Fool!"}, -- Original ""									
							}
						},	
					}
				}
			}
		}
	}	
}