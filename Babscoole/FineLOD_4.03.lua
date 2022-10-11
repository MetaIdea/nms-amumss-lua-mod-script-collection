NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "_Fine_LOD_4.03.pak",
["MOD_AUTHOR"] = "Prof Horatio Hafnaugels",
["LUA_AUTHOR"] = "Babscoole",
["NMS_VERSION"] = "4.03",
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
								{"Value", ""} -- Original "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "1"} -- Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "0"} -- Original "2"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "0"} -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DisplayTime",},
							["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "0"} -- Original "1"
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
								{"AnimationScale",        "10"},  -- Original "50"
								{"TerrainFadeTime",       "1"},   -- Original "2"
								{"TerrainFadeTimeInShip", "1"},   -- Original "2"
								{"CreatureFadeTime",      "0.7"}, -- Original "1.5"
								{"FloraFadeTimeMin",      "1"}, -- Original "0.6"
								{"FloraFadeTimeMax",      "1.5"}  -- Original "2.25"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
							["SECTION_ACTIVE"] = {4,},
							["LINE_OFFSET"] = "+1",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "3"} -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
							["SECTION_ACTIVE"] = {4,},
							["LINE_OFFSET"] = "+2",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "3"} -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
							["SECTION_ACTIVE"] = {4,},
							["LINE_OFFSET"] = "+3",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "3"} -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
							["SECTION_ACTIVE"] = {4,},
							["LINE_OFFSET"] = "+4",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "3"} -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
							["SECTION_ACTIVE"] = {4,},
							["LINE_OFFSET"] = "+5",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "3"} -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlanetObjectSwitch",        "2100"},  -- Original "700"
								{"PlanetLodSwitch0",          "900"},   -- Original "300"
								{"PlanetLodSwitch0Elevation", "2100"},  -- Original "700"
								{"PlanetLodSwitch1",          "6000"},  -- Original "2000"
								{"PlanetLodSwitch2",          "30000"}, -- Original "10000"
								{"PlanetLodSwitch3",          "60000"}, -- Original "20000"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"EnvironmentPrimeProperties",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlanetObjectSwitch",        "6000"},  -- Original "2000"
								{"PlanetLodSwitch0",          "6000"},  -- Original "2000"
								{"PlanetLodSwitch0Elevation", "6000"},  -- Original "2000"
								{"PlanetLodSwitch1",          "6000"},  -- Original "2000"
								{"PlanetLodSwitch2",          "30000"}, -- Original "10000"
								{"PlanetLodSwitch3",          "60000"}, -- Original "20000"
							}
						},
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