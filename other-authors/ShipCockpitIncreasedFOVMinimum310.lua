NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "ShipCockpitIncreasedFOVMinimum310.pak",
["MOD_AUTHOR"]		= "zinfinion",
["NMS_VERSION"]		= "3.10+",
["MOD_DESCRIPTION"]	= "Increases the ship cockpit FOV minimum, fixing the zoomed FOV that makes some displays awkward to see when landed or in slow flight",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "ShipFoVMin", 						"90" }, 	--Original "75"
								{ "ShipFoVMin2", 						"75" }, 	--Original "75"
								{ "ShipFoVMax", 						"95" }, 	--Original "90"
								{ "ShipFoVBoost", 						"105" }, 	--Original "105"
								{ "ShipFoVMiniJump", 					"110" }, 	--Original "110"
							}
						}
					}
				}
			}
		}
	}	
}	
