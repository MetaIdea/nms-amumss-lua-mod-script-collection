 MOD_NAME		= "New Milestones 2.2X.pak"; 
 MOD_AUTHOR 	= "Lo2k";		--Edited by Xen0nex
 NMS_VERSION 	= "4.41";
 MOD_DESC		= "This mods changes milestones pacing";
  

INTSTATS =
{
{"ALIENS_MET_STAT_", "10", "30", "60", "90", "120", "150", "200", "250", "300", "400"},
{"WORDS_STAT_", "10", "20", "100", "160", "220", "280", "340", "400", "460", "600"},
{"MONEY_STAT_", "100000", "1000000", "10000000", "30000000", "60000000", "100000000", "150000000", "200000000", "250000000", "500000000"},
{"ENEMIES_STAT_", "5", "10", "30", "60", "90", "120", "150", "200", "250", "350"},
{"SENTINEL_STAT_", "5", "10", "30", "60", "100", "150", "200", "250", "300", "400"},
{"DIST_WARP_STAT_", "5", "10", "15", "20", "25", "30", "40", "50", "60", "80"},
{"DISC_CREATURES_STAT_", "1", "2", "4", "6", "8", "10", "12", "14", "16", "24"},
};
  
FLOATSTATS = 
{
{"DIST_STAT_", "10000", "30000", "60000", "100000", "150000", "200000", "250000", "300000", "350000", "500000"},
{"LONGEST_LIFE_STAT_", "900", "1800", "2700", "3600", "4500", "5400", "7200", "9000", "10800", "14400"},  -- 900 seconds = 1 sol (15 minutes real time)
};

TOTAL = {{"8"},{"16"},{"24"},{"32"},{"40"},{"48"},{"56"},{"64"},{"72"},{"80"},{"90"}};



local change_intstats_table = {}

for i = 1,#INTSTATS do
for j = 1,10 do
  local current_change =
  {
	["SPECIAL_KEY_WORDS"] = {"LevelName", INTSTATS[i][1]..string.format("%02d", j).."_L"},
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
	["SPECIAL_KEY_WORDS"] = {"LevelName", FLOATSTATS[i][1]..string.format("%02d", j).."_L"},
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