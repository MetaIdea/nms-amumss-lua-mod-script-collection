local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Icon Tweaks 1.1]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are modification names, and what they do is commented next to them. 
	Change a value to 'false' (without ''; someModification = false,) to disable the modification.
]]

local enabledTweaks = {
	smallerIcons = true,					-- reduces the sizes of all icons except the compass ones (recommended use with bigger hexagon icons)
	betterBuildingDetection = true,			-- increases the unknown building detection range
	noFocusedIconResize = true,				-- focused icons no longer grow in size
	shorterIconFadeDistance = true,			-- icons start fading out at a shorter distance but at a less steep intervals
	moreClumpyIcons = true,					-- allows icons of the same type to clump up in a greater angle/radius
	retainBuildingIconSizes = true,			-- building icons get scaled down at a much greater distance
}

local ignore = "IGNORE"

for tweakName, tweakValue in next, enabledTweaks do
	if string.find(tweakName, "Mult", 1, true) ~= nil and type(tweakValue) == "boolean" then enabledTweaks[tweakName] = 1 end
end

local tweaks = {
	smallerIcons = {
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
	betterBuildingDetection = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					UnknownBuildingRange = {default = 600, altered = 1000}
				}
			}
		}
	},
	noFocusedIconResize = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HoverLockedIconScale = {default = 1.2, altered = 1.0}
				}
			}
		}
	},
	shorterIconFadeDistance = {
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
	moreClumpyIcons = {
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
	retainBuildingIconSizes = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HUDMarkerShowActualIconDistance = {default = 200, multiplier = 2000},
					HUDMarkerShowActualSpaceIconDistance = {default = 2000, multiplier = 20000}
				},
				multiply = true
			}
		}
	}
}

local processTweaksTable
processTweaksTable = function(tweakTables)
	local modificationTables = {}

	for tweakName, tweakTable in next, tweakTables do
		if tweakName == "misc" or type(enabledTweaks[tweakName]) == "boolean" and enabledTweaks[tweakName]
		or type(enabledTweaks[tweakName]) == "number" and enabledTweaks[tweakName] ~= 1 and enabledTweaks[tweakName] > 0 then
			for mbinPath, changeTables in pairs(tweakTable) do
				local mbinChangeTable = {
					MBIN_FILE_SOURCE = type(mbinPath)=="string" and mbinPath or changeTables.mbinPaths,
					EXML_CHANGE_TABLE = {}
				}; local exmlChangeTable = mbinChangeTable.EXML_CHANGE_TABLE

				for _, changeTable in ipairs(changeTables) do
					local convertedChangeTable = {
						SECTION_UP = changeTable.selectLevel or nil,
						PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or changeTable.precedingKeyWordsFirst or nil,
						PRECEDING_FIRST = changeTable.precedingKeyWordsFirst or nil,
						SPECIAL_KEY_WORDS = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])~="table" and changeTable.specialKeyWords or nil,
						FOREACH_SKW_GROUP = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])=="table" and changeTable.specialKeyWords or nil,
						WHERE_IN_SECTION = changeTable.findSections or nil,
						WHERE_IN_SUBSECTION = changeTable.findSubSections or changeTable.findAllSubSections or nil,
						WISEC_LOP = changeTable.findSectionsIfAllMatch and "AND" or nil,
						WISUBSEC_LOP = changeTable.findSubSectionsIfAllMatch and "AND" or nil,
						WISUBSEC_OPTION = changeTable.findAllSubSections and "ALL" or nil,
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
	MOD_FILENAME = "lyr_iconTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	processTweaksTable(tweaks)
}