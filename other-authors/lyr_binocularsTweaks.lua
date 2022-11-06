local lyr = {tweakStates = {}, tweakTables = {}, ignore = "IGNORE"}
local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Binoculars Tweaks 1.2]]
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
	noBinocsFlash = true,					-- using binoculars no longer cause a screen flash
	normalBinocsFilters = true,				-- a normal filter is applied on all analysis modes instead of coloured ones
	equalizedBinocsFoV = true,				-- removes the slight FoV difference between the initial binocs zoom level and the first person view
	betterScanlines = true,					-- the known and unknown target colours are stressed while the building scan effects are toned down
	fasterAnalysis = true,					-- analysis times are reduced down to a second
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
	noBinocsFlash = lyr:checkTweak("noBinocsFlash") and {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularFlashTime = {default = 0.24, altered = 0.0},
					BinocularFlashStrength = {default = 0.9, altered = 0.0}
				}
			}
		},
	},
	normalBinocsFilters = lyr:checkTweak("normalBinocsFilters") and {
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
	},
	equalizedBinocsFoV = lyr:checkTweak("equalizedBinocsFoV") and {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"ZoomType","Far"},
				fields = {
					FoV = {default = 70, altered = 75},
					WalkSpeed = {default = 0.5, altered = 0.75}
				}
			}
		}
	},
	betterScanlines = lyr:checkTweak("betterScanlines") and {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"BuildingScanEffect"},
				fields = {
					R = {default = 0, altered = 0},
					G = {default = 0.7, altered = 0.7},
					B = {default = 1, altered = 1},
					A = {default = 1, altered = 0.15}
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
	},
	fasterAnalysis = lyr:checkTweak("fasterAnalysis") and {
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
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_binocularsTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	lyr:processTweakTables()
}