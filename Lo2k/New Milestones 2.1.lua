 MOD_NAME		= "New Milestones 2.1.pak"; 
 MOD_AUTHOR 	= "Lo2k";
 NMS_VERSION 	= "3.89";
 MOD_DESC		= "This mods changes milestones pacing";
  

INTSTATS =
{
{"ALIENS_MET_STAT_", "10", "20", "50", "100", "150", "200", "250", "300", "350", "400"},
{"WORDS_STAT_", "10", "20", "50", "100", "150", "200", "250", "300", "350", "400"},
{"MONEY_STAT_", "100000", "200000", "500000", "1000000", "2000000", "5000000", "10000000", "20000000", "50000000", "100000000"},
{"ENEMIES_STAT_", "1", "5", "15", "25", "35", "45", "55", "70", "85", "100"},
{"SENTINEL_STAT_", "1", "10", "30", "60", "100", "150", "200", "250", "300", "350"},
{"DIST_WARP_STAT_", "1", "5", "10", "20", "30", "40", "50", "60", "70", "80"},
{"DISC_CREATURES_STAT_", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"},
};
  
FLOATSTATS = 
{
{"DIST_STAT_", "10000", "20000", "50000", "100000", "150000", "200000", "250000", "300000", "350000", "400000"},
{"LONGEST_LIFE_STAT_", "900", "2700", "4500", "7200", "9900", "12600", "16200", "19800", "23400", "27000"},  -- 900 = 1 sol
};

TOTAL = {{"5"},{"15"},{"25"},{"35"},{"45"},{"55"},{"65"},{"75"},{"80"},{"85"},{"90"}};



local change_intstats_table = {}

for i = 1,#INTSTATS do
for j = 1,10 do
  local current_change =
  {
	["SPECIAL_KEY_WORDS"] = {"LevelName", INTSTATS[i][1]..string.format("%02d", j)},
	["VALUE_CHANGE_TABLE"] 	= 
	{
		{"IntValue",	INTSTATS[i][j+1]}; 
	}
  }
  table.insert(change_intstats_table, current_change)
end
end


local change_floatstats_table = {}

for i = 1,#FLOATSTATS do
for j = 1,10 do
  local current_change =
  {
	["SPECIAL_KEY_WORDS"] = {"LevelName", FLOATSTATS[i][1]..string.format("%02d", j)},
	["VALUE_CHANGE_TABLE"] 	= 
	{
		{"FloatValue",	FLOATSTATS[i][j+1]}; 
	}
  }
  table.insert(change_floatstats_table, current_change)
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
          ["EXML_CHANGE_TABLE"] = change_intstats_table
        },
		{
          ["MBIN_FILE_SOURCE"] = {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
          ["EXML_CHANGE_TABLE"] = change_floatstats_table
        },
		{
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\JOURNEYMILESTONETABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = change_total_table
        },
		{ -- Milestone fixes
		  ["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
		  ["EXML_CHANGE_TABLE"] 	= 
		  {
			{
			  ["SPECIAL_KEY_WORDS"] = {"StatId", "PIRATES_KILLED",},
			  ["VALUE_CHANGE_TABLE"] 	= 
			  {
				{"StatMessageType",	"Silent"},
				{"ShowInTerminal",	"False"},
				{"ShowStatLevel", "False"},
			  }
			},
		  },
		},
      }
    },
  }
}