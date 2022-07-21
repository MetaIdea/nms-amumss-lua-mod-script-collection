NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Ship Seat 1.9.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.94",
["MOD_DESCRIPTION"]			= "This mod changes first person ship camera to be able to view all ship monitors",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"FirstPersonInShipCamOffset"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"0"},		-- original 2.45
								{"z",	"-0.15"},	-- original 0.5
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShipFoVMin",	"90"},	-- original 75
								{"ShipFoVMax",	"95"},  -- original 90
								{"ShipWarpFoV",	"90"},  -- original 70
							},
						},				
					}
				}
			}
		}
	}	
}