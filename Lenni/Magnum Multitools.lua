Scale = "0.75"		-- This influences the size. Original: "1"


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Magnum Multitools.pak",
["MOD_AUTHOR"]				= "SPDX",
["LUA_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.84",

["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 	{
													"MODELS\COMMON\WEAPONS\MULTITOOL\MULTITOOL.SCENE.MBIN",
													"MODELS\COMMON\WEAPONS\MULTITOOL\ROYALMULTITOOL.SCENE.MBIN",
												},
					["EXML_CHANGE_TABLE"] 	= 
					{
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "GunRoot", "Transform", "TkTransformData.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = 1,
							["VALUE_CHANGE_TABLE"]	= 
							{
								{ "ScaleX", Scale },
								{ "ScaleY", Scale },
								{ "ScaleZ", Scale },
							},
                        },
					},
				},
			}
		}
	}	
}