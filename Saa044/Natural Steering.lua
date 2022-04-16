NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Natural Steering.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.52",
["MOD_DESCRIPTION"]			= "This mods uncouples mouse view from steering",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"VehicleAltControlScheme",	"True"},  
								--{"VehicleAltControlStickSmoothInTime", "1"},
								--{"VehicleAltControlStickSmoothOutTime", "0.2"},
							},
						},
					}
				}
			}
		}
	}	
}