
Author = "alchemist"
ModName = "Globals_WarpVisuals"
BaseDescription = "Survive."
GameVersion = "3-6"
ModVersion = "v1"

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"] = {

		-- lines while warping
		{["VALUE_CHANGE_TABLE"] = {
			{"MiniWarpLinesNum", "0"},
		}},

		-- trade routes
		{["PRECEDING_KEY_WORDS"]  = {
			"TradeRouteColours"
		},
		["INTEGER_TO_FLOAT"] = "FORCE",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"R",	"0.0"},
			{"G",	"0.0"},
			{"B",	"0.0"},
			{"A",	"0.0"},
		}},

	}},

	-- remove warp camera shake
	{["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"] = {

		{["SPECIAL_KEY_WORDS"] = {
      "Name", "WARPSHAKE"
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"StrengthScale", "1600"},
      {"ShakeFrequency", "0.5"}
    }},

	}},

	-- remove asteroids while warping
  {["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"] = {

		{["VALUE_CHANGE_TABLE"] = {
      {"AsteroidMaxNumGeneratesPulseJump", "0"},
    }},

	}},

}}}}