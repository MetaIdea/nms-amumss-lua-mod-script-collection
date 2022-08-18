----------------------------------------
local desc = [[
  Increase stack sizes
  custom icons & icon background color
  add craftables
]]--------------------------------------

local stack_mult = {
	{'CRAFTPROD_SUB', 				4},
	{'FOOD_INGREDIENT_SUB', 		4},
	{'FOOD_COOKED_SUB',				4},
	{'LAUNCHFUEL_SUB',				5},
	{'BP_SALVAGE_SUB',				2},
	{'UI_SALVAGE_TECH_SUB',			8},
	{'UI_SENTINEL_LOOT_SUB',		8},
	{'UI_REPAIR_KIT_SUB',			2},
	{'UI_STORMCRYSTAL_SUB',			2},
	{'UI_ALLOY_COMPLEX_SUBTITLE',	2},
	{'UI_REACTION_SUBTITLE',		2},
	{'UI_MEGAPROD_SUBTITLE',		2},
	{'UI_ULTRAPROD_SUBTITLE',		8},
	{'BLD_GLITCHPROP_SUBTITLE',		2}
}
function stack_mult:Get(x)
	return {
		REPLACE_TYPE 		= 'All',
		MATH_OPERATION 		= '*',
		SPECIAL_KEY_WORDS	= {'Value', x[1]},
		SECTION_UP			= 1,
		VALUE_CHANGE_TABLE 	= { {'StackMultiplier',	x[2]} }
	}
end

