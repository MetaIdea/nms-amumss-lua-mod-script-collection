-----------------------------------------------------------------------------
local desc = [[
  Increase stack size for various items
  Change cost of basic metal building parts to ferrite
  Explosive drones craft: ship_shield + unstable_plasma * 2 + platinum * 20
  Fuel oxidizer craft: ship_shield + oxygen * 60 + platinum * 20
  Cargo bulkhead craft: plating * 60 + poly_fibre * 5 + cryo_pump * 3
  Embedded:: Ketaros icons
]]---------------------------------------------------------------------------

local stack_mult = {
	{'CRAFTPROD_SUB', 				4},
	{'FOOD_INGREDIENT_SUB', 		4},
	{'FOOD_COOKED_SUB',				4},
	{'LAUNCHFUEL_SUB',				5},
	{'BP_SALVAGE_SUB',				2},
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
	{'FOOD_V_ROBOT',	'PRODUCTS/PRODUCT.GLOWPELLET.DDS'},
}
function replace_icons:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		PRECEDING_KEY_WORDS = 'Icon',
		VALUE_CHANGE_TABLE 	= { {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/'..x[2]} }
	}
end

local icon_bg_color = {
	{'Id',		'FUELPROD3',					0.54,	0.26,	0.26},
	{'Id',		'LANDPROD3',					0.54,	0.26,	0.26},
	{'Id',		'CAVEPROD3',					0.54,	0.26,	0.26},
	{'Id',		'WATERPROD3',					0.54,	0.26,	0.26},
	{'Id',		'CATAPROD3',					0.54,	0.26,	0.26},
	{'Id',		'OXYPROD3',						0.54,	0.26,	0.26},
	{'Id',		'CAVECUBE',						0.302,	0.16,	0.34},	
	{'Id',		'FOOD_V_ROBOT',					0.102,	0.153,	0.24},
	{'Id',		'SUMMON_GARAGE',				0.04,	0.18,	0.26},
	{'Name',	'UI_STORMCRYSTAL_NAME',			0.54,	0.26,	0.26},
	{'Name',	'UI_VENTGEM_NAME',				0.54,	0.26,	0.26},
	{'Value',	'FRIG_BOOST_SUB',				0.42,	0.47,	0.51},
	{'Value',	'UI_ALLOY_SIMPLE_SUBTITLE',		0.18,	0.25,	0.62},
	{'Value',	'UI_ALLOY_COMPLEX_SUBTITLE',	0.18,	0.25,	0.62},
	{'Value',	'UI_REACTION_SUBTITLE',			0.86,	0.66,	0.18},
	{'Value',	'UI_COMPOUND_SUBTITLE',			0.86,	0.66,	0.18},
}
function icon_bg_color:Get(x)
	if x[1] == 'Value' then up = 1; all = 'All' end
	return {
		REPLACE_TYPE 		= all,
		INTEGER_TO_FLOAT	= 'Force',
		SPECIAL_KEY_WORDS	= {x[1], x[2]},
		SECTION_UP			= up,
		VALUE_CHANGE_TABLE 	= { {'R', x[3]}, {'G', x[4]}, {'B', x[5]} }
	}
end

local req_substance = {
	'C_WALL', 'C_WALL_H', 'C_WALL_Q', 'C_WALL_Q_H', 'C_WALLDIAGONAL', 'C_WALL_WINDOW', 'C_SDOOR',
	'C_DOOR', 'C_DOOR_H', 'C_GDOOR', 'C_GDOOR_D', 'C_DOORWINDOW', 'C_FLOOR', 'C_TRIFLOOR',
	'C_TRIFLOOR_Q', 'C_GFLOOR', 'C_FLOOR_Q', 'C_RAMP', 'C_RAMP_H', 'C_ROOF', 'C_ROOF_M',
	'C_ROOF_C', 'C_ROOF_IC', 'C_ARCH', 'C_ARCH_H',

	'M_WALL', 'M_WALL_H', 'M_WALL_Q', 'M_WALL_Q_H', 'M_WALLDIAGONAL', 'M_WALL_WINDOW', 'M_SDOOR',
	'M_DOOR', 'M_DOOR_H', 'M_GDOOR', 'M_GDOOR_D', 'M_DOORWINDOW', 'M_FLOOR', 'M_TRIFLOOR',
	'M_TRIFLOOR_Q', 'M_GFLOOR', 'M_FLOOR_Q', 'M_RAMP', 'M_RAMP_H', 'M_ROOF', 'M_ROOF_M',
	'M_ROOF_C', 'M_ROOF_IC', 'M_ARCH', 'M_ARCH_H',

	'S_WALL', 'S_WALLB', 'S_WALLM', 'S_WALLT', 'S_WALL_H', 'S_WALLB_H', 'S_WALLM_H', 'S_WALLT_H',
	'S_WALL_Q', 'S_WALL_Q1', 'S_WALL_Q_H', 'S_WALL_Q_H1', 'S_WALLDIAGONAL', 'S_WALLB_TRI',
	'S_WALLM_TRI', 'S_WALLT_TRI', 'S_WALL_WINDOW', 'S_WALLB_WIN0', 'S_WALLM_WIN0', 'S_WALLT_WIN0',
	'S_WALL_WIN1', 'S_WALLB_WIN1', 'S_WALLM_WIN1', 'S_WALLT_WIN1', 'S_WALL_WIN2', 'S_WALLB_WIN2',
	'S_WALLM_WIN2', 'S_WALLT_WIN2', 'S_WALL_WIN3', 'S_WALLB_WIN3', 'S_WALLM_WIN3', 'S_WALLT_WIN3',
	'S_DOOR', 'S_DOORB0', 'S_DOORM0', 'S_DOORT0', 'S_DOOR1', 'S_DOORB1', 'S_DOORM1', 'S_DOORT1',
	'S_FLOOR', 'S_FLOOR_Q', 'S_TRIFLOOR', 'S_TRIFLOOR_Q', 'S_GFLOOR', 'S_RAMP', 'S_RAMP_H',
	'S_ROOF0', 'S_ROOF1', 'S_ROOF2', 'S_ROOF3', 'S_ROOF4', 'S_ROOF5', 'S_ROOF_M', 'S_ROOF_C',
	'S_ROOF_IC', 'S_CHEV_WALL', 'S_CHEV_DOOR', 'S_CHEV_WALL_H_C', 'S_CHEV_WIN0', 'S_CHEV_WIN1',
	'S_CHEV_WIN2', 'S_ROOF_M_Q', 'S_ROOF_E_Q', 'S_ROOF_M_CAP', 'S_ROOF_E_CAP', 'S_DOOR_H',
	'S_DOORB0_H', 'S_DOORM0_H', 'S_DOORT0_H', 'S_DOORWINDOW', 'S_DOORWINB0', 'S_DOORWINM0',
	'S_DOORWINT0', 'S_GDOOR', 'S_GDOORB0', 'S_GDOORM0', 'S_GDOORT0', 'S_ARCH', 'S_ARCHB',
	'S_ARCHM', 'S_ARCHT', 'S_ARCH_H', 'S_ARCHB_H', 'S_ARCHM_H', 'S_ARCHT_H', 'S_RAMP_Q_TOP',

	'F_WALL', 'F_WALLB', 'F_WALLM', 'F_WALLT', 'F_WALL_H', 'F_WALLB_H', 'F_WALLM_H', 'F_WALLT_H',
	'F_WALL_Q', 'F_WALL_Q1', 'F_WALL_Q_H', 'F_WALL_Q_H1', 'F_WALLDIAGONAL', 'F_WALLB_TRI',
	'F_WALLM_TRI', 'F_WALLT_TRI', 'F_WALL_WINDOW', 'F_WALLB_WIN0', 'F_WALLM_WIN0', 'F_WALLT_WIN0',
	'F_WALL_WIN1', 'F_WALLB_WIN1', 'F_WALLM_WIN1', 'F_WALLT_WIN1', 'F_WALL_WIN2', 'F_WALLB_WIN2',
	'F_WALLM_WIN2', 'F_WALLT_WIN2', 'F_WALL_WIN3', 'F_WALLB_WIN3', 'F_WALLM_WIN3', 'F_WALLT_WIN3',
	'F_DOOR', 'F_DOORB0', 'F_DOORM0', 'F_DOORT0', 'F_DOOR1', 'F_DOORB1', 'F_DOORM1', 'F_DOORT1',
	'F_FLOOR', 'F_FLOOR_Q', 'F_TRIFLOOR', 'F_TRIFLOOR_Q', 'F_GFLOOR', 'F_RAMP', 'F_RAMP_H',
	'F_ROOF0', 'F_ROOF1', 'F_ROOF2', 'F_ROOF3', 'F_ROOF4', 'F_ROOF5', 'F_ROOF6', 'F_ROOF7',
	'F_ROOF8', 'F_ROOF_M', 'F_ROOF_C', 'F_ROOF_IC', 'F_CHEV_WALL', 'F_CHEV_DOOR',
	'F_CHEV_WALL_H_C', 'F_CHEV_WIN0', 'F_CHEV_WIN1', 'F_CHEV_WIN2', 'F_ROOF_M_Q', 'F_ROOF_E_Q',
	'F_ROOF_M_CAP', 'F_ROOF_E_CAP', 'F_DOOR_H', 'F_DOORB0_H', 'F_DOORM0_H', 'F_DOORT0_H',
	'F_DOORWINDOW', 'F_DOORWINB0', 'F_DOORWINM0', 'F_DOORWINT0', 'F_GDOOR', 'F_GDOORB0',
	'F_GDOORM0', 'F_GDOORT0', 'F_ARCH', 'F_ARCHB', 'F_ARCHM', 'F_ARCHT', 'F_ARCH_H', 'F_ARCHB_H',
	'F_ARCHM_H', 'F_ARCHT_H', 'F_RAMP_Q_TOP',
	S = {C='LAND2', M='LAND3', S='LAND2', F='LAND3'},
}
function req_substance:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'Id', x},
		PRECEDING_KEY_WORDS = 'Requirements',
		VALUE_CHANGE_TABLE 	= { {'ID', self.S[x:sub(1, 1)]} }
	}
