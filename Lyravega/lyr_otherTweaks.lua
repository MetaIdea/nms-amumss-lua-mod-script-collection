local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Other Tweaks 1.7]]
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
	noToolMuzzleFlashes = true,				-- removes muzzle flashes from tool weapons
	noShipMuzzleFlashes = true,				-- removes muzzle flashes from ship weapons
	noToolRecoil = true,					-- removes tool recoil
	holsterLater = true,					-- lower and holster your weapon later (you can manually hold reload to holster)
	noAutoClimb = true,						-- disables ladder auto-climb feature, interact to climb instead
	noHazardOverlays = true,				-- removes all of the hazard screen overlays
	lessMaintenance = true,					-- some damaged objects; crates and tech debris no longer require maintenance
	noPortalCharging = true,				-- removes portal charging steps
	shorterToastMessages = true,			-- shortens the toast message duration of expedition stages, milestones and planet discoveries
	fasterInteractions = true,				-- hold interactions require less... holding
	lessScreenFlashes = true,				-- reduces the duration and intensity of some screen flashes (entering/exiting vehicles, miniportals)
	blackScreenFlashes = true,				-- turns some screen flashes to black (entering/exiting vehicles, miniportals)
	noHitEffectsOnZeroDamage = true,		-- disables hit effects if no damage was dealt
	rapidToolScanner = true,				-- tool scanners recharge much faster and their range is bumped up a little
	darkerScannerPulse = true,				-- tones ALL of the (tool, vehicle, ship) scanner pulse colours down and makes it black
	noSentinelTerrainDamage = true,			-- sentinel projectiles damage the terrain no more
	learnMoreWords = 3,						-- learn more words from actions, value is average (setting to 3 will let you learn 2-4)
	noTextDelay = true,						-- no character or punctuation delays in dialogues (does not affect dialogue stopping "//"s or story diagloue delays)
	removeDoubleSlashes = true,				-- removes the dialogue stopper "//" from EVERYWHERE (relies on 'noTextDelay', ignored if 'replaceDoubleSlashes' is active)
--	replaceDoubleSlashes = "ENGLISH",		-- alters "//" in language files to simple text instead (relies on 'noTextDelay') (search this file for languages and use your own)
--	removeStoryTextDelays = true,			-- 'replaceDoubleSlashes' also removes the extra story dialogue delays from language files
	noTerrainFlatten = true,				-- disables planet terrain flattening/deflattening effect
--	cyclingQuickMenu = true,				-- quick menu cycles through the first and last items instead of stopping at them
--	hideQuickMenuControls = true,			-- hides quick menu controls
}

--#region METHODS

