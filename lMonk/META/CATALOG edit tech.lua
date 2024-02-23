----------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/exml_2_lua.lua')
----------------------------------------------------
local mod_desc = [[
  remove proc-tech and add extras in tech catalog
]]--------------------------------------------------

local catalog = {
	UI_PORTAL_CAT_TECH_SUIT		= {
		{22,	'SUIT_REFINER2'}
	},
	UI_PORTAL_CAT_TECH_SHIP		= {
		{4,		'PHOTONIX_CORE'},
		{'LAUNCHER_SPEC'},
		{'SHIPJUMP_SPEC'},
		{'HYPERDRIVE_SPEC'},
		{'SHIP_LIFESUP'}
	},
	UI_PORTAL_CAT_TECH_TOOL		= {
		{3,		'LASER_XO'},
		{5,		'ATLAS_LASER'},
		{5,		'SENT_LASER'},
		{12,	'UT_BUI_SCAN2'},
		{12,	'UT_S10_SCAN'},
		{12,	'UT_BUI_SCAN'}
	},
	UI_PORTAL_CAT_TECH_GUN		= {
		{3,		'BOLT_SM'},
		{20,	'FLAME'}
	},
	UI_PORTAL_CAT_TECH_WEIRD	= {
		{3,		'STORY_TRANSLATE'},
		{15,	'F_LIFESUPP'},
		{15,	'SHIPGUN_ROBO'},
		{15,	'SHIPSHIELD_ROBO'},
		{15,	'HYPERDRIVE_ROBO'},
		{15,	'SHIPJUMP_ROBO'},
		{15,	'LAUNCHER_ROBO'},
		{15,	'LIFESUP_ROBO'}
	}
}

local catalogue_source	= 'METADATA/REALITY/CATALOGUECRAFTING.MBIN' --<< preload_source
local mbin_table		= LoadRuntimeMbin(catalogue_source)
local categories		= mbin_table and mbin_table.template.Categories or {}
-- * on error fails silently and results in an empty catalog

for _,cat in ipairs(categories) do
	local pattern	= cat.CategoryID:find('_FRE') and '^U_FR_.+[123]$' or '^U_.+[1234X]$'
	for i=#cat.Items, 1, -1 do
		-- filter proc-tech from the lists except top level freighter proc-tech
		if cat.Items[i].Value:find(pattern) then
			table.remove(cat.Items, i)
		end
	end
	if catalog[cat.CategoryID] then
		-- add extras
		for _,item in ipairs(catalog[cat.CategoryID]) do
			if item[2] then
				table.insert(cat.Items, item[1], item[2])
			else
				cat.Items[#cat.Items+1] = item[1]
			end
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__META tech catalog.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= {
		{
			FILE_CONTENT	 = FileWrapping(mbin_table),
			FILE_DESTINATION = catalogue_source:gsub('.MBIN$', '.EXML')
		}

	}
}

-- keep S 				>> {^U_.+[124X]X$}
-- keep freighter S		>> {^U_FR_.+[123]$}
-- remove all proc tech	>> {^U_.+[1234X]$}