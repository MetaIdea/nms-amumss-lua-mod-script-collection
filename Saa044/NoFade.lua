NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoFade.pak",
["MOD_AUTHOR"]		= "",
["NMS_VERSION"]		= "2.0+",
["MOD_DESCRIPTION"]	= "",
["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "TerrainFadeTime", 					"0" }, 		--Original "2"
								{ "TerrainFadeTimeInShip", 				"0" }, 		--Original "2"
								{ "CreatureFadeTime", 					"0" }, 		--Original "1.5"
								{ "FloraFadeTimeMin", 					"0" }, 		--Original "0.6"
								{ "FloraFadeTimeMax", 					"0" }, 		--Original "2.25"
							}
						}
					}
				}
			}
		}
	}	
}	
