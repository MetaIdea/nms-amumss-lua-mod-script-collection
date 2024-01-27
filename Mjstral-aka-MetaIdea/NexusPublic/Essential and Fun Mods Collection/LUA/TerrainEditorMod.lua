--UNFINISHED - EXPERIMENT
--MAYBE "WHAT NOT TO DO"

TerrainEditBeamMaxRange_Multiply = 3
TerrainEditCostFactor 		 = 0  --zero cost

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TerrainEditSize+RangeIncrease+ZeroCost.pak",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCTERRAINGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"TerrainEditing","SubtractSizes",},
							["LINE_OFFSET"] 		    = "+3",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",			"4.0"	}, -- Original "3.2"
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TerrainEditing","UndoEditSizes",},
							["LINE_OFFSET"] 		    = "+2",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",			"4.0"		}, -- Original "1.2"
							}	
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TerrainEditBeamMaxRange",			TerrainEditBeamMaxRange_Multiply	}, 		-- Original "40"
								{"TerrainEditsNormalCostFactor",	TerrainEditCostFactor			}, 		-- Original "0.4"
								{"TerrainEditsSurvivalCostFactor",	TerrainEditCostFactor			}, 		-- Original "2"
							}	
						}
					} --5 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
