NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]    = "Sleepless Night.pak",
	["MOD_AUTHOR"]      = "Degraaaff, KuroPeach",
	["LUA_AUTHOR"]      = "Lo2k, KuroPeach",
	["NMS_VERSION"]     = "5.20",
	["MOD_DESCRIPTION"] = "This mods changes night lighting like dusk",
	["MODIFICATIONS"]   = {
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\NIGHTSKYCOLOURS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = { "SkyColour" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "0.682" },
								{ "G", "0.583" },
								{ "B", "0.538" },
								{ "A", "1" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "SkyUpperColour" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "0.612" },
								{ "G", "0.782" },
								{ "B", "0.977" },
								{ "A", "1" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "HorizonColour" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "1" },
								{ "G", "0.726" },
								{ "B", "0.627" },
								{ "A", "1" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "FogColour" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "0.35" },
								{ "G", "0.322" },
								{ "B", "0.191" },
								{ "A", "1" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "HeightFogColour" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "0.987" },
								{ "G", "0.767" },
								{ "B", "0.681" },
								{ "A", "1" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "LightColour" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "0.943" },
								{ "G", "0.579" },
								{ "B", "0.452" },
								{ "A", "1" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "CloudColour1" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "0.073" },
								{ "G", "0.219" },
								{ "B", "0.396" },
								{ "A", "1" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "CloudColour2" },
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"]  =
							{
								{ "R", "0.027" },
								{ "G", "0.298" },
								{ "B", "0.498" },
								{ "A", "1" },
							}
						},
					}
				}
			}
		}
	}
}
