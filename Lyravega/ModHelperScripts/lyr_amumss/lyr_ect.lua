--#region CUSTOM ECT

lyr.vanamumss = {
	ect = {
		ADD = true,
		ADD_OPTION = true,
		AUTO_GNH = true,
		COMMENT = true,
		CREATE_HOS = true,
		CREATE_HOES = true,
		CUSTOM_ORDER = true,
		CO = true,
		FOREACH_SKW_GROUP = true,
		FSKWG = true,
		INTEGER_TO_FLOAT = true,
		ITF = true,
		LINE_OFFSET = true,
		NOTICE_OFF = true,
		MATH_OPERATION = true,
		MATH_OP = true,
		PRECEDING_FIRST = true,
		PKW_1 = true,
		PRECEDING_KEY_WORDS = true,
		PKW = true,
		REMOVE = true,
		REPLACE_TYPE = true,
		SEC_ADD_NAMED = true,
		SEC_PASTE = true,
		SEC_EDIT = true,
		SEC_EMPTY = true,
		SEC_KEEP = true,
		SEC_SAVE_TO = true,
		SEC_COPY = true,
		SEC_UNSAVED = true,
		SECTION_ACTIVE = true,
		SECTION_UP = true,
		SECTION_UP_SPECIAL = true,
		SPECIAL_KEY_WORDS = true,
		SKW = true,
		SUB_LEVEL = true,
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
	}
}

lyr.lyramumss = {
	ect = {}
}

lyramumss_ect = lyr.lyramumss.ect
vanamumss_ect = lyr.vanamumss.ect

function lyramumss_ect:comment(comment)
	self.COMMENT = comment
end

function lyramumss_ect:precedingKeyWords(pkw)
	pkw = lyr:parseLazy(pkw)
	self.PKW = pkw
	-- self.CREATE_HOS = self.CREATE_HOES == nil and true or false
end; lyramumss_ect.pkw = lyramumss_ect.precedingKeyWords

function lyramumss_ect:precedingKeyWordsFirst(pkw1st)
	self:precedingKeyWords(pkw1st)
	self.PRECEDING_FIRST = true
end; lyramumss_ect.pkw1st = lyramumss_ect.precedingKeyWordsFirst

function lyramumss_ect:expandHeader()
	self._addToTable = true
	-- self.CREATE_HOES = false
	self.CREATE_HOS = true
end; lyramumss_ect.expandSection = lyramumss_ect.expandHeader

function lyramumss_ect:purgeHeader()
	self._addToTable = true
	self.CREATE_HOES = true
	-- self.CREATE_HOS = false
end; lyramumss_ect.purgeSection = lyramumss_ect.purgeHeader

function lyramumss_ect:specialKeyWords(skw)
	skw = lyr:parseLazy(skw)
	-- self.SKW = skw
	if type(skw[1]) ~= "table" then
		self.SKW = skw
	else
		self.FSKWG = skw
	end
end; lyramumss_ect.skw = lyramumss_ect.specialKeyWords

function lyramumss_ect:findSections(wis)
	wis = lyr:parseLazy(wis)
	self.WIS = type(wis[1]) == "table" and wis or {wis}
end; lyramumss_ect.fs, lyramumss_ect.fs_or = lyramumss_ect.findSections, lyramumss_ect.findSections

function lyramumss_ect:findSectionsWhereAllMatch(wis)
	self:findSections(wis)
	self.WISEC_LOP = "AND"
end; lyramumss_ect.fs_and = lyramumss_ect.findSectionsWhereAllMatch

function lyramumss_ect:findSectionsWhereNoneMatch(wis)
	self:findSections(wis)
	self.WISEC_LOP = "NOR"
end; lyramumss_ect.fs_nor = lyramumss_ect.findSectionsWhereNoneMatch

function lyramumss_ect:findSubSections(wiss)
	wiss = lyr:parseLazy(wiss)
	self.WISS = type(wiss[1]) == "table" and wiss or {wiss}
end; lyramumss_ect.fss, lyramumss_ect.fss_or = lyramumss_ect.findSubSections, lyramumss_ect.findSubSections

function lyramumss_ect:findSubSectionsWhereAllMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "AND"
end; lyramumss_ect.fss_and = lyramumss_ect.findSubSectionsWhereAllMatch

