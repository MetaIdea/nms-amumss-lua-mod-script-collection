Author = "Gumsk"
ModName = "gCreatures Spawn Fix"
ModNameSub = "Cave Increase Max"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--[[ Files Modified:
METADATA\\SIMULATION\\ECOSYSTEM\\CAVE\\CAVETABLECOMMON.MBIN
METADATA\\SIMULATION\\ECOSYSTEM\\CREATUREGENERATIONDATA.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA\\SIMULATION\\ECOSYSTEM\\CAVE\\CAVETABLECOMMON.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"ProbabilityOfBeingEnabled","1"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA\\SIMULATION\\ECOSYSTEM\\CREATUREGENERATIONDATA.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
							["VALUE_CHANGE_TABLE"] = {
								{"Sparse",300},
								{"Normal",300},
								{"Dense",300},
								{"VeryDense",300},
							},
						},
					},
				},
			}
		}
	}
}