local replace_icons = {
	{'LOG_KEY',			'KETAROS/PRODUCT.LOGKEY.DDS'},
	{'ACCESS1',			'KETAROS/PRODUCT.ATLASPASS3.DDS'},
	{'ACCESS2',			'KETAROS/PRODUCT.ATLASPASS2.DDS'},
	{'FRIG_TOKEN',		'KETAROS/PRODUCT.FRIGATEMOD.DDS'},
	{'SHIP_INV_TOKEN',	'KETAROS/PRODUCT.SHIPINV2.DDS'},
	{'FREI_INV_TOKEN',	'KETAROS/PRODUCT.SHIPINV.DDS'},
	{'CARBON_SEAL',		'KETAROS/PRODUCT.HERMETICS.DDS'},
	{'MEGAPROD2',		'KETAROS/PRODUCT.QUANTUMP.DDS'},
	{'FOOD_M_CAT',		'KETAROS/PRODUCT.MEAT.LIVER.DDS'},
	{'FOOD_M_STRIDER',	'KETAROS/PRODUCT.MEAT.SAUSAGE.DDS'},
	{'FOOD_M_COW',		'KETAROS/PRODUCT.MEATSTAKE.DDS'},
	{'FOOD_M_CRAB',		'KETAROS/PRODUCT.MEATLEG.DDS'},
	{'FOOD_M_CRAB',		'KETAROS/PRODUCT.MEATCHUNKY.DDS'},
	{'SUMMON_GARAGE',	'BUILDABLE/BUILDABLE.SIGNAL.DDS'},
	{'SUIT_INV_TOKEN',	'UPDATE3/TRADEPROD.ENERGY2.DDS'},
	{'GEODE_CAVE',		'U4PRODUCTS/PRODUCT.GEODECAVE.DDS'},
	{'PRODFUEL2',		'U4PRODUCTS/PRODUCT.OXYGENGEL2.DDS'},
	{'SHIPCHARGE',		'U4PRODUCTS/PRODUCT.SHIPCHARGE.DDS'},
	{'SALVAGE_TECH10',	'U4PRODUCTS/PRODUCT.CAPTUREDNANODE.DDS'},
	{'FOOD_V_ROBOT',	'PRODUCTS/PRODUCT.GLOWPELLET.DDS'},
}
function replace_icons:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		PRECEDING_KEY_WORDS = 'Icon',
		VALUE_CHANGE_TABLE 	= { {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/'..x[2]} }
	}
end

--- if subtitle, will apply color to entire group
local icon_bg_color = {
	{'UI_FUELPROD3_NAME',			0.54,	0.26,	0.26},
	{'UI_LANDPROD3_NAME',			0.54,	0.26,	0.26},
	{'UI_CAVEPROD3_NAME',			0.54,	0.26,	0.26},
	{'UI_CATAPROD3_NAME',			0.54,	0.26,	0.26},
	{'UI_WATERPROD3_NAME',			0.54,	0.26,	0.26},
	{'UI_OXYPROD3_NAME',			0.54,	0.26,	0.26},
	{'NEWPROD11_NAME',				0.302,	0.16,	0.34}, -- cave geode
	{'FOOD_ROBOT_VEG_NAME',			0.102,	0.153,	0.24},
	{'EXO_SUMMON_POD_NAME',			0.04,	0.18,	0.26},
	{'UI_VENTGEM_NAME',				0.8,	0.8,	0.8},
	{'UI_STORMCRYSTAL_NAME',		0.302,	0.16,	0.34},
	{'UI_TECHMOD_NAME',				0.953,	0.662,	0.137},
	{'FRIG_BOOST_SUB',				0.42,	0.47,	0.51},
	{'UI_ALLOY_SIMPLE_SUBTITLE',	0.18,	0.25,	0.62},
	{'UI_ALLOY_COMPLEX_SUBTITLE',	0.18,	0.25,	0.62},
	{'UI_REACTION_SUBTITLE',		0.86,	0.66,	0.18},
	{'UI_COMPOUND_SUBTITLE',		0.86,	0.66,	0.18},
}
function icon_bg_color:Get(x)
	local function IsSingle(a, b)
		return x[1]:find('NAME') and a or b
	end
	return {
		REPLACE_TYPE 		= IsSingle(nil, 'All'),
		INTEGER_TO_FLOAT	= 'Force',
		SPECIAL_KEY_WORDS	= {IsSingle('Name', 'Value'), x[1]},
		SECTION_UP			= IsSingle(0, 1),
		VALUE_CHANGE_TABLE 	= { {'R', x[2]}, {'G', x[3]}, {'B', x[4]} }
	}
end

local prod_requirements = {
	{
	---	cargo_bulkhead
		id	 = 'FREI_INV_TOKEN',
		cost = 8,
		{'CASING', 		40,		'P'},	-- plating
		{'COMPOUND6',	3,		'P'},	-- cryo pump
		{'FARMPROD5',	5,		'P'}	-- poly fibre
	},{
	---	wiring loom
		id   = 'TECH_COMP',
		{'MICROCHIP', 	3,		'P'},	-- microprocessor
		{'YELLOW2', 	80,		'S'},	-- copper
		{'ASTEROID1', 	40,		'S'}	-- silver
	},{
	---	Spawning Sac
		id   = 'ALIEN_INV_TOKEN',
		cost = 2,
		{'FIENDCORE', 	3,		'P'},	-- larval core
		{'ROBOT1', 		100,	'S'},	-- pugneum
		{'SPACEGUNK2', 	60,		'S'}	-- runaway mould
	},{
	---	Anomaly Detector
		id   = 'POI_LOCATOR',
		{'GEODE_SPACE', 1,		'P'},	-- tritium hypercluster
		{'ASTEROID1', 	20,		'S'},	-- silver
		{'ASTEROID2', 	20,		'S'},	-- gold
	},{
	---	desk chair
		id   = 'BUILDCHAIR',
		subs = true,
		{'CASING', 		1,		'P'},	-- metal plating
		{'FUEL2', 		20,		'S'},	-- c carbon
	},{
	---	armchair
		id   = 'BUILDCHAIR2',
		subs = true,
		{'CASING', 		1,		'P'},
		{'FUEL2', 		20,		'S'},
	},{
	---	adjustable chair
		id   = 'BUILDCHAIR3',
		subs = true,
		{'CASING', 		1,		'P'},
		{'FUEL2', 		20,		'S'},
	},{
	---	classic chair
		id   = 'BUILDCHAIR4',
		subs = true,
		{'CASING', 		1,		'P'},
		{'FUEL2', 		20,		'S'},
	},{
	---	ship ai valves
		id   = 'SALVAGE_TECH10',
		{'ULTRAPROD1', 	10,		'P'},
		{'ULTRAPROD2', 	10,		'P'},
	},
	multi = true
}
function prod_requirements:Get(x)
	local function BuildReqs()
		local exml = ''
		local requirement = [[
			<Property value="GcTechnologyRequirement.xml">
				<Property name="ID" value="%s"/>
				<Property name="Amount" value="%s"/>
				<Property name="InventoryType" value="GcInventoryType.xml">
					<Property name="InventoryType" value="%s"/>
				</Property>
			</Property>]]
		for _,p in ipairs(x) do
			exml = exml..string.format(requirement, p[1], p[2],
				(p[3] == 'S' and 'Substance' or 'Product')
			)
		end
		return '<Property name="Requirements">'..exml..'</Property>'
	end
	return {
		{
			SPECIAL_KEY_WORDS	= {'Id', x.id},
			VALUE_CHANGE_TABLE 	= {
				{'RecipeCost',	x.cost or 1},
				{'IsCraftable',	true}
			}
		},{
			SPECIAL_KEY_WORDS	= {'Id', x.id},
			PRECEDING_KEY_WORDS	= 'Requirements',
			REMOVE				= x.subs and 'Section' or 'Line'
		},{
			SPECIAL_KEY_WORDS	= {'Id', x.id},
			ADD					= BuildReqs()
		}
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	if tbl.multi or false then
		for _,v in ipairs(tbl) do
			for _,w in ipairs( tbl:Get(v) ) do table.insert(T, w) end
		end
	else
		for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	end
	return T
end

local source_table_product = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE PRODUCT.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_table_product,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'SALVAGE_TECH10'},
				VALUE_CHANGE_TABLE 	= {
					{'BaseValue',	312000000},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'JELLY'},
				SECTION_ACTIVE		= 2,
				VALUE_CHANGE_TABLE 	= {
					{'Subtitle',	'CRAFTPROD_SUB'},
				}
			},
			{
			--	text added in custom lang file
				SPECIAL_KEY_WORDS	= {'Id', 'GEODE_CAVE'},
				VALUE_CHANGE_TABLE 	= {
					{'Name',		'UI_GEODE_NAME_CAVE'},
					{'NameLower',	'UI_GEODE_NAME_CAVE_L'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= source_table_product,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(stack_mult)
	},
	{
		MBIN_FILE_SOURCE	= source_table_product,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(replace_icons)
	},
	{
		MBIN_FILE_SOURCE	= source_table_product,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(icon_bg_color)
	},
	{
		MBIN_FILE_SOURCE	= source_table_product,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(prod_requirements)
	}
}}}}
