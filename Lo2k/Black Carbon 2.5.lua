NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Black Carbon 2.5.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lowkie (+ Lo2k)",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "This mod makes carbon black",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{    
                {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
					["EXML_CHANGE_TABLE"] = 
                    {
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Fuel"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.14"},
								{"G",	"0.14"},  
								{"B",	"0.14"},  
							}	
						},
                    },
                },			
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\EFFECTS\DEBRIS\RESOURCEDEBRIS.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
                    {
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "5000.0"},  --ORG "10000.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.8"},  --ORG "1.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.5"},  --ORG "0.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_B"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.0"},  --ORG "0.031298"  
                            },
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\EFFECTS\DEBRIS\RESOURCEDEBRIS\GEMTHINGS_MINERALMAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/CRYSTAL/LARGEPROP/MINERAL2.BASE.DDS"}}
                            --ORG MINERAL1.BASE.DDS                            
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.4"},  --ORG "1.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.15"},  --ORG "0.220675"  
                            },
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\CRYSTAL_LARGE.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/LARGECRYSTAL2.RED.DDS"}}
                            --ORG LARGECRYSTAL.RED.DDS                          
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.8"},  --ORG "1.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.5"},  --ORG "0.220675"  
                            },
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM\ICEFORMATION_MAT.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT\ICEFORMATION_MAT.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL\ICEFORMATION_MAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL2.RED.DDS"}}
                            --ORG MEDIUMCRYSTAL.RED.DDS                          
						},
                    },
                },
			}
		}
	}	
}