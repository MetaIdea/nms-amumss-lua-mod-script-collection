local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Binoculars Tweaks 1.0]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are toggles for the changes. What they do is commented next to them. Change the value to 'false' to disable the modifications.
]]

local enabledTweaks = {
	reduceAnalysisTime = true,				-- reduces analysis times down to 1.5s
	disableFlash = true,					-- disables screen flash effect on binocs use
	removeFilters = true,					-- removes binocs filters, or rather set them to default filter
	equalizeFieldOfView = true,				-- equalizes the slight FoV difference between binocs and regular first person view
	improveAnalysisEffects = true,			-- improves the known and unknown target colours, and tones building scan effects down
}

--[[
	Below in the 'tweaks' table are the changes. If you'd like to change them directly, change the 'altered' values and leave 'default' ones as they are.
	Fields with same 'altered' and 'default' values won't be processed by AMUMSS. The 'default' values (generated pre-4.0) serve as more of a reference.
	Not every field value is changed. Some are only exposed for testing purposes and to toy around with, usually belonging to the same sections.
]]

local tweaks = {
	reduceAnalysisTime = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocTimeBeforeScan = {default = 0.5, altered = 0.25},
					BinocMinScanTime = {default = 3.9, altered = 1.5},
					BinocScanTime = {default = 3.9, altered = 1.5},
					BinocCreatureScanTime = {default = 3.2, altered = 1.5}
				}
			}
		}
	},
	disableFlash = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularFlashTime = {default = 0.24, altered = 0.0},
					BinocularFlashStrength = {default = 0.9, altered = 0.0}
				}
			}
		},
	},
	removeFilters = {
		["METADATA/EFFECTS/SCREENFILTERS.MBIN"] = {
			{
				forEachSpecialKeyWords = {
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
	equalizeFieldOfView = {
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
	improveAnalysisEffects = {
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
	MOD_FILENAME = "lyr_binocularsTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS =	{{MBIN_CHANGE_TABLE = processTweaksTable(tweaks)}}
}