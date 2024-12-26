---@diagnostic disable: undefined-global
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
		{'SUIT_REFINER2',	22}
	},
	UI_PORTAL_CAT_TECH_SHIP		= {
		{'PHOTONIX_CORE',	4},
		{'LAUNCHER_SPEC'},
		{'SHIPJUMP_SPEC'},
		{'HYPERDRIVE_SPEC'},
		{'SHIP_LIFESUP'}
	},
	UI_PORTAL_CAT_TECH_TOOL		= {
		{'LASER_XO',		3},
		{'ATLAS_LASER',		5},
		{'SENT_LASER',		5},
		{'UT_BUI_SCAN2',	12},
		{'UT_S10_SCAN',		12},
		{'UT_BUI_SCAN',		12}
	},
	UI_PORTAL_CAT_TECH_GUN		= {
		{'BOLT_SM',			3},
		{'FLAME',			20}
	},
	UI_PORTAL_CAT_TECH_WEIRD	= {
		{'STORY_TRANSLATE',	3},
		{'F_LIFESUPP',		15},
		{'SHIPGUN_ROBO',	15},
		{'SHIPSHIELD_ROBO',	15},
		{'HYPERDRIVE_ROBO',	15},
		{'SHIPJUMP_ROBO',	15},
		{'LAUNCHER_ROBO',	15},
		{'LIFESUP_ROBO',	15},
	}
}

local source_mbins = {
	'METADATA/REALITY/CATALOGUECRAFTING.MBIN',
}

local function ProcessCatalogCraft(the_index)
	local mbin		= source_mbins[1]
	local exml_raw	= table.concat(the_index.ModdedEXMLs[NormalizePath(mbin, true)])
	local mbin_craft= ToLua(exml_raw)

	for _,cat in ipairs(mbin_craft.template.Categories) do
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
				table.insert(cat.Items, item[2] or #cat.Items+1, item[1])
			end
		end
	end
	return {mbin, FileWrapping(mbin_craft)}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '___TEST 7 ext_func catalog.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.7',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE = source_mbins,
		EXT_FUNC		 = {'ProcessCatalogCraft'}
	}
}}}}
