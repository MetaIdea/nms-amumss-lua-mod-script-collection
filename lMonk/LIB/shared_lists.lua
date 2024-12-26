------------------------------------------------------------
--	Central location for sharing data... remove duplicates!
------------------------------------------------------------

-- 	ship fabricator texture additions
--	names and palette selection ships texture groups
new_ship_texture = {
	{
		name	= 'SHINY',
		sci		= true,		-- shared with scientific
		org		= true,		-- existing original
		palette	= {			-- shared with -and changed by the following
			PRIMARY		= {'Metal', 'Primary'},
			SECONDARY	= {'Paint', 'Alternative1'},
			TERTIARY	= {'Paint', 'Primary'},
		}
	},
	{
		name	= 'DEFAULT',
		sci		= true,
		org		= true,
		palette	= {
			PRIMARY		= {'Undercoat', 'Primary'},
		}
	},
	{
		name	= 'TOPOMAP',
		metal	= true,
		sci		= true,
		palette	= {
			PRIMARY		= {'Paint', 'Primary'},
			TERTIARY	= {'Undercoat', 'Primary'},
		}
	},
	{
		name	= 'PAINTSWIRL',
		metal	= false,
		sci		= true
	},
	{
		name	= 'MEZO',
		metal	= false,
		sci		= true
	},
	{
		name	= 'MAYA_SNAKE',
		metal	= true,
		sci		= true
	},
	{
		name	= 'MAYA_WALL',
		metal	= true,
		sci		= true
	},
	{
		name	= 'AZTEC_DRAGON',
		metal	= false,
		sci		= true
	},
	{
		name	= 'AZTEC_FACE',
		metal	= false,
		sci		= true
	},
	{
		name	= 'CELTIC',
		metal	= true,
		sci		= true
	},
	{
		name	= 'POLYNESIA',
		metal	= false,
		sci		= true
	},
	{
		name	= 'POLYNESIA_SEA',
		metal	= true,
		sci		= true
	},
	{
		name	= 'MAORI_FACE',
		metal	= false,
		sci		= true
	},
	{
		name	= 'EASTERN',
		metal	= false,
		sci		= true
	},
	{
		name	= 'WOVEN',
		metal	= true,
		sci		= true
	},
	{
		name	= 'WOVEN2',
		metal	= true,
		sci		= true
	},
	{
		name	= 'DEMON',
		metal	= false,
		sci		= true
	},
	{
		name	= 'TARGET',
		metal	= false,
		sci		= true
	},
	{
		name	= 'SKULLS',
		metal	= true,
		sci		= true
	},
	{
		name	= 'THE_HARING',
		metal	= true,
		sci		= true
	}
}

--	language IDs for new tech
new_tech = {
	VEHICLESTUN = {
		name		= 'VEHICLESTUN_NAME',
		namelower	= 'VEHICLESTUN_NAME_L',
		subtitle	= 'VEHICLESTUN_SUB',
		description	= 'VEHICLESTUN_DESC'
	},
	ROCEKT_ALIEN = {
		name		= 'ROCEKT_ALIEN_NAME',
		namelower	= 'ROCEKT_ALIEN_NAME_L',
		subtitle	= 'UI_ALIENSHIP_TECH_SUB',
		description	= 'ROCEKT_ALIEN_DESC'
	},
	ROCEKT_U_ALIEN = {
		name		= 'ROCEKT_U_ALIEN_NAME',
		namelower	= 'ROCEKT_U_ALIEN_NAME_L',
		subtitle	= 'UI_ALIENSHIP_TECH_SUB',
		description	= 'ROCEKT_U_ALIEN_DESC'
	},
	JUMP_U_ALIEN = {
		name		= 'JUMP_U_ALIEN_NAME',
		namelower	= 'JUMP_U_ALIEN_NAME_L',
		subtitle	= 'UI_ALIENSHIP_TECH_SUB',
		description	= 'JUMP_U_ALIEN_DESC'
	},
	SHIELD_U_ALIEN = {
		name		= 'SHIELD_U_ALIEN_NAME',
		namelower	= 'SHIELD_U_ALIEN_NAME_L',
		subtitle	= 'UI_ALIENSHIP_TECH_SUB',
		description	= 'SHIELD_U_ALIEN_DESC'
	},
}

--	language IDs for new products
new_product = {
	RAMMOULD5 = {
		name		= 'RAMMOULD_NAME',
		namelower	= 'RAMMOULD_NAME_L',
		subtitle	= 'UI_MEGAPROD_SUBTITLE',
		description	= 'RAMMOULD_DESC'
	},
	ULTRAPRODX40 = {
		name		= 'PRODX40_NAME',
		namelower	= 'PRODX40_NAME_L',
		subtitle	= 'CURIO4_SUBTITLE',
		description	= 'PRODX40_DESC'
	},
	SUPERFOOD = {
		name		= 'SUPERFOOD_NAME',
		namelower	= 'SUPERFOOD_NAME_L',
		subtitle	= 'PROD_NIP_SUBTITLE',
		description	= 'SUPERFOOD_DESC'
	}
}
