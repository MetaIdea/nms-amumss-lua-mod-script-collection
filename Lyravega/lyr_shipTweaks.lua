local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Ship Tweaks 1.7]]
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
	glareNuker = true,						-- removes the glare from ship displays and a few other vehicle / ship related areas
	clearScreens = true,					-- cleans vehicle & ship screens up; removes flicker and wave effects
	clearRadar = true,						-- removes the grain (dithering) effect from the space map, and makes the halos around it less obvious
	bioshipCleanCanopy = true,				-- removes the green hazy hue from sides of the bioship canopies
	bioshipNoSmoke = true,					-- the bioship nostrils (that puff a smoke inside the cockpit from time to time) are removed
	sentinelshipNoBigWires = true,			-- the massive cable duo in the sentinel ship cockpits are removed
	noShipMuzzleFlashes = true,				-- removes muzzle flashes from ship weapons
	spaceDustCleaner = true,				-- reduces the amount and the visibility of the particle effects generated during boosting / using pulse drive
	noSpeedTunnel = true,					-- removes the speed tunnel effect from ships, pairs nicely with 'spaceDustCleaner'
	itemTeleporterRange = 1000,				-- ship item teleporter tech bonus is set to given value (set it to something higher if needed)
	bioshipItemTeleporter = true,			-- adds item teleporter functionality to "Wormhole Brain" organic tech (affected by 'itemTeleporterRange' option)
	shipAndVehicleInventoryRange = 250,		-- ship and vehicle inventory access range is set to the given value (item teleporter works beyond this range)
	improvedShipScannerPulse = true,		-- increases amount of (potential) results while increases the range and decreasing the cooldown of the scanner
	superShipScannerPulse = true,			-- shows results that are normally not available to ship scanners, requires 'improvedShipScannerPulse'
	noAsteroidsOnScanner = true,			-- hides rich asteroids from ship scanner pulse
	shipAtmosphereHover = true,				-- allows ship hovering in the atmospheres
	shipSpeedMult = 1.25,					-- ship top speeds in all conditions are multiplied by the given value
--	actualSpeedReadouts = true,				-- shows actual speeds in space and/or in combat (game multiplies the value on the speed readouts by 2 and 1.5)
	flightRestrictionMult = 0.25,			-- some flight restrictions are eased by the given multiplier value for a more pleasant joyride
	stoppingMarginMult = 0.75,				-- pulse drive stopping margins are multiplied by the given value (very low multipliers are not recommended)
	pulseDriveSpeedMult = 2.5,				-- pulse drive top speed is multiplied by the given value, it shakes the ship more and cools down faster
	reducePulseDriveFlash = true,			-- the initial screen flash caused by the activation of pulse drive is toned down
	preciseNavigation = true,				-- the auto-locking feature of the pulse drive now have more strict angles and ignores other player stuff
	noPulseDriveExitDelay = true,			-- pulse drive exit delay is removed and in turn the camera zoom effect is also disabled
	fastPulseDriveExit = true,				-- exit from pulse drive at faster speeds
--	noLandingPadRotation = true,			-- landing pads (except the freighter and nexus hangar ones) no longer rotate; may eject as soon as pad is touched
	landingPadRotateSpeedMult = 3,			-- makes all pads rotate faster and sooner (affects the excluded ones from 'noLandingPadRotation' too)
	dockingSpeedMult = 3,					-- dock and take off speed limits for space stations are adjusted by the given multiplier (above 3 not recommended)
	dockingSpeedLimitOverride = 1000,		-- overrides the speed limit of 400 (doubled in space) for the docking approach (above 1000 not recommended)
--	autoEjectOnLanding = true,				-- automatically eject from the ship on docking or landing
	looterExplorer = true,					-- ship loot collection distance is massively increased
	moreAnomalyDetectors = true,			-- chance of getting anomaly detectors from asteroid mining is quadrupled (2%, game default is .5%)  
	noSolarSailSounds = true,				-- disables all solar sail sounds (that for some reason ignore volume limits or occlusion)
}

--#region METHODS

dofile("lyr_methods.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local glareNuker = function()
	if not lyr:checkTweak("glareNuker") then return false end

	local tweak = {
		{
			mbinPaths = {
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR/GLASS_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITB_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/COCKPIT/SAILSHIPCOCKPITA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT_COCKPIT/RAIL12_PASTED__PASTED__GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/COCKPITCHAIR/GLASS_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/COCKPITCHAIRSUB/GLASS_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/SCREENS/SCREEN1_L/GLASS_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/SCREENS/SCREEN1_R/GLASS_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SUBMARINE/SUBMARINECOCKPIT/GLASS_MAT.MATERIAL.MBIN",
				-- "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/BIOSHIPCOCKPITMAT.MATERIAL.MBIN",	-- bioship extra
				-- "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/BIOSHIPCOCKPITMAT1.MATERIAL.MBIN",	-- bioship extra
			},
			{
				specialKeyWords = {lyr:parsePair([[<Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />]])},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.glareNuker = glareNuker

local clearScreens = {}
clearScreens.tweak = function()
	if not lyr:checkTweak("clearScreens") then return false end

	local tweak = {
		{
			mbinPaths = { -- what the fuck is this
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR/MAINSCREENMAT3.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR/SIDESCREEN1_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR/SIDESCREEN2_MAT2.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR/SIDESCREEN3_MAT2.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR/SIDESCREEN4_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR/MAINSCREENMAT5.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR/SIDESCREEN2_MAT2.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR/SIDESCREEN3_MAT2.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR/MAINSCREENMAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR/SIDESCREEN2_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR/SIDESCREEN3_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/MAINSCREENMAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/SIDESCREEN2_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/SIDESCREEN3_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR/MAINSCREENMAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN2_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN3_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR/SIDESCREENMATTHREE2.MATERIAL.MBIN",	-- squid? extra
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR/SIDESCREENMATTHREE6.MATERIAL.MBIN",	-- squid? extra
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/MAINSCREENMAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN2_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN3_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/SIDESCREENMATTHREE2.MATERIAL.MBIN",	-- scientific/royal? extra
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/SIDESCREENMATTHREE6.MATERIAL.MBIN",	-- scientific/royal? extra
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/MAINSCREENMAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN2_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN3_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR/MAINSCREENMAT5.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR/SIDESCREEN2_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR/SIDESCREEN3_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT_COCKPIT/LIVESCREENMAT.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/SCREENS/MAINSCREEN/MAINSCREENMAT2.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/SCREENS/SCREEN1_R/SIDESCREEN4_MAT2.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/SCREENS/SCREEN2_L/SIDESCREEN2_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SHARED/INTERIOR/SCREENS/SCREEN2_R/SIDESCREEN1_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/VEHICLES/SUBMARINE/SUBMARINECOCKPIT/SIDESCREEN1_MAT.MATERIAL.MBIN",
			},
			{
				fields = {
					Shader = "SHADERS/UISCREEN.SHADER.BIN"
				}
			}
		},
		{
			mbinPaths = {
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/MAINSCREENMAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN1_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN2_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN4_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/SIDESCREEN3_MAT.MATERIAL.MBIN",
			},
			{
				skw = {lyr:parsePair([[<Property name="MaterialFlag" value="_F28_VBSKINNED" />]])},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.clearScreens = clearScreens.tweak

clearScreens.files = function()
	if not lyr:checkTweak("clearScreens") then return false end

	local files = {
		comment = "Adding files from 'clearScreens'",
		{[[\lyr_files\clearScreens\*.DDS]], [[\TEXTURES\UI\HUD\SPACESHIP\]]},
	}

	return files
end; lyr.tweakFiles.clearScreens = clearScreens.files

local clearRadar = function()
	if not lyr:checkTweak("clearRadar") then return false end

	local tweak = {
		{
			mbinPaths = [[MODELS\HUD\SPACEMAPBLACKHOLE\HORZ_MAT.MATERIAL.MBIN]],
			discardMbin = true,
			{
				precedingKeyWords = "Flags",
				copySection = true
			}
		},
		{
			mbinPaths = {
				{[[MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN]], [[LYR\MATERIALS\SPHESSMAP_TRANSLUCENT.MATERIAL.MBIN]]},
				{[[MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN]], [[LYR\MATERIALS\SPHESSMAP_ADDITIVE.MATERIAL.MBIN]]},
			},
			discardMbin = true,
		},
		{
			mbinPaths = [[LYR\MATERIALS\SPHESSMAP_TRANSLUCENT.MATERIAL.MBIN]],
			{
				fields = {
					CastShadow = {default = true, altered = false},
					Class = {default = "Additive", altered = "Translucent"},
					TransparencyLayerID = {default = 10, altered = 10},
				}
			},
			{
				precedingKeyWords = "Flags",
				pasteAfterSection = true
			},
			{
				precedingKeyWords = "Flags",
				removeSection = true
			}
		},
		{
			mbinPaths = [[LYR\MATERIALS\SPHESSMAP_ADDITIVE.MATERIAL.MBIN]],
			{
				fields = {
					CastShadow = {default = true, altered = false},
					Class = {default = "Additive", altered = "Additive"},
					TransparencyLayerID = {default = 10, altered = 10},
				}
			},
			{
				editSection = true,
				specialKeyWords = {lyr:parsePair([[<Property name="MaterialFlag" value="_F23_TRANSLUCENT" />]])},
				removeSection = true
			},
			{
				precedingKeyWords = "Flags",
				pasteAfterSection = true
			},
			{
				precedingKeyWords = "Flags",
				removeSection = true
			}
		},
		{
			mbinPaths = [[MODELS\HUD\SPACEMAPHORIZON.SCENE.MBIN]],
			-- {
			-- 	specialKeyWords = {
			-- 		-- {lyr:parsePair([[<Property name="Name" value="Base" />]])},
			-- 		{lyr:parsePair([[<Property name="Name" value="group7_Halo" />]])},
			-- 		{lyr:parsePair([[<Property name="Name" value="group7_Halo5" />]])},
			-- 		{lyr:parsePair([[<Property name="Name" value="Halo_outer3" />]])},
			-- 	},
			-- 	removeSection = true
			-- },
			{
				specialKeyWords = {
					-- {"Name", "Base", "Name", "MATERIAL"},
					{"Name", "group7_Halo", "Name", "MATERIAL"},
					{"Name", "group7_Halo5", "Name", "MATERIAL"},
					{"Name", "Halo_outer3", "Name", "MATERIAL"},
				},
				fields = {
					Value = [[LYR\MATERIALS\SPHESSMAP_TRANSLUCENT.MATERIAL.MBIN]]
				}
			},
			{
				specialKeyWords = {
					{"Value", [[MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN]]},
					-- {"Value", [[MODELS\HUD\SPACEMAPHORIZON\HORZVAO_MAT.MATERIAL.MBIN]]},
				},
				fields = {
					Value = [[LYR\MATERIALS\SPHESSMAP_ADDITIVE.MATERIAL.MBIN]]
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.clearRadar = clearRadar

local bioshipCleanCanopy = function()
	if not lyr:checkTweak("bioshipCleanCanopy") then return false end

	local tweak = {
		["MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN"] = {
			{
				specialKeyWords = {
					{lyr:parsePair([[<Property name="Name" value="pCube9" />]])},
					{lyr:parsePair([[<Property name="Name" value="pCube10" />]])},
				},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.bioshipCleanCanopy = bioshipCleanCanopy

local bioshipNoSmoke = function()
	if not lyr:checkTweak("bioshipNoSmoke") then return false end

	local tweak = {
		["MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN"] = {
			{
				specialKeyWords = {
					{lyr:parsePair([[<Property name="Name" value="NostrilsVFXref" />]])},
				},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.bioshipNoSmoke = bioshipNoSmoke

local sentinelshipNoBigWires = function()
	if not lyr:checkTweak("sentinelshipNoBigWires") then return false end

	local tweak = {
		["MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT.SCENE.EXML"] = {
			{
				specialKeyWords = {
					{lyr:parsePair([[<Property name="Name" value="SentinelCableL" />]])},
					{lyr:parsePair([[<Property name="Name" value="SentinelCableR" />]])},
					{lyr:parsePair([[<Property name="Name" value="CableSpinnerL" />]])},
					{lyr:parsePair([[<Property name="Name" value="CableSpinnerR" />]])},
				},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.sentinelshipNoBigWires = sentinelshipNoBigWires

local noShipMuzzleFlashes = function()
	if not lyr:checkTweak("noShipMuzzleFlashes") then return false end

	local tweak = {
		{
			mbinPaths = [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					MuzzleLightIntensity = 0
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noShipMuzzleFlashes = noShipMuzzleFlashes

local spaceDustCleaner = function()
	if not lyr:checkTweak("spaceDustCleaner") then return false end

	local tweak = {
		{
			mbinPaths = {
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN"
			},
			{
				fields = {
					NumberOfParticles = 0.15,
					Alpha = 0.40,
					Lifetime = 0.5,
					FadeTime = 0.5
				},
				multiply = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.spaceDustCleaner = spaceDustCleaner

local noSpeedTunnel = function()
	if not lyr:checkTweak("noSpeedTunnel") then return false end

	local tweak = {
		{
			mbinPaths = {
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR.SCENE.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR.SCENE.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR.SCENE.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN",
				"MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR.SCENE.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR.SCENE.MBIN",
				"MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN",
			},
			{
				specialKeyWords = {"Name", "REFSpeedTunnel"},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.noSpeedTunnel = noSpeedTunnel

local itemTeleporterRange = function()
	if not lyr:checkTweak("itemTeleporterRange") then return false end

	local tweak = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {"ID", "SHIP_TELEPORT"},
				fields = {
					Bonus = {default = 100, altered = math.max(100, lyr.tweakStates.itemTeleporterRange)}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.itemTeleporterRange = itemTeleporterRange

local bioshipItemTeleporter = function()
	if not lyr:checkTweak("bioshipItemTeleporter") then return false end

	local tweak = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {lyr:parsePair([[<Property name="ID" value="SHIP_TELEPORT" />]])},
				precedingKeyWords = {"StatBonuses", "GcStatsBonus.xml"},
				copySection = true
			},
			{
				specialKeyWords = {lyr:parsePair([[<Property name="ID" value="SHIPSCAN_ALIEN" />]])},
				precedingKeyWords = "StatBonuses",
				pasteSection = true
			},
			lyr:checkTweak("itemTeleporterRange") and {
				specialKeyWords = {lyr:parsePair([[<Property name="ID" value="SHIPSCAN_ALIEN" />]])},
				precedingKeyWords = "StatBonuses",
				fields = {
					Bonus = math.max(100, lyr.tweakStates.itemTeleporterRange)
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.bioshipItemTeleporter = bioshipItemTeleporter

local shipAndVehicleInventoryRange = function()
	if not lyr:checkTweak("shipAndVehicleInventoryRange") then return false end

	local tweak = {
		{
			mbinPaths = [[GCGAMEPLAYGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					ShipInteractRadius = {default = 50, altered = math.max(50, lyr.tweakStates.shipAndVehicleInventoryRange)}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.shipAndVehicleInventoryRange = shipAndVehicleInventoryRange

local improvedShipScannerPulse = function()
	if not lyr:checkTweak("improvedShipScannerPulse") then return false end

	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MinShipScanBuildings = {default = 0, altered = lyr.tweakStates.superShipScannerPulse and 8 or 4},
					MaxShipScanBuildings = {default = 2, altered = lyr.tweakStates.superShipScannerPulse and 32 or 16}
				}
			}
		},
		["METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN"] = {
			{
				skw = {"ID", "SHIP", "ScanType", "Ship"},
				thisLine = true,
				fields = {
					ScanType = {default = "Ship", altered = lyr.tweakStates.superShipScannerPulse and "DebugPlanet" or "Ship"},
				}
			},
			{
				skw = {lyr:parsePair([[<Property name="ID" value="SHIP" />]])},
				fields = {
					PulseRange = {default = 10000, altered = 25000},
					PulseTime = {default = 3, altered = 2},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 10, altered = 5}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.improvedShipScannerPulse = improvedShipScannerPulse

local noAsteroidsOnScanner = function()
	if not lyr:checkTweak("noAsteroidsOnScanner") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AsteroidScanMaxShown = {default = 3, altered = 0},
					AsteroidScanTime = {default = 70, altered = 0},
					AsteroidScanRange = {default = 1000000, altered = 0}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noAsteroidsOnScanner = noAsteroidsOnScanner

local shipAtmosphereHover = function()
	if not lyr:checkTweak("shipAtmosphereHover") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"PlanetEngine"},
				replaceAll = true,
				fields = {
					MinSpeed = 0.1;
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.shipAtmosphereHover = shipAtmosphereHover

local shipSpeedMult = function()
	if not lyr:checkTweak("shipSpeedMult") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {
					{"SpaceEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"PlanetEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"CombatEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"AtmosCombatEngine", "GcPlayerSpaceshipEngineData.xml"}
				},
				fields = {
					MaxSpeed = lyr.tweakStates.shipSpeedMult,
					BoostMaxSpeed = lyr.tweakStates.shipSpeedMult
				},
				multiply = true,
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.shipSpeedMult = shipSpeedMult

local actualSpeedReadouts = function()
	if not lyr:checkTweak("actualSpeedReadouts") then return false end

	local tweak = {
		{
			mbinPaths = [[GCGAMEPLAYGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					SpeedReadoutMultiplier = 1,
					SpaceSpeedReadoutMultiplier = 1,
					CombatSpeedReadoutMultiplier = 1
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.actualSpeedReadouts = actualSpeedReadouts

local flightRestrictionMult = function()
	if not lyr:checkTweak("flightRestrictionMult") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					NoBoostStationDistance = {default = 2000, multiplier = lyr.tweakStates.flightRestrictionMult},
					NoBoostAnomalyDistance = {default = 3000, multiplier = lyr.tweakStates.flightRestrictionMult},
					NoBoostSpaceAnomalyDistance = {default = 700, multiplier = lyr.tweakStates.flightRestrictionMult},
					NoBoostFreighterDistance = {default = 800, multiplier = lyr.tweakStates.flightRestrictionMult},
					NoBoostShipDistance = {default = 2000, multiplier = lyr.tweakStates.flightRestrictionMult},
					MiniWarpMinPlanetDistance = {default = 2500, multiplier = lyr.tweakStates.flightRestrictionMult},
					MiniWarpPlanetRadius = {default = 500, multiplier = lyr.tweakStates.flightRestrictionMult},
					MiniWarpStationRadius = {default = 700, multiplier = lyr.tweakStates.flightRestrictionMult},
					MiniWarpTopSpeedTime = {default = 0.1, multiplier = lyr.tweakStates.flightRestrictionMult}
				},
				multiply = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.flightRestrictionMult = flightRestrictionMult

local stoppingMarginMult = function()
	if not lyr:checkTweak("stoppingMarginMult") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpStoppingMarginPlanet = {default = 5000, multiplier = lyr.tweakStates.stoppingMarginMult},
					MiniWarpStoppingMarginDefault = {default = 2500, multiplier = lyr.tweakStates.stoppingMarginMult},
					MiniWarpStoppingMarginLong = {default = 3500, multiplier = lyr.tweakStates.stoppingMarginMult},
				},
				multiply = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.stoppingMarginMult = stoppingMarginMult

local pulseDriveSpeedMult = function()
	if not lyr:checkTweak("pulseDriveSpeedMult") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpSpeed = {default = 30000, multiplier = lyr.tweakStates.pulseDriveSpeedMult},
					MiniWarpChargeTime = {default = 2, altered = 2},
					MiniWarpCooldownTime = {default = 2, altered = 1},
					MiniWarpShakeStrength = {default = 2, altered = 5}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.pulseDriveSpeedMult = pulseDriveSpeedMult

local reducePulseDriveFlash = function()
	if not lyr:checkTweak("reducePulseDriveFlash") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpFlashIntensity = {default = 0.9, altered = 0.075},
					MiniWarpFlashDuration = {default = 0.9, altered = 0.75},
					MiniWarpFlashDelay = {default = 0, altered = 0}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.reducePulseDriveFlash = reducePulseDriveFlash

local preciseNavigation = function()
	if not lyr:checkTweak("preciseNavigation") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpHUDArrowAttractAngle = {default = 10, altered = 8},
					MiniWarpHUDArrowAttractAngleStation = {default = 5, altered = 4},
					MiniWarpHUDArrowAttractAngleOtherPlayerStuff = {default = 2, altered = 0},
					MiniWarpHUDArrowAttractAngleSaveBeacon = {default = 2.5, altered = 2},
					MiniWarpHUDArrowAttractAngleDense = {default = 4, altered = 1},
					MiniWarpHUDArrowNumMarkersToBeDense = {default = 6, altered = 10},
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.preciseNavigation = preciseNavigation

local noPulseDriveExitDelay = function()
	if not lyr:checkTweak("noPulseDriveExitDelay") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpExitTime = {default = 0.5, altered = 0.01}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noPulseDriveExitDelay = noPulseDriveExitDelay

local fastPulseDriveExit = function()
	if not lyr:checkTweak("fastPulseDriveExit") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpExitSpeed = {default = 1000, altered = lyr:useProxyMult("shipSpeedMult", 1250)},
					MiniWarpExitSpeedStation = {default = 500, altered = lyr:useProxyMult("shipSpeedMult", 625)}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.fastPulseDriveExit = fastPulseDriveExit

local autoStationOrient = function()	-- deprecated
	if not lyr:checkTweak("autoStationOrient") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					EnablePulseDriveSpaceStationOrient = {default = false, altered = true}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.autoStationOrient = autoStationOrient

local noLandingPadRotation = function()
	if not lyr:checkTweak("noLandingPadRotation") then return false end

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\ABANDONEDPARTS\DUNGEONENTRANCE\ENTITIES\DUNGEONENTRANCE.ENTITY.MBIN]],		-- unsure
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\COMBATFRIGATE\ENTITIES\COMBATDATA.ENTITY.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\ENTITIES\FRIGATEDATA.ENTITY.MBIN]],		-- might be master for all frigates
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\DIPLOMATICFRIGATE\ENTITIES\DIPLOMATICDATA.ENTITY.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\INDUSTRIALFRIGATE\ENTITIES\INDUSTRIALDATA.ENTITY.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\SCIENCEFRIGATE\ENTITIES\SCIENCEDATA.ENTITY.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\SUPPORTFRIGATE\ENTITIES\SUPPORTDATA.ENTITY.MBIN]],
				-- [[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN]],		-- freighter
				[[MODELS\COMMON\UTILS\SPAWNERS\FAKEOUTPOST\ENTITIES\FAKEOUTPOSTDATA.ENTITY.MBIN]],		-- unsure
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGPAD\LANDINGPADTRADER\ENTITIES\LANDINGPADTRADER.ENTITY.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGZONE\LANDINGZONE\ENTITIES\LANDINGZONE.ENTITY.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGBEACON\ENTITIES\LANDINGZONE.ENTITY.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGPAD\ENTITIES\LANDINGDATA.ENTITY.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGZONE\ENTITIES\LANDINGZONEDATA.ENTITY.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\LANDINGZONE\LANDINGZONE\ENTITIES\LANDINGZONE.ENTITY.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LANDINGPAD\ENTITIES\LANDINGPAD.ENTITY.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN]],
				[[MODELS\SPACE\ANOMALY\ANOMALY\ENTITIES\ANOMALY.ENTITY.MBIN]],		-- hello old friend
				[[MODELS\SPACE\ATLASSTATION\SHARED\ENTITIES\ATLASSTATION.ENTITY.MBIN]],		-- hello not a friend
				-- [[MODELS\SPACE\NEXUS\NEXUS\ENTITIES\NEXUS.ENTITY.MBIN]],		-- nexus interior, handles after transition
				-- [[MODELS\SPACE\NEXUS\NEXUSEXTERIOR\ENTITIES\NEXUSEXTERIOR.ENTITY.MBIN]],		-- nexus exterior, handles before transition
				[[MODELS\SPACE\POI\PARTS\DUNGEON_ENTRANCE\ENTITIES\DUNGEONENTRANCE.ENTITY.MBIN]],		-- unsure
				[[MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN]],		-- unsure
				[[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION_ABANDONED.ENTITY.MBIN]],		-- unsure
				[[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN]],		-- stations
			},
			{
				precedingKeyWords = "GcOutpostComponentData.xml",
				fields = {
					RotateToDock = false
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noLandingPadRotation = noLandingPadRotation

local landingPadRotateSpeedMult = function()
	if not lyr:checkTweak("landingPadRotateSpeedMult") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DockingRotateSpeed = math.max(0.25, lyr.tweakStates.landingPadRotateSpeedMult),
				}
			}
		},
		["GCAISPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DockingRotateStartTime = {default = 1, altered = 0.1},
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.landingPadRotateSpeedMult = landingPadRotateSpeedMult

local dockingSpeedMult = function()
	if not lyr:checkTweak("dockingSpeedMult") then return false end

	local multiplier = lyr.tweakStates.dockingSpeedMult
	local tweak = {
		{
			mbinPaths = {
				-- [[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN]],
				[[MODELS\SPACE\ANOMALY\ANOMALY\ENTITIES\ANOMALY.ENTITY.MBIN]],
				[[MODELS\SPACE\ATLASSTATION\SHARED\ENTITIES\ATLASSTATION.ENTITY.MBIN]],
				[[MODELS\SPACE\NEXUS\NEXUS\ENTITIES\NEXUS.ENTITY.MBIN]],
				[[MODELS\SPACE\NEXUS\NEXUSEXTERIOR\ENTITIES\NEXUSEXTERIOR.ENTITY.MBIN]],
				[[MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN]],
				[[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION_ABANDONED.ENTITY.MBIN]],
				[[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN]],
			},
			{
				precedingKeyWords = "GcOutpostComponentData.xml",
				fields = {
					ApproachRange = (1+multiplier)*0.5,	-- seems to be a switch point for landing parameters, adjustment required for stations otherwise ships overshoot
					ApproachSpeed = multiplier,	-- max is limited by "OutpostDockMaxApproachSpeed" on "GCAISPACESHIPGLOBALS.GLOBAL.MBIN". in addition, displayed speed is doubled in space
					TakeOffSpeed = multiplier,	-- minimum 243?
					TakeOffBoost = (1+multiplier)*0.5,	-- immediate speed to achieve, overrides TakeOffSpeed minimum, can be used to catapult
					PostTakeOffExtraPlayerSpeed = multiplier,
				},
				multiply = true
			},
		},
	}

	return tweak
end; lyr.tweakTables.dockingSpeedMult = dockingSpeedMult

local dockingSpeedLimitOverride = function()
	if not lyr:checkTweak("dockingSpeedLimitOverride") then return false end

	local tweak = {
		{
			mbinPaths = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					OutpostDockMaxApproachSpeed = {default = 400, altered = math.max(lyr.tweakStates.dockingSpeedLimitOverride, 100)},
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.dockingSpeedLimitOverride = dockingSpeedLimitOverride

local autoEjectOnLanding = function()
	if not lyr:checkTweak("autoEjectOnLanding") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AutoEjectOnLanding = {default = false, altered = true}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.autoEjectOnLanding = autoEjectOnLanding

local looterExplorer = function()
	if not lyr:checkTweak("looterExplorer") then return false end

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LootAttractDistance = {default = 120, altered = 1000},
					LootAttractTime = {default = 0.2, altered = 1.0},
					LootDampForce = {default = 0.5, altered = 0.5},
					LootCollectDistance = {default = 20, altered = 100}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.looterExplorer = looterExplorer

local moreAnomalyDetectors = function()
	if not lyr:checkTweak("moreAnomalyDetectors") then return false end

	local tweak = {
		["GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					RareAsteroidDataProductOdds = {default = 0.005, altered = 0.02}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.moreAnomalyDetectors = moreAnomalyDetectors

local noSolarSailSounds = function()
	if not lyr:checkTweak("noSolarSailSounds") then return false end

	local files = {
		comment = "Adding files from 'noSolarSailSounds'",
		{[[\lyr_files\noSolarSailSounds\*.WEM]], [[\AUDIO\WINDOWS\]]},
	}

	return files
end; lyr.tweakFiles.noSolarSailSounds = noSolarSailSounds

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_shipTweaks.pak",
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