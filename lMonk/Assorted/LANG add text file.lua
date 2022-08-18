----------------------------------------------------------------------------------------
local desc = [[
  Add a new language file.
  - Generates a separate mbin for each language. If an additional language has missing
   texts, the assigned default is inserted instead.
  - color tag syntax: <RED>my red text<>
   Tags are defined in: METADATA/UI/SPECIALSTYLESDATA.MBIN

  ** The new file's locale name must be added to GCDEBUGOPTIONS.GLOBAL > LocTableList
]]--------------------------------------------------------------------------------------

local text_lines = {
	locale	= 'NMS_Loc88',
	default	= 'EN',
	entries	= {
	---	New text
		UI_TECH_EXPLORE_SUB = {
			EN = [[Craftable Exploratory Blueprints]],
		},
		UI_TECH_OFFENSE_SUB = {
			EN = [[Craftable Offensive Blueprints]],
		},
		UI_TECH_ALIEN_SUB = {
			EN = [[Craftable Sentient Vessel Blueprints]],
		},
		RECIPE_MEGASHIELD = {
			EN = [[Requested Operation: Illegal <FUEL>Improbable<> Shielding]],
		},
		BODYSHIELD_NAME = {
			EN = [[PERSONAL SHIELD]],
			FR = [[BOUCLIER PERSONNEL]]
		},
		BODYSHIELD_NAME_L =	{
			EN = [[Personal Shield]],
			FR = [[Bouclier personnel]]
		},
		BODYSHIELD_SUBTITLE = {
			EN = [[Cheating anti-cheat protection]],
			FR = [[Protection anti-triche anti-triche]]
		},
		BODYSHIELD_DESCRIPTION = {
			EN = [[Protects your person from <RED>Malevolent<> travelers, Atlas <STELLAR>glitches<> and various annoyances]],
		},
		UI_GEODE_NAME_CAVE = {
			EN = [[CAVE GEODE]],
		},
		UI_GEODE_NAME_CAVE_L = {
			EN = [[Cave Geode]],
		},
		UI_GREEN_CRYSTAL_NAME = {
			EN = [[Ionised Cobalt Crystals]],
			FR = [[Cristaux de cobalt ionisés]],
		},

	---	Existing text overwritten
		MECH_SCAN_FACT = {
			EN = [[Industrial Facilities]],
		},
		VEHICLE_BUILDING_NPC = {
			EN = [[Racial Monuments]],
		},
		SIGNAL_PLAQUE = {
			EN = [[Racial Plaque Detected]],
		},
		SIGNAL_MONOLITH = {
			EN = [[Racial Monolith Detected]],
		},
		UI_SALVAGE_TECH_10_NAME = {
			EN = [[STARSHIP AI KERNEL]],
		},
		UI_SALVAGE_TECH_10_NAME_L = {
			EN = [[starship AI Kernel]],
		},
		UI_GEODE_NAME = {
			EN = [[ROCK GEODE]],
		},
		UI_GEODE_NAME_L = {
			EN = [[Rock Geode]],
		},
		QUICK_MENU_TIP_THIRDPERSONSHIP = {
			EN = [[Toggle Camera View]],
		},
		UT_SHOT_NAME = {
			EN = [[SHELL IGNITER]],
		},
		UT_SHOT_NAME_L = {
			EN = [[Shell Igniter]],
		},
		UT_SHOT_DESC = {
			EN = [[A combat upgrade for the <TECHNOLOGY>Scatter Blaster<>. This module installs series of delicately calibrated fuel-injection nozzles within the firing chamber, which are used to initiate a controlled burn within its shells, while still offering improved <STELLAR>reload times<>.|NL||NL|Causes targets to <RED>burn<> for a short while, causing additional damage]],
		},
		FOOD_ROBOT_VEG_NAME = {
			EN = [[GLOWING PELLETS]],
		},
		FOOD_ROBOT_VEG_NAME_L = {
			EN = [[Glowing Pellets]],
		},
		FOOD_ROBOT_DESC = {
			EN = [[This odd collection of pellets pulses with a faint, almost organic energy. It seems to remember the whole from which it was parted...|NL|Consuming a sample seems to be a good for you.]],
		},
		NOTIFY_BINOCULARS				= { EN = ' ' },
		NOTIFY_BOOST					= { EN = ' ' },
		NOTIFY_SHIPBOOST				= { EN = ' ' },
		NOTIFY_SHIPJUMP					= { EN = ' ' },
		NOTIFY_SCANNER					= { EN = ' ' },
		NOTIFY_NOJETPACK				= { EN = ' ' },
		NOTIFY_SHIPJUMP_PC				= { EN = ' ' },
		NOTIFY_TORCH					= { EN = ' ' },
		NOTIFY_TAKEOFF					= { EN = ' ' },
		UI_NEXUS_SALVAGE_TITLE			= { EN = ' ' },
		UI_NEXUS_TECHFRAG_TITLE			= { EN = ' ' },
		UI_NOTIFY_EXOCRAFT_TIP_TITLE	= { EN = ' ' },
		UI_NOTIFY_SHIP_TIP_TITLE		= { EN = ' ' },
		UI_NOTIFY_TAKEOFF				= { EN = ' ' },
		UI_NOTIFY_TIP_TITLE				= { EN = ' ' },
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

local function Tag_1P(n, v, d, p)
	return string.format('<%s %s="%s">%s</%s>',
		(p or 'Property'), n, v, d, (p or 'Property')
	)
end

local function Tag_2P(n, v, d)
	return string.format('<Property name="%s" value="%s"%s',
		n, v, (d and '>'..d..'</Property>' or '/>')
	)
end

local function InsertCharEntity(s)
	local entity = {
		{'&',	'&amp;'}, -- must be first
		{'<',	'&lt;'},
		{'>',	'&gt;'},
		{'"',	'&quot;'},
		{'|NL|','&#10;'}
	}
	for _,e in ipairs(entity) do
		s = s:gsub(e[1], e[2])
	end
	return s
end

-- return a complete TkLocalisationTable exml
-- if a locale text is missing, insert default locale
local function BuildLocaleText(textlines, lang_code)
	local entries = {}
	for id, text in pairs(textlines.entries) do
		lang_txt = {Tag_2P('Id', id)}
		for code, lang in pairs(languages) do
			local value = ''
			if code == lang_code then
				if not text[code] then code = textlines.default end
				value = InsertCharEntity(text[code])
			end
			value = Tag_2P('Value', value)
			table.insert(lang_txt, Tag_2P(lang, 'VariableSizeString.xml', value))
		end
		table.insert(entries, Tag_1P('value', 'TkLocalisationEntry.xml', table.concat(lang_txt)))
	end
	return '<?xml version="1.0" encoding="utf-8"?>'
		..
		Tag_1P(
			'template',
			'TkLocalisationTable',
			Tag_1P('name', 'Table', table.concat(entries)),
			'Data'
		)
end

local function AddLanguageFiles(textlines)
	local lang_codes = {}
	-- collect all language codes from entries
	for _,e in pairs(textlines.entries) do
		for k,_ in pairs(e) do lang_codes[k] = 0 end
	end
	local T = {}
	for code,_ in pairs(lang_codes) do
		table.insert(T, {
			FILE_CONTENT	 = BuildLocaleText(textlines, code),
			FILE_DESTINATION = string.format(
				'LANGUAGE/%s_%s.EXML',
				textlines.locale,
				languages[code]
			):upper()
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= string.format('_LANG %s_Personal.pak', text_lines.locale),
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS		= {
	-- {
		-- MBIN_CHANGE_TABLE	= {{
			-- MBIN_FILE_SOURCE	= 'GCDEBUGOPTIONS.GLOBAL.MBIN',
			-- EXML_CHANGE_TABLE	= {
				-- {
					-- PRECEDING_KEY_WORDS	= 'LocTableList',
					-- ADD =
						-- Tag_1P(
							-- 'value',
							-- 'NMSString0x20.xml',
							-- Tag_2P('Value', text_lines.locale)
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
	ADD_FILES = AddLanguageFiles(text_lines)
}
