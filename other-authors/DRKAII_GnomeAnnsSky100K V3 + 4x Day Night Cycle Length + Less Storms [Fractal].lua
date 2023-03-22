Author = "Dr. Kaii"
ModDescription = "Adds 100k procedurally generated skies, and increases day/night cycle by a factor of 4 (day and night both 1 hour long), and increases gaps between storms (won't occur less than 45 minutes or more than 60 minutes apart)"
ModdedFile = "GCSKYGLOBALS.GLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "DRKAII_GnomeAnnsSky100K V3 + 4x Day Night Cycle Length + Less Storms [Fractal].pak",
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
					{"FrozenSkyMaxIndex","99999"},
					{"DayLength","7200"},
					{"MinTimeBetweenStormsLow","2700"},
					{"MaxTimeBetweenStormsLow","3600"},
					{"MinTimeBetweenStormsHigh","2700"},
					{"MaxTimeBetweenStormsHigh","3600"},
					{"MinTimeBetweenStormsExtremeFallback","2700"},
					{"MaxTimeBetweenStormsExtremeFallback","3600"}
				},
			},
		}
}}}}}