end

local function AddNewCraftPart(x)
	return [[
	<Property value="GcTechnologyRequirement.xml">
		<Property name="ID" value="]]..x[1]..[[" />
		<Property name="InventoryType" value="GcInventoryType.xml">
			<Property name="InventoryType" value="]]..x[2]..[[" />
		</Property>
		<Property name="Amount" value="]]..x[3]..[[" />
	</Property>]]
end

local prod_requirements = {
	Cargo_Bulkhead = { -- (FREI_INV_TOKEN)
		{'CASING',		'Product', 60},  -- plating
		{'COMPOUND6',	'Product', 3},	 -- cryo pump
		{'FARMPROD5',	'Product', 5}	 -- poly fibre
	}
}
function prod_requirements:Build(p)
	local exml = '<Property name="Requirements">'
	for _,v in ipairs(self[p]) do exml = exml..AddNewCraftPart(v) end
	return exml..'</Property>'
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

local source_table_product = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE PRODUCT.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_table_product,
		EXML_CHANGE_TABLE	= {
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
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'FREI_INV_TOKEN'},
				VALUE_CHANGE_TABLE 	= {
					{'RecipeCost',	10},
					{'IsCraftable',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'FREI_INV_TOKEN'},
				PRECEDING_KEY_WORDS = 'Requirements',
				ADD					= prod_requirements:Build('Cargo_Bulkhead')
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
	-- {
		-- MBIN_FILE_SOURCE	= source_table_product,
		-- EXML_CHANGE_TABLE	= BuildExmlChangeTable(req_substance)
	-- }
}}}}
