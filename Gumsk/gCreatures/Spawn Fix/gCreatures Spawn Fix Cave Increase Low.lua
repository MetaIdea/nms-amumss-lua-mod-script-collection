Author = "Gumsk"
ModName = "gCreatures Spawn Fix"
ModNameSub = "Cave Increase Low"
BaseDescription = ""
GameVersion = "411"
ModVersion = "a"

--[[ Files Modified:
METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN
METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN
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
						"METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ProbabilityOfBeingEnabled","0.25"},
							["VALUE_CHANGE_TABLE"] = {
								{"ProbabilityOfBeingEnabled","0.51"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ProbabilityOfBeingEnabled","0.75"},
							["VALUE_CHANGE_TABLE"] = {
								{"ProbabilityOfBeingEnabled","1"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ProbabilityOfBeingEnabled","0.5"},
							["VALUE_CHANGE_TABLE"] = {
								{"ProbabilityOfBeingEnabled","0.75"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
							["VALUE_CHANGE_TABLE"] = {
								{"Sparse",100},
								{"Normal",150},
								{"Dense",200},
								{"VeryDense",300},
							},
						},
					},
				},
			}
		}
	}
}