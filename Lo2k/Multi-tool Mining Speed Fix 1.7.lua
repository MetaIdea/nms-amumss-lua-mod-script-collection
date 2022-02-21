
NEWSECTIONS = {
  {"STRONGLASER",  "Weapon_Laser_StrongLaser",   3,  0,},
  {"UT_MINER",     "Weapon_Laser_MiningBonus",  4,  0,},  
}

local add_product_table = {}
for i = 1,#NEWSECTIONS do
  local current_change =
  {
    ["SPECIAL_KEY_WORDS"] = {"ID",NEWSECTIONS[i][1],"StatsType",NEWSECTIONS[i][2]},
	["SECTION_UP"] = 1,
    ["REPLACE_TYPE"] = "ADDAFTERSECTION",
    ["ADD"] = 
[[
		<Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Damage" />
          </Property>
          <Property name="Bonus" value="]]..NEWSECTIONS[i][3]..[[" />
          <Property name="Level" value="]]..NEWSECTIONS[i][4]..[[" />
		</Property>
]],
  }
  table.insert(add_product_table, current_change)
end



NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 				= "Multi-Tool Mining Speed Fix 1.7.pak", 
  ["MOD_AUTHOR"]				= "Lo2k",
  ["NMS_VERSION"]				= "3.81",
  ["MOD_DESCRIPTION"]			= "This mod really changes multi-tool efficiency",
  ["MODIFICATIONS"] 			= 
  {
	{
	  ["MBIN_CHANGE_TABLE"] 	= 
	  { 
		{ 
		  ["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
		  ["EXML_CHANGE_TABLE"] = add_product_table
		},
		{
		  ["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
		  ["EXML_CHANGE_TABLE"] 	= 
		  {  --[[   ]]--
            {
              ["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER", "StatsType","Weapon_Laser_StrongLaser",},
              ["SECTION_UP"] = 1,
			  ["VALUE_CHANGE_TABLE"] = 
			  {
				{"Level",	"0"},  --removes C class flag from Advanced Laser
			  },
			},
			{
			  ["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER","StatsType","Weapon_Laser_Mining_Speed"},
			  ["VALUE_CHANGE_TABLE"] = 
			  {
			    {"StatsType", "Weapon_Laser_MiningBonus"},
			  },
			},
			{
              ["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER", "StatsType","Weapon_Laser_MiningBonus",},
              ["SECTION_UP"] = 1,
			  ["VALUE_CHANGE_TABLE"] = 
			  {
			    {"Bonus",	"1.0"},
				{"Level",	"0"},
			  },
			},
			{
              ["SPECIAL_KEY_WORDS"] = {"ID","UT_MINER", "StatsType","Weapon_Laser_MiningBonus",},
              ["SECTION_UP"] = 1,
			  ["VALUE_CHANGE_TABLE"] = 
			  {
			  --  {"Bonus",	"1.25"},
				{"Level",	"0"},  --removes S class flag from Optical Drill
			  },
			},
			{
              ["SPECIAL_KEY_WORDS"] = {"ID","UT_MINER",},
			  ["PRECEDING_KEY_WORDS"] = {"UpgradeColour"},  -- Optical Drill Mining Beam Color
			  ["VALUE_CHANGE_TABLE"] = 
			  {
			    {"R",	"0.97"},
				{"G",	"0.2"},
				--{"B",	"1.0"},
			  },
			},
			{
              ["SPECIAL_KEY_WORDS"] = {"ID","UT_MINER",},
			  ["VALUE_CHANGE_TABLE"] = 
			  {
			    {"Filename", "TEXTURES/UI/FRONTEND/ICONS/UPDATE1/TECH.UTMINER.DDS"},
			  },
			},
		  },
		}, 
		{
		  ["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
		  ["EXML_CHANGE_TABLE"] = 
		  {
            {
              ["SPECIAL_KEY_WORDS"] = {"StatsType","Weapon_Laser_Mining_Speed",},
              ["SECTION_UP"] = 1,
			  ["REPLACE_TYPE"] = "ALL",
              ["MATH_OPERATION"] 	= "-",
			  ["VALUE_CHANGE_TABLE"] = 
			  {
			    {"ValueMin",	"1"},
			    {"ValueMax",	"1"},
			  },
		    },
            {
              ["SPECIAL_KEY_WORDS"] = {"StatsType","Weapon_Laser_Mining_Speed",},
              ["SECTION_UP"] = 1,
			  ["REPLACE_TYPE"] = "ALL",
              ["MATH_OPERATION"] 	= "*",
			  ["VALUE_CHANGE_TABLE"] = 
			  {
				{"ValueMin",	"-20"},
				{"ValueMax",	"-20"},
			  },
			},
			{
              ["SPECIAL_KEY_WORDS"] = {"StatsType","Weapon_Laser_Mining_Speed",},
			  ["REPLACE_TYPE"] = "ALL",
			  ["VALUE_CHANGE_TABLE"] = 
			  {
			    {"StatsType",	"Weapon_Laser_Damage"},
			  },
		    },
		  },
	    },	
	  }
	}
  }	
}