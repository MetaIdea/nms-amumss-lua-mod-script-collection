local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Other Tweaks 5.20]]
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
	noToolMuzzleFlashes = true,					-- removes muzzle flashes from tool weapons
	noShipMuzzleFlashes = true,					-- removes muzzle flashes from ship weapons
	noToolRecoil = true,						-- removes tool recoil
	holsterLater = true,						-- lower and holster your weapon later (you can manually hold reload to holster)
	noAutoClimb = true,							-- disables ladder auto-climb feature, interact to climb instead
--	noHazardOverlays = true,					-- removes all of the hazard screen overlays (may be toned down from options but cannot be disabled from there)
	lessMaintenance = true,						-- some damaged objects; crates, tech debris and crashed freighter containers no longer require maintenance
	noPortalCharging = true,					-- removes portal charging steps
	shorterToastMessages = true,				-- shortens the toast message duration of expedition stages, milestones and planet discoveries
	fasterInteractions = true,					-- hold interactions require less... holding
	lessScreenFlashes = true,					-- reduces the duration and intensity of some screen flashes (entering/exiting vehicles, miniportals)
	blackScreenFlashes = true,					-- turns some screen flashes to black (entering/exiting vehicles, miniportals)
	noHitEffectsOnZeroDamage = true,			-- disables hit effects if no damage was dealt
	rapidToolScanner = true,					-- tool scanners recharge much faster and their range is bumped up a little
	darkerScannerPulse = true,					-- tones ALL of the (tool, vehicle, ship) scanner pulse colours down and makes it black
	noSentinelTerrainDamage = true,				-- sentinel projectiles damage the terrain no more
	learnMoreWords = 3,							-- learn more words from actions, value is average (setting to 3 will let you learn 2-4)
	noTextDelay = true,							-- no character or punctuation delays in dialogues (does not affect dialogue stopping "//"s or story diagloue delays)
	removeDoubleSlashes = true,					-- removes the dialogue stopper "//" from EVERYWHERE (relies on 'noTextDelay', ignored if 'replaceDoubleSlashes' is active)
--	replaceDoubleSlashes = "ENGLISH",			-- alters "//" in language files to simple text instead (relies on 'noTextDelay') (search this file for languages and use your own)
--	removeStoryTextDelays = true,				-- 'replaceDoubleSlashes' also removes the extra story dialogue delays from language files
	noTerrainFlatten = true,					-- options: true/"extended"; 'true' potentially disables terrain flattening, extended alters planet detail switches to do the same
--	cyclingQuickMenu = true,					-- quick menu cycles through the first and last items instead of stopping at them
--	hideQuickMenuControls = true,				-- hides quick menu controls
	stabilizedJetpack = true,					-- fixes the springy behaviour of player jetpacks, slightly boosts jetpack upward thrust
--	noAerialScans = true,						-- nukes most of the aerial scans from the game
	strictPlayerInteraction = true,				-- options: true/"remove"; other player interaction requires close range and direct angle, "remove" completely removes interaction
	widerRiderAngle = true,						-- reduces the head turn angle restriction while riding in first person camera, also allowing a wider angle to be scanned
	noUnitsReceivedVoice = true,				-- units received, units received, units received, units...
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local noToolMuzzleFlashes = function(tweakName, tweakState)
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
end
lyr.tweakTables.noToolMuzzleFlashes = noToolMuzzleFlashes

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

