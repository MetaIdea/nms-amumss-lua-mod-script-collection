NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "StarshipWarpExpander",
["MOD_AUTHOR"]		= "GMF",
["NMS_VERSION"]		= "3.0",
["MOD_DESCRIPTION"]	= "Increase Starship warp distance",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"10000"}		-- Original "100"   
							}
						
						}
					}
				}	
			}
		}
	}	
}