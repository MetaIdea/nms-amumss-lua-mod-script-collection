NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Dihydrogen Crystals 1.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "5.02",
["MOD_DESCRIPTION"]			= "This mod slightly changes blue dihydrogen crystals",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{    			
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_MOUNTAIN\CRYSTAL_LARGE.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/BIGCRYSTAL.BLUE.DDS"}}
                            --ORG LARGECRYSTAL.BLUE.DDS                          
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_MOUNTAIN\ICEFORMATION_MAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/SMALLCRYSTAL.BLUE.DDS"}}
                            --ORG MEDIUMCRYSTAL.BLUE.DDS                          
						},
                    },
                },
				{
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_MOUNTAIN\ICEFORMATION_MAT1.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_MOUNTAIN\ICEFORMATION_MAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/FRAGCRYSTAL.BLUE.DDS"}}
                            --ORG SMALLCRYSTAL.BLUE.DDS                          
						},
                    },
                },
			}
		}
	}	
}