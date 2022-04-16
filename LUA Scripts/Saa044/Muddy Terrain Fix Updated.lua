NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Muddyterrainfix.pak",
["MOD_AUTHOR"]		= "Rayrod",
["NMS_VERSION"]		= "2.0+",
["MOD_DESCRIPTION"]	= "",
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
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "TerrainAnisoHi", 					"90000" }, 	--Original "4"
								{ "TerrainAnisoUlt", 					"90000" }, --Original "8"
								{ "TerrainDroppedMipsLow", 				"0" }, 		--Original "1"
								{ "TerrainDroppedMipsMed", 				"0" }, 		--Original "1"
								{ "TerrainMipBiasLow", 					"0" }, 		--Original "0.5"
								{ "TerrainBlocksPerFrameLow", 			"90000" }, --Original "16"
								{ "TerrainBlocksPerFrameMed", 			"90000" }, --Original "24"
								{ "TerrainBlocksPerFrameHi", 			"90000" }, --Original "48"
								{ "TerrainBlocksPerFrameUlt", 			"90000" }, --Original "64"
								{ "TerrainBlocksPerFramePs430", 		"90000" }, --Original "192"
								{ "TerrainBlocksPerFramePs460", 		"90000" }, --Original "96"
								{ "TerrainBlocksPerFrameXb130", 		"90000" }, --Original "192"
								{ "TerrainBlocksPerFrameXb160", 		"90000" }, --Original "96"
								{ "TerrainBlocksPerFrameOberon", 		"90000" }, --Original "192"
								{ "EnableTerrainCachePs4Base", 			"False" }, 	--Original "True"
								{ "EnableTerrainCachePs4Pro", 			"False" }, 	--Original "True"
								{ "EnableTerrainCacheXb1X", 			"False" }, 	--Original "True"
								{ "ForceUncachedTerrain", 				"True" }, 	--Original "False"
							}
						}
					}
				}
			}
		}
	}	
}	
