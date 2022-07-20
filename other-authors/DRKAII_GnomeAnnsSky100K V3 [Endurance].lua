Author = "Dr. Kaii"
ModDescription = "Adds 100k procedurally generated skies"
ModdedFile = "GCSKYGLOBALS.GLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "DRKAII_GnomeAnnsSky100K V3 [Endurance].pak",
["MOD_DESCRIPTION"]	= ModDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = ModdedFile,
		["EXML_CHANGE_TABLE"] = {
			{
				["VALUE_CHANGE_TABLE"] = {
					{"SafeSkyMaxIndex","99999"},
					{"FrozenSkyMaxIndex","99999"}
				},
			},
		}
}}}}}