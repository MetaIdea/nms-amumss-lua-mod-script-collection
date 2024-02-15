-- Clean Space Origins [No Speed Lines] --


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v4.50 [No Speed Lines].pak",
	["MOD_DESCRIPTION"]	= "No more speed lines at cruise/boost/pulse speed in space.",
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "2.61.1",		-- NMS version when first scripted
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
			

				{
					["MBIN_FILE_SOURCE"] = 
					{
						"MODELS\EFFECTS\LINES\SPEEDLINEMATERIAL.MATERIAL.MBIN",
						"MODELS\EFFECTS\LINES\SPEEDLINE2MATERIAL.MATERIAL.MBIN",
						"MODELS\EFFECTS\LINES\SPEEDLINE3MATERIAL.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- no more speed lines
							["SPECIAL_KEY_WORDS"] = {"Name", "Line"},
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