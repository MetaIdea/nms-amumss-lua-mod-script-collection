OVERRIDE = {
"U_PORTALLINE",
"U_BYTEBEATLINE"
}

OVERRIDE2 = {
"U_PARAGON",
"SET_CONSTRUCT",
"SET_MAYORTERM",
"SET_GROUNDDECAL",
"SET_SFXCONST_S0",
"SET_MONUMENT",
"SET_MONUMENT_FA",
"SET_T_MONU",
"SET_T_MONU_FA",
"SET_F_MONU",
"SET_F_MONU_FA",
"SET_S_TOWER",
"SET_S_TOWER_FA",
"PIPESHAPE",
"CURVEPIPESHAPE"
}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_______KibblesNBytes-4.6.0.pak", 
["MOD_AUTHOR"]				= "InstaKibs",
["NMS_VERSION"]				= "4.6+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{				
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IsPlaceable", "True"},
								{"BuildableOnPlanetBase", "True"},
								{"BuildableOnSpaceBase", "True"},
								{"BuildableOnFreighter", "True"},
								{"BuildableUnderwater", "True"},
								{"BuildableAboveWater", "True"},
								{"PlanetLimit", 0},
								{"RegionLimit", 0},
								{"PlanetBaseLimit", 0},
								{"FreighterBaseLimit", 0},
								{"CheckPlaceholderCollision", "False"},
								{"CanRotate3D", "True"},
								{"CanScale", "True"},
								{"CanChangeColour", "True"},
								{"CanChangeMaterial", "True"},
								{"DependsOnEnvironment", "None"},
								{"RemovesAttachedDecoration", "False"},
								{"GhostsCountOverride", "1"}
							}
						}
					}
				}
			}
		}	
	}
}
local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

--Required as scaling or changing color can cause issues

for i=1,#OVERRIDE do
	local value = OVERRIDE[i]
	local temp_table =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", value},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"CanRotate3D", "False"},
			{"CanScale", "False"},
			{"CanChangeColour", "False"}
        }
	}
	Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end

--Required as these parts are not meant to be placeable

for i=1,#OVERRIDE2 do
	local value = OVERRIDE2[i]
	local temp_table =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", value},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"BuildableOnPlanetBase", "False"},
			{"BuildableOnSpaceBase", "False"},
			{"BuildableOnFreighter", "False"}
        }
	}
	Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end