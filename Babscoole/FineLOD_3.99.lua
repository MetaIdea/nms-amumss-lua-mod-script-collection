NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "_Fine_LOD_399.pak",
["MOD_AUTHOR"] = "Prof Horatio Hafnaugels",
["LUA_AUTHOR"] = "Babscoole",
["NMS_VERSION"] = "3.99",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value","TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", ""}, -- Original "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "1"}, -- Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "0"}  -- Original "2"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "0"}  -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "0"}  -- Original "1"
							}
						},
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"AnimationScale", "10"}, -- Original "50"
								{"TerrainFadeTime", "1"}, -- Original "2"
								{"TerrainFadeTimeInShip", "1"}, -- Original "2"
								{"CreatureFadeTime", "0.7"}, -- Original "1.5"
								{"FloraFadeTimeMin", "0.3"}, -- Original "0.6"
								{"FloraFadeTimeMax", "1.1"}  -- Original "2.25"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"ForceUncachedTerrain", "True"} -- Original "False"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "GCWATERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"WaveHeight", "-0.2"} -- Original "1.5"
							}
						}
					}
				}
			}
		}
	}
}