dofile("lyr_methods.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local noToolMuzzleFlashes = function()
	if not lyr:checkTweak("noToolMuzzleFlashes") then return false end

	local tweak = {
		["METADATA/REALITY/TABLES/PLAYERWEAPONPROPERTIESTABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"WeaponClass", "Projectile"},
					{"WeaponClass", "Laser"},
					{"WeaponClass", "ChargedProjectile"},
					{"WeaponClass", "Grenade"},
					{"WeaponClass", "TerrainEditor"}
				},
				selectLevel = 1,
				fields = {
					FlashMuzzleOnProjectileFire = false,
					UseMuzzleLight = false,
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.noToolMuzzleFlashes = noToolMuzzleFlashes

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

local noToolRecoil = function()
	if not lyr:checkTweak("noToolRecoil") then return false end

	local tweak = {
		{
			mbinPaths = [[GCPLAYERGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					GunRecoil = {default = 5, altered = 0},
					LaserRecoil = {default = 2, altered = 0},
					BeamRecoil = {default = 6, altered = 0},
					GrenadeRecoil = {default = 10, altered = 0},
					GunRecoilMin = {default = 0.15, altered = 0},
					GunRecoilMax = {default = 1.6, altered = 0},
  					GunRecoilSpring = {default = 0.33, altered = 0},
  					BlastRecoilSpring = {default = 0.3, altered = 0},
  					RailRecoilSpring = {default = 0.1, altered = 0},
  					PulseRecoilSpring = {default = 0.19, altered = 0},
  					CannonRecoilSpring = {default = 0.3, altered = 0},
  					GunRecoilSettleSpring = {default = 0.4, altered = 0}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noToolRecoil = noToolRecoil

local holsterLater = function()
	if not lyr:checkTweak("holsterLater") then return false end

	local tweak = {
		{
			mbinPaths = [[GCPLAYERGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					ReloadButtonHoldTimeToHolster = 1,
					WeaponLowerDelay = 5,
					WeaponHolsterDelay = 30
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.holsterLater = holsterLater

local noAutoClimb = function()
	if not lyr:checkTweak("noAutoClimb") then return false end

	local tweak = {
		{
			mbinPaths = [[GCCHARACTERGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					LadderDistanceToAutoMount = -1
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noAutoClimb = noAutoClimb

local noHazardOverlays = function()
	if not lyr:checkTweak("noHazardOverlays") then return false end

	local tweak = {
		{
			mbinPaths = [[GCUIGLOBALS.GLOBAL.MBIN]],
			{
				specialKeyWords = {
					{"HazardTextures", lyr.ignore},
					{"HazardNormalMaps", lyr.ignore},
					{"HazardHeightmaps", lyr.ignore},
				},
				fields = {
					Value = ""
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.noHazardOverlays = noHazardOverlays

local lessMaintenance = function()
	if not lyr:checkTweak("lessMaintenance") then return false end

	local tweak = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_LARGE_RARE/ENTITIES/CRATE_LARGE_RARE.ENTITY.MBIN"] = {
			{
				precedingKeyWords = {"GcMaintenanceComponentData.xml"},
				removeSection = true
			},
			{
				fields = {
					TriggerAction = "MAINTDONE"
				}
			}
		},
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/PARTS/DEBRILARGECONTAINER/ENTITIES/TECHDEBRIS.ENTITY.MBIN"] = {
			{
				fields = {
					AutoCompleteOnStart = true
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.lessMaintenance = lessMaintenance

local noPortalCharging = function()
	if not lyr:checkTweak("noPortalCharging") then return false end

	local tweak = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN"] = {
			{
				precedingKeyWords = {"GcMaintenanceComponentData.xml"},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.noPortalCharging = noPortalCharging

local shorterToastMessages = function()
	if not lyr:checkTweak("shorterToastMessages") then return false end

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"DiscoveryHelperTimings", "GcDiscoveryHelperTimings.xml"},
				fields = {
					DiscoverPlanetTotalTime = {default = 10, altered = 3},
					DiscoverPlanetMessageWait = {default = 1, altered = 0},
					DiscoverPlanetMessageTime = {default = 7, altered = 3},
				}
			},
			{
				fields = {
					MilestoneStingDisplayTime = {default = 6, altered = 3},
					StageStingDisplayTime = {default = 6, altered = 3}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.shorterToastMessages = shorterToastMessages

local fasterInteractions = function()
	if not lyr:checkTweak("fasterInteractions") then return false end

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					FrontendConfirmTimeMouseMultiplier = {default = 0.5, altered = 0.5},
					FrontendConfirmTimeFast = {default = 0.35, altered = 0.175},
					FrontendConfirmTime = {default = 0.7, altered = 0.35},
					FrontendConfirmTimeSlow = {default = 1.6, altered = 0.8}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.fasterInteractions = fasterInteractions

local lessScreenFlashes = function()
	if not lyr:checkTweak("lessScreenFlashes") then return false end

	local tweak = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniportalFlashStrength = {default = 0.8, altered = 0.5},
					MiniportalFlashTime = {default = 0.8, altered = 0.5},
					VehicleExitFlashStrength = {default = 0.8, altered = 0.5},
					VehicleExitFlashTime = {default = 0.8, altered = 0.5},
					ModelViewFlashTime = {default = 0.8, altered = 0.1}
				}
			}
		},
		["GCGRAPHICSGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					TeleportFlashTime = {default = 1.5, altered = 0.0}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.lessScreenFlashes = lessScreenFlashes

local blackScreenFlashes = function()
	if not lyr:checkTweak("blackScreenFlashes") then return false end

	local tweak = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"VehicleExitFlashColour","Colour.xml"},
				fields = {
					R = {default = 0, altered = 0},
					G = {default = 0, altered = 0},
					B = {default = 0, altered = 0},
					A = {default = 1, altered = 1}
				}
			},
			{
				specialKeyWords = {"MiniportalFlashColour","Colour.xml"},
				fields = {
					R = {default = 1, altered = 0},
					G = {default = 1, altered = 0},
					B = {default = 1, altered = 0},
					A = {default = 1, altered = 1}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.blackScreenFlashes = blackScreenFlashes

local noHitEffectsOnZeroDamage = function()
	if not lyr:checkTweak("noHitEffectsOnZeroDamage") then return false end

	local tweak = {
		{
			mbinPaths = [[GCGAMEPLAYGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					PlayHitEffectsOnZeroDamage = false
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noHitEffectsOnZeroDamage = noHitEffectsOnZeroDamage

local rapidToolScanner = function()
	if not lyr:checkTweak("rapidToolScanner") then return false end

	local tweak = {
		["METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN"] = {
			{
				skw = {"ID", "SHIP", "ScanType", "Tool"},
				thisLine = true,
				fields = {
					ScanType = {default = "Tool", altered = "Tool"},
				}
			},
			{
				skw = {lyr:parsePair([[<Property name="ID" value="TOOL" />]])},
				fields = {
					PulseRange = {default = 200, altered = 250},
					PulseTime = {default = 1, altered = 2},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 30, altered = 15}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.rapidToolScanner = rapidToolScanner

local darkerScannerPulse = function()
	if not lyr:checkTweak("darkerScannerPulse") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"ScannerColour1","Colour.xml"},
				fields = {
					R = {default = 0.3, altered = 0},
					G = {default = 0.9, altered = 0},
					B = {default = 1, altered = 0},
					A = {default = 1, altered = 0.1}
				}
			},
			{
				specialKeyWords = {"ScannerColour2","Colour.xml"},
				fields = {
					R = {default = 1, altered = 0},
					G = {default = 0.5, altered = 0},
					B = {default = 0.2, altered = 0},
					A = {default = 1, altered = 0.1}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.darkerScannerPulse = darkerScannerPulse

local noSentinelTerrainDamage = function()
	if not lyr:checkTweak("noSentinelTerrainDamage") then return false end

	local tweak = {
		["METADATA/PROJECTILES/PROJECTILETABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"Id", "ROBOTGRENADE"},
					{"Id", "ROBOTGRENADE2"},
					{"Id", "SENMECHCANON"}
				},
				fields = {
					BehaviourFlags = "ScareCreatures, ExplosionForce"
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noSentinelTerrainDamage = noSentinelTerrainDamage

local learnMoreWords = function()
	if not lyr:checkTweak("learnMoreWords") then return false end

	local tweak = {
		["METADATA/REALITY/TABLES/REWARDTABLE.MBIN"] = {
			{
				specialKeyWords = {lyr:parsePair([[<Property name="Reward" value="GcRewardTeachWord.xml">]])},
				findSections = {{"AmountMin", "1"}, {"AmountMax", "1"}},
				fields = {
					AmountMin = math.max(1, lyr.tweakStates.learnMoreWords-1),
					AmountMax = math.max(3, lyr.tweakStates.learnMoreWords+1)
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.learnMoreWords = learnMoreWords

local noTextDelay = function()
	if not lyr:checkTweak("noTextDelay") then return false end

	local tweak = {
		{
			mbinPaths = [[METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN]],
			{
				precedingKeyWords = "PunctuationDelays",
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.noTextDelay = noTextDelay

local removeDoubleSlashes = function()
	if not lyr:checkTweak("noTextDelay") or not lyr:checkTweak("removeDoubleSlashes") or lyr:checkTweak("replaceDoubleSlashes") then return false end

	local tweak = {
		{
			mbinPaths = [[METADATA\UI\SPECIALSTYLESIMAGESDATA.MBIN]],
			{
				specialKeyWords = {lyr:parsePair([[<Property name="Name" value="SLASH" />]])},
				removeSection = true,
			}
		}
	}

	return tweak
end; lyr.tweakTables.removeDoubleSlashes = removeDoubleSlashes

local replaceDoubleSlashes = function()
	if not lyr:checkTweak("noTextDelay") then return false end
	local language = lyr:checkTweak("replaceDoubleSlashes"); if not language then return false end; language = language:upper()
	local languages = {
		BRAZILIANPORTUGUESE = true,
		DUTCH = true,
		ENGLISH = true,
		FRENCH = true,
		GERMAN = true,
		ITALIAN = true,
		JAPANESE = true,
		KOREAN = true,
		LATINAMERAICANSPANISH = true,
		POLISH = true,
		PORTUGUESE = true,
		RUSSIAN = true,
		SIMPLIFIEDCHINESE = true,
		SPANISH = true,
		TENCENTCHINESE = true,
		TRADITIONALCHINESE = true,
		USENGLISH = true,
	}; if not languages[language] then return false end

	local tweak = {
		{
			mbinPaths = {
				[[LANGUAGE\NMS_LOC1_]]..language..[[.MBIN]],
				[[LANGUAGE\NMS_LOC4_]]..language..[[.MBIN]],
				[[LANGUAGE\NMS_LOC5_]]..language..[[.MBIN]],
				[[LANGUAGE\NMS_LOC6_]]..language..[[.MBIN]],
				[[LANGUAGE\NMS_LOC7_]]..language..[[.MBIN]],
				[[LANGUAGE\NMS_LOC8_]]..language..[[.MBIN]],
				[[LANGUAGE\NMS_UPDATE3_]]..language..[[.MBIN]],
			},
			regexBefore = {
				{"&lt;IMG&gt;SLASH&lt;&gt;", "\\/\\/", "g"},
				lyr:checkTweak("removeStoryTextDelays") and {"&lt;DELAY&gt;[0-9.]*&lt;&gt;", "", "g"} or nil
			}
		}
	}

	return tweak
end; lyr.tweakTables.replaceDoubleSlashes = replaceDoubleSlashes

local noTerrainFlatten = function()
	if not lyr:checkTweak("noTerrainFlatten") then return false end

	local tweak = {
		["GCENVIRONMENTGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					TerrainFlattenMin = 0,
					TerrainFlattenMax = 0
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noTerrainFlatten = noTerrainFlatten

local cyclingQuickMenu = function()
	if not lyr:checkTweak("cyclingQuickMenu") then return false end

	local tweak = {
		{
			mbinPaths = [[GCUIGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					QuickMenuAllowCycle = true
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.cyclingQuickMenu = cyclingQuickMenu

local hideQuickMenuControls = function()
	if not lyr:checkTweak("hideQuickMenuControls") then return false end

	local tweak = {
		{
			mbinPaths = [[GCUIGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					HideQuickMenuControls = true
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.hideQuickMenuControls = hideQuickMenuControls

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_otherTweaks.pak",
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