NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Deposit Colors 1.6.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mod improves deposit substances aspects",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						-- ACTIVATED CADMIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_RED"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM.SCENE.MBIN"},
							}
						}, 
						
						-- ACTIVATED COPPER
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_YELLOW"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/ACTIVATEDCOPPER.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_YELLOW"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1.0"},
								{"G", "0.5"},
								{"B", "0.0"},
							}
						},
						
						-- ACTIVATED EMERIL
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_GREEN"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_GREEN"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.2"},
								{"G", "0.8"},
								{"B", "0.0"},
							}
						},
						
						-- AMMONIA
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "TOXIC1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/AMMONIA.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "TOXIC1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.75"},
								{"G", "1.0"},
								{"B", "0.75"},
							}
						},
						
						-- CADMIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "RED2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM.SCENE.MBIN"},
							}
						}, 
						
						-- COBALT
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "CAVE1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COBALT.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "CAVE1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.1"},
								{"G", "0.4"},
								{"B", "0.7"},
							}
						},
						
						-- COPPER
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "YELLOW2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COPPERDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "YELLOW2"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.9"},
								{"G", "0.6"},
								{"B", "0.5"},
							}
						},
						
						-- DIOXITE
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "COLD1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/DIOXITE.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "COLD1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.6"},
								{"G", "0.85"},
								{"B", "1.0"},
							}
						},
						
						-- GOLD 
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/GOLD.SCENE.MBIN"},
							}
						}, 
						
						
						-- EMERIL
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "GREEN2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "GREEN2"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.2"},
								{"G", "0.8"},
								{"B", "0.0"},
							}
						},
						
						-- MAGNETIZED FERRITE
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "LAND3"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/MAGNETDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "LAND3"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.57"},
								{"G", "0.57"},
								{"B", "0.57"},
							}
						},
						
						
						-- PARAFFINIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "LUSH1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PARAFDEBRIS.SCENE.MBIN"},
							}
						}, 
						
						--  PHOSPHORUS
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "HOT1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PHOSPHORUS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "HOT1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.96"},
								{"G", "0.25"},
								{"B", "0.32"},
							}
						},

						
						-- RUSTED METAL					
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK3"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/RUSTEDDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK3"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.8"},
								{"G", "0.3"},
								{"B", "0.0"},
							}
						}, 
						
						-- SALT
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "WATER1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS2.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "WATER1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.85"},
								{"G", "0.85"},
								{"B", "0.85"},
							}
						}, 
						
						-- SILVER				
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.9"},
								{"G", "0.9"},
								{"B", "0.95"},
							}
						}, 
						
						-- SODIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SODIUMDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1.0"},
								{"G", "1.0"},
								{"B", "0.8"},
							}
						},
						
						-- URANIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "RADIO1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/URANIUM.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "RADIO1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.9"},
								{"G", "1"},
								{"B", "0"},
							}
						},
					},
				},	
			}
		}
	}	
}
