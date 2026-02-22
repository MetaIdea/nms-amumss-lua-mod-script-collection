--[[ Pellet
NoiseGridType possible values
Cube, Cone, Torus, Sphere, Cylinder, Capsule, Corridor, Pipe, Puck, SuperPrimitiveRandom, SuperFormula_01, SuperFormula_02, SuperFormula_03, SuperFormula_04, SuperFormula_05, SuperFormula_06, SuperFormula_07, SuperFormula_08, SuperFormulaRandom, SuperFormula, SuperPrimitive, File
--]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Unpredictable Deposits.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.23",
["MOD_DESCRIPTION"]			= "This mod creates more varied resource deposits",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{  -- half buried hemisphere
							["PRECEDING_KEY_WORDS"] = {"Resources_Heridium",},  -- Copper + Emeril + Indium + Activated Indium
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoiseGridType", "Sphere"},
								{"MinWidth",	"10"},
								{"MaxWidth",	"14"},
								{"MinHeight",	"12"},
								{"MaxHeight",	"18"},
								{"MinHeightOffset",	"-10"}, -- -18
								{"MaxHeightOffset",	"-2"}, -- -10
								{"HeightOffset",	"0"},
							}
						}, 
						{  -- half buried cubic stick
							["PRECEDING_KEY_WORDS"] = {"Resources_Iridium",},  -- silver + gold + uranium + phosphorus + dioxite + ammonia + Pyrite + Paraffinium
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoiseGridType", "Cylinder"},
								{"MinWidth",	"15"},
								{"MaxWidth",	"18"},
								{"MinHeight",	"15"},
								{"MaxHeight",	"15"},
								{"MinHeightOffset",	"-15"},
								{"MaxHeightOffset",	"-10"},
								{"HeightOffset",	"0"},
							}
						}, 
						{  -- surface cubic plate
							["PRECEDING_KEY_WORDS"] = {"Resources_Gold",},  -- Cobalt + magnetized ferrite + salt + sodium
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoiseGridType", "Cube"},
								{"MinWidth",	"10"},
								{"MaxWidth",	"12"},
								{"MinHeight",	"20"},
								{"MaxHeight",	"22"},
								{"MinHeightOffset",	"-15"},
								{"MaxHeightOffset",	"-5"},
								{"HeightOffset",	"0"},  -- -10
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Resources_Copper",},  
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoiseGridType", "Cube"},
								{"MinWidth",	"20"},
								{"MaxWidth",	"40"},
								{"MinHeight",	"40"},
								{"MaxHeight",	"40"},
								{"MinHeightOffset",	"0"},
								{"MaxHeightOffset",	"0"},
								{"HeightOffset",	"-5"},
							}
						}, 
						{
							["PRECEDING_KEY_WORDS"] = {"Resources_Nickel",},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoiseGridType", "Sphere"},
								{"MinWidth",	"20"},
								{"MaxWidth",	"40"},
								{"MinHeight",	"40"},
								{"MaxHeight",	"40"},
								{"MinHeightOffset",	"0"},
								{"MaxHeightOffset",	"0"},
								{"HeightOffset",	"-5"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Resources_Aluminium",},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoiseGridType", "Cube"},
								{"MinWidth",	"5"},
								{"MaxWidth",	"5"},
								{"MinHeight",	"40"},
								{"MaxHeight",	"40"},
								{"MinHeightOffset",	"-10"},
								{"MaxHeightOffset",	"10"},
								{"HeightOffset",	"0"},
							}
						}, 
						{
							["PRECEDING_KEY_WORDS"] = {"Resources_Emeril",}, 
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoiseGridType", "Cube"},
								{"MinWidth",	"40"},
								{"MaxWidth",	"60"},
								{"MinHeight",	"40"},
								{"MaxHeight",	"40"},
								{"MinHeightOffset",	"0"},
								{"MaxHeightOffset",	"0"},
								{"HeightOffset",	"-5"},
							}
						},
					},
				}	
			}
		}
	}	
}
