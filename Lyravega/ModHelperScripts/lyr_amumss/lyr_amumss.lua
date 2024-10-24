lyr = {
	tweakStates = tweakStates,
	tweakTables = {},
	tweakFiles = {},
	cleanUp = {},
	ignore = "IGNORE",
	remove = "REMOVE",
	AND = "and",
	OR = "or",
	names = {
		tempMbin = "LYR_TEMP.MBIN",
		tempSection = "lyr_tempSection",
		tempValue = "lyr_tempValue",
		scannableComponent = "lyr_scannableComponent",
	}
}

dofile('lyr_amumss/lyr_ect.lua')
dofile('lyr_amumss/lyr_scene.lua')

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

	dofile('lyr_tweakOverrides.lua')

	---@diagnostic disable-next-line: undefined-global
	if tweakOverrides then for tweakName, tweakState in next, tweakOverrides do
		self.tweakStates[tweakName] = tweakState
	end end
end; lyr:checkTweakOverrides()

function lyr:checkSavedSection(savedSectionName)
	return self:checkFile("../SavedSections/"..savedSectionName..".xml", true)
end

---@param tweakName string
---@return any
function lyr:checkTweak(tweakName)
	local tweakValue = self.tweakStates[tweakName]
	local tweakType = type(tweakValue)

	if string.find(tweakName:lower(), "fix", 1, true) ~= nil then return true end

	if tweakType == "nil" then return false
	elseif tweakType == "boolean" then return tweakValue
	elseif tweakType == "number" then
		if string.find(tweakName, "Mult", 1, true) ~= nil then return tweakValue > 0 and tweakValue ~= 1 and tweakValue or false
		elseif string.find(tweakName, "Time", 1, true) ~= nil then return tweakValue > 0 and tweakValue or false
		else return tweakValue end
	elseif tweakType == "string" or tweakType == "table" then return tweakValue
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

