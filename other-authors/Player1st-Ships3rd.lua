NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "Player1st-Ships3rd",
["MOD_DESCRIPTION"]	= "sets the player in 1st Person mode and ships/vehicles in 3rd person as defaults",
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
								{"ThirdPersonIsDefaultCameraForPlayer",	"false"},
								{"ThirdPersonIsDefaultCameraForShipAndVehicles",	"true"},
							}	
						},
					}
				},
			}
		},
	}
}