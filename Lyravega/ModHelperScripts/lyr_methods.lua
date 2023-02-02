local lyr = {
	tweakStates = tweakStates,
	tweakTables = {},
	tweakFiles = {},
	cleanUp = {},
	ignore = "IGNORE",
	remove = "REMOVE",
	tempMbin = "LYR_TEMP.MBIN",
	tempSection = "lyr_tempSection",
	AND = "and",
	OR = "or"
}

function lyr:checkTweakOverrides()
	local _, tweakOverrides = pcall(io.open, "../ModScript/ModHelperScripts/lyr_tweakOverrides.txt", "rb")

	if tweakOverrides then
		local booleans = {["true"] = true, ["false"] = false}

		for line in tweakOverrides:lines("l") do if line:find("##OVERRIDES##", 1, true) then break end end
		for line in tweakOverrides:lines("l") do
			local tweakName, tweakState = line:match([[([%w]+)[%W]+([%w%.]+)]])

			if tweakName ~= nil and tweakState ~= nil then 
				if booleans[tweakState:lower()] ~= nil then tweakState = booleans[tweakState:lower()]
				elseif tonumber(tweakState) ~= nil then tweakState = tonumber(tweakState) end

				self.tweakStates[tweakName] = tweakState
			end
		end

		tweakOverrides:close()
	end
end

---@param tweakName string
---@return boolean 
function lyr:checkTweak(tweakName)
	local tweakValue = self.tweakStates[tweakName]

	if tweakValue == nil then return false
	elseif type(tweakValue) == "boolean" then return tweakValue
	elseif type(tweakValue) == "number" then
		if string.find(tweakName, "Mult", 1, true) ~= nil then return tweakValue > 0 and tweakValue ~= 1 and tweakValue or false
		elseif string.find(tweakName, "Time", 1, true) ~= nil then return tweakValue > 0 and tweakValue or false
		else return tweakValue end
	elseif type(tweakValue) == "string" then return tweakValue
	else return false end
end

function lyr:checkSavedSection(savedSectionName)
	local _, savedSection = pcall(io.open, "../SavedSections/"..savedSectionName..".xml", "rb")

	if savedSection then savedSection:close(); return true end
	return false
end

---@param tweakName string
---@param defaultValue number
---@return number
function lyr:useProxyMult(tweakName, defaultValue)
	defaultValue = defaultValue or 1

	local multValue = self:checkTweak(tweakName)

	return multValue and multValue*defaultValue or defaultValue
end

---@param longString string
---@return string|nil
---@return string|nil
function lyr:parsePair(longString)
	local t = {}

	for w in string.gmatch(longString, [["(%g+)"]]) do t[#t+1] = w end

	return t[1], t[2]
end

-- Creates a directive that instructs AMUMSS to copy a section with a common node template
--<br><br> Executes once per script; returns directives once, then returns false. This is
--<br> to avoid unnecessarily executing it more than once.
--<br><br> Options in the `lyr.tweaktables` that utilize this method needs to be called through
--<br> `pcall` otherwise during `lyr:processTweakTables()` an option with a hash key that use
--<br> this method that holds the directive may get executed after another one that lacks,
--<br> causing it to produce errors. Through `pcall`, these instructions are created when
--<br> they are actually needed and not before.
function lyr:createNodeTemplate()
	if self.nodeTemplate then return false end

	local section, nodeName, nodeType, attName, attVal = "lyr_nodeTemplate", "lyr_nodeName", "lyr_nodeType", "lyr_attName", "lyr_attVal"

	local directive = {
		mbinPaths = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARLAYOUT_ABAND.SCENE.MBIN]],	-- a random scene that won't be used
		discardMbin = true,
		{
			specialKeyWords = {"Name", "RefLargeCrate"}, -- a random reference node without children
			fields = {
				Name = nodeName,
				NameHash = 0,
				Type = nodeType,	-- "REFERENCE" / "LOCATOR"
			}
		},
		{
			specialKeyWords = {"Name", nodeName},
			precedingKeyWords = "Transform",
			fields = {
				TransX = 0,
				TransY = 0,
				TransZ = 0,
				RotX = 0,
				RotY = 0,
				RotZ = 0,
				ScaleX = 1,
				ScaleY = 1,
				ScaleZ = 1,
			}
		},
		{
			specialKeyWords = {"Name", nodeName},
			precedingKeyWords = "Attributes",
			fields = {
				Name = attName,	-- "SCENEGRAPH" / "ATTACHMENT"
				Value = attVal
			}
		},
		{
			specialKeyWords = {"Name", nodeName},
			copySection = section
		}
	}

	self.nodeTemplate = {
		section = section,
		nodeName = nodeName,
		nodeType = nodeType,
		attName = attName,
		attVal = attVal,
	}

	return directive
