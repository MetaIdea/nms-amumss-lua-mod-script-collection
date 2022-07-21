NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "BiggerVolcanoesByJST.pak",
["MOD_AUTHOR"]    = "JustSpaceThings",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.02",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"]  = 
							{
								{"MaxScale",  "7"}, -- Original "3"
								{"MaxScaleY", "3"}, -- Original "1"
							}
						}
					}
				}
			}
		}
	}	
}