----------------------------------------------------
dofile('LIB/_exml_2_lua.lua')
dofile('LIB/_lua_2_exml.lua')
----------------------------------------------------
local mod_desc = [[
  remove proc-tech and add extras in tech catalog
  add ship parts to materials catalog
]]--------------------------------------------------

local tech_catalog = {
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

local catalog_craft		= 'METADATA/REALITY/CATALOGUECRAFTING.MBIN'

local function Main_Processing()

	local mbin_craft		= LoadRuntimeMbin(catalog_craft)
	local craft_categories	= mbin_craft and mbin_craft.template.Categories or {}
	-- * on error fails silently and results in an empty catalog

	for _,cat in ipairs(craft_categories) do
		local pattern	= cat.CategoryID:find('_FRE') and '^U_FR_.+[123]$' or '^U_.+[1234X]$'
		for i=#cat.Items, 1, -1 do
			-- filter proc-tech from the lists except top level freighter proc-tech
			if cat.Items[i].Value:find(pattern) then
				table.remove(cat.Items, i)
			end
		end
		if tech_catalog[cat.CategoryID] then
			-- add extras
			for _,item in ipairs(tech_catalog[cat.CategoryID]) do
				if item[2] then
					table.insert(cat.Items, item[1], item[2])
				else
					cat.Items[#cat.Items+1] = item[1]
				end
			end
		end
	end
	return {
		{
			FILE_CONTENT	 = FileWrapping(mbin_craft),
			FILE_DESTINATION = catalog_craft:gsub('.MBIN$', '.EXML')
		}
	}
end

-----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '___TEST 19 alt preloading wiki catalog.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.7',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= Main_Processing(),
	-- convince amumss to NOT discard my edits
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			catalog_craft
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'ResourceID',	'00'}
				}
			}
		}
	}
}}}}
