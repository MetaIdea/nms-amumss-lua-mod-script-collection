local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Inventory Tweaks 1.01]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are modification names and what they do is commented next to them. 
	Change the values to 'false' (without ''; someModification = false,) to disable the modifications.
]]

local enabledTweaks = {
	swapTechAndCargo = true,				-- swaps the position of tech and cargo inventories like in pre-4.0
	hideCargoLabel = true,					-- hides the cargo label; cargo label gets overlapped with freighter tabs
	hideTechLabel = true,					-- hides the tech label; freighter inventory doesn't have this label
	restoreItemBars = true,					-- pre-4.0 item bars are restored for items with X/X display wherever possible
	smallerLabeledIcons = true,				-- makes the icons for the picked items / items in transfer pop-ups smaller
	smallerItemAmountFonts = true,			-- slightly decreases the size of fonts for the item amounts
	smallerCargoIcons = false,				-- makes the cargo icons smaller (disabled by default due to hardcoded limit of max 50 icons)
}

local tweaks = {
	swapTechAndCargo = {
		["UI/INVENTORYPAGE.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_TECH"},
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
				specialKeyWords = {"ID", "INV_TECH_LABEL"},
				fields = {
					PositionX = {default = 1092, altered = 1092},
					PositionY = {default = 703, altered = 1218},
					IsHidden = {default = false, altered = enabledTweaks.hideCargoLabel}
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "SQU_INV_REGULAR"},
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
				specialKeyWords = {"ID", "INV_MAIN_LABEL"},
				fields = {
					PositionX = {default = 1092, altered = 1092},
					PositionY = {default = 1028, altered = 703},
					IsHidden = {default = false, altered = enabledTweaks.hideTechLabel}
				},
				replaceAll = true
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_TECH"},
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
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_REGULAR"},
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
	hideCargoLabel = {
		["UI/INVENTORYPAGE.MBIN"] = {
			{
				specialKeyWords = {"ID", "INV_MAIN_LABEL"},
				selectLevel = 1,
				fields = {
					IsHidden = {default = false, altered = true},
					A = 0
				},
				replaceAll = true
			}
		}
	},
	hideTechLabel = {
		["UI/INVENTORYPAGE.MBIN"] = {
			{
				specialKeyWords = {"ID", "INV_TECH_LABEL"},
				selectLevel = 1,
				fields = {
					IsHidden = {default = false, altered = true},
					A = 0
				},
				replaceAll = true
			}
		}
	},
	restoreItemBars = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPickingUsesNumbers = {default = true, altered = false},
					ReplaceItemBarWithNumbers = {default = true, altered = false}
				}
			}
		}
	},
	smallerLabeledIcons = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPicking = {default = true, altered = false}
				}
			}
		}
	},
	smallerItemAmountFonts = {
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
	smallerCargoIcons = {
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

local processTweaksTable
processTweaksTable = function(tweakTables)
	local modificationTables = {}

	for tweakName, tweakTable in next, tweakTables do
		if enabledTweaks[tweakName] or tweakName == "misc" then
			for mbinPath, changeTables in pairs(tweakTable) do
				local mbinChangeTable = {
					MBIN_FILE_SOURCE = type(mbinPath)=="string" and mbinPath or changeTables.mbinPaths,
					EXML_CHANGE_TABLE = {}
				}; local exmlChangeTable = mbinChangeTable.EXML_CHANGE_TABLE

				for _, changeTable in ipairs(changeTables) do
					local convertedChangeTable = {
						SECTION_UP = changeTable.selectLevel or nil,
						PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or nil,
						SPECIAL_KEY_WORDS = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])~="table" and changeTable.specialKeyWords or nil,
						FOREACH_SKW_GROUP = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])=="table" and changeTable.specialKeyWords or nil,
						REPLACE_TYPE = changeTable.replaceAll and "ALL" or nil,
						MATH_OPERATION = changeTable.multiply and "*" or nil,
						REMOVE = changeTable.removeSection and "SECTION" or nil,
						ADD_OPTION = changeTable.addSection and "ADDafterSECTION" or nil,
						ADD = changeTable.addSection and changeTable.section or nil,
						SECTION_SAVE_TO = changeTable.copySection or nil,
						SECTION_EDIT = changeTable.editSection or nil,
						SECTION_ADD_NAMED = changeTable.pasteSection or nil
					}

					if changeTable.addSection or changeTable.removeSection or changeTable.copySection or changeTable.pasteSection then
						table.insert(exmlChangeTable, convertedChangeTable)
					elseif changeTable.fields then
						local valueChangeTable = {}

						for fieldName, fieldValue in pairs(changeTable.fields) do
							if type(fieldValue) == "table" then
								if fieldValue.altered ~= nil and fieldValue.altered ~= fieldValue.default then
									table.insert(valueChangeTable, {fieldName, fieldValue.altered})
								elseif fieldValue.multiplier and fieldValue.multiplier ~= 1 then
									table.insert(valueChangeTable, {fieldName, changeTable.multiply and fieldValue.multiplier or fieldValue.default * fieldValue.multiplier})
								end
							else
								table.insert(valueChangeTable, {fieldName, fieldValue})
							end
						end

						if #valueChangeTable > 0 then
							convertedChangeTable.VALUE_CHANGE_TABLE = valueChangeTable
							table.insert(exmlChangeTable, convertedChangeTable)
						end
					end
				end

				if #exmlChangeTable > 0 or type(changeTables.mbinPaths)=="table" then
				    local modificationTable = {MBIN_CHANGE_TABLE = {mbinChangeTable}}
					table.insert(modificationTables, modificationTable)
				end
			end
		end
	end

	return modificationTables
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_inventoryTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	processTweaksTable(tweaks)
}