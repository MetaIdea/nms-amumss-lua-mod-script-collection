NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoObjectGlowOnFocus.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "2.24",
["MOD_DESCRIPTION"]			= "Remove white glow around objects when focusing it (especially for VR immersion)",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]		= "ALL",						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1.0"},
								{"G",	"0.0"},
								{"B",	"0.0"},
								{"A",	"1.0"},								
							}
						}
					}
				}
			}
		}
	}	
}