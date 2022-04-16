NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_DUD_DamageHard_v3701.pak",
["MOD_AUTHOR"]				= "jasondude7116",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.75",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "TRADERGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",		"100"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "POLICEGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",		"100"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "AISHIPGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",		"60"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "FREIGHTGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",		"150"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "AI_FREIGHTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",		"300"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "COP_FREIGHTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",		"300"}
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGUNDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"4" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ROBOTBIGGUN",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LASERDAMAGE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"5" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FIENDSPIT_DMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PLANTDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","AISHIPGUN",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SHIPLASER",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN1",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN2",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN3",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER1",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3",},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WALKERLASER",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"9" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","POLICEGUN",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","POLICELASER",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SMALLASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "20" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MEDIUMASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "30" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERGUN",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "200" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLASER",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "200" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GASPLANT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GRABPLANT_DMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","VENUSFLY_DMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARRELEXPLODE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCUTTLERSPITDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BASETURRETPDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LIGHTNING",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "150" },
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","METEOR",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "150" },
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TORNADO",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "70" }
							}
						},					
					}
				}				
			}
		}
	}	
}