local noToolRecoil = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[GCPLAYERGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					GunRecoil = {default = 5, 0},
					LaserRecoil = {default = 2, 0},
					BeamRecoil = {default = 6, 0},
					GrenadeRecoil = {default = 10, 0},
					GunRecoilMin = {default = 0.15, 0},
					GunRecoilMax = {default = 1.6, 0},
  					GunRecoilSpring = {default = 0.33, 0},
  					BlastRecoilSpring = {default = 0.3, 0},
  					RailRecoilSpring = {default = 0.1, 0},
  					PulseRecoilSpring = {default = 0.19, 0},
  					CannonRecoilSpring = {default = 0.3, 0},
  					GunRecoilSettleSpring = {default = 0.4, 0},
  					WeaponZoomRecoilMultiplier = {default = 1.5, 0},
  					ThirdPersonRecoilMultiplier = {default = 2, 0}
				}
			}
		},
		{
			mbinPaths = [[METADATA\REALITY\TABLES\PLAYERWEAPONPROPERTIESTABLE.EXML]],
			{
				skw = {lyr.ignore, "GcPlayerWeaponPropertiesData.xml"},
				fs = [[<Property name="ShakeId" value="GUNSHAKE" />]],
				fields = {
					ShakeId = "NOSHAKE"
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.noToolRecoil = noToolRecoil

local holsterLater = function(tweakName, tweakState)
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
end
lyr.tweakTables.holsterLater = holsterLater

local noAutoClimb = function(tweakName, tweakState)
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
end
lyr.tweakTables.noAutoClimb = noAutoClimb

local noHazardOverlays = function(tweakName, tweakState)
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
end
lyr.tweakTables.noHazardOverlays = noHazardOverlays

local lessMaintenance = function(tweakName, tweakState)
	local tweak = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_LARGE_RARE/ENTITIES/CRATE_LARGE_RARE.ENTITY.MBIN"] = {
			{
				skw = {"Template", "GcMaintenanceComponentData.xml"},
				selectLevel = 1,
				removeSection = true
			},
			{
				fields = {
					TriggerAction = "MAINTDONE"
				}
			}
		},
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/PARTS/CONTAINERTERMINAL/ENTITIES/TERMINALCHAR.ENTITY.MBIN"] = {
			{
				skw = {"Template", "GcMaintenanceComponentData.xml"},
				selectLevel = 1,
				removeSection = true
			},
			{
				fields = {
					TriggerAction = "RADIATE"
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
end
lyr.tweakTables.lessMaintenance = lessMaintenance

local noPortalCharging = function(tweakName, tweakState)
	local tweak = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN"] = {
			{
				skw = {"Template", "GcMaintenanceComponentData.xml"},
				selectLevel = 1,
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.noPortalCharging = noPortalCharging

local shorterToastMessages = function(tweakName, tweakState)
	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"DiscoveryHelperTimings", "GcDiscoveryHelperTimings.xml"},
				fields = {
					DiscoverPlanetTotalTime = {default = 10, 3},
					DiscoverPlanetMessageWait = {default = 1, 0},
					DiscoverPlanetMessageTime = {default = 7, 3},
				}
			},
			{
				fields = {
					MilestoneStingDisplayTime = {default = 6, 3},
					StageStingDisplayTime = {default = 6, 3}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.shorterToastMessages = shorterToastMessages

local fasterInteractions = function(tweakName, tweakState)
	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					FrontendConfirmTimeMouseMultiplier = {default = 0.5, 0.5},
					FrontendConfirmTimeFast = {default = 0.35, 0.175},
					FrontendConfirmTime = {default = 0.7, 0.35},
					FrontendConfirmTimeSlow = {default = 1.6, 0.8}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.fasterInteractions = fasterInteractions

local lessScreenFlashes = function(tweakName, tweakState)
	local tweak = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniportalFlashStrength = {default = 0.8, 0.5},
					MiniportalFlashTime = {default = 0.8, 0.5},
					VehicleExitFlashStrength = {default = 0.8, 0.5},
					VehicleExitFlashTime = {default = 0.8, 0.5},
					ModelViewFlashTime = {default = 0.8, 0.1}
				}
			}
		},
		["GCGRAPHICSGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					TeleportFlashTime = {default = 1.5, 0.0}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.lessScreenFlashes = lessScreenFlashes

local blackScreenFlashes = function(tweakName, tweakState)
	local tweak = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"VehicleExitFlashColour","Colour.xml"},
				fields = {
					R = {default = 0, 0},
					G = {default = 0, 0},
					B = {default = 0, 0},
					A = {default = 1, 1}
				}
			},
			{
				specialKeyWords = {"MiniportalFlashColour","Colour.xml"},
				fields = {
					R = {default = 1, 0},
					G = {default = 1, 0},
					B = {default = 1, 0},
					A = {default = 1, 1}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.blackScreenFlashes = blackScreenFlashes

local noHitEffectsOnZeroDamage = function(tweakName, tweakState)
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
end
lyr.tweakTables.noHitEffectsOnZeroDamage = noHitEffectsOnZeroDamage

local rapidToolScanner = function(tweakName, tweakState)
	local tweak = {
		["METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN"] = {
			{
				skw = [[<Property name="ID" value="TOOL" />]],
				fields = {
					PulseRange = {default = 200, 250},
					PulseTime = {default = 1, 2},
					PlayAudioOnMarkers = {default = true, true},
					ChargeTime = {default = 30, 15}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.rapidToolScanner = rapidToolScanner

local darkerScannerPulse = function(tweakName, tweakState)
	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"ScannerColour1","Colour.xml"},
				fields = {
					R = {default = 0.3, 0},
					G = {default = 0.9, 0},
					B = {default = 1, 0},
					A = {default = 1, 0.1}
				}
			},
			{
				specialKeyWords = {"ScannerColour2","Colour.xml"},
				fields = {
					R = {default = 1, 0},
					G = {default = 0.5, 0},
					B = {default = 0.2, 0},
					A = {default = 1, 0.1}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.darkerScannerPulse = darkerScannerPulse

local noSentinelTerrainDamage = function(tweakName, tweakState)
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
end
lyr.tweakTables.noSentinelTerrainDamage = noSentinelTerrainDamage

local learnMoreWords = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 3 or tweakState

	local tweak = {
		["METADATA/REALITY/TABLES/REWARDTABLE.MBIN"] = {
			{
				specialKeyWords = [[<Property name="Reward" value="GcRewardTeachWord.xml">]],
				findSections = {{"AmountMin", "1"}, {"AmountMax", "1"}},
				fields = {
					AmountMin = math.max(1, tweakState-1),
					AmountMax = math.max(3, tweakState+1)
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.learnMoreWords = learnMoreWords

local noTextDelay = function(tweakName, tweakState)
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
end
lyr.tweakTables.noTextDelay = noTextDelay

local removeDoubleSlashes = function(tweakName, tweakState)
	if not lyr:checkTweak("noTextDelay") or lyr:checkTweak("replaceDoubleSlashes") then return false end

	local tweak = {
		{
			mbinPaths = [[METADATA\UI\SPECIALSTYLESIMAGESDATA.MBIN]],
			{
				specialKeyWords = [[<Property name="Name" value="SLASH" />]],
				removeSection = true,
			}
		}
	}

	return tweak
end
lyr.tweakTables.removeDoubleSlashes = removeDoubleSlashes

local replaceDoubleSlashes = function(tweakName, tweakState)
	if not lyr:checkTweak("noTextDelay") then return false end
	local language = lyr:checkTweak(tweakName); if not language then return false end; language = language:upper()
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
				-- [[LANGUAGE\NMS_LOC9_]]..language..[[.MBIN]],
				[[LANGUAGE\NMS_UPDATE3_]]..language..[[.MBIN]],
			},
			regexBefore = {
				{[[&lt;IMG&gt;SLASH&lt;&gt;]], [[//]], "g"},
				-- {[[&lt;IMG&gt;SLASH&lt;&gt;]], [[\/\/]], "g"},
				lyr:checkTweak("removeStoryTextDelays") and {[[&lt;DELAY&gt;[0-9.]*&lt;&gt;]], "", "g"} or nil
			},
		}
	}

	return tweak
end
lyr.tweakTables.replaceDoubleSlashes = replaceDoubleSlashes

local noTerrainFlatten = function(tweakName, tweakState)
	local tweak = {
		["GCENVIRONMENTGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					TerrainFlattenMin = 0,
					TerrainFlattenMax = 0
				}
			},
			tweakState == "extended" and {
				skw = {lyr.ignore, "GcEnvironmentProperties.xml"},
				fields = {
					PlanetObjectSwitch = "@*2.5",	--2000
					PlanetLodSwitch0 = "@*2.5",	--2000
					PlanetLodSwitch0Elevation = "@*2.5",	--2000
					PlanetLodSwitch1 = "@*5",	--2000
					PlanetLodSwitch2 = "@*1.5",	--10000
					-- PlanetLodSwitch3 = "@*2",	--20000
				},
				replaceAll = true
			} or false
		}
	}

	return tweak
end
lyr.tweakTables.noTerrainFlatten = noTerrainFlatten

local cyclingQuickMenu = function(tweakName, tweakState)
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
end
lyr.tweakTables.cyclingQuickMenu = cyclingQuickMenu

local hideQuickMenuControls = function(tweakName, tweakState)
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
end
lyr.tweakTables.hideQuickMenuControls = hideQuickMenuControls

local stabilizedJetpack = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				[[GCPLAYERGLOBALS.GLOBAL.EXML]],
			},
			{
				fields = {
					JetpackUpForce = {default = 30, 33},
					-- JetpackIgnitionForce = {default = 60, 0},
					JetpackIgnitionTime = {default = 0.4, 0},	-- it seems this is the time it takes for ignition thrust to be taken over by normal force
					JetpackMinIgnitionTime = {default = 0.2, 0.2}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.stabilizedJetpack = stabilizedJetpack

local noAerialScans = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				[[METADATA\REALITY\TABLES\REWARDTABLE.EXML]],
				-- [[METADATA\SIMULATION\MISSIONS\COREMISSIONTABLE.EXML]],
				[[METADATA\SIMULATION\MISSIONS\TABLES\COREMISSIONTABLE.EXML]],
				[[METADATA\SIMULATION\MISSIONS\TABLES\SEASONALBESPOKEMISSIONTABLE.EXML]],
				[[METADATA\SIMULATION\MISSIONS\TABLES\STARTEDONUSEMISSIONTABLE.EXML]],
			},
			{
				skw = [[<Property name="DoAerialScan" value="True" />]],
				fields = {
					DoAerialScan = false
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.noAerialScans = noAerialScans

local strictPlayerInteraction = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.EXML]],
			tweakState == "remove" and {
				skw = [[<Property name="Template" value="GcInteractionComponentData.xml">]],
				selectLevel = 1,
				removeSection = true
			} or {
				skw = [[<Property name="Template" value="GcInteractionComponentData.xml">]],
				fields = {
					AttractDistanceSq = 9,
					InteractDistance = 3,
					InteractInvertFace = true,
					InteractAngle = 60
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.strictPlayerInteraction = strictPlayerInteraction

local widerRiderAngle = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[GCCAMERAGLOBALS.GLOBAL.EXML]],
			{
				fields = {
					MaxCreatureRidingYaw = 135
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.widerRiderAngle = widerRiderAngle

local noUnitsReceivedVoice = function()
	local noSound, audioPath = [[\lyr_files\noSound.wem]], [[\AUDIO\WINDOWS\]]

	-- VO_Units_Received.wav
	local files = {"635847312", "353583721", "578432176", "330331555", "913825638", "488211833", "607162938", "711379869", "488195662", "127071094", "425512159", "487233905", "896250406", "110021819"}

	---@diagnostic disable-next-line: assign-type-mismatch
	for k, v in next, files do files[k] = {noSound, audioPath..v..".WEM"} end

	return files
end
lyr.tweakFiles.noUnitsReceivedVoice = noUnitsReceivedVoice

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
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE, NUMBERtoSTRING",
	ADD_FILES = lyr:processTweakFiles(),
	MODIFICATIONS =	lyr:processTweakTables()
}