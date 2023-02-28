Author = "Gumsk"
ModName = "gGame"
ModNameSub = "Hotspot"
BaseDescription = "Various modifications to gameplay globals"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"SurveyMaxDistance",2000},							--400; How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable.
								{"SurveySonarMinPulseSpeed",-2.4},					--0.4; Frequency for sweeps or pings of the hotspot scanner. Lower is slower.
							},
						},
					},
				},
			}
		}
	}
}