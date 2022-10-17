local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Inventory Tweaks 1.0]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are toggles for the changes. What they do is commented next to them. Change the value to 'false' to disable the modifications.
]]

local enabledTweaks = {
	smallerItemInHand = true,				-- makes the item in hand smaller
	restoreItemBars = true,					-- restores the item bars instead of showing X/X where possible
	swapTechAndCargo = true,				-- swaps the position of tech and cargo inventories
	hideCargoLabel = true,					-- hides the cargo label (so it will not overlap with freighter tabs)
	hideTechLabel = true,					-- hides the tech label (so it will be uniform as freighter page doesn't have it)
	smallerCargoIcons = false,				-- makes the cargo icons smaller (there seems to be a hardcoded (?) limit of 50 active icons so might not be that useful)
}

--[[
	Below in the 'tweaks' table are the changes. If you'd like to change them directly, change the 'altered' values and leave 'default' ones as they are.
	Fields with same 'altered' and 'default' values won't be processed by AMUMSS. The 'default' values (generated pre-4.0) serve as more of a reference.
	Not every field value is changed. Some are only exposed for testing purposes and to toy around with, usually belonging to the same sections.
]]

local tweaks = {
	misc = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPicking = {default = true, altered = not enabledTweaks.smallerItemInHand},
					BigPickingUsesNumbers = {default = true, altered = not enabledTweaks.restoreItemBars},
					ReplaceItemBarWithNumbers = {default = true, altered = not enabledTweaks.restoreItemBars},
				}
			}
		}
	},
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
			},
		
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

local combineTweaks = function(tweakTables)
	local combinedTweaks = {}

	for tweakName, tweakTable in pairs(tweakTables) do
		if enabledTweaks[tweakName] or tweakName == "misc" then
			for mbinPath, changeTables in pairs(tweakTable) do
				if string.find(mbinPath, ".EXML", 1, true) then
					mbinPath = string.gsub(mbinPath, ".EXML", ".MBIN")
				elseif not string.find(mbinPath, ".MBIN", 1, true) then
					mbinPath = mbinPath..".MBIN"
				end
				combinedTweaks[mbinPath] = combinedTweaks[mbinPath] or {}

				for _, changeTable in pairs(changeTables) do
					if changeTable.forEachSpecialKeyWords then
						local forEachSpecialKeyWords = changeTable.forEachSpecialKeyWords
						changeTable.forEachSpecialKeyWords = nil

						for i, specialKeyWordPair in pairs(forEachSpecialKeyWords) do
							local newChangeTable = {}

							for k,v in pairs(changeTable) do
								newChangeTable[k] = v
							end

							newChangeTable.specialKeyWords = specialKeyWordPair

							table.insert(combinedTweaks[mbinPath], newChangeTable)
						end
					else
						table.insert(combinedTweaks[mbinPath], changeTable)
					end
				end
			end
		end
	end

	return combinedTweaks
end

local processTweaksTable = function(tweakTables)
	local masterChangeTable = {}
	local combinedTweaks = combineTweaks(tweakTables)

	for mbinPath, changeTables in pairs(combinedTweaks) do
		local mbinChangeTable = {
			MBIN_FILE_SOURCE = mbinPath,
			EXML_CHANGE_TABLE = {}
		}
		local exmlChangeTable = mbinChangeTable.EXML_CHANGE_TABLE

		for _, changeTable in pairs(changeTables) do
			local convertedChangeTable = {
				SECTION_UP = changeTable.selectLevel or nil,
				PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or nil,
				SPECIAL_KEY_WORDS = changeTable.specialKeyWords or nil,
				REPLACE_TYPE = changeTable.replaceAll and "ALL" or nil,
				REMOVE = changeTable.removeSection and "SECTION" or nil,
				MATH_OPERATION = changeTable.multiply and "*" or nil,
			}

			if changeTable.removeSection then
				table.insert(exmlChangeTable, changeTable.priority or #exmlChangeTable+1, convertedChangeTable)
			elseif changeTable.addSection then
				convertedChangeTable.ADD_OPTION = "ADDafterSECTION"
				convertedChangeTable.ADD = changeTable.section
				table.insert(exmlChangeTable, changeTable.priority or #exmlChangeTable+1, convertedChangeTable)
			else
				local valueChangeTable = {}

				for fieldName, fieldValue in pairs(changeTable.fields) do
					if type(fieldValue) == "table" then
						if changeTable.multiply then
							if fieldValue.multiplier then
								table.insert(valueChangeTable, {fieldName, fieldValue.multiplier})
							end
						else
							if fieldValue.altered ~= nil and fieldValue.altered ~= fieldValue.default then
								table.insert(valueChangeTable, {fieldName, fieldValue.altered})
							elseif fieldValue.multiplier then
								table.insert(valueChangeTable, {fieldName, fieldValue.default * fieldValue.multiplier})
							end
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

		if #exmlChangeTable > 0 then
			table.insert(masterChangeTable, mbinChangeTable)
		end
	end

	return masterChangeTable
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_inventoryTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS =	{{MBIN_CHANGE_TABLE = processTweaksTable(tweaks)}}
}