 MOD_NAME		= "NGT_Extreme Milestones"; 
 MOD_AUTHOR 	= "Lo2k with minor changes by Nightangel34";
 LUA_AUTHOR 	= "Lo2k, Nightangel34 refactoring by Babscoole";
 NMS_VERSION 	= "6.32";
 MOD_DESC		= "This mods changes milestones pacing";
  

INTSTATS =
{
{"ALIENS_MET_STAT_", "1", "5", "15", "35", "65", "100", "150", "200", "350", "500"},
{"WORDS_STAT_", "35", "100", "300", "500", "750", "1000", "1250", "1600", "2000", "2500"},
{"MONEY_STAT_", "500000", "2000000", "5000000", "10000000", "25000000", "50000000", "100000000", "250000000", "500000000", "999999999"},
{"ENEMIES_STAT_", "1", "5", "10", "25", "50", "100", "200", "350", "500", "1000"},
{"SENTINEL_STAT_", "1", "2", "5", "10", "20", "50", "100", "200", "350", "500"},
{"DIST_WARP_STAT_", "2", "5", "10", "20", "35", "50", "75", "100", "150", "200"},
{"DISC_CREATURES_STAT_", "1", "2", "3", "5", "7", "10", "13", "16", "20", "25"},
};
  
FLOATSTATS = 
{
{"DIST_STAT_", "20000", "50000", "100000", "150000", "200000", "250000", "350000", "500000", "750000", "1000000"},
{"LONGEST_LIFE_STAT_", "900", "4500", "9000", "13500", "22500", "31500", "45000", "58500", "72000", "90000"},  -- 900 = 1 sol
};

SURVFLOATSTATS = 
{
{"DIST_STAT_", "20000", "50000", "100000", "150000", "200000", "250000", "350000", "500000", "750000", "1000000"},
};

TOTAL = {{"3"},{"7"},{"12"},{"18"},{"25"},{"33"},{"42"},{"52"},{"63"},{"75"},{"90"}};



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

local change_survfloatstats_table = {}

for i = 1,#SURVFLOATSTATS do
for j = 1,10 do
  local current_change =
  {
	["SPECIAL_KEY_WORDS"] = {"LevelName", SURVFLOATSTATS[i][1]..string.format("%02d", j).."_L"},
	["VALUE_CHANGE_TABLE"] 	= 
	{
		{"FloatValue",	SURVFLOATSTATS[i][j+1]}; 
	}
  }
  table.insert(change_survfloatstats_table, current_change)
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
  ["LUA_AUTHOR"]		= LUA_AUTHOR,
  ["NMS_VERSION"]		= NMS_VERSION,
  ["MOD_DESCRIPTION"]	= MOD_DESC,
  ["EXML_CREATE"] = "FALSE",
  ["MODIFICATIONS"] = 
  {
    {
    ["MBIN_CHANGE_TABLE"] = 
      {
	  	{
          ["MBIN_FILE_SOURCE"] = {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN"},
          ["MXML_CHANGE_TABLE"] = change_intstats_table
        },
		{
          ["MBIN_FILE_SOURCE"] = {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN"},
          ["MXML_CHANGE_TABLE"] = change_floatstats_table
        },
		{
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\JOURNEYMILESTONETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] = change_total_table
        },
		{
          ["MBIN_FILE_SOURCE"] = {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
          ["MXML_CHANGE_TABLE"] = change_survfloatstats_table
        },
		-- { -- Milestone fixes
		  -- ["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
		  -- ["MXML_CHANGE_TABLE"] 	= 
		  -- {
			-- {
			  -- ["SPECIAL_KEY_WORDS"] = {"StatId", "PIRATES_KILLED",},
			  -- ["VALUE_CHANGE_TABLE"] 	= 
			  -- {
				-- -- {"StatMessageType",	"Silent"},
				-- {"ShowInTerminal",	"False"},
				-- -- {"ShowStatLevel", "False"},
			  -- }
			-- },
		  -- },
		-- },
      }
    },
  }
}