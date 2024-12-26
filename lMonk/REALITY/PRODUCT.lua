----------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/table_entry.lua')
dofile('LIB/shared_lists.lua')
----------------------------------------
local mod_desc = [[
  Increase stack sizes
  Custom icons & icon background color
  Add and edit crafting requirements
  Reduce ship parts prices
  Add new products
]]--------------------------------------

local PRP_ = { NM='Name', ID='ID', SB='Subtitle', DS='Description' }

local function Custom_Icons(T)
	for id, icon in pairs({
		CARBON_SEAL		= 'PRODUCTS/PRODUCT.MSEAL.DDS',
		STATION_KEY		= 'PRODUCTS/PRODUCT.STATION.OVERRIDE.DDS',
		FISHBAIT_1		= 'COOKINGPRODUCTS/PRODUCT.BAIT.WORMS.DDS',
		FOOD_M_BALL		= 'COOKINGPRODUCTS/PRODUCT.MEAT.BRAIN.DDS',
		FOOD_M_BEETLE	= 'COOKINGPRODUCTS/PRODUCT.MEAT.CARAPACE.DDS',
		FOOD_M_BONE		= 'COOKINGPRODUCTS/PRODUCT.BONE.CRYSTAL.DDS',
		FOOD_M_CAT		= 'COOKINGPRODUCTS/PRODUCT.MEAT.LIVER.DDS',
		FOOD_M_COW		= 'COOKINGPRODUCTS/PRODUCT.MEAT.STEAK1.DDS',
		FOOD_M_CRAB		= 'COOKINGPRODUCTS/PRODUCT.MEAT.CRAB.DDS',
		FOOD_M_DIGGER	= 'COOKINGPRODUCTS/PRODUCT.MEAT.BONEY.DDS',
		FOOD_M_DIPLO	= 'COOKINGPRODUCTS/PRODUCT.MEAT.STEAK2.DDS',
		FOOD_M_DRILL	= 'COOKINGPRODUCTS/PRODUCT.MEAT.SINEW.DDS',
		FOOD_M_FISH		= 'COOKINGPRODUCTS/PRODUCT.MEAT.FISH.DDS',
		FOOD_M_FLYER	= 'COOKINGPRODUCTS/PRODUCT.MEAT.WING.DDS',
		FOOD_M_HORROR	= 'COOKINGPRODUCTS/PRODUCT.MEAT.HORROR.DDS',
		FOOD_M_MEAT		= 'COOKINGPRODUCTS/PRODUCT.MEAT.CHUNKY.DDS',
		FOOD_M_MOLE		= 'COOKINGPRODUCTS/PRODUCT.MEAT.MOLE.DDS',
		FOOD_M_REX		= 'COOKINGPRODUCTS/PRODUCT.MEAT.SCALE.DDS',
		FOOD_M_STRIDER	= 'COOKINGPRODUCTS/PRODUCT.MEAT.SAUSAGE1.DDS',
		FOOD_V_BUG		= 'COOKINGPRODUCTS/PRODUCT.R.BUG.DDS',
		FOOD_V_GEK		= 'COOKINGPRODUCTS/PRODUCT.MILK.PROTO.DDS',
		FOOD_V_FLYER	= 'COOKINGPRODUCTS/PRODUCT.MILK.CRAW.DDS',
		FOOD_V_MILK		= 'COOKINGPRODUCTS/PRODUCT.MILK.WILD.DDS',
		FOOD_R_BONEMILK	= 'COOKINGPRODUCTS/PRODUCT.MILK.BONE.DDS',
		FOOD_R_EYEBALLS	= 'COOKINGPRODUCTS/PRODUCT.R.EYEBALLS.DDS',
		FOOD_R_HORROR	= 'COOKINGPRODUCTS/PRODUCT.R.HORROR.DDS',
		FOOD_V_BONE		= 'COOKINGPRODUCTS/PRODUCT.BONE.PIECE.DDS',
		FOOD_V_CAT		= 'COOKINGPRODUCTS/PRODUCT.MEAT.KIDNEY.DDS',
		FOOD_V_CRAB		= 'COOKINGPRODUCTS/PRODUCT.BONE.CRAB.DDS',
		FOOD_V_DIPLO	= 'COOKINGPRODUCTS/PRODUCT.EGG.GIANT.DDS',
		FOOD_V_ROBOT	= 'COOKINGPRODUCTS/PRODUCT.ROBOT.WIRE.DDS',
		FOOD_V_STRIDER	= 'COOKINGPRODUCTS/PRODUCT.EGG.TALL.DDS',
		FOOD_W_CASE		= 'COOKINGPRODUCTS/PRODUCT.MEAT.DDS',
		GEODE_CAVE		= 'U4PRODUCTS/PRODUCT.GEODECAVE.DDS',
		SHIPCHARGE		= 'U4PRODUCTS/PRODUCT.SHIPCHARGE.DDS',
	---	personal
		SUMMON_GARAGE	= 'BUILDABLE/BAZAAR.ANTENNA0.DDS',
		ACCESS1			= 'PRODUCTS/PRODUCT.ATLASPASS1.DDS',
		ACCESS2			= 'PRODUCTS/PRODUCT.ATLASPASS2.DDS',
		PRODFUEL2		= 'U4PRODUCTS/PRODUCT.OXYGENGEL2.DDS',
	}) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id},
			PRECEDING_KEY_WORDS = 'Icon',
			VALUE_CHANGE_TABLE 	= { {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/'..icon} }
		}
	end
end

local function Stack_Multiplier(T)
	for key, prd in pairs({
		CRAFTPROD_SUB				= {op='*',	sm=4,	pr=PRP_.SB},
		['FOOD_.-']					= {op='*',	sm=4,	pr=PRP_.ID},
		LAUNCHFUEL_SUB				= {op='*',	sm=5,	pr=PRP_.SB},
		BP_SALVAGE_NAME				= {op='*',	sm=6,	pr=PRP_.NM},
		UI_TECHMOD_NAME				= {op='*',	sm=1.5,	pr=PRP_.NM},
		SUB_DEADDRONE_SUBTITLE		= {op='+',	sm=2,	pr=PRP_.SB},
		UI_SHIP_BRAIN_CLEAN_SUB		= {op='+',	sm=2,	pr=PRP_.SB},
		UI_SENTINEL_LOOT_NAME		= {op='*',	sm=8,	pr=PRP_.NM},
		UI_REPAIR_KIT_NAME			= {op='*',	sm=2,	pr=PRP_.NM},
		UI_STORMCRYSTAL_NAME		= {op='*',	sm=2,	pr=PRP_.NM},
		UI_ALLOY_COMPLEX_SUBTITLE	= {op='*',	sm=2,	pr=PRP_.SB},
		UI_REACTION_SUBTITLE		= {op='*',	sm=2,	pr=PRP_.SB},
		['MEGAPROD[1-3]']			= {op='*',	sm=2,	pr=PRP_.ID},
		UI_ULTRAPROD_SUBTITLE		= {op='*',	sm=2,	pr=PRP_.SB},
		BLD_GLITCHPROP_SUBTITLE		= {op='*',	sm=2,	pr=PRP_.SB},
		UI_DRONE_SHARD_NAME			= {op='*',	sm=12,	pr=PRP_.NM},
		UI_STAFF_PART_SUB			= {op='+',	sm=1,	pr=PRP_.SB}
	}) do
		T[#T+1] = {
			REPLACE_TYPE 		= prd.pr == PRP_.NM and nil or 'All',
			SPECIAL_KEY_WORDS	= {prd.pr, key},
			VALUE_CHANGE_TABLE 	= { {'StackMultiplier', '@'..prd.op..prd.sm} }
		}
	end
end

local function Icon_Bg_Color(T)
	for key, prd in pairs({
		FOOD_COOKED_SUB				= {col='FF8A8139', pr=PRP_.SB}, -- cooked foods
		['FOOD_V_.-']				= {col='FF8A8139', pr=PRP_.ID}, -- veg foods
		FOOD_HORROR_MEAT_NAME		= {col='FFBB3830', pr=PRP_.NM}, -- rancid flesh
		UI_GRUB_POD_NAME			= {col='FFBB3830', pr=PRP_.NM}, -- juicy grub
		FOOD_BUG_VEG_NAME			= {col='FFBB3830', pr=PRP_.NM}, -- nourishing slime
		FOOD_EVIL_STEW_NAME			= {col='FFBB3830', pr=PRP_.NM}, -- worst stew
		COMMODITY6_NAME				= {col='FFF3A923', pr=PRP_.NM}, -- Antimatter
		FUEL_JELLY_NAME				= {col='FFF3A923', pr=PRP_.NM}, -- dihydrogen jelly
		UI_TECHMOD_NAME				= {col='FFF3A923', pr=PRP_.NM}, -- Wiring Loom
		NEWPROD11_NAME				= {col='FF4D2957', pr=PRP_.NM}, -- Vortex Cube
		EXO_SUMMON_POD_NAME			= {col='FF0A2E42', pr=PRP_.NM}, -- Exocraft Summoning Station
		UI_VENTGEM_NAME				= {col='FFCCCCCC', pr=PRP_.NM}, -- Crystal Sulphide
		UI_STORMCRYSTAL_NAME		= {col='FF4D2957', pr=PRP_.NM}, -- Storm Crystal
		FUELGEL3_NAME				= {col='FFC61230', pr=PRP_.NM}, -- life support gel
		GRENFUEL1_NAME				= {col='FFC61230', pr=PRP_.NM}, -- gernade fuel
		['HYPERFUEL[12]_SUBTITLE']	= {col='FFC61230', pr=PRP_.SB}, -- warp fuel
		UI_SUBFUEL_NAME				= {col='FFC61230', pr=PRP_.NM}, -- sub fuel
		LAUNCHFUEL_SUB				= {col='FFC61230', pr=PRP_.SB}, -- ship+frigate fuel
		POWERPROD_SUB				= {col='FFC01746', pr=PRP_.SB}, -- ion+ship battery
		FRIG_BOOST_SUB				= {col='FF6B7882', pr=PRP_.SB}, -- Consumable Frigate Upgrade
		['UI_ALLOY_.-_DESC']		= {col='FF2E409E', pr=PRP_.DS}, -- Alloys
		UI_REACTION_SUBTITLE		= {col='FFDBA82E', pr=PRP_.SB}, -- Enhanced Gas Product
		UI_COMPOUND_SUBTITLE		= {col='FFDBA82E', pr=PRP_.SB}, -- Manufactured Gas Product
		UI_NAV_DATA_NAME			= {col='FF1A2733', pr=PRP_.NM}, -- navigation data
		['SHIP_CORE_.-']			= {col='FF48A1B0', pr=PRP_.ID}, -- ship core
	}) do
		T[#T+1] = {
			REPLACE_TYPE 		= prd.pr == PRP_.NM and nil or 'All',
			INTEGER_TO_FLOAT	= 'Force',
			SPECIAL_KEY_WORDS	= {prd.pr, key},
			VALUE_CHANGE_TABLE 	= Hex2VCT(prd.col)
		}
	end
end

local function Replace_Requirements(T)
	local requirements = {
		HYPERFUEL2 = {--	warp hypercore
			subs = true,
			req	 = {
				{id='AM_HOUSING', 	n=1,	tp=IT_.PRD},	-- antimatter housing
				{id='ANTIMATTER', 	n=1,	tp=IT_.PRD},	-- antimatter
				{id='STORM_CRYSTAL',n=1,	tp=IT_.PRD}		-- storm crystal
			}
		},
		FISHBAIT_3 = {--	bionic lure
			subs = true,
			req	 = {
				{id='BIO', 			n=2,	tp=IT_.PRD},	-- amino chamber
				{id='POWERCELL', 	n=3,	tp=IT_.PRD},	-- ion battery
				{id='FARMPROD2', 	n=1,	tp=IT_.PRD}		-- lubricant
			}
		},
		BASE_TOYCORE = {--	pocket reality generator
			subs = true,
			req	 = {
				{id='ANTIMATTER', 	n=1,	tp=IT_.PRD},	-- antimatter
				{id='POWERCELL', 	n=1,	tp=IT_.PRD},	-- ion battery
				{id='CASING', 		n=2,	tp=IT_.PRD},	-- plating
			}
		},
		FREI_INV_TOKEN = {--cargo_bulkhead
			cost = 8,
			req	 = {
				{id='CASING', 		n=20,	tp=IT_.PRD},	-- plating
				{id='HYDRALIC',		n=10,	tp=IT_.PRD},	-- poly fibre
				{id='COMPOUND6',	n=1,	tp=IT_.PRD}		-- cryo pump
			}
		},
		TECH_COMP = {--		wiring loom
			req	 = {
				{id='MICROCHIP',	n=3,	tp=IT_.PRD},	-- microprocessor
				{id='YELLOW2', 		n=80,	tp=IT_.SBT},	-- copper
				{id='ASTEROID1',	n=40,	tp=IT_.SBT}		-- silver
			}
		},
		POI_LOCATOR = {--	anomaly detector
			req	 = {
				{id='GEODE_SPACE',	n=1,	tp=IT_.PRD},	-- tritium hypercluster
				{id='ASTEROID1', 	n=20,	tp=IT_.SBT},	-- silver
				{id='ASTEROID2', 	n=20,	tp=IT_.SBT}		-- gold
			}
		},
		WHALE_BEACON = {--	dream aerial
			subs = true,
			req	 = {
				{id='GEODE_SPACE',	n=1,	tp=IT_.PRD},	-- tritium hypercluster
				{id='POI_LOCATOR',	n=1,	tp=IT_.PRD},	-- anomaly detector
				{id='FARMPROD8', 	n=1,	tp=IT_.PRD}		-- living glass
			}
		},
		BUILDCHAIR = {--	desk chair
			subs = true,
			req	 = {
				{id='CASING', 		n=1,	tp=IT_.PRD},	-- metal plating
				{id='FUEL2', 		n=20,	tp=IT_.SBT}		-- c carbon
			}
		},
		BUILDCHAIR2 = {--	armchair
			subs = true,
			req	 = {
				{id='CASING', 		n=1,	tp=IT_.PRD},
				{id='FUEL2', 		n=20,	tp=IT_.SBT}
			}
		},
		BUILDCHAIR3 = {--	adjustable chair
			subs = true,
			req	 = {
				{id='CASING', 		n=1,	tp=IT_.PRD},
				{id='FUEL2', 		n=20,	tp=IT_.SBT}
			}
		},
		BUILDCHAIR4 = {--	classic chair
			subs = true,
			req	 = {
				{id='CASING', 		n=1,	tp=IT_.PRD},
				{id='FUEL2', 		n=20,	tp=IT_.SBT}
			}
		},
		CHART_BUILDER = {--	Echo Locator (builder site)
			req	 = {
				{id='CHART_SETTLE',	n=1,	tp=IT_.PRD},
				{id='ROBOT2', 		n=20,	tp=IT_.SBT}
			}
		}
	}
	for id, prd in pairs(requirements) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id},
			VALUE_CHANGE_TABLE 	= {
				{'RecipeCost',	prd.cost or 1},
				{'IsCraftable',	true}
			}
		}
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id},
			PRECEDING_KEY_WORDS	= 'Requirements',
			REMOVE				= prd.subs and 'Section' or 'Line'
		}
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id},
			ADD					= ToExml(GetRequirements(prd.req))
		}
	end
