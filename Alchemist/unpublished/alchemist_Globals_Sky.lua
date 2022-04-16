
Author = "alchemist"
ModName = "Globals_Sky"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
	["EXML_CHANGE_TABLE"] = {

		-- Day/Night Cycle and Weather
		{["VALUE_CHANGE_TABLE"] = {
			{"DayLength", "3600"},

			-- Storm Interval
			{"MinTimeBetweenStormsLow", "2400"},
			{"MaxTimeBetweenStormsLow", "4800"},
			{"MinTimeBetweenStormsHigh", "480"},
			{"MaxTimeBetweenStormsHigh", "1860"},
			{"MinTimeBetweenStormsExtremeFallback", "360"},
			{"MaxTimeBetweenStormsExtremeFallback", "1240"},

			-- Storm Duration
			{"MinStormLengthLow", "240"},
			{"MaxStormLengthLow", "360"},
			{"MinStormLengthHigh", "300"},
			{"MaxStormLengthHigh", "640"},

			-- Suit Announce
			{"StormWarningTime", "120"},
			{"StormTransitionTime", "120"},
			
			-- Cloud Fixes
			{"MaxCloudCover", "0.8"},
			{"MaxStormCloudCover", "1.0"},
			{"CloudCoverSmoothTime", "120"},
			{"CloudRatioSmoothTime", "48"},
			{"StormCloudSmoothTime", "9.6"},
		}},

		-- Makes the space fog effect the planets
		{["PRECEDING_KEY_WORDS"] = {"SpaceSkyMin",},
		["VALUE_CHANGE_TABLE"] = {
			{"SpaceFogMax",	"0.55"},
			{"SpaceFogPlanetMax",	"0.65"},
		}},

		{["PRECEDING_KEY_WORDS"] = {"SpaceSkyMax",},
		["VALUE_CHANGE_TABLE"] = {
			{"SpaceFogMax",	"0.55"},
			{"SpaceFogPlanetMax",	"0.65"},
		}},

	}},

}}}}