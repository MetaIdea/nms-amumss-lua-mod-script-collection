NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoShadows.pak",
["MOD_AUTHOR"]		= "Wombi",
["LUA_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.93",
["MOD_DESCRIPTION"]	= "Removes shadows",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "ShadowMapSize", 						"0" }, 		--Original "1024"
								{ "ShadowLength", 						"0" }, 		--Original "400"
								{ "ShadowLengthShip", 					"0" }, 		--Original "1200"
								{ "ShadowLengthSpace", 					"0" }, 		--Original "20000"
								{ "ShadowLengthStation", 				"0" }, 		--Original "1300"
								{ "ShadowLengthFreighterAbandoned", 	"0" }, 		--Original "2500"
								{ "ShadowLengthCameraView", 			"0" }, 		--Original "1300"
								{ "ShadowLengthFreighterAbandoned", 	"0" }, 		--Original "1300"
							}
						}
					}
				}
			}
		}
	}	
}	
