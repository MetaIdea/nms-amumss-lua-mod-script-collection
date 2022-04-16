-- unfinished

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LongerAndThickerGalaxyLines.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\EFFECTS\LINES\LINERENDERERGALAXY.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--{
							--["PRECEDING_KEY_WORDS"] = "MATERIAL",
							--["VALUE_CHANGE_TABLE"] 	= {{"Value",	"MATERIALS/GALAXYLINE3D.MATERIAL.MBIN"}} -- Original "MATERIALS/LINE3D.MATERIAL.MBIN"
						--},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MAXNUMLINES",},
							["VALUE_CHANGE_TABLE"] 	= {{"Value",	"1024"}} -- Original "512"
						}
					}
				}				
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MATERIALS\LINE3D.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= {{"Shader",	"SHADERS/LINE3D.SHADER.BIN"}} -- Original "SHADERS/LINE3D.SHADER.BIN" 
                    -- You need to create a "SHADERS/GALAXYLINE3D.SHADER.BIN" (or whatever you want as name) and change this value
						}					
					}
				}				
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PathUIWidth",									"4.5"}, 	-- Original "4.5"
								{"StarPathUIWidth",								"3"},		-- Original "3"
								{"GalacticPathMaximumJumpDistanceLightyears",	"209"}, 	-- Original "209"
								{"GalacticPathPreferGuideStarsTillJump",		"10"},		-- Original "10"
								{"PathUISlotRadiusInner", 						"6"},  		-- Original "6"
								{"PathUISlotRadiusOuter", 						"10"},  	-- Original "10"
								{"PathUISlotRadiusRing", 						"14"}	  	-- Original "14"							
							}
						}
					}
				}
			}
		}		
	}	 --9 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE