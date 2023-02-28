--[[  Y translations
idx	start	end
1:	-1.44	 0.11
2:			 1.27
3:			 1.27
4:  0.42	-0.87
5:			-3.36
6:			-3.36	
7:  0.42	 3.24
8:  0.42	-4.23
9: 	-0.004	-2.83  top door
10: -0.004	 4.65  bottom door
--]]



local change_topdoor_table = {}  -- original goes from 0.0 to -2.8

for i = 1,181 do
  local current_change =  
  {

	["PRECEDING_KEY_WORDS"] = {"Translations", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml"},  --top door
	["REPLACE_TYPE"]    = "ONCE",  
	["SECTION_ACTIVE"] = {i,}, 
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] 	= 
	{  
		{"y", -5.5*(i-1)/180},
	},
  }
  
  table.insert(change_topdoor_table, current_change)
  
end


local change_bottomdoor_table = {}

for i = 1,181 do
  local current_change =  
  {
	["PRECEDING_KEY_WORDS"] = {"Translations", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml"},  --bottom door
	["REPLACE_TYPE"]    = "ONCE",  
	["SECTION_ACTIVE"] = {i,}, 
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] 	= 
	{  
		{"y", 6.8*(i-1)/180},
	},
  }

  table.insert(change_bottomdoor_table, current_change)
end


local change_bottomrays_table = {}  -- original goes from 0.4 to 4.2

for i = 1,181 do
  local current_change =  
  {
	["PRECEDING_KEY_WORDS"] = {"Translations", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml"},  --bottom rays
	["REPLACE_TYPE"]    = "ONCE",  
	["SECTION_ACTIVE"] = {i,}, 
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] 	= 
	{  
		{"y", 0.4-6.8*(i-1)/180},
	},
  }

  table.insert(change_bottomrays_table, current_change)
end


local change_toprays_table = {}  -- original goes from 

for i = 1,181 do
  local current_change =  
  {
	["PRECEDING_KEY_WORDS"] = {"Translations", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml"},  --bottom rays
	["REPLACE_TYPE"]    = "ONCE",  
	["SECTION_ACTIVE"] = {i,}, 
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] 	= 
	{  
		{"y", 0.4+5.5*(i-1)/180},
	},
  }

  table.insert(change_toprays_table, current_change)
end

--[[
local change_unk_table = {}  -- original goes from 0.4 -> -0.87

for i = 1,181 do
  local current_change =  
  {
	["PRECEDING_KEY_WORDS"] = {"Translations", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml", "Vector3f.xml"},  
	["REPLACE_TYPE"]    = "ONCE",  
	["SECTION_ACTIVE"] = {i,}, 
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] 	= 
	{  
		{"y", 0.4-2.5*(i-1)/180},
	},
  }

  table.insert(change_unk_table, current_change)
end
--]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Open These Freighter Doors 1.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.10",
["MOD_DESCRIPTION"]			= "This mod opens wide the freighter doors",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ 
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\ANIMS\HANGARDOOR_OPEN.ANIM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_topdoor_table
				},
				{  
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\ANIMS\HANGARDOOR_OPEN.ANIM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_bottomdoor_table
				},	
				{  
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\ANIMS\HANGARDOOR_OPEN.ANIM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_bottomrays_table
				},	
				{  
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\ANIMS\HANGARDOOR_OPEN.ANIM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_toprays_table
				},	
				--[[{  
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\ANIMS\HANGARDOOR_OPEN.ANIM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_unk_table
				},	--]]
			}
		}
	}	
}