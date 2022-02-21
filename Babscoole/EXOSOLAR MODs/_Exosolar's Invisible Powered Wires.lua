NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_Exosolar's Invisible Powered Wires.pak",
	["MOD_AUTHOR"]		= "Exosolar",
	["LUA_AUTHOR"]		= "Babscoole",	
	["MOD_DESCRIPTION"]	= "Makes powered wires invisible",
	["NMS_VERSION"]		= "3.81",	
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\CONDUIT_PIPE\POWERFIELD_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Uniforms"},
							["INTEGER_TO_FLOAT"] = "FORCE",									
							["VALUE_CHANGE_TABLE"] = 
							{
								{"z", "0.85"},
								{"t", "0"},
							}
						},				
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\CONDUIT_PIPE\ONCABLEMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Class", "Transparent"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Uniforms"},
							["INTEGER_TO_FLOAT"] = "FORCE",									
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0.067"},
								{"y", "0.067"},
								{"z", "0.067"},								
							}
						},						
					},
				},				
			},
		},
	},
}