end

local ECT = {}
ECT[#ECT+1] = {
	SPECIAL_KEY_WORDS	= {'ID', 'DRONE_SHARD'},
	VALUE_CHANGE_TABLE 	= {
		{'ChargeValue',	40}
	}
}
ECT[#ECT+1] = {
	SPECIAL_KEY_WORDS	= {'Name', 'FUEL_JELLY_NAME'},
	VALUE_CHANGE_TABLE 	= {
		{'Subtitle',	'CRAFTPROD_SUB'}
	}
}
ECT[#ECT+1] = {
	SPECIAL_KEY_WORDS	= {'ID', 'TECH_COMP'},
	VALUE_CHANGE_TABLE 	= {
		{'ProductCategory', 'Component'}
	}
}
ECT[#ECT+1] = {
--	text added in custom lang file
	SPECIAL_KEY_WORDS	= {'ID', 'GEODE_CAVE'},
	VALUE_CHANGE_TABLE 	= {
		{'Name',		'UI_GEODE_NAME_CAVE'},
		{'NameLower',	'UI_GEODE_NAME_CAVE_L'}
	}
}
ECT[#ECT+1] = {
--  reduce ship parts price
	REPLACE_TYPE		= 'All',
	SPECIAL_KEY_WORDS	= {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/SHIPICONS/SHIPPARTS.-DDS'},
	SECTION_UP			= 1,
	INTEGER_TO_FLOAT	= 'Preserve',
	VALUE_CHANGE_TABLE	= {
		{'BaseValue',  '@ * 0.01'}
	}
}

Stack_Multiplier(ECT)
Custom_Icons(ECT)
Icon_Bg_Color(ECT)
Replace_Requirements(ECT)
--- add new products ---
ECT[#ECT+1] = {
	PRECEDING_KEY_WORDS	= 'Table',
	ADD					= ToExml(ProductEntry({
		{
			id				= 'RAMMOULD5',
			name			= new_product.RAMMOULD5.name,
			namelower		= new_product.RAMMOULD5.namelower,
			subtitle		= new_product.RAMMOULD5.subtitle,
			description		= new_product.RAMMOULD5.description,
			basevalue		= 8000,
			color			= 'FFBBBBBB',
			category		= 'Special',
			type			= 'Tradeable',
			rarity			= 'Rare',
			legality		= 'Legal',
			iscraftable		= true,
			requirements	= {
				{id='SPACEGUNK2', 		n=10000,	tp=IT_.SBT},
				{id='SPACEGUNK2', 		n=10000,	tp=IT_.SBT}
			},
			stackmultiplier	= 12,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.RAMMOLD.DDS'
		},
		{
			id				= 'ULTRAPRODX40',
			name			= new_product.ULTRAPRODX40.name,
			namelower		= new_product.ULTRAPRODX40.namelower,
			subtitle		= new_product.ULTRAPRODX40.subtitle,
			description		= new_product.ULTRAPRODX40.description,
			basevalue		= 624000000,
			color			= 'FFBBBBBB',
			category		= 'Special',
			type			= 'Tradeable',
			rarity			= 'Rare',
			legality		= 'Legal',
			iscraftable		= true,
			requirements	= {
				{id='ULTRAPROD1', 		n=20,	tp=IT_.PRD},
				{id='ULTRAPROD2', 		n=20,	tp=IT_.PRD}
			},
			stackmultiplier	= 16,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.ULTRAPRODX4.DDS'
		},
		{
			id				= 'SUPERFOOD',
			name			= new_product.SUPERFOOD.name,
			namelower		= new_product.SUPERFOOD.namelower,
			subtitle		= new_product.SUPERFOOD.subtitle,
			description		= new_product.SUPERFOOD.description,
			basevalue		= 2,
			color			= 'FF4F442A',
			category		= 'Exotic',
			type			= 'Consumable',
			rarity			= 'Rare',
			legality		= 'Legal',
			consumable		= true,
			requirements	= {
				{id='SENTINEL_LOOT',	n=2,	tp=IT_.PRD},
				{id='FOOD_V_ROBOT',		n=2,	tp=IT_.PRD},
				{id='STELLAR2',			n=50,	tp=IT_.SBT}
			},
			stackmultiplier	= 20,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.GLOWPELLET.DDS'
		}
	}))
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY PRODUCT.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'UNUSED_VARIABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
