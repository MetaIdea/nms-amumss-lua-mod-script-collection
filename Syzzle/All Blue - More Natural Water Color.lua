Author = "Syzzle"
ModName = "All Blue - More Natural Water Color"
GameVersion = "4.52"
--ModVersion = "v1"
Description = "Makes all Water Blue and changes its color slightly to look more natural"

NATURAL_COLOR_SHADE = true			-- DETERMINES IF YOU WANT THE BLUE COLLOR LOOKING MORE NATURAL (true) OR VANILLA (false)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM/COLOURS/WATERCOLOURS.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            -- REMOVE THE OTHER COLORS
            {
              ["SPECIAL_KEY_WORDS"] = {"WaterFogColourNear","Colour.xml","R","0.55",},
              ["SECTION_UP"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WaterFogColourNear","Colour.xml","R","0.597",},
              ["SECTION_UP"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WaterFogColourNear","Colour.xml","R","0.17",},
              ["SECTION_UP"] = 1,
              ["REMOVE"] = "SECTION",
            },
          }
        },	
      }
    }
  }	
}
local ChangeColorShade = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

if NATURAL_COLOR_SHADE == true then
  local fog_near_true =
  {
    ["SPECIAL_KEY_WORDS"]  = {"WaterFogColourNear","Colour.xml"},
    ["VALUE_CHANGE_TABLE"]  =
    {
      {"R",0.237},
      {"G",0.342},
      {"B",0.465}
    }
  }
  ChangeColorShade[#ChangeColorShade + 1] = fog_near_true
  
  local fog_far_true =
  {
    ["SPECIAL_KEY_WORDS"]  = {"WaterFogColourFar","Colour.xml"},
    ["VALUE_CHANGE_TABLE"]  =
    {
      {"R",0.316},
      {"G",0.456},
      {"B",0.62}
    }
  }
  ChangeColorShade[#ChangeColorShade + 1] = fog_far_true

  local base_true =
  {
    ["SPECIAL_KEY_WORDS"]  = {"WaterColourBase","Colour.xml"},
    ["VALUE_CHANGE_TABLE"]  =
    {
      {"R",0.079},
      {"G",0.114},
      {"B",0.155}
    }
  }
  ChangeColorShade[#ChangeColorShade + 1] = base_true

  local add_true =
  {
    ["SPECIAL_KEY_WORDS"]  = {"WaterColourAdd","Colour.xml"},
    ["VALUE_CHANGE_TABLE"]  =
    {
      {"R",0.359},
      {"G",0.42},
      {"B",1}
    }
  }
  ChangeColorShade[#ChangeColorShade + 1] = add_true
end