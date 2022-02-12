NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PhaseBeamAutoAim.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.2",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F3D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Laser"},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"AutoAimAngle",		3},
								{"AutoAimExtraAngle",   15},
							}
						},
						--[[{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Minigun"},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"AutoAimAngle",		0},
								{"AutoAimExtraAngle",   0},
							}
						},]]
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE