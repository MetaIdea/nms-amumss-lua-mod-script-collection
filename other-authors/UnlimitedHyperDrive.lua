NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlimitedHyperDrive.pak",
["MOD_AUTHOR"]				= "Striker0420",
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
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"1000000"}, 	-- Original "100"
							}
						},
					}
				},
			}
		}
	}	
}