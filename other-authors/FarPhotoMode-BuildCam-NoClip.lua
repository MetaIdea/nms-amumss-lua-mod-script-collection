NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SuperFarBuildCam-PhotoMode-with-NoClip.pak",
["MOD_AUTHOR"]				= "MikePixelPusher",
["NMS_VERSION"]				= "5.1.1",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PhotoModeMoveSpeed",			"20"}, 			-- Original "10"
								{"PhotoModeMaxDistance",		"10000"},	-- Original "100" --This will generate a WARNING
								{"PhotoModeMaxDistanceSpace",	"10000"},	-- Original "200" --This will generate a WARNING
								{"PhotoModeMaxDistance",		"90000"},	-- Original "100"
								{"PhotoModeMaxDistanceSpace",	"90000"},	-- Original "200"
								{"PhotoModeCollisionRadius",	"-0.5"}, 			-- Original "0.5"
								{"BuildingModeMaxDistance",     "50000"}, -- Original "60"
								
							}
						},
					} --6 global replacements
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE