 MOD_NAME		= "New Milestones 2.0.pak"; 
 MOD_AUTHOR 	= "Lo2k";
 NMS_VERSION 	= "3.88";
 MOD_DESC		= "This mods changes milestones pacing";
  
STATS = 
{
{"DIST_STAT_", "10000", "20000", "50000", "100000", "150000", "200000", "250000", "300000", "350000", "400000"},
{"ALIENS_MET_STAT_", "10", "20", "50", "100", "150", "200", "250", "300", "350", "400"},
{"WORDS_STAT_", "10", "20", "50", "100", "150", "200", "250", "300", "350", "400"},
{"MONEY_STAT_", "100000", "200000", "500000", "1000000", "2000000", "5000000", "10000000", "20000000", "50000000", "100000000"},
{"ENEMIES_STAT_", "1", "5", "15", "25", "35", "45", "55", "70", "85", "100"},
{"SENTINEL_STAT_", "1", "10", "30", "60", "100", "150", "200", "250", "300", "350"},
{"LONGEST_LIFE_STAT_", "1", "3", "5", "8", "11", "14", "18", "22", "26", "30"},
{"DIST_WARP_STAT_", "1", "5", "10", "20", "30", "40", "50", "60", "70", "80"},
{"DISC_CREATURES_STAT_", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"},
};

TOTAL = {{"5"},{"15"},{"25"},{"35"},{"45"},{"55"},{"65"},{"75"},{"80"},{"85"},{"90"}};



local change_stats_table = {}

for i = 1,#STATS do
for j = 1,10 do
  local current_change =
  {
	["SPECIAL_KEY_WORDS"] = {"LevelName", STATS[i][1]..string.format("%02d", j)},
	["VALUE_CHANGE_TABLE"] 	= 
	{
		{"FloatValue",	STATS[i][j+1]}; 
	}
  }
  table.insert(change_stats_table, current_change)
end
end


local change_total_table = {}

for i = 1,#TOTAL do
  local current_change =
  {
	["SPECIAL_KEY_WORDS"] = {"JourneyMilestoneId", "JOURNEY"..string.format("%02d", i)},  
	["VALUE_CHANGE_TABLE"] 	= 
	{
		{"PointsToUnlock",	TOTAL[i][1]},
	}
  }
  table.insert(change_total_table, current_change)
end





NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 		= MOD_NAME, 
  ["MOD_AUTHOR"]		= MOD_AUTHOR,
  ["NMS_VERSION"]		= NMS_VERSION,
  ["MOD_DESCRIPTION"]	= MOD_DESC,
  ["MODIFICATIONS"] = 
  {
    {
    ["MBIN_CHANGE_TABLE"] = 
      {
	  	{
          ["MBIN_FILE_SOURCE"] = {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
          ["EXML_CHANGE_TABLE"] = change_stats_table
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\JOURNEYMILESTONETABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = change_total_table
        },
      }
    },
  }
}