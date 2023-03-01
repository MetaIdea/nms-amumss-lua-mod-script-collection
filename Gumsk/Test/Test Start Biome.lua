Author = ""
ModName = "Start Biome"
ModNameSub = "Toxic to Lush"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {

				--Scanning
						{
							["PRECEDING_KEY_WORDS"] = "ValidStartPlanetBiome",
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Biome","Toxic"},
							["VALUE_CHANGE_TABLE"] = {
								{"Biome","Lush"},
							},
						},
					},
				},
			}
		}
	}
}