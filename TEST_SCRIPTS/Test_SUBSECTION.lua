--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "MyScript.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
              COMMENT = "will select ONLY one section using OR(default), line ~91694",
              ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingGroup.xml"}, -- NOT stricly needed in this case, but useful to generate lots of sections for testing
              WISS =
              {
                  {"Id","DECOFOLIAGE",}, --will select only one section
                  --{"Name","UI_BUILD_GRID_FOLIAGE",},
              },
              -- ["REPLACE_TYPE"]    = "ALL", -- NOT needed, WISS make it ALL automatically.  One change per section that is selected by the KW
              ["VALUE_CHANGE_TABLE"]     = 
              {
                  {"Name", "Butt"}, --replace the original: UI_BUILD_GRID_FOLIAGE
              },
            },
            
						{
              COMMENT = "will select ONLY one section, the same one using AND",
              ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingGroup.xml"}, -- NOT stricly needed in this case, but useful to generate lots of sections for testing
              WISS =
              {
                  {"Id","DECOFOLIAGE",},
                  {"Name","Butt",}, --will select only one section, the same one
              },
              ["WISUBSEC_LOP"] = "AND",
              -- ["REPLACE_TYPE"]    = "ALL", -- NOT needed, WISS make it ALL automatically.  One change per section that is selected by the KW
              ["VALUE_CHANGE_TABLE"]     = 
              {
                  {"Name", "UI_BUILD_GRID_FOLIAGE"}, --the original is back
              },
            },
            
						{
              COMMENT = "will NOT select that same sub-section using NOR but all the others",
              -- PKW NOT stricly needed in this case, but useful to generate lots of sections for testing
              --   otherwise, only one section is evaluate
              ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingGroup.xml"},
              WISS =
              {
                  {"Id","DECOFOLIAGE",},
                  {"Name","UI_BUILD_GRID_FOLIAGE",},
              },
              ["WISUBSEC_LOP"] = "NOR",
              -- ["REPLACE_TYPE"]    = "ALL", -- NOT needed, WISS make it ALL automatically.  One change per section that is selected by the KW
              ["VALUE_CHANGE_TABLE"]     = 
              {
                  {"Name", "UI_BUILD_GRID_FOLIAGE"}, --the original is back
              },
            },
            
						{
              COMMENT = "will not select a section, BAD NAME using AND",
              ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingGroup.xml"}, -- NOT stricly needed in this case, but useful to generate lots of sections for testing
              WISS =
              {
                  {"Id","DECOFOLIAGE",},
                  {"Name","UI_BUILD_GRID_FOLIAGE_X",}, --will not select a section, BAD NAME
              },
              ["WISUBSEC_LOP"] = "AND",
              -- ["REPLACE_TYPE"]    = "ALL", -- NOT needed, WISS make it ALL automatically.  One change per section that is selected by the KW
              ["VALUE_CHANGE_TABLE"]     = 
              {
                  {"Name", "Butt"}, --try to replace the original: UI_BUILD_GRID_FOLIAGE
              },
            },
					}
				},
			}
		},
	} --20 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
