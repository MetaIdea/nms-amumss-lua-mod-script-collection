NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "No High Clouds 2.4.pak", 
["MOD_AUTHOR"]      = "Lo2k",
["LUA_AUTHOR"]      = "Lo2k",
["NMS_VERSION"]     = "4.65",
["MOD_DESCRIPTION"] = "Disables High altitude clouds as seen from the ground or low atmosphere",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{ 
					["MBIN_FILE_SOURCE"]  = "SHADERS\CLOUD.SHADER.BIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    DefaultTexture = SHADER/CLOUDSHIGHRGB.DDS;]], 
									[[    DefaultTexture = SHADER/CLOUDSHIGHRGB2.DDS;]]
								},
							}
						},
					}
				},
			}
		},
	}
}

