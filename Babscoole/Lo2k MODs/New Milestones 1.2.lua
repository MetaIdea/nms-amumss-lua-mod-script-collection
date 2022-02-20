NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "New Milestones 1.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.75",
["MOD_DESCRIPTION"]			= "This mod fixes incorrect milestone total count",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","DIST_WALKED",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_01",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"10000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_02",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"20000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_03",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"50000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_04",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"100000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"150000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"200000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"250000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"300000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"350000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_STAT_10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"400000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","ALIENS_MET",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_03",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"50"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_04",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"100"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"150"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"200"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"250"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"300"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"350"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ALIENS_MET_STAT_10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"400"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","WORDS_LEARNT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_01",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_02",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_03",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"50"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_04",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"100"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"150"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"200"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"250"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"300"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"350"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","WORDS_STAT_10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"400"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","MONEY",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_01",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"100000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_02",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"200000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_03",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"500000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_04",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"1000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"2000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"5000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"10000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"20000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"50000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","MONEY_STAT_10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"100000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","ENEMIES_KILLED",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_01",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_02",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"5"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_04",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_05",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"35"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_06",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"45"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_07",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"55"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_08",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"70"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_09",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"85"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","ENEMIES_STAT_10",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"100"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","SENTINEL_KILLS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_01",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_03",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_04",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"60"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"100"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"150"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"200"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"250"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"300"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","SENTINEL_STAT_10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"350"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","LONGEST_LIFE_EX",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","LONGEST_LIFE_STAT_05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"9900"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","LONGEST_LIFE_STAT_06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"12600"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","LONGEST_LIFE_STAT_07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"16200"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","LONGEST_LIFE_STAT_08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"19800"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","LONGEST_LIFE_STAT_09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"23400"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","LONGEST_LIFE_STAT_10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FloatValue",	"27000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","DIST_WARP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_01",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_02",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"5"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_03",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"40"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"50"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"60"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"70"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LevelName","DIST_WARP_STAT_10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IntValue",	"80"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","DISC_ALL_CREATU",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","TUTORIAL",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","PLANTS_PLANTED",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TelemetryUpload",	"False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId","PIRATES_KILLED",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Silent"},
								{"ShowInTerminal",	"False"},
								{"ShowStatLevel",	"False"},								
								{"TelemetryUpload",	"False"},
							}
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\JOURNEYMILESTONETABLE.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY02",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY03",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"25"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY04",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"35"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY05",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"45"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY06",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"55"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY07",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"65"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY08",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"75"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY09",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"80"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY10",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"85"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId","JOURNEY11",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PointsToUnlock",	"90"},
							}
						},							
					},
				},					
			}
		}
	}	
}
