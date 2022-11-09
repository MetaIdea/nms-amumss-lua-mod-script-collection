local lyr = {tweakStates = {}, tweakTables = {}, ignore = "IGNORE"}
local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Inventory Tweaks 1.5]]
local gameVersion = "4.06"

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
	swapTechAndCargo = true,				-- swaps the position of tech and cargo inventories like in pre-4.0
	hideCargoLabel = true,					-- hides the cargo label; cargo label gets overlapped with freighter tabs
	hideTechLabel = true,					-- hides the tech label; freighter inventory doesn't have this label
	restoreItemBars = true,					-- pre-4.0 item bars are restored for items with X/X display wherever possible
	smallerLabeledIcons = true,				-- makes the icons for the picked items / items in transfer pop-ups smaller
	smallerItemAmountFonts = true,			-- slightly decreases the size of fonts for the item amounts
--	smallerCargoIcons = true,				-- makes the cargo icons smaller (disabled by default due to hardcoded limit of max 50 icons)
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
	swapTechAndCargo = lyr:checkTweak("swapTechAndCargo") and {
		{
			mbinPaths = {
				"UI/INVENTORYPAGE.MBIN",
				"UI/BUYSCREEN.MBIN"
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 735, altered = 1250},
					Width = {default = 1012, altered = 1012},
					Height = {default = 290, altered = 290},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "TECHHEADER"},
				fields = {
					PositionX = {default = 1095, altered = 1095},
					PositionY = {default = 701, altered = 1220}
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 1060, altered = 735},
					Width = {default = 1012, altered = 1012},
					Height = {default = 480, altered = 480},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "CARGOHEADER"},
				fields = {
					PositionX = {default = 1095, altered = 1095},
					PositionY = {default = 1030, altered = 705}
				},
				replaceAll = true
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_TECH"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 735, altered = 1260},
					Width = {default = 1012, altered = 1012},
					Height = {default = 290, altered = 290},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_REGULAR"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 1070, altered = 735},
					Width = {default = 1012, altered = 1012},
					Height = {default = 480, altered = 480},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "INVENTORY"},
				fields = {
					PositionX = {default = 0, altered = 0},
					PositionY = {default = 0, altered = 0},
					Width = {default = 1010, altered = 1010},
					Height = {default = 1000, altered = 1000},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1.151079, altered = 1.151079},
				},
				replaceAll = true
			}
		}
	},
	hideCargoLabel = lyr:checkTweak("hideCargoLabel") and {
		["UI/INVENTORYPAGE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "INV_MAIN_LABEL"},
					{"ID", "CARGOICON"}
				},
				selectLevel = 1,
				fields = {
					IsHidden = {default = false, altered = true},
					A = 0
				},
				replaceAll = true
			}
		}
	},
	hideTechLabel = lyr:checkTweak("hideTechLabel") and {
		["UI/INVENTORYPAGE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "INV_TECH_LABEL"},
					{"ID", "TECHICON"}
				},
				selectLevel = 1,
				fields = {
					IsHidden = {default = false, altered = true},
					A = 0
				},
				replaceAll = true
			}
		}
	},
	restoreItemBars = lyr:checkTweak("restoreItemBars") and {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPickingUsesNumbers = {default = true, altered = false},
					ReplaceItemBarWithNumbers = {default = true, altered = false}
				}
			}
		}
	},
	smallerLabeledIcons = lyr:checkTweak("smallerLabeledIcons") and {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPicking = {default = true, altered = false}
				}
			}
		}
	},
	smallerItemAmountFonts = lyr:checkTweak("smallerItemAmountFonts") and {
		{
			mbinPaths = {
				"UI/COMPONENTS/INVENTORY/SQU_SLOT_ITEM.MBIN",
				"UI/SLOTS/SLOT_ITEM.MBIN"
			},
			{
				specialKeyWords = {
					{"ID", "TEXT_LONG"},
					{"ID", "TEXT"},
					{"ID", "TEXTLOW"},
					{"ID", "TEXTLOW_LONG"},
				},
				selectLevel = 1,
				fields = {
					FontHeight = 0.8,
					Height = 0.8
				},
				multiply = true,
				replaceAll = true
			}
		}
	},
	smallerCargoIcons = lyr:checkTweak("smallerCargoIcons") and {
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"] = {
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_LARGE.MBIN"},
				fields = {
					DataFilename = {default = "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_LARGE.MBIN", altered = "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_SMALL.MBIN"},
					Width = {default = 90, altered = 74},
					Height = {default = 90, altered = 74}
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKELARGE.MBIN"},
				fields = {
					DataFilename = {default = "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKELARGE.MBIN", altered = "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKESMALL.MBIN"},
					Width = {default = 90, altered = 74},
					Height = {default = 90, altered = 74}
				},
				replaceAll = true
			}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_inventoryTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	lyr:processTweakTables()
}