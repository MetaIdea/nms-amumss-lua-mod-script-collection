Author = "PyronoxOmega"
ModName = "QuickExplore"
GameVersion = "4.47"
ModVersion = "1.7"
Description = "Quick Exploration"


--Spawn Rate --

Spawn = 100

-- files Path--
Filesource1 = "METADATA/SIMULATION/ECOSYSTEM/CREATUREROLEDESCRIPTIONTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..""..-GameVersion..-ModVersion..".pak",
["MOD_DESCRIPTION"]			= Description,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
						{
							"METADATA/SIMULATION/ECOSYSTEM/AIR/AIRTABLEBIGBIRD.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/AIR/AIRTABLEBUSY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/AIR/AIRTABLECOMMON.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/AIR/AIRTABLECOMMONLIZARD.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/AIR/AIRTABLECOMMONSNAKE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/AIR/AIRTABLEFLYINGLIZARDONLY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/AIR/AIRTABLEFLYINGSNAKESONLY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/CAVE/CAVETABLECOMMON.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREMED.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVORESMALL.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERDMED.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEMAYBEBUTTERFLY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPLAYERPREDATORMED.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPREDATORLARGE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEROBOT.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEALIEN.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEBUTTERFLY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREGIANT.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVORELARGE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDBUTTERFLY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDCRYSTAL.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDFLOAT.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDROLL.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEPETS.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEPLOW.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLERIDEABLE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLERIDEABLE2.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLERIDEABLE3.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEROLLER.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLESMALLBIRD.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLETEST.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEBUTTERFLOCK.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEBUTTERFLY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEDIGGER.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEDRILL.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEFLOATER.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEFLYINGBEETLE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLELARGEBUTTERFLY.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/GROUND/TEST/GROUNDTABLEMOLE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/UNDERWATERTABLECRABS.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/UNDERWATERTABLECOMMON.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/TEST/UNDERWATERTABLEFLOCK.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/TEST/UNDERWATERTABLESHARKEATSNAKE.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/TEST/UNDERWATERTABLEJELLYFISH.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/TEST/UNDERWATERTABLEFLOCKSHARK.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/TEST/UNDERWATERTABLEFLOCK3.MBIN",
							"METADATA/SIMULATION/ECOSYSTEM/UNDERWATER/TEST/UNDERWATERTABLEFLOCK2.MBIN",
						},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreasedSpawnDistance", Spawn },				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= Filesource1,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"All", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},--30
								{"Full", "100"},		--100				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"UnderwaterFiles", "GcCreatureRoleFilenameList.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"CaveFiles", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"AirFiles", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Structure", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Beam", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Hexagon", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"FractCube", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Bubble", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Shards", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Contour", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Shell", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"BoneSpire", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"WireCell", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"HydroGarden", "GcCreatureRoleFilenameList.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LifeChance"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Dead", "0"},
								{"Low", "70"},
								{"Mid", "90"},
								{"Full", "100"},
							},	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RoleFrequencyModifiers"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Never", "0"},
								{"Low", "30"},
								{"Normal", "75"},--25
								{"High", "150"},--50
							},	
						},						
					}
				},	
			}
		}
	}	
}