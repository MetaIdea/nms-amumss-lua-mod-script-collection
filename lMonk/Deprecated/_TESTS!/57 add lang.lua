---------------------------------------------------------------------------------
local desc = [[
  Add a new language file.
  ** The new file's name must be added to LocTableList in GCDEBUGOPTIONS.GLOBAL.
  color tag syntax: <RED>my red text<>
  Tags are definded in: METADATA/UI/SPECIALSTYLESDATA.MBIN
]]-------------------------------------------------------------------------------

local locale_lines = {
	file = 'NMS_Loc88',
	lang = 'EN',
	entries = {
	---	New text
		RECIPE_MEGASHIELD = {
			EN = [[Requested Operation: Illegal <FUEL>Improbable<> Shielding]],
			DE = [[Angeforderte Operation: Illegale <FUEL>unwahrscheinliche<> Abschirmung]]
		},
		BODYSHIELD_NAME = {
			EN = [[PERSONAL SHIELD]],
			IT = [[SCUDO PERSONALE]]
		},
		BODYSHIELD_NAME_L =	{
			EN = [[Personal Shield]],
			LA = [[Escudo Personal]]
		},
		BODYSHIELD_SUBTITLE = {
			EN = [[Cheating anti-cheat protection]],
			US = [[Cheating anti-cheat protection]]
		},
		BODYSHIELD_DESCRIPTION = {
			EN = [[Protects your person from <RED>Malevolent<> travelers, Atlas <STELLAR>glitches<> and various annoyances]],
			RU = [[Защищает вас от злонамеренных путешественников, сбоев Атласа и различных неприятностей]],
		},
		UI_GEODE_NAME_CAVE = {
			EN = [[CAVE GEODE]],
			KO = [[케이브 지오드]]
		},
		UI_GEODE_NAME_CAVE_L = {
			EN = [[Cave Geode]],
			JA = [[洞窟ジオード]],
		}
	}
}

------------------------------------------------------------------------------

local languages = {
	EN = 'English',
	FR = 'French',
	IT = 'Italian',
	DE = 'German',
	ES = 'Spanish',
	RU = 'Russian',
	PL = 'Polish',
	NL = 'Dutch',
	PT = 'Portuguese',
	LA = 'LatinAmericanSpanish',
	BR = 'BrazilianPortuguese',
	Z1 = 'SimplifiedChinese',
	ZH = 'TraditionalChinese',
	Z2 = 'TencentChinese',
	KO = 'Korean',
	JA = 'Japanese',
	US = 'USEnglish'
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

local function BuildLocaleText(locale)
	local entries = {}
	for id, text in pairs(locale.entries) do
		lang_txt = {Tag_2P_Empty('Id', id)}
		for key, lang in pairs(languages) do
			local value = ''
			if text[key] then
				value = InsertCharEntity(text[key])
			end
			value = Tag_2P_Empty('Value', value)
			table.insert(lang_txt, Tag_2P_Closed(lang, 'VariableSizeString.xml', value))
		end
		table.insert(entries, Tag_1P_Closed('value', 'TkLocalisationEntry.xml', table.concat(lang_txt)))
	end
	return '<?xml version="1.0" encoding="utf-8"?>'
		..
		Tag_1P_Closed(
			'template',
			'TkLocalisationTable',
			Tag_1P_Closed('name', 'Table', table.concat(entries)),
			'Data'
		)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= string.format('_LANG %s_Personal.pak', locale_lines.file),
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {
	{
		MBIN_CHANGE_TABLE	= {{
			MBIN_FILE_SOURCE	= 'GCDEBUGOPTIONS.GLOBAL.MBIN',
			EXML_CHANGE_TABLE	= {
				{
					PRECEDING_KEY_WORDS	= 'LocTableList',
					ADD =
						Tag_1P_Closed(
							'value',
							'NMSString0x20.xml',
							Tag_2P_Empty('Value', locale_lines.file)
						)
				},
				{
					VALUE_CHANGE_TABLE 	= {
						{'DisableSaveSlotSorting', true}
					}
				}
			}
		}}
	}
	},
	ADD_FILES = {
		{
			FILE_CONTENT	 = BuildLocaleText(locale_lines),
			FILE_DESTINATION = string.format(
				'LANGUAGE/%s_%s.EXML',
				locale_lines.file,
				languages[locale_lines.lang]
			)
		}
	}
}
