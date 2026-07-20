NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "Ships 3rd Person",
["MOD_DESCRIPTION"]	= "sets ships and vehicles in 3rd person mode as the default",
["MOD_AUTHOR"]			= "GreyMtnFox",
["NMS_VERSION"]			= "6.40",
["MODIFICATIONS"] 	=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"GCDEBUGOPTIONS.GLOBAL.MBIN"},
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ThirdPersonIsDefaultCameraForShipAndVehicles",	"true"},
							}	
						},
					}
				},
			}
		},
	}
}