ColorSections =
{
"FREIGHTER",
"PET",
"PLAYER",
"SHIP",  --ship creator
"VEHICLE",  --buggy
"BIKE",
"TRUCK",
"WHEELEDBIKE",
"HOVERCRAFT",
"SUBMARINE",
"MECH",
}

local change_white = {}
for i = 1,#ColorSections do
  local current_change =  
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", ColorSections[i],},
    ["PRECEDING_KEY_WORDS"] = "Colour.xml",
	["REPLACE_TYPE"]    = "ONCE",  
    ["SECTION_ACTIVE"] = 9,
	["INTEGER_TO_FLOAT"] = "FORCE",
    ["VALUE_CHANGE_TABLE"] = {{"R",1,},{"G",1,},{"B",1,},},
  }
  table.insert(change_white, current_change)
end

local change_lightgrey = {}
for i = 1,#ColorSections do
  local current_change =  
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", ColorSections[i],},
    ["PRECEDING_KEY_WORDS"] = "Colour.xml",
	["REPLACE_TYPE"]    = "ONCE",  
    ["SECTION_ACTIVE"] = 19,
	["INTEGER_TO_FLOAT"] = "FORCE",
    ["VALUE_CHANGE_TABLE"] = {{"R",0.46,},{"G",0.46,},{"B",0.46,},},
  }
  table.insert(change_lightgrey, current_change)
end

local change_darkgrey = {}
for i = 1,#ColorSections do
  local current_change =  
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", ColorSections[i],},
    ["PRECEDING_KEY_WORDS"] = "Colour.xml",
	["REPLACE_TYPE"]    = "ONCE",  
    ["SECTION_ACTIVE"] = 10,
	["INTEGER_TO_FLOAT"] = "FORCE",
    ["VALUE_CHANGE_TABLE"] = {{"R",0.08,},{"G",0.08,},{"B",0.08,},},
  }
  table.insert(change_darkgrey, current_change)
end

local change_black = {}
for i = 1,#ColorSections do
  local current_change =  
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", ColorSections[i],},
    ["PRECEDING_KEY_WORDS"] = "Colour.xml",
	["REPLACE_TYPE"]    = "ONCE",  
    ["SECTION_ACTIVE"] = 20,
	["INTEGER_TO_FLOAT"] = "FORCE",
    ["VALUE_CHANGE_TABLE"] = {{"R",-1.0,},{"G",-1.0,},{"B",-1.0,},},
  }
  table.insert(change_black, current_change)
end

--[[
 --replace all colors for ship creator
local change_allgrey = {}
for i = 1,20 do
  local current_change =  
  {
    ["SPECIAL_KEY_WORDS"] = {"Ship_01","GcPaletteData.xml",},
    ["PRECEDING_KEY_WORDS"] = "Colour.xml",
	["REPLACE_TYPE"]    = "ONCE",  
    ["SECTION_ACTIVE"] = i,
	["INTEGER_TO_FLOAT"] = "FORCE",
    ["VALUE_CHANGE_TABLE"] = {{"R",0.3+0.01*i,},{"G",0.3+0.01*i,},{"B",0.3+0.01*i,},}, -- 0.08 or 0.17, 0.39, 046  best
  }
  table.insert(change_allgrey, current_change)
end
]]--

-- function to change colour tooltips By FriendlyFirePL
function ChangeTooltip(slot,text) return
{
    ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP", "ExtraData", "GcCustomisationColourPaletteExtraData.xml",},
    ["PRECEDING_KEY_WORDS"] = "NMSString0x20.xml",
	["REPLACE_TYPE"]    = "ONCE",  
    ["SECTION_ACTIVE"] = slot,
    ["VALUE_CHANGE_TABLE"] = {{"Value",text,},},
}
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "True Black 2.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k & FriendlyDirePL",
["NMS_VERSION"]				= "5.11",
["MOD_DESCRIPTION"]			= "This mod changes darkest paint color into pure black",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{  -- Update all paints but ship ones
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_white
				},
				{  -- Update all paints but ship ones
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_lightgrey
				},
				{  -- Update all paints but ship ones
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_darkgrey
				},
				{  -- Update all paints but ship ones
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_black
				},
				--[[
				{  -- Update all ship creators colors
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= change_allgrey
				},
				]]--
				{  -- Update ship creator tooltips
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						ChangeTooltip(9,"UI_PAINT_WHITE"),
						ChangeTooltip(10,"UI_PAINT_BLACK"),
						ChangeTooltip(19,"UI_PAINT_GREY"),
						ChangeTooltip(20,"UI_PAINT_BLACK_DARK"),
					},
				},
				
				{  --  Ships but ship creator
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