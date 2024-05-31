Author = "Gumsk"
ModName = "gCreatures Life"
ModNameSub = "Robot 100"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--[[ Files Modified:
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
						"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"EmptySystemSpecific","GcCreatureGenerationOptionalWeightedList.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Probability","1"},
							},
						},
					},
				},
			}
		}
	}
}