NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LargerHerds_v1.0.pak",
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
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
					},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"6" },					
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
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"8" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize",	"8" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"8" },
								{"MaxGroupSize",	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	
					{
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMON.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREMED.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEMAYBEBUTTERFLY.MBIN",
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
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONLIZARD.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONSNAKE.MBIN",
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
								{"MinGroupSize", 	"8" },
								{"MaxGroupSize", 	"12" },					
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
					["MBIN_FILE_SOURCE"] 	= 	"METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize", 	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize",	"6" },					
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
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"2" },
								{"MaxGroupSize", 	"3" },					
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
								{"MinGroupSize", 	"8" },
								{"MaxGroupSize", 	"12" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"6" },					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Density","GcCreatureGenerationDensity.xml",},
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Density", 	"Sparse" },				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORLARGE.MBIN",	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"6" },					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Density","GcCreatureGenerationDensity.xml",},
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Density", 	"Normal" },				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORMED.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"8" },					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Density","GcCreatureGenerationDensity.xml",},
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Density", 	"Normal" },				
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
					},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"8" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDFLOAT.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLL.MBIN",
						"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
					},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"12" },					
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
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize", 	"6" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"8" },
								{"MaxGroupSize",	"12" },					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {5,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"6" },
								{"MaxGroupSize",	"12" },					
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
								{"MinGroupSize", 	"8" },
								{"MaxGroupSize", 	"12" },					
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
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinGroupSize", 	"4" },
								{"MaxGroupSize",	"8" },					
							}
						},
					}
				},				
			}
		},
	}	
}