function lyr:parseString(s)
	local t = {}

	for w in string.gmatch(s, [["(%g+)"]]) do t[#t+1] = w end

	return t[2] and t or t[1]
end

function lyr:parseLazy(t, r)
	r = r or {}

	if type(t) == "table" then
		for ti = 1, #t do
			if type(t[ti]) ~= "table" then
				self:parseLazy(t[ti], r)
			else
				r[#r+1] = t[ti]
			end
		end
	else
		r[#r+1] = string.find(t, "<", 1, true) and self:parseString(t) or t
	end

	return #r == 1 and type(r[1]) == "table" and r[1] or r
end

---@param input string|number
---@return number
function lyr:generateJenkinsHash(input)
	input = tostring(input)
	local hash, charTable = 0, {string.byte(input, 1, #input)}

	for i = 1, #input do
		hash = (hash + charTable[i]) & 0xffffffff
		hash = (hash + (hash << 10)) & 0xffffffff
		hash = (hash ~ (hash >> 6)) & 0xffffffff
	end
	hash = (hash + (hash << 3)) & 0xffffffff
	hash = (hash ~ (hash >> 11)) & 0xffffffff
	hash = (hash + (hash << 15)) & 0xffffffff

	return hash
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

function lyr:mergeModifications(...)
	local modifications = {...}
	local mergedModifications = setmetatable({}, {__add = function(self, t) for i=1, #t do self[#self+1] = t[i] end return self end})

	for i=1, #modifications do if modifications[i] then mergedModifications = mergedModifications + modifications[i] end end

	return mergedModifications
end

function lyr:mergeTweaks(tweakTable)
	local ti = 1
	while tweakTable[ti] do
		if tweakTable[ti].mergeTweaks then
			local subTable = table.remove(tweakTable, ti)
			for si = #subTable, 1, -1 do
				table.insert(tweakTable, ti, subTable[si])
			end
		end
		ti = ti + 1
	end
end

function lyr:replaceEXML(mbinPaths)
	if type(mbinPaths) == "string" then return mbinPaths:gsub("%.EXML", ".MBIN") end
	if type(mbinPaths) == "table" then for k, v in next, mbinPaths do
		if type(v) == "string" then mbinPaths[k] = v:gsub("%.EXML", ".MBIN")
		elseif type(v) == "table" then self:replaceEXML(v) end
	end end

	return mbinPaths
end

local function generateCommentExtra(tweakName)
	local tweakState = lyr.tweakStates[tweakName]
	local typ = type(tweakState)

	if typ == "table" then
		local s = "{"
		for i = 1, #tweakState do
			typ = type(tweakState[i])
			local e =
				typ == "boolean" and (tweakState[i] == true and [[true]] or [[false]]) or
				typ == "string" and [["]]..tweakState[i]..[["]] or
				tostring(tweakState[i])
			s = s..e..(tweakState[i+1] ~= nil and ", " or "")
		end
		return s.."}"
	end
	if typ == "boolean" then return (tweakState == true and "true" or "false") end
	if typ == "string" then return [["]]..tweakState..[["]] end
	return tostring(tweakState)
end

---@return table|nil
function lyr:processTweakFiles()
	if not next(self.tweakFiles) then return nil end

	local tweakFileLists = self.tweakFiles
	local addFileTables = {}

	for tweakName, tweakFileList in next, tweakFileLists do if lyr:checkTweak(tweakName) then
		if type(tweakFileList) == "function" then _, tweakFileList = pcall(tweakFileList, tweakName, self.tweakStates[tweakName]) end; if tweakFileList and type(tweakFileList) == "table" then
		local comment = "Processing '"..tweakName.."' files ("..generateCommentExtra(tweakName)..")"

		for i, tweakFile in ipairs(tweakFileList) do
			local internalOrExternal = tweakFile[3] and "INTERNAL_FILE_SOURCE" or "EXTERNAL_FILE_SOURCE"
			local fileTable = {}

			fileTable[internalOrExternal] = tweakFile[1]
			fileTable.FILE_DESTINATION = tweakFile[2]
			fileTable.COMMENT = tweakFile.comment or i == 1 and comment or nil

			table.insert(addFileTables, fileTable)
		end
	end	end end

	return addFileTables
end

---@return table|nil
function lyr:processTweakTables()
	if not next(self.tweakTables) then return nil end

	local tweakOrder = {}
	local tweakTables = self.tweakTables
	local modificationTables = {}

	for tweakName, tweakTable in next, tweakTables do if lyr:checkTweak(tweakName) then
		if type(tweakTable) == "function" then _, tweakTable = pcall(tweakTable, tweakName, self.tweakStates[tweakName]) end; if tweakTable and type(tweakTable) == "table" then

		local order = tweakTable.processOrder or #tweakOrder+1

		if tweakTable.mergeModifications then tweakTable = lyr:mergeModifications(table.unpack(tweakTable)) end
		lyr:mergeTweaks(tweakTable)	-- tables with 'mergeTweaks = true' are inserted in position; mct level

		local comment = "Processing '"..tweakName.."' modifications ("..generateCommentExtra(tweakName)..")"
		-- local tweakState = self.tweakStates[tweakName]
		local modificationTable = {
			MBIN_CT = {}
		}; local mbinChangeTables = modificationTable.MBIN_CT

		for mbinPath, changeTables in pairs(tweakTable) do if changeTables and type(changeTables) == "table" then
			local mbinChangeTable = {
				MBIN_FS = type(mbinPath)=="string" and self:replaceEXML(mbinPath) or self:replaceEXML(changeTables.mbinPaths),
				MBIN_FS_DISCARD = changeTables.discardMbin and "TRUE" or nil,
				REGEXBEFORE = changeTables.regexBefore or nil,
				REGEXAFTER = changeTables.regexAfter or nil,
				COMMENT = changeTables.comment or comment
			}; 	local exmlChangeTables = {}

			for i, changeTable in ipairs(changeTables) do if changeTable then
				self:processTweakTable(exmlChangeTables, changeTable)
			end end

			mbinChangeTable.EXML_CT = #exmlChangeTables > 0 and exmlChangeTables or nil
			table.insert(mbinChangeTables, mbinChangeTable)
		end end

		table.insert(tweakOrder, order, tweakName)
		table.insert(modificationTables, order, modificationTable)
	end	end end

	return modificationTables
end

function lyr:processTweakTable(exmlChangeTables, changeTable)
	local exmlChangeTable = setmetatable({}, {__index = lyramumss_ect})

	for directiveName, directiveValue in next, changeTable do
		if directiveValue ~= nil then
			if lyramumss_ect[directiveName] then pcall(lyramumss_ect[directiveName], exmlChangeTable, directiveValue, changeTable, exmlChangeTables)
			elseif vanamumss_ect[directiveName] then exmlChangeTable[directiveName] = directiveValue; exmlChangeTable._addToTable = true end
		end
	end

	if exmlChangeTable._addToTable then
		exmlChangeTable._addToTable = nil
		table.insert(exmlChangeTables, exmlChangeTable)
	end
end

-- selene: allow(shadowing)
local lyr = lyr