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
		pattern	= {'^U_.+[1234X]$'}
	},
	UI_PORTAL_CAT_TECH_SHIP		= {
		pattern	= {'^U_.+[1234X]$'},
		add		= {
			{'PHOTONIX_CORE',	4},
			{'LAUNCHER_SPEC'},
			{'SHIPJUMP_SPEC'},
			{'HYPERDRIVE_SPEC'},
			{'SHIP_LIFESUP'}
		}
	},
	UI_PORTAL_CAT_TECH_TOOL		= {
		pattern	= {'^U_.+[1234X]$'},
		add		= {
			{'LASER_XO',		3},
			{'UT_BUI_SCAN2',	12},
			{'UT_S10_SCAN',		12},
			{'UT_BUI_SCAN',		12},
			{'SUN_LASER'},
			{'SOUL_LASER'},
			{'SENT_LASER'},
			{'ATLAS_LASER'}
		}
	},
	UI_PORTAL_CAT_TECH_GUN		= {
		pattern	= {'^U_.+[1234X]$'},
		add		= {
			{'BOLT_SM',			3},
			{'FLAME',			20}
		}
	},
	UI_PORTAL_CAT_TECH_FRE		= {
		pattern	= {'^U_FR_.+[123]$'}
	},
	UI_PORTAL_CAT_TECH_VEH		= {
		pattern	= {'^U_.+[1234X]$'}
	},
	UI_PORTAL_CAT_TECH_WEIRD	= {
		pattern	= {
			'UT_BUI_SCAN2',
			'.-LASER$',
		},
		add		= {
			{'F_LIFESUPP',		15},
		}
	}
}

local source_mbins = {
	'METADATA/REALITY/CATALOGUECRAFTING.MBIN',
	'METADATA/REALITY/CATALOGUEMATERIALS.MBIN',
	'METADATA/REALITY/CATALOGUERECIPES.MBIN',
	'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'
}

-----------------------------------------------------------------------------------------
local function ProcessCatalogCraft(the_index, norm_path)
	local mbin_craft = ToLua(table.concat(the_index.ModdedEXMLs[norm_path]))

	for _,cat in ipairs(mbin_craft.template.Categories) do
		if tech_catalog[cat.CategoryID].pattern then
			-- remove by pattern
			for _,ptrn in ipairs(tech_catalog[cat.CategoryID].pattern) do
				for i=#cat.Items, 1, -1 do
					if cat.Items[i].Value:find(ptrn) then
						table.remove(cat.Items, i)
					end
				end
			end
		end
		if tech_catalog[cat.CategoryID].add then
			-- add extras
			for _,item in ipairs(tech_catalog[cat.CategoryID].add) do
				table.insert(
					cat.Items,
					item[2] or #cat.Items + 1,
					{
						meta	= {'value', 'NMSString0x10.xml'},
						Value	= item[1]
					}
				)
			end
		end
	end
	return FileWrapping(mbin_craft)
end

-----------------------------------------------------------------------------------------
local function ProcessCatalogMaterial(the_index, norm_path)
	local mbin_material = ToLua(table.concat(the_index.ModdedEXMLs[norm_path]))
	local material_cat4	= mbin_material.template.Categories[4]

	material_cat4.Items[#material_cat4.Items+1] = {
		meta	= {'value', 'NMSString0x10.xml'},
		Value	= 'ULTRAPRODX40'
	}
	material_cat4.Items[#material_cat4.Items+1] = {
		meta	= {'value', 'NMSString0x10.xml'},
		Value	= 'RAMMOULD5'
	}
	return FileWrapping(mbin_material)
end

-----------------------------------------------------------------------------------------
local function ProcessCatalogRecipe(the_index, norm_path)
	-- just to pull data, will be discarded
	local gc_products		= ToLua(table.concat(the_index.ModdedEXMLs[NormalizePath(source_mbins[4], true)]))

	local mbin_recipe		= ToLua(table.concat(the_index.ModdedEXMLs[norm_path]))
	local recipe_categories	= mbin_recipe.template.Categories
	-- copy table by value
	local new_category 		= UnionTables({recipe_categories[1]})

	for _,head in ipairs({
		{f='UI_FIGHTER_PART_SUB',		t='UI_SHIP_TAB_STARSHIP'},
		{f='UI_DROPSHIP_PART_SUB',		t='UI_SHIP_TAB_DROPSHIP'},
		{f='UI_SCIENTIFIC_PART_SUB',	t='UI_SHIP_TAB_SCIENTIFIC'},
	}) do
		new_category.CategoryID			= head.t
		new_category.CategoryIDUpper	= head.t
		new_category.IconOn.Filename	= 'TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.TECH.SHIP.ON.DDS'
		new_category.IconOff.Filename	= 'TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.TECH.SHIP.OFF.DDS'
		new_category.Type.WikiTopicType	= 'CustomItemList'

		-- read prodcut list
		local parts = {}
		for _,prd in ipairs(gc_products.template.Table) do
			if prd.Subtitle:find(head.f) then
				parts[#parts+1] = prd.ID
			end
		end
		new_category.Items = StringArray(parts, 'Items')
		recipe_categories[#recipe_categories+1] = UnionTables({new_category})
	end
	return FileWrapping(mbin_recipe)
end

-----------------------------------------------------------------------------------------
ProcessRawExml = nil
function ProcessRawExml(the_index) -- called by AMUMSS
	local T = {}
	for i, func in ipairs({
		ProcessCatalogCraft,
		ProcessCatalogMaterial,
		ProcessCatalogRecipe
	}) do
		local norm_path = NormalizePath(source_mbins[i], true)
		T[norm_path] = func(the_index, norm_path)
	end
	return T
end

-----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__META wiki catalogs.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE = source_mbins,
		EXT_FUNC		 = {'ProcessRawExml'}
	}
}}}}
