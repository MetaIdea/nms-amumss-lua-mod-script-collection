lyr = {
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

function lyr:checkFile(filePath, justCheck)
	local _, file = pcall(io.open, filePath, "rb")

	if file then
		if justCheck then file:close(); return true
		else return file end
	end
	return false
end

function lyr:checkTweakOverrides()
	if not tweakStates then return end

	local tweakOverrides = self:checkFile("../ModScript/ModHelperScripts/lyr_tweakOverrides.txt")

	if tweakOverrides then
		local booleans = {["true"] = true, ["false"] = false}

		for line in tweakOverrides:lines("l") do if line:find("##OVERRIDES##", 1, true) then break end end
		for line in tweakOverrides:lines("l") do
			local isDisabled, tweakName, tweakState = line:match([[%s*(%-?%-?)%s*([%w]+)%s*=%s*([%w%.]+)]])

			if tweakName ~= nil and tweakState ~= nil then
				if isDisabled == "--" then
					self.tweakStates[tweakName] = false
				else
					if booleans[tweakState:lower()] ~= nil then tweakState = booleans[tweakState:lower()]
					elseif tonumber(tweakState) ~= nil then tweakState = tonumber(tweakState) end

					self.tweakStates[tweakName] = tweakState
				end
			end
		end

		tweakOverrides:close()
	end
end; lyr:checkTweakOverrides()

function lyr:checkSavedSection(savedSectionName)
	return self:checkFile("../SavedSections/"..savedSectionName..".xml", true)
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

---@param inputString string
---@return string hash
function lyr:generateJenkinsHash(inputString)
	local hash, charTable = 0, {string.byte(inputString:upper(), 1, #inputString)}

	for i = 1, #inputString do
		hash = (hash + charTable[i]) & 0xffffffff
		hash = (hash + (hash << 10)) & 0xffffffff
		hash = (hash ~ (hash >> 6)) & 0xffffffff
	end
	hash = (hash + (hash << 3)) & 0xffffffff
	hash = (hash ~ (hash >> 11)) & 0xffffffff
	hash = (hash + (hash << 15)) & 0xffffffff

	return tostring(hash)
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

function lyr:expandStump(stump, ...)
	if ... then
		local stumpList = {stump, ...}

		for i = #stumpList, 1, -1 do
			stumpList[i] = {[[(.*)<Property name="(]]..stumpList[i]..[[)" \/>]], [[\1<Property name="\2">\\n\1<\/Property>]]}
		end

		return stumpList
	end

	return {{[[(.*)<Property name="(]]..stump..[[)" \/>]], [[\1<Property name="\2">\\n\1<\/Property>]]}}
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

--#region CUSTOM ECT

lyr.vanamumss = {
	ect = {
		ADD = true,
		ADD_OPTION = true,
		COMMENT = true,
		FOREACH_SKW_GROUP = true,
		FSKWG = true,
		INTEGER_TO_FLOAT = true,
		ITF = true,
		LINE_OFFSET = true,
		NOTICE_OFF = true,
		MATH_OPERATION = true,
		MATH_OP = true,
		PRECEDING_FIRST = true,
		PRECEDING_KEY_WORDS = true,
		PKW = true,
		REMOVE = true,
		REPLACE_TYPE = true,
		SEC_ADD_NAMED = true,
		SEC_EDIT = true,
		SEC_KEEP = true,
		SEC_SAVE_TO = true,
		SECTION_ACTIVE = true,
		SECTION_UP = true,
		SECTION_UP_SPECIAL = true,
		SPECIAL_KEY_WORDS = true,
		SKW = true,
		VALUE_CHANGE_TABLE = true,
		VCT = true,
		VALUE_MATCH = true,
		VALUE_MATCH_OPTIONS = true,
		VALUE_MATCH_TYPE = true,
		WHERE_IN_SECTION = true,
		WIS = true,
		WISEC_LOP = true,
		WHERE_IN_SUBSECTION = true,
		WISS = true,
		WISUBSEC_LOP = true,
		WISUBSEC_OPTION = true,
		CUSTOM_ORDER = true,
		CO = true,
	}
}

lyr.lyramumss = {
	ect = {}
}

local lyramumss_ect = lyr.lyramumss.ect
local vanamumss_ect = lyr.vanamumss.ect

function lyramumss_ect:comment(comment)
	self.COMMENT = comment
end

function lyramumss_ect:precedingKeyWords(pkw)
	self.PKW = pkw
end; lyramumss_ect.pkw = lyramumss_ect.precedingKeyWords

function lyramumss_ect:precedingKeyWordsFirst(pkw1st)
	self:precedingKeyWords(pkw1st)
	self.PRECEDING_FIRST = true
end; lyramumss_ect.pkw1st = lyramumss_ect.precedingKeyWordsFirst

function lyramumss_ect:specialKeyWords(skw)
	if type(skw[1])~="table" then
		self.SKW = skw
	else
		self.FSKWG = skw
	end
end; lyramumss_ect.skw = lyramumss_ect.specialKeyWords

function lyramumss_ect:findSections(wis)
	self.WIS = wis
end

function lyramumss_ect:findSectionsWhereAllMatch(wis)
	self:findSections(wis)
	self.WISEC_LOP = "AND"
end

function lyramumss_ect:findSectionsWhereNoneMatch(wis)
	self:findSections(wis)
	self.WISEC_LOP = "NOR"
end

function lyramumss_ect:findSubSections(wiss)
	self.WISS = wiss
end

function lyramumss_ect:findSubSectionsWhereAllMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "AND"
end

function lyramumss_ect:findSubSectionsWhereNoneMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "NOR"
end

function lyramumss_ect:findAllSubSections(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_OPTION = "ALL"
end

function lyramumss_ect:findAllSubSectionsWhereAllMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "AND"
	self.WISUBSEC_OPTION = "ALL"
end

function lyramumss_ect:findAllSubSectionsWhereNoneMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "NOR"
	self.WISUBSEC_OPTION = "ALL"
end

function lyramumss_ect:selectLevel(level)
	self.SECTION_UP = level
end

function lyramumss_ect:selectLevelAfterSpecial(level)
	self.SECTION_UP_SPECIAL = level
end

function lyramumss_ect:sectionOffset(offset)
	self.SECTION_ACTIVE = offset
end

function lyramumss_ect:lineOffset(offset)
	self.LINE_OFFSET = offset
end

function lyramumss_ect:thisLine()
	self:lineOffset(0)
end

function lyramumss_ect:copySection(alias)
	self._addToTable = true
	if alias == true then
		self.SEC_SAVE_TO = lyr.tempSection
	else
		self.SEC_SAVE_TO = alias
	end
end

function lyramumss_ect:editSection(alias)
	self._addToTable = true
	if alias == true then
		self.SEC_EDIT = lyr.tempSection
	else
		self.SEC_EDIT = alias
	end
end

function lyramumss_ect:pasteSection(alias)
	self._addToTable = true
	if alias == true then
		self.SEC_ADD_NAMED = lyr.tempSection
	else
		self.SEC_ADD_NAMED = alias
	end
end

function lyramumss_ect:pasteAfterSection(alias)
	self:pasteSection(alias)
	self.ADD_OPTION = "ADDafterSECTION"
end

function lyramumss_ect:saveSection(alias)
	self:copySection(alias)
	self.SEC_KEEP = true
end

function lyramumss_ect:insertSection(section)
	self._addToTable = true
	self.ADD = section
end

function lyramumss_ect:insertAfterSection(section)
	self:insertSection(section)
	self.ADD_OPTION = "ADDafterSECTION"
end

function lyramumss_ect:replaceLine(section)
	self:insertSection(section)
	self.ADD_OPTION = "REPLACEatLINE"
end

function lyramumss_ect:replace(option)
	self.REPLACE_TYPE = option
end

function lyramumss_ect:replaceAll()
	self:replace("ALL")
end

function lyramumss_ect:replaceRaw()
	self:replace("RAW")
end

function lyramumss_ect:replaceFollowing()
	self:replace("FOLLOWING")
end

function lyramumss_ect:removeSection()
	self._addToTable = true
	self.REMOVE = "SECTION"
end

function lyramumss_ect:removeLine()
	self._addToTable = true
	self.REMOVE = "LINE"
end

function lyramumss_ect:removeAllSections()
	self:replaceAll()
	self:removeSection()
end

function lyramumss_ect:removeAllLines()
	self:replaceAll()
	self:removeLine()
end

function lyramumss_ect:preserveIntegers()
	self.ITF = "PRESERVE"
end

function lyramumss_ect:mathOp(op)
	self.MATH_OP = op
end

function lyramumss_ect:multiply()
	self:mathOp("*")
end

function lyramumss_ect:add()
	self:mathOp("+")
end

function lyramumss_ect:match(options)
	if type(options) == "table" then
		self.VALUE_MATCH = options.value or nil
		self.VALUE_MATCH_OPTIONS = options.option or nil
		self.VALUE_MATCH_TYPE = options.type or nil
	else
		self.VALUE_MATCH = options
	end
end

function lyramumss_ect:fields(fields, ect)
	local valueChangeTable = {}

	for fieldName, fieldValue in pairs(fields) do
		if type(fieldValue) == "table" then
			if fieldValue.altered ~= nil and fieldValue.altered ~= fieldValue.default then
				table.insert(valueChangeTable, {fieldName, fieldValue.altered})
			elseif fieldValue.multiplier and fieldValue.multiplier ~= 1 then
				table.insert(valueChangeTable, {fieldName, ect.multiply and fieldValue.multiplier or fieldValue.default * fieldValue.multiplier})
			elseif type(fieldName) == "number" then
				table.insert(valueChangeTable, fieldValue)
			end
		else
			table.insert(valueChangeTable, {fieldName, fieldValue})
		end
	end

	if #valueChangeTable > 0 then
		self._addToTable = true
		self.VCT = valueChangeTable
	end
end

--#endregion
-- END OF CUSTOM ECT

function lyr:replaceEXML(mbinPaths)
	if type(mbinPaths) == "string" then return mbinPaths:gsub("%.EXML", ".MBIN") end
	if type(mbinPaths) == "table" then for k, v in next, mbinPaths do
		if type(v) == "string" then mbinPaths[k] = v:gsub("%.EXML", ".MBIN")
		elseif type(v) == "table" then self:replaceEXML(v) end
	end end

	return mbinPaths
end

---@return table|nil
function lyr:processTweakTables()
	if not next(self.tweakTables) then return nil end

	local tweakTables = self.tweakTables
	local modificationTables = {}

	for tweakKey, tweakTable in next, tweakTables do
		if type(tweakTable) == "function" then _, tweakTable = pcall(tweakTable) end; if tweakTable and type(tweakTable) == "table" then

		local modificationTable = {
			MBIN_CT = {}
		}; local mbinChangeTables = modificationTable.MBIN_CT

		for mbinPath, changeTables in pairs(tweakTable) do if changeTables then
			local mbinChangeTable = {
				MBIN_FS = type(mbinPath)=="string" and self:replaceEXML(mbinPath) or self:replaceEXML(changeTables.mbinPaths),
				MBIN_FS_DISCARD = changeTables.discardMbin and "TRUE" or nil,
				REGEXBEFORE = changeTables.regexBefore or nil,
				REGEXAFTER  = changeTables.regexAfter or nil,
			}; 	local exmlChangeTables = {}

			for _, changeTable in ipairs(changeTables) do if changeTable then
				local exmlChangeTable = setmetatable({}, {__index = lyramumss_ect})

				for directiveName, directiveValue in next, changeTable do
					if lyramumss_ect[directiveName] then pcall(lyramumss_ect[directiveName], exmlChangeTable, directiveValue, changeTable)
					elseif vanamumss_ect[directiveName] then exmlChangeTable[directiveName] = directiveValue; exmlChangeTable._addToTable = true end
				end

				if exmlChangeTable._addToTable then
					exmlChangeTable._addToTable = nil
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

-- selene: allow(shadowing)
local lyr = lyr