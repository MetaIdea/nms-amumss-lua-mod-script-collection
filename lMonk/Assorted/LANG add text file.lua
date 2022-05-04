---------------------------------------------------------------------------------
local desc = [[
  Add a new language file.
  ** The new file's name must be added to LocTableList in GCDEBUGOPTIONS.GLOBAL.
  color tag syntax: <RED>my red text<>
  Tags are definded in: METADATA/UI/SPECIALSTYLESDATA.MBIN
]]-------------------------------------------------------------------------------

local MyLines = {
	file = 'NMS_Loc88',
	lang = 1,
	entries = {
	--	New text
		RECIPE_MEGASHIELD =		[[Requested Operation: Illegal <FUEL>Improbable<> Shielding]],
		BODYSHIELD_NAME = 		[[BUG COUNTER-SHIELD]],
		BODYSHIELD_NAME_L =		[[Bug Counter-Shield]],
		BODYSHIELD_SUBTITLE =	[[Cheating anti-cheat protection]],
		BODYSHIELD_DESCRIPTION =[[Protect your person from:|NL||NL|1. <PET2>Malevolent<> travelers|NL|2. Atlas <STELLAR>glitch<> damage]],
		UI_GEODE_NAME_CAVE =	[[CAVE GEODE]],
		UI_GEODE_NAME_CAVE_L =	[[Cave Geode]],

	--	Existing text overwritten
		MECH_SCAN_FACT =		[[Industrial Facilities]],
		VEHICLE_BUILDING_NPC =	[[Racial Monuments]],
		SIGNAL_PLAQUE =			[[Racial Plaque Detected]],
		SIGNAL_MONOLITH =		[[Racial Monolith Detected]],
		UI_GEODE_NAME =			[[ROCK GEODE]],
		UI_GEODE_NAME_L =		[[Rock Geode]],		
		QUICK_MENU_TIP_THIRDPERSONSHIP = [[Toggle Camera View]],
	}
}

------------------------------------------------------------------------------

local Languages = {
	'English',				-- 1
	'French',				-- 2
	'Italian',				-- 3
	'German',				-- 4
	'Spanish',				-- 5
	'Russian',				-- 6
	'Polish',				-- 7
	'Dutch',				-- 8
	'Portuguese',			-- 9
	'LatinAmericanSpanish',	-- 10
	'BrazilianPortuguese',	-- 11
	'SimplifiedChinese',	-- 12
	'TraditionalChinese',	-- 13
	'TencentChinese',		-- 14
	'Korean',				-- 15
	'Japanese',				-- 16
	'USEnglish'				-- 17
}

local function Tag_1P_Closed(a, v, d, p)
	p = p or 'Property'
	return string.format('<%s %s="%s">%s</%s>', p, a, v, d, p)
end
local function Tag_2P_Closed(a, v, d)
	return string.format('<Property name="%s" value="%s">%s</Property>', a, v, d)
end
local function Tag_2P_Empty(a, v)
	return string.format('<Property name="%s" value="%s" />', a, v)
end

local function InsertCharEntity(s)
	local entity = {
		{'&', '&amp;'}, -- must be first
		{'<', '&lt;'},
		{'>', '&gt;'},
		{'"', '&quot;'},
		{'|NL|', '&#10;'}
	}
	for _,e in ipairs(entity) do
		s = s:gsub(e[1], e[2])
	end
	return s
end

local function BuildLocaleText(mylines)
	local exml = {}
	for id, text in pairs(mylines.entries) do
		ex = {Tag_2P_Empty('Id', id)}
		for i=1, #Languages do
			local value = ''
			if mylines.lang == i then
				value = InsertCharEntity(text)
			end
			value = Tag_2P_Empty('Value', value)
			table.insert(ex, Tag_2P_Closed(Languages[i], 'VariableSizeString.xml', value))
		end
		table.insert(exml, Tag_1P_Closed('value', 'TkLocalisationEntry.xml', table.concat(ex)))
	end
	return '<?xml version="1.0" encoding="utf-8"?>'
		..
		Tag_1P_Closed(
			'template',
			'TkLocalisationTable',
			Tag_1P_Closed('name', 'Table', table.concat(exml)),
			'Data'
		)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= string.format('_LANG %s_%s.pak', MyLines.file, Languages[MyLines.lang]),
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {
	-- {
		-- MBIN_CHANGE_TABLE	= {{
			-- MBIN_FILE_SOURCE	= 'GCDEBUGOPTIONS.GLOBAL.MBIN',
			-- EXML_CHANGE_TABLE	= {
				-- {
					-- PRECEDING_KEY_WORDS	= 'LocTableList',
					-- ADD =
						-- Tag_1P_Closed(
							-- 'value',
							-- 'NMSString0x20.xml',
							-- Tag_2P_Empty('Value', MyLines.file)
						-- )
				-- },
				-- {
					-- VALUE_CHANGE_TABLE 	= {
						-- {'DisableSaveSlotSorting', true}
					-- }
				-- }
			-- }
		-- }}
	-- }
	},
	ADD_FILES = {
		{
			FILE_CONTENT	 = BuildLocaleText(MyLines),
			FILE_DESTINATION = string.format(
				'LANGUAGE/%s_%s.EXML',
				MyLines.file,
				Languages[MyLines.lang]
			)
		}
	}
}
