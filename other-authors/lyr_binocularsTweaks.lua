local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Binoculars Tweaks 1.1]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are modification names and what they do is commented next to them. 
	Change the values to 'false' (without ''; someModification = false,) to disable the modifications.
]]

local enabledTweaks = {
	noBinocsFlash = true,					-- using binoculars no longer cause a screen flash
	normalBinocsFilters = true,				-- a normal filter is applied on all analysis modes instead of coloured ones
	equalizedBinocsFoV = true,				-- removes the slight FoV difference between the initial binocs zoom level and the first person view
	betterScanlines = true,					-- the known and unknown target colours are stressed while the building scan effects are toned down
	fasterAnalysis = true,					-- analysis times are reduced down to a second
}

local tweaks = {
	noBinocsFlash = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularFlashTime = {default = 0.24, altered = 0.0},
					BinocularFlashStrength = {default = 0.9, altered = 0.0}
				}
			}
		},
	},
	normalBinocsFilters = {
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
	equalizedBinocsFoV = {
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
	betterScanlines = {
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
	fasterAnalysis = {
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
	MOD_FILENAME = "lyr_binocularsTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	processTweaksTable(tweaks)
}