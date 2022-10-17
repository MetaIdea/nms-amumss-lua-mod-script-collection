local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Icon Tweaks 1.0]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are toggles for the changes. What they do is commented next to them. Change the value to 'false' to disable the modifications.
]]

local enabledTweaks = {
	reduceIconSizes = true,					-- reduces the sizes of all icons (recommended with bigger building icons)
	increaseUnknownBuildingRange = true,	-- increases the range unknown buildings are detectable
	disableLockedIconScaling = true,		-- disables scaling the focused icon up
	adjustIconOpacityRanges = true,			-- adjusts range-opacity relation of icons
	increaseClumpRange = true,				-- allows icons to clump up in a greater angle/radius
	increaseActualIconDistance = true,		-- increases the minimum distance to scale building icons down
}

--[[
	Below in the 'tweaks' table are the changes. If you'd like to change them directly, change the 'altered' values and leave 'default' ones as they are.
	Fields with same 'altered' and 'default' values won't be processed by AMUMSS. The 'default' values (generated pre-4.0) serve as more of a reference.
	Not every field value is changed. Some are only exposed for testing purposes and to toy around with, usually belonging to the same sections.
]]

local tweaks = {
	reduceIconSizes = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					SmallIconSize = {default = 32, altered = 24},
					LargeIconSize = {default = 48, altered = 36},
					CompassIconSize = {default = 48, altered = 48}
				}
			}
		}
	},
	increaseUnknownBuildingRange = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					UnknownBuildingRange = {default = 600, altered = 1000}
				}
			}
		}
	},
	disableLockedIconScaling = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HoverLockedIconScale = {default = 1.2, altered = 1.0}
				}
			}
		}
	},
	increaseClumpRange = {
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
	},
	adjustIconOpacityRanges = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularsNearIconOpacity = {default = 1, altered = 0.95},
					BinocularsNearIconDist = {default = 50, altered = 25},
					BinocularsNearIconFadeDist = {default = 150, altered = 50},
					BinocularsMidIconOpacity = {default = 0.65, altered = 0.75},
					BinocularsFarIconFadeDist = {default = 500, altered = 250},
					BinocularsFarIconDist = {default = 1000, altered = 500},
					BinocularsFarIconOpacity = {default = 0.2, altered = 0.25}
				}
			}
		}
	},
	increaseActualIconDistance = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HUDMarkerShowActualIconDistance = {default = 200, altered = 1000},
					HUDMarkerShowActualSpaceIconDistance = {default = 2000, altered = 10000}
				}
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
	MOD_FILENAME = "lyr_iconTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS =	{{MBIN_CHANGE_TABLE = processTweaksTable(tweaks)}}
}