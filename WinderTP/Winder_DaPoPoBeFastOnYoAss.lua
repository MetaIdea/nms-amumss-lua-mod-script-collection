MIN_MULTIPLIER = 1
MAX_MULTIPLIER = 7.5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "DaPoPoBeFastOnYoAss.pak",
["MOD_BATCHNAME"]		= "~~~DaPoPoBeFastOnYoAss_COMPATIBILITY.pak",
["MOD_DESCRIPTION"]		= "Spawns MORE sentinels",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.90",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount",	MIN_MULTIPLIER},
								{"MaxAmount",	MAX_MULTIPLIER},
							}
						},
					},
				}
			}
		}
	},
}