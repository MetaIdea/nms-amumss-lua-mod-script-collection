NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "FuckPlanetPulseLimit.pak",
-- ["MOD_BATCHNAME"]		= "~~GalaxySFlightUltra_COMPATIBILITY.pak",
["MOD_DESCRIPTION"]		= "Makes ships faster",
["MOD_AUTHOR"]			= "WinderTP, with references from JovianStone",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= {
					{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpPlanetRadius",				"NaN"},		
							}
						}
					}
				}
			}
		}
	},
}