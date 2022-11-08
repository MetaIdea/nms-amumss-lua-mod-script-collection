local lyr = {tweakStates = {}, tweakTables = {}, ignore = "IGNORE"}
local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Ship Tweaks 1.41]]
local gameVersion = "4.0+"

--[[
	Below in the 'lyr.tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Delete the line
		
	Ways to (re)enable a modification:
		• Remove double dashes at the beginning of the line
		• Set the value of the modification to true / its original
]]

lyr.tweakStates = {
	glareNuker = true,						-- removes the glare from ship displays and a few other vehicle / ship related areas
	clearScreens = true,					-- cleans vehicle & ship screens up; removes flicker and wave effects
	bioshipCleanCanopy = true,				-- removes the green hazy hue from sides of the bioship canopies
	bioshipNoSmoke = true,					-- the bioship nostrils (that puff a smoke inside the cockpit from time to time) are removed
	looterExplorer = true,					-- ship loot collection distance is massively increased
	improvedShipScannerPulse = true,		-- halves the ship scanner pulse cooldown, boosts max icon range, displays more results
	superShipScannerPulse = true,			-- yields lots of results that are normally not available to ship scanners, dependant on 'improvedShipScannerPulse'
	noAsteroidsOnScanner = true,			-- hides rich asteroids from ship scanner pulse
	distantItemTeleporter = true,			-- increases the ship teleporter upgrade range
	shipSpeedMult = 1.25,					-- ship top speeds in all conditions are multiplied by the given value
	spaceDustCleaner = true,				-- reduces the amount and the visibility of the particle effects during boosting / using pulse drive
	noSpeedTunnel = true,					-- removes the speed tunnel effect from ships, pairs nicely with 'spaceDustCleaner'
	flightRestrictionMult = 0.25,			-- some flight restrictions are eased by the given multiplier value for a more pleasant joyride
	stoppingMarginMult = 0.75,				-- pulse drive stopping margins are multiplied by the given value (very low multipliers are not recommended)
	shipAtmosphereHover = true,				-- allows ship hovering in the atmospheres
	pulseDriveSpeedMult = 2.5,				-- pulse drive top speed is multiplied by the given value, it shakes the ship more and cools down faster
	reducePulseDriveFlash = true,			-- the initial screen flash caused by the activation of pulse drive is toned down
	preciseNavigation = true,				-- the auto-locking feature of the pulse drive now have more strict angles and ignores other player stuff
	noPulseDriveExitDelay = true,			-- pulse drive exit delay is removed and in turn the camera zoom effect is also disabled
	fastPulseDriveExit = true,				-- exit from pulse drive at faster speeds
--	autoStationOrient = true,				-- ship will orient towards enterances of space objects (not recommended)
--	autoEjectOnLanding = true,				-- automatically eject from the ship on landing
}

---@param tweakName string
---@return boolean 
function lyr:checkTweak(tweakName)
	local tweakValue = self.tweakStates[tweakName]

	if tweakValue == nil then return false
	elseif type(tweakValue) == "boolean" then return tweakValue
	elseif type(tweakValue) == "number" then
		if string.find(tweakName, "Mult", 1, true) ~= nil then return tweakValue > 0 and tweakValue ~= 1
		elseif string.find(tweakName, "Time", 1, true) ~= nil then return tweakValue > 0
		else return true end
	else return false end
end

---@param mode string
---@param ... string
---@return boolean 
function lyr:checkTweaks(mode, ...)
	local tweakNames = {...}
	local breakPoint = (mode == "and" and true) or (mode == "or" and false)
	local bp = breakPoint

	for tweakName in next, tweakNames do
		local tweakState = self:checkTweak(tweakName)

		breakPoint = (mode == "and" and (tweakState and bp)) or (mode == "or" and (tweakState or bp))
		if breakPoint ~= bp then break end
	end

	return breakPoint
end

---@param tweakName string
---@param defaultValue number
---@return number
function lyr:useProxyMult(tweakName, defaultValue)
	defaultValue = defaultValue or 1

	local multValue = self.tweakStates[tweakName]

	return self:checkTweak(tweakName) and multValue*defaultValue or defaultValue
end

---@param longString string
---@return string|nil
---@return string|nil
function lyr:parsePair(longString)
	local t = {}

	-- for w in string.gmatch(longString, "\"(%g+)\"") do t[#t+1] = w end
	for w in string.gmatch(longString, [["(%g+)"]]) do t[#t+1] = w end

	return t[1], t[2]
end

lyr.sectionOps = {
	addSection = true,
	addAfterSection = true,
	copySection = true,
	saveSection = true,
	pasteSection = true,
	pasteAfterSection = true,
	removeSection = true,
	removeLine = true,
	replaceLine = true
}

function lyr:isSectionOp(changeTable)
	for k in next, changeTable do if self.sectionOps[k] then return true end end
	return false
end

---@return table
function lyr:processTweakTables()
	local tweakTables = self.tweakTables
	local modificationTables = {}

	for _, tweakTable in next, tweakTables do if tweakTable then
		local modificationTable = {
			MBIN_CHANGE_TABLE = {}
		}; local mbinChangeTables = modificationTable.MBIN_CHANGE_TABLE

		for mbinPath, changeTables in pairs(tweakTable) do
			local mbinChangeTable = {
				MBIN_FILE_SOURCE = type(mbinPath)=="string" and mbinPath or changeTables.mbinPaths,
				EXML_CHANGE_TABLE = {}
			}; local exmlChangeTables = mbinChangeTable.EXML_CHANGE_TABLE

			for _, changeTable in ipairs(changeTables) do if changeTable then
				local exmlChangeTable = {
					COMMENT = changeTable.comment or nil,
					LINE_OFFSET = changeTable.thisLine and 0 or changeTable.lineOffset or nil,
					SECTION_UP = changeTable.selectLevel or nil,
					PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or changeTable.precedingKeyWordsFirst or nil,
					PRECEDING_FIRST = changeTable.precedingKeyWordsFirst and true or nil,
					SPECIAL_KEY_WORDS = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])~="table" and changeTable.specialKeyWords or nil,
					FOREACH_SKW_GROUP = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])=="table" and changeTable.specialKeyWords or nil,
					WHERE_IN_SECTION = changeTable.findSections or changeTable.findSectionsWhereAllMatch or nil,
					WHERE_IN_SUBSECTION = changeTable.findSubSections or changeTable.findAllSubSections or changeTable.findSubSectionsWhereAllMatch or changeTable.findAllSubSectionsWhereAllMatch or nil,
					WISEC_LOP = changeTable.findSectionsWhereAllMatch and "AND" or nil,
					WISUBSEC_LOP = changeTable.findSubSectionsWhereAllMatch and "AND" or nil,
					WISUBSEC_OPTION = (changeTable.findAllSubSections or changeTable.findAllSubSectionsWhereAllMatch) and "ALL" or nil,
					REPLACE_TYPE = changeTable.replaceAll and "ALL" or changeTable.replaceRaw and "RAW" or nil,
					MATH_OPERATION = changeTable.multiply and "*" or changeTable.mathOp or nil,
					INTEGER_TO_FLOAT = changeTable.preserveIntegers and "PRESERVE" or nil,
					REMOVE = changeTable.removeSection and "SECTION" or changeTable.removeLine and "LINE" or nil,
					ADD_OPTION = (changeTable.addAfterSection or changeTable.pasteAfterSection) and "ADDafterSECTION" or changeTable.replaceLine and "REPLACEatLINE" or nil,
					ADD = (changeTable.addAfterSection or changeTable.addSection or changeTable.replaceLine) and changeTable.section or nil,
					SECTION_SAVE_TO = changeTable.copySection or changeTable.saveSection or nil,
					SECTION_KEEP = changeTable.saveSection and true or nil,
					SECTION_EDIT = changeTable.editSection or nil,
					SECTION_ADD_NAMED = changeTable.pasteSection or changeTable.pasteAfterSection or nil,
					VALUE_MATCH = changeTable.match and changeTable.match.value or nil,
					VALUE_MATCH_OPTIONS = changeTable.match and changeTable.match.option or nil,
					VALUE_CHANGE_TABLE = changeTable.fields and {} or nil
				}; local valueChangeTable = exmlChangeTable.VALUE_CHANGE_TABLE

				if changeTable.fields then
					for fieldName, fieldValue in pairs(changeTable.fields) do
						if type(fieldValue) == "table" then
							if fieldValue.altered ~= nil and fieldValue.altered ~= fieldValue.default then
								table.insert(valueChangeTable, {fieldName, fieldValue.altered})
							elseif fieldValue.multiplier and fieldValue.multiplier ~= 1 then
								table.insert(valueChangeTable, {fieldName, changeTable.multiply and fieldValue.multiplier or fieldValue.default * fieldValue.multiplier})
							elseif type(fieldName) == "number" then
								table.insert(valueChangeTable, fieldValue)
							end
						else
							table.insert(valueChangeTable, {fieldName, fieldValue})
						end
					end

					valueChangeTable = #valueChangeTable > 0 and valueChangeTable or nil
					exmlChangeTable.VALUE_CHANGE_TABLE = valueChangeTable
				end

				if valueChangeTable or self:isSectionOp(changeTable) then
					table.insert(exmlChangeTables, exmlChangeTable)
				end
			end end

			table.insert(mbinChangeTables, mbinChangeTable)
		end

		table.insert(modificationTables, modificationTable)
	end	end

	return modificationTables
