ColorSections =
{
"Freighter",
"Player",
"Vehicle",  --buggy
"Vehicle_Bike",
"Vehicle_Truck",
"Vehicle_WheeledBike",
"Vehicle_Hovercraft",
"Vehicle_Submarine",
"Vehicle_Mech",
}


local change_darkgrey_table = {}

for i = 1,#ColorSections do
  local current_change =  
  {
	["SPECIAL_KEY_WORDS"] = {ColorSections[i], "GcPaletteData.xml"},
	["PRECEDING_KEY_WORDS"] = {"Colour.xml"},
	["REPLACE_TYPE"]    = "ONCE",  
	["SECTION_ACTIVE"] = {10,}, 
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] 	= 
	{  
		{"R", "0.1"},
		{"G", "0.1"},
		{"B", "0.1"}
	},
  }

  table.insert(change_darkgrey_table, current_change)
end


local change_black_table = {}

for i = 1,#ColorSections do
  local current_change =
  {
	["SPECIAL_KEY_WORDS"] = {ColorSections[i], "GcPaletteData.xml"},
	["PRECEDING_KEY_WORDS"] = {"Colour.xml"},
	["REPLACE_TYPE"]    = "ONCE",  
	["SECTION_ACTIVE"] = {20,}, 
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] 	= 
	{ 
		{"R", "-1.0"},
		{"G", "-1.0"},
		{"B", "-1.0"}
	},
  }

  table.insert(change_black_table, current_change)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "True Black 1.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.97",
["MOD_DESCRIPTION"]			= "This mod changes darkest paint color into pure black",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{  -- Update all paints but ship ones
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_darkgrey_table
				},
				{  -- Update all paints but ship ones
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_black_table
				},
				{  --  Ships
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Paint", "GcPaletteData.xml"},
							["PRECEDING_KEY_WORDS"] = {"Colour.xml"},
							["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {8,}, 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{  -- Dark Grey
							  -- Hint from MusicAndSilence : if two colors have the exact same value, the second will be ignored
								{"R", "-0.999"},  			
								{"G", "-0.999"},
								{"B", "-0.999"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Paint", "GcPaletteData.xml"},
							["PRECEDING_KEY_WORDS"] = {"Colour.xml"},
							["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {56,}, 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{  -- Dark purple
								{"R", "-1.0"},
								{"G", "-1.0"},
								{"B", "-1.0"}
							},
						},
					},
				},		
			}
		}
	}	
}