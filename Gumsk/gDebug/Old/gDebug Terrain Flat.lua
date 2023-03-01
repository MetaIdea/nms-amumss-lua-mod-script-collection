Author = "Gumsk"
ModName = "gDebug"
ModNameSub = "Terrain Flat"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--[[ Files Modified:
GCTERRAINGLOBALS.GLOBAL.MBIN
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
					["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"DebugFlattenAllTerrain", "True"},
							},
						},
					},
				},
			}
		}
	}
}