end

lyr.tweakTables = {
	glareNuker = lyr:checkTweak("glareNuker") and {
		{
			mbinPaths = {
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR/GLASS_MAT1.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITB_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/COCKPIT/SAILSHIPCOCKPITA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
				"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR/GLASS_MAT.MATERIAL.MBIN",
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
	},
	clearScreens = lyr:checkTweak("clearScreens") and {
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
		}
	},
	bioshipCleanCanopy = lyr:checkTweak("bioshipCleanCanopy") and {
		["MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN"] = {
			{
				specialKeyWords = {
					{lyr:parsePair([[<Property name="Name" value="pCube9" />]])},
					{lyr:parsePair([[<Property name="Name" value="pCube10" />]])},
				},
				removeSection = true
			}
		}
	},
	bioshipNoSmoke = lyr:checkTweak("bioshipNoSmoke") and {
		["MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN"] = {
			{
				specialKeyWords = {
					{lyr:parsePair([[<Property name="Name" value="NostrilsVFXref" />]])},
				},
				removeSection = true
			}
		}
	},
	looterExplorer = lyr:checkTweak("looterExplorer") and {
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
	},
	improvedShipScannerPulse = lyr:checkTweak("improvedShipScannerPulse") and {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxIconRange = {default = 1200, altered = lyr.tweakStates.superShipScannerPulse and 100000 or 20000},
					MinShipScanBuildings = {default = 0, altered = lyr.tweakStates.superShipScannerPulse and 6 or 4},
					MaxShipScanBuildings = {default = 2, altered = lyr.tweakStates.superShipScannerPulse and 30 or 20}
				}
			}
		},
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"ShipScan"},
				fields = {
					ScanType = {default = "Ship", altered = lyr.tweakStates.superShipScannerPulse and "DebugPlanet" or "Ship"},
					PulseRange = {default = 10000, altered = lyr.tweakStates.superShipScannerPulse and 100000 or 20000},
					PulseTime = {default = 3, altered = 5},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 10, altered = 5}
				}
			}
		}
	},
	noAsteroidsOnScanner = lyr:checkTweak("noAsteroidsOnScanner") and {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AsteroidScanMaxShown = {default = 3, altered = 0},
					AsteroidScanTime = {default = 70, altered = 0},
					AsteroidScanRange = {default = 1000000, altered = 0}
				}
			}
		}
	},
	distantItemTeleporter = lyr:checkTweak("distantItemTeleporter") and {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {"ID", "SHIP_TELEPORT"},
				fields = {
					Bonus = {default = 100, altered = 500}
				}
			}
		}
	},
	shipSpeedMult = lyr:checkTweak("shipSpeedMult") and {
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
	},
	spaceDustCleaner = lyr:checkTweak("spaceDustCleaner") and {
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
	},
	noSpeedTunnel = lyr:checkTweak("noSpeedTunnel") and {
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
	},
	flightRestrictionMult = lyr:checkTweak("flightRestrictionMult") and {
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
	},
	stoppingMarginMult = lyr:checkTweak("stoppingMarginMult") and {
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
	},
	shipAtmosphereHover = lyr:checkTweak("shipAtmosphereHover") and {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"PlanetEngine"},
				replaceAll = true,
				fields = {
					MinSpeed = 0.1;
				}
			}
		}
	},
	pulseDriveSpeedMult = lyr:checkTweak("pulseDriveSpeedMult") and {
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
	},
	reducePulseDriveFlash = lyr:checkTweak("reducePulseDriveFlash") and {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpFlashIntensity = {default = 0.9, altered = 0.075},
					MiniWarpFlashDuration = {default = 0.9, altered = 0.75},
					MiniWarpFlashDelay = {default = 0, altered = 0}
				}
			}
		}
	},
	preciseNavigation = lyr:checkTweak("preciseNavigation") and {
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
	},
	noPulseDriveExitDelay = lyr:checkTweak("noPulseDriveExitDelay") and {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpExitTime = {default = 0.5, altered = 0.01}
				}
			}
		}
	},
	fastPulseDriveExit = lyr:checkTweak("fastPulseDriveExit") and {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpExitSpeed = {default = 1000, altered = lyr:useProxyMult("shipSpeedMult", 1250)},
					MiniWarpExitSpeedStation = {default = 500, altered = lyr:useProxyMult("shipSpeedMult", 625)}
				}
			}
		}
	},
	autoStationOrient = lyr:checkTweak("autoStationOrient") and {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					EnablePulseDriveSpaceStationOrient = {default = false, altered = true}
				}
			}
		}
	},
	autoEjectOnLanding = lyr:checkTweak("autoEjectOnLanding") and {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AutoEjectOnLanding = {default = false, altered = true}
				}
			}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_shipTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	lyr:processTweakTables()
}