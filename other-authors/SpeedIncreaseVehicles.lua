NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LightSpeedExocraft.pak",
["MOD_AUTHOR"]				= "Hahnsolo5314",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"100"}, 	-- Original "16"
								{"UnderwaterEngineMaxSpeed",	"100"} 	-- Original "15"		
							}
						}
					} --14 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED