local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Ship Tweaks 5.20]]
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
	glareNuker = true,							-- removes the glare from ship displays and a few other vehicle / ship related areas
	clearScreens = true,						-- cleans vehicle & ship screens up; removes flicker and wave effects
	clearRadar = true,							-- removes the grain (dithering) effect from the space map, and makes the halos around it less obvious
	cleanBurnGlow = true,						-- fixes the ugly burn glow that appears in the ship cockpit view during atmospheric entry
	bioshipCanopyTweaks = true,					-- for bioship canopies; green hazy slime on sides of the canopy and nostrils (that puff a cloud) are removed
	sentinelshipCockpitTweaks = true,			-- for sentinel cockpits; massive cable duo is removed, metallic bars on the top are changed
	noShipMuzzleFlashes = true,					-- removes muzzle flashes from ship weapons
	spaceDustCleaner = true,					-- reduces the amount and the visibility of the particle effects generated during boosting / using pulse drive
	noSpeedTunnel = true,						-- removes the speed tunnel effect from ships, pairs nicely with 'spaceDustCleaner'
	itemTeleporterRange = 1000,					-- ship item teleporter tech bonus is set to given value (set it to something higher if needed)
	bioshipItemTeleporter = true,				-- adds item teleporter functionality to "Wormhole Brain" organic tech (affected by 'itemTeleporterRange' option)
	shipAndVehicleInventoryRange = 250,			-- ship and vehicle inventory access range is set to the given value (item teleporter works beyond this range)
	improvedShipScannerPulse = true,			-- increases amount of (potential) results while increases the range and decreasing the cooldown of the scanner
	superShipScannerPulse = true,				-- shows results that are normally not available to ship scanners, requires 'improvedShipScannerPulse'
	noAsteroidsOnScanner = true,				-- hides rich asteroids from ship scanner pulse
	shipAtmosphereHover = true,					-- allows ship hovering in the atmospheres
	shipSpeedMult = 1.25,						-- ship top speeds in all conditions are multiplied by the given value
--	actualSpeedReadouts = true,					-- shows actual speeds in space and/or in combat (game multiplies the value on the speed readouts by 2 and 1.5)
	flightRestrictionMult = 0.25,				-- some flight restrictions are eased by the given multiplier
	stoppingMarginMult = 0.75,					-- pulse drive stopping margins are multiplied by the given value (very low multipliers are not recommended)
	pulseDriveSpeedMult = 2.5,					-- pulse drive top speed is multiplied by the given value, it shakes the ship less and cools down faster
	reducePulseDriveFlash = true,				-- the initial screen flash caused by the activation of pulse drive is toned down
	preciseNavigation = true,					-- the auto-locking feature of the pulse drive now have more strict angles, cares less about other people stuff
	noPulseDriveExitDelay = true,				-- pulse drive exit delay is removed and in turn the camera zoom effect is also disabled
	fastPulseDriveExit = true,					-- exit from pulse drive at faster speeds
--	noLandingPadRotation = true,				-- landing pads (except the freighter and nexus hangar ones) no longer rotate; may eject as soon as pad is touched
	landingPadRotateSpeedMult = 3,				-- makes all pads rotate faster and sooner (affects the excluded ones from 'noLandingPadRotation' too)
	dockingSpeedMult = 2,						-- dock and take off speed limits for space stations are adjusted by the given multiplier (above 3 not recommended)
	dockingSpeedLimitOverride = 1000,			-- overrides the speed limit of 400 (doubled in space) for the docking approach (above 1000 not recommended)
--	autoEjectOnLanding = true,					-- automatically eject from the ship on docking or landing
	looterExplorer = true,						-- ship loot collection distance is massively increased
	moreAnomalyDetectors = true,				-- chance of getting anomaly detectors from asteroid mining is quadrupled (2%, game default is .5%)  
	noSolarSailSounds = true,					-- disables all solar sail sounds (that for some reason ignore volume limits or occlusion)
	unifiedCalmWarps = true,					-- changes all warp scenes to a calm, purple/black version
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local glareNuker = function(tweakName, tweakState)
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
				specialKeyWords = [[<Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />]],
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.glareNuker = glareNuker

local clearScreens = {}
clearScreens.tweak = function(tweakName, tweakState)
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
				skw = [[<Property name="MaterialFlag" value="_F28_VBSKINNED" />]],
				removeSection = true
			}
		}
	}

	return tweak
end
clearScreens.files = function(tweakName, tweakState)
	local files = {
		{[[\lyr_files\clearScreens\*.DDS]], [[\TEXTURES\UI\HUD\SPACESHIP\]]},
	}

	return files
end
lyr.tweakTables.clearScreens = clearScreens.tweak
lyr.tweakFiles.clearScreens = clearScreens.files

local clearRadar = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\HUD\SPACEMAPBLACKHOLE\HORZ_MAT.MATERIAL.MBIN]],
			{
				precedingKeyWords = "Flags",
				copySection = true
			}
		},
		{
			mbinPaths = {
				{[[MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN]], [[LYR\MATERIALS\SPHESSMAP_TRANSLUCENT.MATERIAL.MBIN]]},
				{[[MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN]], [[LYR\MATERIALS\SPHESSMAP_ADDITIVE.MATERIAL.MBIN]]},
			}
		},
		{
			mbinPaths = [[LYR\MATERIALS\SPHESSMAP_TRANSLUCENT.MATERIAL.MBIN]],
			{
				fields = {
					CastShadow = {default = true, false},
					Class = {default = "Additive", "Translucent"},
					TransparencyLayerID = {default = 10, 10},
				}
			},
			{
				precedingKeyWords = "Flags",
				pasteSectionAfter = true
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
					CastShadow = {default = true, false},
					Class = {default = "Additive", "Additive"},
					TransparencyLayerID = {default = 10, 10},
				}
			},
			{
				editSection = true,
				specialKeyWords = [[<Property name="MaterialFlag" value="_F23_TRANSLUCENT" />]],
				removeSection = true
			},
			{
				precedingKeyWords = "Flags",
				pasteSectionAfter = true
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
			-- 		-- [[<Property name="Name" value="Base" />]],
			-- 		[[<Property name="Name" value="group7_Halo" />]],
			-- 		[[<Property name="Name" value="group7_Halo5" />]],
			-- 		[[<Property name="Name" value="Halo_outer3" />]],
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
end
lyr.tweakTables.clearRadar = clearRadar

local cleanBurnGlow = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR\BURNGLOWPOLY_MAT.MATERIAL.EXML]],
				[[MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR\BURNGLOWPOLY_MAT3.MATERIAL.EXML]],
				[[MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR\COCKPITA_INTERIOR_BURNGLOWPOLY_MAT.MATERIAL.EXML]],
				[[MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\COCKPITA_INTERIOR_BURNGLOWPOLY_MAT.MATERIAL.EXML]],
				[[MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR\COCKPITA_INTERIOR_BURNGLOWPOLY_MAT.MATERIAL.EXML]],
				[[MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\COCKPITA_INTERIOR_BURNGLOWPOLY_MAT.MATERIAL.EXML]],
				[[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT\COCKPITA_INTERIOR_BURNGLOWPOLY_MAT.MATERIAL.EXML]],
				[[MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR\BURNGLOWPOLY_MAT.MATERIAL.EXML]],
			},
			{
				fields = {
					Class = "Additive",
					TransparencyLayerID = 10
				}
			},
			{
				pkw1st = "Flags",
				skw = [[<Property name="MaterialFlag" value="_F23_TRANSLUCENT" />]],
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.cleanBurnGlow = cleanBurnGlow

local bioshipCanopyTweaks = function(tweakName, tweakState)
	local tweak = {
		["MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN"] = {
			{
				specialKeyWords = {
					[[<Property name="Name" value="pCube9" />]],
					[[<Property name="Name" value="pCube10" />]],
				},
				removeSection = true
			},
			{
				specialKeyWords = {
					[[<Property name="Name" value="NostrilsVFXref" />]],
				},
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.bioshipCanopyTweaks = bioshipCanopyTweaks

local sentinelshipCockpitTweaks = function(tweakName, tweakState)
	local tweak = {
		["MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT.SCENE.EXML"] = {
			{
				specialKeyWords = {
					[[<Property name="Name" value="SentinelCableL" />]],
					[[<Property name="Name" value="SentinelCableR" />]],
					[[<Property name="Name" value="CableSpinnerL" />]],
					[[<Property name="Name" value="CableSpinnerR" />]],
				},
				removeSection = true
			},
			{
				skw = {"Name", "SUB1HatchFrameL", lyr.ignore, "MATERIAL"},
				fields = {
					Value = {copy = true}
				}
			},
			{
				skw = {
					{"Name", "HatchFrameL", lyr.ignore, "MATERIAL"},
					{"Name", "HatchFrameR", lyr.ignore, "MATERIAL"},
				},
				fields = {
					Value = {paste = true}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.sentinelshipCockpitTweaks = sentinelshipCockpitTweaks

local noShipMuzzleFlashes = function(tweakName, tweakState)
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
end
lyr.tweakTables.noShipMuzzleFlashes = noShipMuzzleFlashes

local spaceDustCleaner = function(tweakName, tweakState)
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
					NumberOfParticles = "@*"..0.15,
					Alpha = "@*"..0.40,
					Lifetime = "@*"..0.5,
					FadeTime = "@*"..0.5
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.spaceDustCleaner = spaceDustCleaner

local noSpeedTunnel = function(tweakName, tweakState)
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
end
lyr.tweakTables.noSpeedTunnel = noSpeedTunnel

local itemTeleporterRange = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 250 or math.max(100, tweakState)

	local tweak = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {"ID", "SHIP_TELEPORT"},
				fields = {
					Bonus = {default = 100, tweakState}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.itemTeleporterRange = itemTeleporterRange

local bioshipItemTeleporter = function(tweakName, tweakState)
	tweakState = type(lyr.tweakStates.itemTeleporterRange) ~= "number" and 250 or math.max(100, lyr.tweakStates.itemTeleporterRange)

	local tweak = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = [[<Property name="ID" value="SHIP_TELEPORT" />]],
				precedingKeyWords = {"StatBonuses", "GcStatsBonus.xml"},
				copySection = true
			},
			{
				specialKeyWords = [[<Property name="ID" value="SHIPSCAN_ALIEN" />]],
				precedingKeyWords = "StatBonuses",
				pasteSection = true
			},
			lyr:checkTweak("itemTeleporterRange") and {
				specialKeyWords = [[<Property name="ID" value="SHIPSCAN_ALIEN" />]],
				precedingKeyWords = "StatBonuses",
				fields = {
					Bonus = tweakState
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.bioshipItemTeleporter = bioshipItemTeleporter

local shipAndVehicleInventoryRange = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 125 or math.max(50, tweakState)

	local tweak = {
		{
			mbinPaths = [[GCGAMEPLAYGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					ShipInteractRadius = {default = 50, tweakState}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.shipAndVehicleInventoryRange = shipAndVehicleInventoryRange

local improvedShipScannerPulse = function(tweakName, tweakState)
	local superShipScannerPulse = lyr.tweakStates.superShipScannerPulse == true

	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MinShipScanBuildings = {default = 0, superShipScannerPulse and 16 or 8},
					MaxShipScanBuildings = {default = 2, superShipScannerPulse and 32 or 16}
				}
			}
		},
		["METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN"] = {
			{
				skw = {"ID", "SHIP", "ScanType", "Ship"},
				thisLine = true,
				fields = {
					ScanType = {default = "Ship", superShipScannerPulse and "DebugPlanet" or "Ship"},
				}
			},
			{
				skw = {"ID", "SHIP"},
				fields = {
					PulseRange = {default = 10000, 15000},
					PulseTime = {default = 3, 2},
					PlayAudioOnMarkers = {default = true, true},
					ChargeTime = {default = 10, 5}
				}
			}
		},
		superShipScannerPulse and {
			mbinPaths = [[GCDEBUGOPTIONS.GLOBAL.EXML]],
			{
				fields = {
					GenerateFarLodBuildingDist = 10000
				}
			}
		} or false
	}

	return tweak
end
lyr.tweakTables.improvedShipScannerPulse = improvedShipScannerPulse

local noAsteroidsOnScanner = function(tweakName, tweakState)
	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AsteroidScanMaxShown = {default = 3, 0},
					AsteroidScanTime = {default = 70, 0},
					AsteroidScanRange = {default = 1000000, 0}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.noAsteroidsOnScanner = noAsteroidsOnScanner

local shipAtmosphereHover = function(tweakName, tweakState)
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
end
lyr.tweakTables.shipAtmosphereHover = shipAtmosphereHover

local shipSpeedMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 1.25 or math.max(0.1, tweakState)

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
					MaxSpeed = "@*"..tweakState,
					BoostMaxSpeed = "@*"..tweakState
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.shipSpeedMult = shipSpeedMult

local actualSpeedReadouts = function(tweakName, tweakState)
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
end
lyr.tweakTables.actualSpeedReadouts = actualSpeedReadouts

local flightRestrictionMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 0.25 or math.max(0.01, tweakState)

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					NoBoostStationDistance = "@*"..tweakState,
					NoBoostAnomalyDistance = "@*"..tweakState,
					NoBoostSpaceAnomalyDistance = "@*"..tweakState,
					NoBoostFreighterDistance = "@*"..tweakState,
					NoBoostShipDistance = "@*"..tweakState,
					MiniWarpMinPlanetDistance = "@*"..tweakState,
					MiniWarpPlanetRadius = "@*"..tweakState,
					MiniWarpStationRadius = "@*"..tweakState,
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.flightRestrictionMult = flightRestrictionMult

local stoppingMarginMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 0.75 or math.max(0.1, tweakState)

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpStoppingMarginPlanet = "@*"..tweakState,
					MiniWarpStoppingMarginDefault = "@*"..tweakState,
					MiniWarpStoppingMarginLong = "@*"..tweakState,
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.stoppingMarginMult = stoppingMarginMult

local pulseDriveSpeedMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 2.5 or math.max(0.5, tweakState)

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpSpeed = "@*"..tweakState,
					MiniWarpChargeTime = 2,
					MiniWarpCooldownTime = 1,
					MiniWarpShakeStrength = 0.5,
					MiniWarpTopSpeedTime = math.min(0.5, 0.1*tweakState)
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.pulseDriveSpeedMult = pulseDriveSpeedMult

local reducePulseDriveFlash = function(tweakName, tweakState)
	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpFlashIntensity = {default = 0.9, 0.125},
					MiniWarpFlashDuration = {default = 0.9, 0.75},
					MiniWarpFlashDelay = {default = 0, 0}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.reducePulseDriveFlash = reducePulseDriveFlash

local preciseNavigation = function(tweakName, tweakState)
	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpHUDArrowAttractAngle = {default = 10, 8},
					MiniWarpHUDArrowAttractAngleStation = {default = 5, 4},
					MiniWarpHUDArrowAttractAngleOtherPlayerStuff = {default = 2, 0.5},
					MiniWarpHUDArrowAttractAngleSaveBeacon = {default = 2.5, 0.5},
					MiniWarpHUDArrowAttractAngleDense = {default = 4, 2},
					MiniWarpHUDArrowNumMarkersToBeDense = {default = 6, 8},
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.preciseNavigation = preciseNavigation

local noPulseDriveExitDelay = function(tweakName, tweakState)
	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpExitTime = {default = 0.5, 0.01}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.noPulseDriveExitDelay = noPulseDriveExitDelay

local fastPulseDriveExit = function(tweakName, tweakState)
	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpExitSpeed = {default = 1000, lyr:useProxyMult("shipSpeedMult", 1250)},
					MiniWarpExitSpeedStation = {default = 500, lyr:useProxyMult("shipSpeedMult", 625)}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.fastPulseDriveExit = fastPulseDriveExit

local autoStationOrient = function(tweakName, tweakState)	-- deprecated
	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					EnablePulseDriveSpaceStationOrient = {default = false, true}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.autoStationOrient = autoStationOrient

local noLandingPadRotation = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				-- [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\ABANDONEDPARTS\DUNGEONENTRANCE\ENTITIES\DUNGEONENTRANCE.ENTITY.EXML]],	-- handled in derelict tweaks
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\COMBATFRIGATE\ENTITIES\COMBATDATA.ENTITY.EXML]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\ENTITIES\FRIGATEDATA.ENTITY.EXML]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\DIPLOMATICFRIGATE\ENTITIES\DIPLOMATICDATA.ENTITY.EXML]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\INDUSTRIALFRIGATE\ENTITIES\INDUSTRIALDATA.ENTITY.EXML]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\SCIENCEFRIGATE\ENTITIES\SCIENCEDATA.ENTITY.EXML]],
				[[MODELS\COMMON\SPACECRAFT\FRIGATES\SUPPORTFRIGATE\ENTITIES\SUPPORTDATA.ENTITY.EXML]],
				-- [[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.EXML]],	-- handled in freighter tweaks
				[[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\PIRATECRUISER\ENTITIES\PIRATEDATA.ENTITY.EXML]],
				[[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\PIRATECRUISERLOD0\ENTITIES\PIRATEDATA.ENTITY.EXML]],
				[[MODELS\COMMON\UTILS\SPAWNERS\FAKEOUTPOST\ENTITIES\FAKEOUTPOSTDATA.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGPAD\LANDINGPADTRADER\ENTITIES\LANDINGPADTRADER.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGZONE\LANDINGZONE\ENTITIES\LANDINGZONE.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGBEACON\ENTITIES\LANDINGZONE.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGPAD\ENTITIES\LANDINGDATA.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGZONE\ENTITIES\LANDINGZONEDATA.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\LANDINGZONE\LANDINGZONE\ENTITIES\LANDINGZONE.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LANDINGPAD\ENTITIES\LANDINGPAD.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\ROCKY\ISLANDSPIKEHUGE\ENTITIES\LANDPAD.ENTITY.EXML]],
				[[MODELS\SPACE\ANOMALY\ANOMALY\ENTITIES\ANOMALY.ENTITY.EXML]],
				[[MODELS\SPACE\ATLASSTATION\SHARED\ENTITIES\ATLASSTATION.ENTITY.EXML]],
				-- [[MODELS\SPACE\NEXUS\NEXUS\ENTITIES\NEXUS.ENTITY.EXML]],	-- causes issues
				-- [[MODELS\SPACE\NEXUS\NEXUSEXTERIOR\ENTITIES\NEXUSEXTERIOR.ENTITY.EXML]],
				-- [[MODELS\SPACE\POI\PARTS\DUNGEON_ENTRANCE\ENTITIES\DUNGEONENTRANCE.ENTITY.EXML]],	-- handled in derelict tweaks
				[[MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.EXML]],
				[[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION_ABANDONED.ENTITY.EXML]],
				[[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.EXML]],
				[[MODELS\SPACE\SPACESTATION\SPACESTATIONTYPEB\ENTITIES\STATIONTYPEB.ENTITY.EXML]],
			},
			{
				skw = {"Template", "GcOutpostComponentData.xml"},
				fields = {
					RotateToDock = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.noLandingPadRotation = noLandingPadRotation

local landingPadRotateSpeedMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 3 or math.max(0.25, tweakState)

	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DockingRotateSpeed = tweakState,
				}
			}
		},
		["GCAISPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DockingRotateStartTime = {default = 1, 0.1},
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.landingPadRotateSpeedMult = landingPadRotateSpeedMult

local dockingSpeedMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 2 or math.max(0.5, tweakState)

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
				[[MODELS\SPACE\SPACESTATION\SPACESTATIONTYPEB\ENTITIES\STATIONTYPEB.ENTITY.EXML]],
			},
			{
				skw = {"Template", "GcOutpostComponentData.xml"},
				fields = {
					ApproachRange = "@*"..(1+tweakState)*0.5,	-- seems to be a switch point for landing parameters, adjustment required for stations otherwise ships overshoot
					ApproachSpeed = "@*"..tweakState,	-- max is limited by "OutpostDockMaxApproachSpeed" on "GCAISPACESHIPGLOBALS.GLOBAL.MBIN". in addition, displayed speed is doubled in space
					TakeOffSpeed = "@*"..tweakState,	-- minimum 243?
					TakeOffBoost = "@*"..(1+tweakState)*0.5,	-- immediate speed to achieve, overrides TakeOffSpeed minimum, can be used to catapult
					PostTakeOffExtraPlayerSpeed = "@*"..tweakState,
				}
			},
		},
	}

	return tweak
end
lyr.tweakTables.dockingSpeedMult = dockingSpeedMult

local dockingSpeedLimitOverride = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 1000 or math.max(tweakState, 100)

	local tweak = {
		{
			mbinPaths = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					OutpostDockMaxApproachSpeed = {default = 400, tweakState},
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.dockingSpeedLimitOverride = dockingSpeedLimitOverride

local autoEjectOnLanding = function(tweakName, tweakState)
	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AutoEjectOnLanding = {default = false, true}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.autoEjectOnLanding = autoEjectOnLanding

local looterExplorer = function(tweakName, tweakState)
	local tweak = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LootAttractDistance = {default = 120, 1000},
					LootAttractTime = {default = 0.2, 1.0},
					LootDampForce = {default = 0.5, 0.5},
					LootCollectDistance = {default = 20, 100}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.looterExplorer = looterExplorer

local moreAnomalyDetectors = function(tweakName, tweakState)
	local tweak = {
		["GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					RareAsteroidDataProductOdds = {default = 0.005, 0.02}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.moreAnomalyDetectors = moreAnomalyDetectors

local noSolarSailSounds = {}
noSolarSailSounds.tweaks = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\ROOTJNT.ENTITY.EXML]],
			{
				pkw = "GcPlayAudioAction.xml",
				fs = {
					[[<Property name="Sound" value="Ship_Pirate_TakeOff_Wings" />]],
					[[<Property name="Sound" value="Ship_Pirate_Landing_Wings" />]]
				},
				removeSections = true
			}
		}
	}

	return tweak
end
noSolarSailSounds.files = function(tweakName, tweakState)
	local noSound, audioPath = [[\lyr_files\noSound.wem]], [[\AUDIO\WINDOWS\]]

	-- Ship_Pirate_TakeOff_Wings
	-- Ship_Pirate_Landing_Wings
	-- Ship_Pirate_Sails_..RoundSails_Fold|RoundSails_Unfold|Square_Fold|Square_Unfold|Triangle_Fold|Triangle_Unfold
	local files = {
		-- "14278489", "87416841", "106604826", "122198098", "404862835", "590024475", "749463220", "964787097", "1036879977",
		-- "133530908", "280717768", "347709070", "564659927", "629029282", "680313859", "747816979", "755851135", "772139050", "1047678438",
		"147097617", "285354758", "926861982", "400892939", "599169810", "874155811"
	}

	---@diagnostic disable-next-line: assign-type-mismatch
	for k, v in next, files do files[k] = {noSound, audioPath..v..".WEM"} end

	return files
end
lyr.tweakFiles.noSolarSailSounds = noSolarSailSounds.files
lyr.tweakTables.noSolarSailSounds = noSolarSailSounds.tweaks

local unifiedCalmWarps = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				{[[MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN]], [[LYR/EFFECTS/WARPTUNNEL.SCENE.MBIN]]},
				{[[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN]], [[LYR/MATERIALS/TUNNEL_STARS_SLOW.MATERIAL.MBIN]]},
				{[[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALTMAT.MATERIAL.MBIN]], [[LYR/MATERIALS/TUNNEL_STARS_MEDIUM.MATERIAL.MBIN]]},
				{[[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALT2MAT.MATERIAL.MBIN]], [[LYR/MATERIALS/TUNNEL_STARS_FAST.MATERIAL.MBIN]]},
				{[[MODELS\EFFECTS\WARP\WARPTUNNEL\SCROLLINGWAVESMAT.MATERIAL.MBIN]], [[LYR/MATERIALS/TUNNEL_WAVE.MATERIAL.MBIN]]},
			}
		},
		{
			mbinPaths = [[LYR/MATERIALS/TUNNEL_STARS_SLOW.MATERIAL.MBIN]],
			{
				skw = [[<Property name="Name" value="gUVScrollStepVec4" />]],
				fields = {
					y = 0.02
				}
			}
		},
		{
			mbinPaths = [[LYR/MATERIALS/TUNNEL_STARS_MEDIUM.MATERIAL.MBIN]],
			{
				skw = [[<Property name="Name" value="gUVScrollStepVec4" />]],
				fields = {
					y = 0.03
				}
			}
		},
		{
			mbinPaths = [[LYR/MATERIALS/TUNNEL_STARS_FAST.MATERIAL.MBIN]],
			{
				skw = [[<Property name="Name" value="gUVScrollStepVec4" />]],
				fields = {
					y = 0.05
				}
			}
		},
		{
			mbinPaths = [[LYR/MATERIALS/TUNNEL_WAVE.MATERIAL.MBIN]],
			{
				skw = [[<Property name="Name" value="gMaterialColourVec4" />]],
				fields = {
					x = 0,
					y = 0,
					z = 0
				}
			}
		},
		{
			mbinPaths = [[LYR/EFFECTS/WARPTUNNEL.SCENE.MBIN]],
			{
				skw = {
					[[<Property name="Name" value="LightLargeStreaks" />]],
					[[<Property name="Name" value="LightStreaksSmall1" />]],
					[[<Property name="Name" value="LightStreaks1" />]],
					[[<Property name="Name" value="LightStreaksSmall" />]],
					[[<Property name="Name" value="LightStreaks" />]],
					[[<Property name="Name" value="LightArms" />]],
					[[<Property name="Name" value="gradientCloud" />]],
					[[<Property name="Name" value="gradientCloudAlt" />]]
				},
				removeSection = true
			},
			{
				skw = {"Name", "stars", "Name", "MATERIAL"},
				fields = {
					Value = [[LYR/MATERIALS/TUNNEL_STARS_SLOW.MATERIAL.MBIN]]
				}
			},
			{
				skw = {"Name", "stars1", "Name", "MATERIAL"},
				fields = {
					Value = [[LYR/MATERIALS/TUNNEL_STARS_MEDIUM.MATERIAL.MBIN]]
				}
			},
			{
				skw = {"Name", "stars2", "Name", "MATERIAL"},
				fields = {
					Value = [[LYR/MATERIALS/TUNNEL_STARS_FAST.MATERIAL.MBIN]]
				}
			},
			{
				skw = {
					{"Name", "scrollingwave", "Name", "MATERIAL"},
					{"Name", "scrollingwave9", "Name", "MATERIAL"},
					{"Name", "scrollingwaveALT", "Name", "MATERIAL"},
					{"Name", "scrollingwaveALT1", "Name", "MATERIAL"}
				},
				fields = {
					Value = [[LYR/MATERIALS/TUNNEL_WAVE.MATERIAL.MBIN]]
				}
			}
		},
		{
			mbinPaths = [[GCSIMULATIONGLOBALS.GLOBAL.EXML]],
			{
				fields = {
					WarpTunnelFile = [[LYR/EFFECTS/WARPTUNNEL.SCENE.MBIN]],
					BlackHoleTunnelFile = [[LYR/EFFECTS/WARPTUNNEL.SCENE.MBIN]],
					TeleportTunnelFile = [[LYR/EFFECTS/WARPTUNNEL.SCENE.MBIN]],
					PortalTunnelFile = [[LYR/EFFECTS/WARPTUNNEL.SCENE.MBIN]],
					PortalStoryTunnelFile = [[LYR/EFFECTS/WARPTUNNEL.SCENE.MBIN]],
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.unifiedCalmWarps = unifiedCalmWarps

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
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE, NUMBERtoSTRING",
	ADD_FILES = lyr:processTweakFiles(),
	MODIFICATIONS =	lyr:processTweakTables()
}