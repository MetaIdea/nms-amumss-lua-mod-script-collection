NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_StandLightBright_v3641.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.91",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"150.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"30000.000000"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"150.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"30000.000000"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"20000.000000"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\EXTERIORPROPS\FLOODLIGHTS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","spotLight1",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"RotX",		"-3.1797523"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","spotLight1","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"90.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","spotLight1","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","spotLight1","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"25000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1",},
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] =
							{
								{"RotX",		"-3.17975"},
								{"RotY",		"180"},
								{"RotZ",		"180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"150.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value",		"12000.000000"},
							}
						},
					}
				},
			}
		}
	},
}