end

function lyr:expandStump(stump)
	return {[[(.*)<Property name="(]]..stump..[[)" \/>]], [[\1<Property name="\2">\\n\1<\/Property>]]}
end

-- Take a scene and dupe it along with its entity and any additionally pointed entities through sub-methods<br>
-- Assumes that the scene has an entity of the same name in the 'ENTITIES\' folder
function lyr:dupeScene()
	local data, commands = {source = {}, destination = {}, extra = {alias = {}}, directives = {}}, {}

	-- `name`: The name of the scene file to be duped along with its entity, both can be accessed through keys in the return table<br>
	-- `folder`: The folder path to where the scene file resides in, defaults to 'LYR\SCENES\' if nil<br>
	function commands:sourceScene(name, folder)
		folder = folder or [[LYR\SCENES\]]
		name = name:gsub([[.SCENE.MBIN]], "")

		data.source.sceneFolder = folder
		data.source.entityFolder = folder..name..[[\ENTITIES\]]
		data.source.scenePath = folder..name..".SCENE.MBIN"
		data.source.entityPath = folder..name..[[\ENTITIES\]]..name..[[.ENTITY.MBIN]]

		lyr.cleanUp[name] = {data.source.scenePath, data.source.entityPath}

		return self
	end

	-- `name`: A custom scene and entity name to be used, both can be accessed through keys in the return table<br>
	-- `folder`: A custom folder name to store the all the duped files in, defaults to 'LYR\SCENES\' if nil<br>
	function commands:destinationScene(name, folder)
		folder = folder or [[LYR\SCENES\]]
		name = name:gsub([[.SCENE.MBIN]], "")

		data.destination.sceneFolder = folder
		data.destination.entityFolder = folder..name..[[\ENTITIES\]]
		data.destination.scenePath = folder..name..".SCENE.MBIN"
		data.destination.entityPath = folder..name..[[\ENTITIES\]]..name..[[.ENTITY.MBIN]]

		return self
	end

	-- `alias`: Is used as a key to access the duped entity path from the return table<br>
	-- `sourceName`: Points to any additional entities with this name in the same entity folder to copy<br>
	-- `destinationName`: A custom name or leave it nil, defaults to `sourceName` if nil<br>
	-- `remove`: Set to `true` to remove the source entity file after use<br>
	function commands:extraEntities(alias, sourceName, destinationName, remove)
		sourceName = sourceName:gsub([[.ENTITY.MBIN]], "")
		destinationName = destinationName and destinationName:gsub([[.ENTITY.MBIN]], "") or sourceName

		data.extra[alias] = {}
		data.extra[alias].entitySource = data.source.entityFolder..sourceName..[[.ENTITY.MBIN]]
		data.extra[alias].entityDestination = data.destination.entityFolder..destinationName..[[.ENTITY.MBIN]]
		data.extra[alias].remove = remove and lyr.remove or nil
		data.extra.alias[alias] = data.extra[alias].entityDestination

		lyr.cleanUp[sourceName] = {data.extra[alias].entitySource}

		return self
	end

	-- Returns options that allows choosing whether to keep or discard source scene and/or its entity after usage<br>
	function commands:remove()
		local this, options = self, {}

		function options:scene() data.source.removeScene = lyr.remove; return this end
		function options:entity() data.source.removeEntity = lyr.remove; return this end
		function options:both() self:scene(); self:entity(); return this end

		return options
	end

	-- `...` is the scene and entity names to clean up in one directive, cleans every source file up if `nil`<br>
	-- <br>Use `nil` with care, make sure the cleaned up files won't be used any further, or specify what to clean up by passing args
	function commands:cleanUp(...)
		local cleanUpArray = {}

		if ... then
			local toCleanUp = {...}
			for i = 1, #toCleanUp do
				if lyr.cleanUp[toCleanUp[i]] then
					cleanUpArray[#cleanUpArray+1] = toCleanUp[i][1]
					cleanUpArray[#cleanUpArray+1] = toCleanUp[i][2] and toCleanUp[i][2] or nil

					lyr.cleanUp = {}
				end
			end
		else
			for cleanUpAlias, cleanUpTable in next, lyr.cleanUp do
				cleanUpArray[#cleanUpArray+1] = cleanUpTable[1]
				cleanUpArray[#cleanUpArray+1] = cleanUpTable[2] and cleanUpTable[2] or nil

				lyr.cleanUp[cleanUpAlias] = nil
			end
		end

		data.directives[#data.directives+1] = {
			mbinPaths = cleanUpArray,
			discardMbin = true
		}

		return data.directives
	end

	-- Processes the previous commands and returns a table with directives and paths for the duped files<br>
	function commands:finalize()
		data.directives[#data.directives+1] = {
			mbinPaths = {
				{data.source.scenePath, data.destination.scenePath, data.source.removeScene},
				{data.source.entityPath, data.destination.entityPath, data.source.removeEntity},
			}
		}

		data.directives[#data.directives+1] = {
			mbinPaths = data.destination.scenePath,
			{
				specialKeyWords = {lyr.ignore, data.source.entityPath},
				match = {value = data.source.entityPath},
				fields = {
					Value = data.destination.entityPath
				}
			}
		}

		for extraEntityAlias, extraEntityPaths in next, data.extra do if extraEntityAlias ~= "alias" then
			data.directives[#data.directives+1] = {
				mbinPaths = {{extraEntityPaths.entitySource, extraEntityPaths.entityDestination, extraEntityPaths.remove}}
			}

			data.directives[#data.directives+1] = {
				mbinPaths = data.destination.scenePath,
				{
					specialKeyWords = {lyr.ignore, extraEntityPaths.entitySource},
					match = {value = extraEntityPaths.entitySource},
					fields = {
						Value = extraEntityPaths.entityDestination
					}
				}
			}
		end end

		return {
			directives = data.directives,
			entity = data.destination.entityPath,
			scene = data.destination.scenePath,
			extra = data.extra.alias
		}
	end

	return commands
end

function lyr:mergeTweaks(...)
	local tweaks = {...}
	local mergedTweaks = setmetatable({}, {__add = function(self, t) for i=1, #t do self[#self+1] = t[i] end return self end})

	for i=1, #tweaks do if tweaks[i] then mergedTweaks = mergedTweaks + tweaks[i] end end

	return mergedTweaks
end

---@return table|nil
function lyr:processTweakFiles()
	if not next(self.tweakFiles) then return nil end

	local tweakFileLists = self.tweakFiles
	local addFileTables = {}

	for _, tweakFileList in next, tweakFileLists do
		if type(tweakFileList) == "function" then _, tweakFileList = pcall(tweakFileList) end; if tweakFileList and type(tweakFileList) == "table" then

		for _, tweakFile in ipairs(tweakFileList) do
			local internalOrExternal = tweakFile[3] and "INTERNAL_FILE_SOURCE" or "EXTERNAL_FILE_SOURCE"
			local comment = tweakFile.comment or tweakFileList.comment or nil

			table.insert(addFileTables, {[internalOrExternal] = tweakFile[1], FILE_DESTINATION = tweakFile[2], COMMENT = comment})
		end
	end	end

	return addFileTables
end

---@return table|nil
function lyr:processTweakTables()
	if not next(self.tweakTables) then return nil end

	local sectionOp = {
		addSection = true,
		addAfterSection = true,
		copySection = true,
		saveSection = true,
		pasteSection = true,
		pasteAfterSection = true,
		removeSection = true,
		removeLine = true,
		replaceLine = true,
	}

	local isSectionOp = function(changeTable)
		for k, v in next, changeTable do if sectionOp[k] then return true end end
		return false
	end

	local tweakTables = self.tweakTables
	local modificationTables = {}

	for tweakKey, tweakTable in next, tweakTables do
		if type(tweakTable) == "function" then _, tweakTable = pcall(tweakTable) end; if tweakTable and type(tweakTable) == "table" then

		local modificationTable = {
			MBIN_CT = {}
		}; local mbinChangeTables = modificationTable.MBIN_CT

		for mbinPath, changeTables in pairs(tweakTable) do if changeTables then
			local mbinChangeTable = {
				MBIN_FS = type(mbinPath)=="string" and mbinPath or changeTables.mbinPaths,
				MBIN_FS_DISCARD = changeTables.discardMbin and "TRUE" or nil,
				REGEXBEFORE = changeTables.regexBefore or nil,
				REGEXAFTER  = changeTables.regexAfter or nil,
			}; local exmlChangeTables = {}

			for _, changeTable in ipairs(changeTables) do if changeTable then
				local exmlChangeTable = {
					COMMENT = changeTable.comment or nil,
					LINE_OFFSET = changeTable.thisLine and 0 or changeTable.lineOffset or nil,
					SECTION_UP = changeTable.selectLevel or nil,
					SECTION_UP_SPECIAL = changeTable.selectLevelAfterSpecial or nil,
					SECTION_ACTIVE = changeTable.selectSection or nil,
					PKW = changeTable.precedingKeyWords or changeTable.precedingKeyWordsFirst or nil,
					PRECEDING_FIRST = changeTable.precedingKeyWordsFirst and true or nil,
					SKW = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])~="table" and changeTable.specialKeyWords or nil,
					FSKWG = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])=="table" and changeTable.specialKeyWords or nil,
					WIS = changeTable.findSections or changeTable.findSectionsWhereAllMatch or changeTable.findSectionsWhereNoneMatch or nil,
					WISS = changeTable.findSubSections or changeTable.findSubSectionsWhereAllMatch or changeTable.findSubSectionsWhereNoneMatch or nil,
					WISEC_LOP = changeTable.findSectionsWhereAllMatch and "AND" or changeTable.findSectionsWhereNoneMatch and "NOR"  or nil,
					WISUBSEC_LOP = changeTable.findSubSectionsWhereAllMatch and "AND" or changeTable.findSubSectionsWhereNoneMatch and "NOR" or nil,
					WISUBSEC_OPTION = changeTable.findAllSubSections and "ALL" or nil,
					REPLACE_TYPE = changeTable.replaceAll and "ALL" or changeTable.replaceRaw and "RAW" or changeTable.replaceFollowing and "FOLLOWING" or nil,
					MATH_OP = changeTable.multiply and "*" or changeTable.mathOp or nil,
					ITF = changeTable.preserveIntegers and "PRESERVE" or nil,
					REMOVE = changeTable.removeSection and "SECTION" or changeTable.removeLine and "LINE" or nil,
					ADD_OPTION = (changeTable.addAfterSection or changeTable.pasteAfterSection) and "ADDafterSECTION" or changeTable.replaceLine and "REPLACEatLINE" or nil,
					ADD = (changeTable.addAfterSection or changeTable.addSection or changeTable.replaceLine) and changeTable.section or nil,
					SEC_SAVE_TO = changeTable.copySection == true and self.tempSection or changeTable.copySection or changeTable.saveSection or nil,
					SEC_KEEP = changeTable.saveSection and true or nil,
					SEC_EDIT = changeTable.editSection == true and self.tempSection or changeTable.editSection or nil,
					SEC_ADD_NAMED = (changeTable.pasteSection == true or changeTable.pasteAfterSection == true) and self.tempSection or changeTable.pasteSection or changeTable.pasteAfterSection or nil,
					VALUE_MATCH = changeTable.match and changeTable.match.value or nil,
					VALUE_MATCH_OPTIONS = changeTable.match and changeTable.match.option or nil,
					VALUE_MATCH_TYPE = changeTable.match and changeTable.match.type or nil,
					-- VCT = changeTable.fields and {} or nil
				}; local valueChangeTable = {}

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
				end

				if #valueChangeTable > 0 or isSectionOp(changeTable) then
					exmlChangeTable.VCT = #valueChangeTable > 0 and valueChangeTable or nil
					table.insert(exmlChangeTables, exmlChangeTable)
				end
			end end

			mbinChangeTable.EXML_CT = #exmlChangeTables > 0 and exmlChangeTables or nil
			table.insert(mbinChangeTables, mbinChangeTable)
		end end

		table.insert(modificationTables, modificationTable)
	end	end

	return modificationTables
end