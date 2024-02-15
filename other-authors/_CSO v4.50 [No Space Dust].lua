-- Clean Space Origins [No Space Dust] --


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v4.50 [No Space Dust].pak",
	["MOD_DESCRIPTION"]	= "No more space dust.",
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "2.61.1",		-- NMS version when first scripted
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
			

				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\ANIMATEDDUST\ANIMATEDDUST.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- no more space dust
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