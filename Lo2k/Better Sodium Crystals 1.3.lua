NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Sodium Crystals 1.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.01",
["MOD_DESCRIPTION"]			= "This mod slightly changes yellow sodium crystals",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{    			
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_UNDERWATER\CRYSTAL_LARGE.MATERIAL.MBIN"},
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/BIGCRYSTAL.YELLOW.DDS"}}
                            --ORG LARGECRYSTAL.YELLOW.DDS                          
						},
                    },
                },
				{
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_UNDERWATER\ICEFORMATION_MAT.MATERIAL.MBIN",
											 "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_UNDERWATER\ICEFORMATION_MAT.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_UNDERWATER\ICEFORMATION_MAT.MATERIAL.MBIN"},
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/SMALLCRYSTAL.YELLOW.DDS"}}
                            --ORG SMALLCRYSTAL.YELLOW.DDS                          
						},
                    },
                },
			}
		}
	}	
}