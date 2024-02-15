-- Clean Space Origins [No Metrics Lines] --


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v4.50 [No Metrics Lines].pak",
	["MOD_DESCRIPTION"]	= "No more white lines in front of the ship at pulse speed.",
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "3.10",		-- NMS version when first scripted
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
			

				{
					["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MiniWarpLinesNum", 0}, -- Vanilla = 4
							},

						},
					},
				},
				
				
			},
		},
	},
}