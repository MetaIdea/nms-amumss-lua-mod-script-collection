NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LargerHerds_NoCaveSpawns_v1.1.pak",
["MOD_AUTHOR"]				= "MusicAndSilence",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.93",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	=
					{					
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBIGBIRD.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBONE.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORLARGE.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",						
					},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"8" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBUSY.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize",	"24" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	
					{
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMON.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBUTTERFLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEMAYBEBUTTERFLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLL.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
					},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"18" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREMED.MBIN",	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"9" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONLIZARD.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONSNAKE.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"24" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"18" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORESMALL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"18" },
								{"MaxGroupSize", 	"30" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"18" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProbabilityOfBeingEnabled", 	"0" },
								{"IncreasedSpawnDistance", 	"2" },
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEALIEN.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"5" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"6" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3, 4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize",	"9" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLESANDWORM.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"5" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERDMED.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"24" },
								{"MaxGroupSize", 	"48" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{					
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTAL.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORMED.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\FIEND\GROUNDTABLEFIEND.MBIN",
					},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDFLOAT.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"24" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1, 2, 3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"6" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize",	"24" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {5,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"18" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"24" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"18" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLEBUSY.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1, 2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"9" },
								{"MaxGroupSize",	"15" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"9" },
								{"MaxGroupSize", 	"18" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize",	"21" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	
					{
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLECOMMONLIZARD.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLECOMMONSNAKE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"9" },
								{"MaxGroupSize", 	"18" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	
					{
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"21" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize",	"9" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\CAVE\CAVETABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
				{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProbabilityOfBeingEnabled", 	"0" },
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEALLCOW.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2, 4, 5,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"3" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"9" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEDINOSAURS.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1, 2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3, 4, 5, 6, 7,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"3" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEPREYBLOBS.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1, 2, 4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3, 5,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"3" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLESMALLPREDATORS.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1, 5,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"3" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2, 4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"6" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLESPARSE.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"9" },
								{"MaxGroupSize", 	"15" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize", 	"18" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3, 4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {5,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"9" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {6,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"6" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRD.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDFLOAT.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDCRYSTAL.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"6" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDROLL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"9" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLESEASNAKE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"3" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEEXTRA.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"3" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEWHALE.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize", 	"3" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"3" },
								{"MaxGroupSize",	"9" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"12" },
								{"MaxGroupSize",	"24" },					
							}
						},
												{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"9" },
								{"MaxGroupSize",	"21" },					
							}
						},
					}
				},				
			}
		},
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/ECOSYSTEM/DEPRECATE/GROUND/UNUSED/GROUNDTABLEGRUNTLAND.EXML",
			["FILE_CONTENT"] = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="GcCreatureRoleDescriptionTable">
  <Property name="RoleDescription">
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="GRUNT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="9" />
      <Property name="MaxGroupSize" value="9" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="1" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="GRUNT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="12" />
      <Property name="MaxGroupSize" value="12" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="1" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Predator" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="GRUNT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="3" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="1" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="SPIDER" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="9" />
      <Property name="MaxGroupSize" value="9" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="1.25" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="RODENT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="12" />
      <Property name="MaxGroupSize" value="12" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="1.25" />
      <Property name="Filter" value="" />
    </Property>
  </Property>
  <Property name="MinScaleVariance" value="0" />
  <Property name="MaxScaleVariance" value="0" />
  <Property name="TileType" value="GcTerrainTileType.xml">
    <Property name="TileType" value="Base" />
  </Property>
  <Property name="LifeLevel" value="GcPlanetLife.xml">
    <Property name="LifeSetting" value="Mid" />
  </Property>
</Data>
]]		
		},
	}	
}