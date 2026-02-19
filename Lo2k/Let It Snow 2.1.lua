NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Let It Snow 2.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.22",
["MOD_DESCRIPTION"]			= "This mod adds real snow crystals",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{    			
				{
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\EFFECTS\COMMON\MATERIALS\SNOW.MATERIAL.MBIN",},
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\PARTICLES\SNOW2.DDS"}
							}                        
						},
                    },
                },
				{
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\EFFECTS\HEAVYAIR\SNOW\SNOW1.HEAVYAIR.MBIN",},
					["MXML_CHANGE_TABLE"] = 
					{
						{
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Material", "MODELS/EFFECTS/COMMON/MATERIALS/SNOW.MATERIAL.MBIN"},
								{"Number Of Particles", "15000"},
								{"Radius", "40"},
								{"RadiusY", "25"},
								{"Min Particle Lifetime", "10"},
								{"Max Particle Lifetime", "10"},
							},                        
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", "0"},
								{"Y", "-0.9"},
								{"Z", "0.3"},
							}                        
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", "0.05"},
								{"Y", "0.1"},
								{"Z", "0.15"},
							}                        
						},		
						{
							["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", "-0.2"},
								{"Y", "-0.2"},
								{"Z", "-0.2"},
							}                        
						},	
						
						{
							["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", "0.2"},
								{"Y", "0.2"},
								{"Z", "0.2"},
							}                        
						},					
						{
							["PRECEDING_KEY_WORDS"] = {"Colour 1"},
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.809"},
								{"G", "0.985"},
								{"B", "1.0"},
								{"A", "0.8"},
							}                        
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"Colour 2"},
                            ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.709"},
								{"G", "0.885"},
								{"B", "0.9"},
								{"A", "0.8"},
							}                        
						},						
                    },  
                },
			}
		}
	}	
}