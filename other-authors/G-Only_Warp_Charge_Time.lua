NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]			= "G-Only_Warp_Charge_Time.pak",
["MOD_AUTHOR"]				= "Strange7",
["LUA_AUTHOR"]				= "Strange7",
["NMS_VERSION"]				= "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]			= 
{
	{
		["MBIN_CHANGE_TABLE"] =
		{
			{
				["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
				["EXML_CHANGE_TABLE"] =
				{
					{
						["VALUE_CHANGE_TABLE"] =
						{
							{"MiniWarpChargeTime",                  "0.5"},		--Original "2"
						}
					}
						}
					}
				}
			}
		}	
}
