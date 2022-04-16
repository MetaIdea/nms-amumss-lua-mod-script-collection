NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlimitedShipHyperdriveRange.pak",
["MOD_AUTHOR"]				= "Ralkeon",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"1000000"}, 	-- Original "100"
							}
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","WARP_ALIEN",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"1000000"}, 	-- Original "100"
							}
						},
					} --5 global replacements
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE