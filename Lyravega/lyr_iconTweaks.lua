local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Icon Tweaks 5.12]]
local gameVersion = "129192"

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
	smallerIcons = true,					-- reduces the sizes of all icons except the compass ones (recommended with 'biggerColourizedHexagonIcons')
	colourizedHexagonIcons = "large",		-- adds colourized ("normal" or "large") binocs icons for buildings (hexagons), with colours matching the scanner icons
	colourizedDiamondIcons = true,			-- adds colourized binocs/scanner icons for non-buildings (diamonds), with colours matching the scanner/binocs icons
	miscIconAdjustments = true,				-- minor changes to a few icons; green dot for known creatures, different icon for unknown buildings
	noFocusedIconResize = true,				-- focused icons no longer grow in size
	shorterIconFadeDistance = true,			-- icons start fading out at a shorter distance but at less steep intervals
	moreClumpyIcons = true,					-- allows icons of the same type/group to clump up in a greater angle/radius
	retainBuildingIconSizes = true,			-- building markers on the same planet will not get scaled down
	buldingDetectionRange = 2500,			-- building detection and marker visibility ranges are set to the given value (1000-2500 is ideal)
	maxMessageBeaconIcons = 0,				-- sets the maximum number of message beacon icons (game default 10)
}

--#region METHODS

dofile("lyr_methods.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local smallerIcons = function()
	if not lyr:checkTweak("smallerIcons") then return false end

	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					SmallIconSize = {default = 32, altered = 24},
					LargeIconSize = {default = 48, altered = 36},
					CompassIconSize = {default = 48, altered = 48}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.smallerIcons = smallerIcons

local noFocusedIconResize = function()
	if not lyr:checkTweak("noFocusedIconResize") then return false end

	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HoverLockedIconScale = {default = 1.2, altered = 1.0}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noFocusedIconResize = noFocusedIconResize

local shorterIconFadeDistance = function()
	if not lyr:checkTweak("shorterIconFadeDistance") then return false end

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularsNearIconOpacity = {default = 1, altered = 0.95},
					BinocularsNearIconDist = {default = 50, altered = 25},
					BinocularsNearIconFadeDist = {default = 150, altered = 125},
					BinocularsMidIconOpacity = {default = 0.65, altered = 0.80},
					BinocularsFarIconFadeDist = {default = 500, altered = 375},
					BinocularsFarIconDist = {default = 1000, altered = 750},
					BinocularsFarIconOpacity = {default = 0.2, altered = 0.4}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.shorterIconFadeDistance = shorterIconFadeDistance

local moreClumpyIcons = function()
	if not lyr:checkTweak("moreClumpyIcons") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					ScannerIconsClumpRadius = {default = 10, altered = 25}
				}
			}
		},
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					ScannableIconMergeAngle = {default = 9, altered = 15},
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.moreClumpyIcons = moreClumpyIcons

local retainBuildingIconSizes = function()
	if not lyr:checkTweak("retainBuildingIconSizes") then return false end

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HUDMarkerShowActualIconDistance = {default = 200, altered = 999999},
					HUDMarkerShowActualSpaceIconDistance = {default = 2000, altered = 999999}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.retainBuildingIconSizes = retainBuildingIconSizes

local buldingDetectionRange = function()
	if not lyr:checkTweak("buldingDetectionRange") then return false end

	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					UnknownBuildingRange = {default = 600, altered = lyr.tweakStates.buldingDetectionRange},
					MaxIconRange = {default = 1200, altered = lyr.tweakStates.buldingDetectionRange},
				}
			}
		},
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HUDMarkerDistanceOrTimeDistance = {default = 1250, altered = lyr.tweakStates.buldingDetectionRange},
				}
			},
			not lyr:checkTweak("retainBuildingIconSizes") and {
				fields = {
					HUDMarkerShowActualIconDistance = {default = 200, altered = lyr.tweakStates.buldingDetectionRange},
					HUDMarkerShowActualSpaceIconDistance = {default = 2000, altered = lyr.tweakStates.buldingDetectionRange}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.buldingDetectionRange = buldingDetectionRange

local maxMessageBeaconIcons = function()
	if not lyr:checkTweak("maxMessageBeaconIcons") then return false end

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxNumMessageBeaconIcons = {default = 10, altered = lyr.tweakStates.maxMessageBeaconIcons},
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.maxMessageBeaconIcons = maxMessageBeaconIcons

local colourizedHexagonIcons = function()
	local option = lyr:checkTweak("colourizedHexagonIcons"); if not option then return false end
	local options = {
		LARGE = [[\lyr_files\colourizedHexagonIcons\large\*.DDS]],
		NORMAL = [[\lyr_files\colourizedHexagonIcons\normal\*.DDS]],
	}; if not options[option:upper()] then return false end

	local path = options[option:upper()]

	local files = {
		comment = "Adding files from 'colourizedHexagonIcons', '"..lyr.tweakStates.colourizedHexagonIcons.."' option selected",
		{path, [[\TEXTURES\UI\HUD\ICONS\SCANNING\]]}
	}

	return files
end; lyr.tweakFiles.colourizedHexagonIcons = colourizedHexagonIcons

local colourizedDiamondIcons = {
	files = function()
		if not lyr:checkTweak("colourizedDiamondIcons") then return false end

		local files = {
			comment = "Adding files from 'colourizedDiamondIcons'",
			{[[\lyr_files\colourizedDiamondIcons\SCANNING\*.DDS]], [[\TEXTURES\UI\HUD\ICONS\SCANNING\]]},
			{[[\lyr_files\colourizedDiamondIcons\PICKUPS\*.DDS]], [[\TEXTURES\UI\HUD\ICONS\PICKUPS\]]},
		}

		return files
	end,
	tweaks = function()
		if not lyr:checkTweak("colourizedDiamondIcons") then return false end

		local tweaks = {
			{
				mbinPaths = [[METADATA\UI\HUD\SCANNERICONS.EXML]],
				{
					pkw1st = "ScannableIcons",
					skw = {"Mineral", lyr.ignore, "Main", lyr.ignore},
					fields = {
						Filename = [[TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.MINERAL.DDS]]
					}
				},
				{
					pkw1st = "ScannableIconsBinocs",
					skw = {"BluePlant", lyr.ignore, "Main", lyr.ignore},
					fields = {
						Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTBLUE.DDS]]
					}
				},
				{
					pkw1st = "ScannableIconsBinocs",
					skw = {"Plant", lyr.ignore, "Main", lyr.ignore},
					fields = {
						Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTGREEN.DDS]]
					}
				}
			},
			{
				mbinPaths = [[METADATA\REALITY\DEFAULTREALITY.EXML]],
				{
					skw = {lyr:parsePair([[<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.TERRAIN.DDS" />]])},
					selectLevel = 1,
					findSubSections = {{lyr:parsePair([[<Property name="IconBinocs" value="TkTextureResource.xml">]])}},
					fields = {
						Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.TERRAIN.DDS]]
					}
				}
			}
		}

		return tweaks
	end
}
lyr.tweakFiles.colourizedDiamondIcons = colourizedDiamondIcons.files
lyr.tweakTables.colourizedDiamondIcons = colourizedDiamondIcons.tweaks

local miscIconAdjustments = function()
	if not lyr:checkTweak("miscIconAdjustments") then return false end

	local files = {
		comment = "Adding files from 'miscIconAdjustments'",
		{[[\lyr_files\miscIconAdjustments\CREATURE*.DDS]], [[\TEXTURES\UI\HUD\]]},
		{[[\lyr_files\miscIconAdjustments\BUILDING.UNKNOWN.DDS]], [[\TEXTURES\UI\HUD\ICONS\BUILDINGS\BUILDING.UNKNOWN.DDS]]},
	}

	return files
end; lyr.tweakFiles.miscIconAdjustments = miscIconAdjustments

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_iconTweaks.pak",
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