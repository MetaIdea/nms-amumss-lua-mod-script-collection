local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Binoculars Tweaks 1.7]]
local gameVersion = "4.21"

--[=============================================================================================================================[
	Every Lua script of mine requires 'lyr_methods.lua' to be located in the 'ModScripts\ModHelperScripts\' folder
	Otherwise none of them will work. Make sure that file is located there before using my scripts

	Below in the 'tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Use the 'lyr_tweakOverrides.txt' file and disable modifications from there

	Ways to (re)enable a modification:
		• RECOMMENDED: Remove double dashes at the beginning of the line
		• Set the value of the modification to its original value
		• Use the 'lyr_tweakOverrides.txt' file and enable / change modifications from there

	Depending on their function and/or relevance, some modifications may have duplicates in my other scripts
	The third option for enabling / disabling modifications through 'lyr_tweakOverrides.txt' file will affect all
--]=============================================================================================================================]

local tweakStates = {
	noBinocsFlash = true,					-- using binoculars no longer cause a screen flash
	normalBinocsFilters = true,				-- a normal filter is applied on all analysis modes instead of coloured ones
	equalizedBinocsFoV = true,				-- removes the slight FoV difference between the initial binocs zoom level and the first person view
	betterScanlines = true,					-- the known and unknown target colours are stressed while the building scan effects are toned down
	fasterAnalysis = true,					-- analysis times are reduced down to a second
}

--#region METHODS

dofile("lyr_methods.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local noBinocsFlash = function()
	if not lyr:checkTweak("noBinocsFlash") then return false end

	local tweak = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularFlashTime = {default = 0.24, altered = 0.0},
					BinocularFlashStrength = {default = 0.9, altered = 0.0}
				}
			}
		},
	}

	return tweak
end; lyr.tweakTables.noBinocsFlash = noBinocsFlash

local normalBinocsFilters = function()
	if not lyr:checkTweak("normalBinocsFilters") then return false end

	local tweak = {
		["METADATA/EFFECTS/SCREENFILTERS.MBIN"] = {
			{
				specialKeyWords = {
					{"Binoculars", "GcScreenFilterData.xml"},
					{"Surveying", "GcScreenFilterData.xml"},
					{"MissionSurvey", "GcScreenFilterData.xml"},
				},
				fields = {
					Filename = {default = "TEXTURES/LUT/FILTERS/BINOCULARS.DDS", altered = "TEXTURES/LUT/FILTERS/DEFAULT.DDS"}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.normalBinocsFilters = normalBinocsFilters

local equalizedBinocsFoV = function()
	if not lyr:checkTweak("equalizedBinocsFoV") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"ZoomType","Far"},
				fields = {
					FoV = {default = 70, altered = 75},
					WalkSpeed = {default = 0.5, altered = 0.75}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.equalizedBinocsFoV = equalizedBinocsFoV

local betterScanlines = function()
	if not lyr:checkTweak("betterScanlines") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"BuildingScanEffect"},
				fields = {
					R = {default = 0, altered = 0},
					G = {default = 0.7, altered = 0.7},
					B = {default = 1, altered = 1},
					A = {default = 1, altered = 0.1}
				}
			},
			{
				precedingKeyWords = {"BinocularSelectedColour"},
				fields = {
					R = {default = 0.588, altered = 0},
					G = {default = 1, altered = 1},
					B = {default = 0.639, altered = 0},
					A = {default = 1, altered = 1}
				}
			},
			{
				precedingKeyWords = {"BinocularSelectedUnknownColour"},
				fields = {
					R = {default = 0.926, altered = 1},
					G = {default = 0.539, altered = 0},
					B = {default = 1, altered = 0},
					A = {default = 1, altered = 1}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.betterScanlines = betterScanlines

local fasterAnalysis = function()
	if not lyr:checkTweak("fasterAnalysis") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocTimeBeforeScan = {default = 0.5, altered = 0.25},
					BinocMinScanTime = {default = 2.2, altered = 1.0},
					BinocScanTime = {default = 2.2, altered = 1.0},
					BinocCreatureScanTime = {default = 1.9, altered = 1.0}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.fasterAnalysis = fasterAnalysis

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_binocularsTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE",
	ADD_FILES = lyr:processTweakFiles(),
	MODIFICATIONS =	lyr:processTweakTables()
}