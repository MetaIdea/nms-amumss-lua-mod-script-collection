-- Clean Space Origins [Invisible Trade Routes Lines] --


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v4.50 [Invisible Trade Routes Lines].pak",
	["MOD_DESCRIPTION"]	= "No more trade route lines in space.",
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "2.61.1",		-- NMS version when first scripted
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
			
			
				{
					["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- Stop the trade routes flickering, so they remain invisible when their Alpha Channel = 0
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TradeRouteFlickerAmp", 0},		-- Vanilla 0.01 // Mod default 0
							},

						},
						{
							-- Makes the trade route lines invisible by turning their Alpha Channel to 0
							["PRECEDING_KEY_WORDS"] = {"TradeRouteColours"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"A", 0},						-- Vanilla 0.02 // Mod default 0
							},

						},
					},
				},
	
				
			},
		},
	},
}