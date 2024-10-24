local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Binoculars Tweaks 5.20]]
local gameVersion = 131597

--[=============================================================================================================================[
	Every Lua script of mine requires a few other files to be located in the 'ModScripts\ModHelperScripts\' folder
	Extract the archive to 'ModScripts\' as is and remove/adjust scripts after. Avoid those in 'ModHelperScripts\'

	Below in the 'tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Use the 'lyr_tweakOverrides.lua' file and disable modifications from there

	Ways to (re)enable a modification:
		• RECOMMENDED: Remove double dashes from the beginning of the line
		• Set the value of the modification to its original value
		• Use the 'lyr_tweakOverrides.lua' file and enable / change modifications from there

	Depending on their function and/or relevance, some modifications may have duplicates in my other scripts
	The third option for enabling / disabling modifications through 'lyr_tweakOverrides.lua' file will affect all

	If the mentioned file ('lyr_tweakOverrides.lua') is missing, you may get harmless warnings from AMUMSS
	It's advised to keep the file around even if it will not be utilized, just to avoid unwanted warning messages
--]=============================================================================================================================]

local tweakStates = {
	noBinocsFlash = true,						-- using binoculars no longer cause a screen flash
	normalBinocsFilters = true,					-- a normal filter is applied on all analysis modes instead of coloured ones
	equalizedBinocsFoV = true,					-- removes the slight FoV difference between the initial binocs zoom level and the first person view
	betterScanlines = true,						-- the known and unknown target colours are stressed while the building scan effects are toned down
	fasterAnalysis = true,						-- (options: true/"instant") enabling this halves scan times, "instant" nearly eliminates them
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local noBinocsFlash = function(tweakName, tweakState)
	local tweak = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularFlashTime = {default = 0.24, 0.0},
					BinocularFlashStrength = {default = 0.9, 0.0}
				}
			}
		},
	}

	return tweak
end
lyr.tweakTables.noBinocsFlash = noBinocsFlash

local normalBinocsFilters = function(tweakName, tweakState)
	local tweak = {
		["METADATA/EFFECTS/SCREENFILTERS.MBIN"] = {
			{
				specialKeyWords = {
					{"Binoculars", "GcScreenFilterData.xml"},
					{"Surveying", "GcScreenFilterData.xml"},
					{"MissionSurvey", "GcScreenFilterData.xml"},
				},
				fields = {
					Filename = {default = "TEXTURES/LUT/FILTERS/BINOCULARS.DDS", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.normalBinocsFilters = normalBinocsFilters

local equalizedBinocsFoV = function(tweakName, tweakState)
	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"ZoomType","Far"},
				fields = {
					FoV = {default = 70, 75},
					WalkSpeed = {default = 0.5, 0.75}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.equalizedBinocsFoV = equalizedBinocsFoV

local betterScanlines = function(tweakName, tweakState)
	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"BuildingScanEffect"},
				fields = {
					R = {default = 0, 0},
					G = {default = 0.7, 0.7},
					B = {default = 1, 1},
					A = {default = 1, 0.1}
				}
			},
			{
				precedingKeyWords = {"BinocularSelectedColour"},
				fields = {
					R = {default = 0.588, 0},
					G = {default = 1, 1},
					B = {default = 0.639, 0},
					A = {default = 1, 1}
				}
			},
			{
				precedingKeyWords = {"BinocularSelectedUnknownColour"},
				fields = {
					R = {default = 0.926, 1},
					G = {default = 0.539, 0},
					B = {default = 1, 0},
					A = {default = 1, 1}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.betterScanlines = betterScanlines

local fasterAnalysis = function(tweakName, tweakState)
	local mult = tweakState == "instant" and 0.01 or 0.5

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocTimeBeforeScan = "@*"..mult,
					BinocMinScanTime = "@*"..mult,
					BinocScanTime = "@*"..mult,
					BinocCreatureScanTime = "@*"..mult
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.fasterAnalysis = fasterAnalysis

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
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE, NUMBERtoSTRING",
	ADD_FILES = lyr:processTweakFiles(),
	MODIFICATIONS =	lyr:processTweakTables()
}