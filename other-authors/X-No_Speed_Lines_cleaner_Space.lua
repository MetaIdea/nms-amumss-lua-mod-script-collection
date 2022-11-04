NMS_MOD_DEFINITION_CONTAINER = 
NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "X-No Speed Lines cleaner Space.pak", 
	["MOD_AUTHOR"]		= "Personal",
	["NMS_VERSION"]		= "3.99",	-- NMS version when first scripted
	["MOD_DESCRIPTION"]	= "No Speed Lines cleaner Space",
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
		}
	}	
}