function lyramumss_ect:findSubSectionsWhereNoneMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "NOR"
end; lyramumss_ect.fss_nor = lyramumss_ect.findSubSectionsWhereNoneMatch

function lyramumss_ect:findAllSubSections(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_OPTION = "ALL"
end; lyramumss_ect.fass, lyramumss_ect.fass_or = lyramumss_ect.findAllSubSections, lyramumss_ect.findAllSubSections

function lyramumss_ect:findAllSubSectionsWhereAllMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "AND"
	self.WISUBSEC_OPTION = "ALL"
end; lyramumss_ect.fass_and = lyramumss_ect.findAllSubSectionsWhereAllMatch

function lyramumss_ect:findAllSubSectionsWhereNoneMatch(wiss)
	self:findSubSections(wiss)
	self.WISUBSEC_LOP = "NOR"
	self.WISUBSEC_OPTION = "ALL"
end; lyramumss_ect.fass_nor = lyramumss_ect.findAllSubSectionsWhereNoneMatch

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

function lyramumss_ect:section(alias, mode)
	self._addToTable = true
	if alias == true then
		self[mode] = lyr.names.tempSection
	else
		self[mode] = alias
	end
end

function lyramumss_ect:checkSection(alias)
	self:section(alias, "SEC_UNSAVED")
end

function lyramumss_ect:copySection(alias)
	self:section(alias, "SEC_COPY")
end

function lyramumss_ect:saveSection(alias)
	self:section(alias, "SEC_COPY")
	self.SEC_KEEP = true
end

function lyramumss_ect:editSection(alias)
	self:section(alias, "SEC_EDIT")
end

function lyramumss_ect:trimSection(alias)
	self:section(alias, "SEC_EDIT")
	self.REMOVE = "HBOS"
end

function lyramumss_ect:pasteSection(alias)
	self:section(alias, "SEC_PASTE")
	self.CREATE_HOS = true
end

function lyramumss_ect:pasteSectionBottom(alias)
	self:section(alias, "SEC_PASTE")
	self.ADD_OPTION = "ADDendSECTION"
	self.CREATE_HOS = true
end

function lyramumss_ect:pasteSectionBefore(alias)
	self:section(alias, "SEC_PASTE")
	self.ADD_OPTION = "ADDbeforeSECTION"
end

function lyramumss_ect:pasteSectionAfter(alias)
	self:section(alias, "SEC_PASTE")
	self.ADD_OPTION = "ADDafterSECTION"
end

function lyramumss_ect:replaceSection(alias)
	self:section(alias, "SEC_PASTE")
	self.ADD_OPTION = "REPLACEwholeSECTION"
	-- self.CREATE_HOS = true
end

function lyramumss_ect:insertRaw(section)
	self._addToTable = true
	self.ADD = section
	self.CREATE_HOS = self.ADD_OPTION == nil and true or nil
end

function lyramumss_ect:insertRawBefore(section)
	self:insertRaw(section)
	self.ADD_OPTION = "ADDbeforeSECTION"
end

function lyramumss_ect:insertRawAfter(section)
	self:insertRaw(section)
	self.ADD_OPTION = "ADDafterSECTION"
end

function lyramumss_ect:replaceLine(section)
	self:insertRaw(section)
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

function lyramumss_ect:removeSections()
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
			if type(fieldName) == "number" then
				table.insert(valueChangeTable, fieldValue)
			elseif fieldValue.copy then
				table.insert(valueChangeTable, {fieldName, lyr.ignore, fieldValue.copy == true and lyr.names.tempValue or tostring(fieldValue.copy)})
			elseif fieldValue.paste then
				table.insert(valueChangeTable, {fieldName, lyr.ignore, "{:}"..(fieldValue.paste == true and lyr.names.tempValue or tostring(fieldValue.paste))})
			elseif fieldValue[1] ~= nil and fieldValue[1] ~= fieldValue.default then
				table.insert(valueChangeTable, {fieldName, fieldValue[1]})
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

function lyramumss_ect:order(order)
	self.CUSTOM_ORDER = order
end

--#endregion
-- END OF CUSTOM ECT