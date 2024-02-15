-- Clean Space Origins [No Pulsating Plasma] --


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v4.50 [No Pulsating Plasma].pak",
	["MOD_DESCRIPTION"]	= "No more pulsating plasma in space.",
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "2.61.1",		-- NMS version when first scripted
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
			

				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\PLASMA\PLASMA.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- no more pulsating plasma in space
							["SPECIAL_KEY_WORDS"] = {"Name", "AnimatedSmokeMat"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Class", ""},
							},

						},
					},
				},
				
				
			},
		},
	},
}