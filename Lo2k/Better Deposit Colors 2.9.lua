NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME 			= "Better Deposit Colors 2.9.pak", 
MOD_AUTHOR				= "Lo2k",
LUA_AUTHOR				= "Lo2k",
NMS_VERSION				= "7.0",
MOD_DESCRIPTION			= "This mod improves deposit substances aspects",
MODIFICATIONS 			= 
	{
		{
			MBIN_CHANGE_TABLE 	= 
			{ 
				{
					MBIN_FILE_SOURCE 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN"},
					MXML_CHANGE_TABLE 	= 
					{
				
						
						-- MAGNETIZED FERRITE 581
						{  
							SPECIAL_KEY_WORDS = {"ID", "LAND3"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/MAGNETDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "LAND3"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.57"},
								{"G", "0.57"},
								{"B", "0.57"},
							}
						},
						
						-- SILICATEPOWDER
						{  
							SPECIAL_KEY_WORDS = {"ID", "SAND1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SILICATEPOWDER.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "SAND1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.5"},  
								{"G", "0.5"},   
								{"B", "0.5"},   
							}
						},
						
						-- SODIUM 723
						{  
							SPECIAL_KEY_WORDS = {"ID", "CATALYST1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SODIUMDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "CATALYST1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "1.0"},
								{"G", "1.0"},
								{"B", "0.8"},
							}
						},
						
						-- COBALT 865
						{  
							SPECIAL_KEY_WORDS = {"ID", "CAVE1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COBALT.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "CAVE1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.1"},
								{"G", "0.4"},
								{"B", "0.7"},
							}
						},
						
						-- SALT 1007
						{  
							SPECIAL_KEY_WORDS = {"ID", "WATER1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "WATER1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.85"},
								{"G", "0.85"},
								{"B", "0.85"},
							}
						}, 
						
						-- COPPER 1220
						{  
							SPECIAL_KEY_WORDS = {"ID", "YELLOW2"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COPPERDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "YELLOW2"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.9"},
								{"G", "0.6"},
								{"B", "0.5"},
							}
						},
						
						-- CADMIUM 1291
						{  
							SPECIAL_KEY_WORDS = {"ID", "RED2"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM.SCENE.MBIN"},
							}
						}, 
						
						-- EMERIL 1362
						{  
							SPECIAL_KEY_WORDS = {"ID", "GREEN2"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "GREEN2"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.2"},
								{"G", "0.8"},
								{"B", "0.0"},
							}
						},
						
						-- PARAFFINIUM 1717
						{  
							SPECIAL_KEY_WORDS = {"ID", "LUSH1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PARAFDEBRIS.SCENE.MBIN"},
							}
						}, 
						
						-- AMMONIA 1857
						{  
							SPECIAL_KEY_WORDS = {"ID", "TOXIC1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/AMMONIA.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "TOXIC1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.75"},
								{"G", "1.0"},
								{"B", "0.75"},
							}
						},
						
						-- URANIUM 1930
						{  
							SPECIAL_KEY_WORDS = {"ID", "RADIO1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/URANIUM.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "RADIO1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.9"},
								{"G", "1"},
								{"B", "0"},
							}
						},
						
						-- DIOXITE 2001
						{  
							SPECIAL_KEY_WORDS = {"ID", "COLD1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/DIOXITE.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "COLD1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.6"},
								{"G", "0.85"},
								{"B", "1.0"},
							}
						},
						
						--  PHOSPHORUS 2072
						{  
							SPECIAL_KEY_WORDS = {"ID", "HOT1"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PHOSPHORUS.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "HOT1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.96"},
								{"G", "0.25"},
								{"B", "0.32"},
							}
						},
						
						-- SILVER	2640			
						{ 
							SPECIAL_KEY_WORDS = {"ID", "ASTEROID1"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.9"},
								{"G", "0.9"},
								{"B", "0.95"},
							}
						}, 
						
						-- GOLD 2711
						{  
							SPECIAL_KEY_WORDS = {"ID", "ASTEROID2"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/GOLD.SCENE.MBIN"},
							}
						}, 
						
						
						-- ACTIVATED COPPER 3137
						{  
							SPECIAL_KEY_WORDS = {"ID", "EX_YELLOW"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/ACTIVATEDCOPPER.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "EX_YELLOW"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "1.0"},
								{"G", "0.5"},
								{"B", "0.0"},
							}
						},
						
						-- ACTIVATED CADMIUM
						{  
							SPECIAL_KEY_WORDS = {"ID", "EX_RED"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM.SCENE.MBIN"},
							}
						}, 
						
						-- ACTIVATED EMERIL 3279
						{  
							SPECIAL_KEY_WORDS = {"ID", "EX_GREEN"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "EX_GREEN"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.2"},
								{"G", "0.8"},
								{"B", "0.0"},
							}
						},
						
						-- RUSTED METAL	4273				
						{  
							SPECIAL_KEY_WORDS = {"ID", "SPACEGUNK3"}, 
							PRECEDING_KEY_WORDS = {"DebrisFile"}, 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/RUSTEDDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							SPECIAL_KEY_WORDS = {"ID", "SPACEGUNK3"},
							PRECEDING_KEY_WORDS = {"WorldColour"},  
							INTEGER_TO_FLOAT = "FORCE",
							VALUE_CHANGE_TABLE 	= 
							{
								{"R", "0.8"},
								{"G", "0.3"},
								{"B", "0.0"},
							}
						}, 
					},
				},	
				{
                    ["MBIN_FILE_SOURCE"] =  --Copy+ rename debris and material scene files - thanks babscoole
                    {						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1\TERRAINDEBRISMAT.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD\TERRAINDEBRISMAT.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1\TERRAINDEBRISMAT.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS2.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS2\TERRAINDEBRISMAT1.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS\TERRAINDEBRISMAT1.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3\TERRAINDEBRISMAT2.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS4.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS4\TERRAINDEBRISMAT3.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER\TERRAINDEBRISMAT3.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1\TERRAINDEBRISMAT.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1\TERRAINDEBRISMAT.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM\TERRAINDEBRISMAT.MATERIAL.MBIN",},
						
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.SCENE.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS.SCENE.MBIN",},
						{"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1\TERRAINDEBRISMAT.MATERIAL.MBIN", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS\TERRAINDEBRISMAT.MATERIAL.MBIN",},
                    },
                },
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA"},
							},
						},				
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD\TERRAINDEBRISMAT.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS\TERRAINDEBRISMAT1.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN"},
							},
						},					
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER\TERRAINDEBRISMAT3.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM"},
							},
						},	
						{
							["SKW"] = {"Name", "MATERIAL"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM\TERRAINDEBRISMAT.MATERIAL.MBIN"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							VALUE_CHANGE_TABLE = 
							{
								{"Name",	"MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS"},
							},
						},	
						{
							SPECIAL_KEY_WORDS = {"Name", "MATERIAL"},		
							VALUE_CHANGE_TABLE = 
							{
								{"Value", "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS\TERRAINDEBRISMAT.MATERIAL.MBIN"},
							},
						},
					},
				},
				
				
				--EDIT MATERIALS DIFFUSE MAPS
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/ACTIVATEDCOPPER.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{			
						{
							["SKW"] = {"Name", "gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA.DDS"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{	
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{	
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD\TERRAINDEBRISMAT.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS\TERRAINDEBRISMAT1.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{	
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS.DDS"},  
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER\TERRAINDEBRISMAT3.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER.DDS"},  
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM\TERRAINDEBRISMAT.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM\.DDS"},
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS\TERRAINDEBRISMAT.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Name", "gDiffuseMap"},	
							VALUE_CHANGE_TABLE = 
							{
								{"Map", "TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS.DDS"},
							},
						},
					},
				},
			}
		}
	}	
}
