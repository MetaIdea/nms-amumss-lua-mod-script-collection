------------------------------------------------------------------
dofile('LIB/_exml_2_lua.lua')
------------------------------------------------------------------
local mod_desc = [[
  Disable all multiplayer damage
  Reduce damage to creatures from mining laser
  !(doesn't work) Reduce self-inflicted damage from vehicle gun
  proper icon for the mech inventory
  More items at shops
  Higher substance amount at shops
  Add ship parts to various shops
]]----------------------------------------------------------------

local mbin_gcproduct	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'
local mbin_def_reality 	= 'METADATA/REALITY/DEFAULTREALITY.MBIN'

local function ReadShipParts(the_index, mbin)
	local mbin_gcproducts	= ToLua(table.concat(the_index.ModdedEXMLs[NormalizePath(mbin, true)]))
	local ship_parts	= {}
	for _,prd in ipairs(mbin_gcproducts.template.Table) do
		if prd.Icon.Filename:match('.-SHIPICONS/SHIPPARTS.-DDS') then
			ship_parts[#ship_parts+1] = prd.ID
		end
	end
	the_index.ship_parts = ship_parts
	return 'IGNORE'
end

local function EditDefaultReality(the_index, mbin)
	local ECT = {
		{
			SPECIAL_KEY_WORDS	= {'Id', 'MP_ONFOOT',	'DamageType', 'VehicleGun'},
			SECTION_UP			= 1,
			SEC_SAVE_TO			= 'gc_damage_multiplier'
		},
		{
			SEC_EDIT 			= 'gc_damage_multiplier',
			INTEGER_TO_FLOAT	= 'Force',
			VALUE_CHANGE_TABLE 	= {
				{'Multiplier',	0}
			}
		},
		{
			SPECIAL_KEY_WORDS	= {'Id', 'SELF_VEHICLE'},
			PRECEDING_KEY_WORDS = 'Multipliers',
			CREATE_HOS			= true,
			SEC_ADD_NAMED		= 'gc_damage_multiplier'
		},
		{
			SEC_EDIT 			= 'gc_damage_multiplier',
			VALUE_CHANGE_TABLE 	= {
				{'DamageType',	'Explosion'}
			}
		},
		{
			SPECIAL_KEY_WORDS	= {'Id', 'SELF_VEHICLE'},
			PRECEDING_KEY_WORDS = 'Multipliers',
			SEC_ADD_NAMED		= 'gc_damage_multiplier'
		},
		{
			REPLACE_TYPE 		= 'All',
			SPECIAL_KEY_WORDS	= {
				{'Id', 'MP_ONFOOT'},
				{'Id', 'MP_SHIP'},
				{'Id', 'MP_VEHICLE'}
			},
			VALUE_CHANGE_TABLE 	= {
				{'Multiplier',	0}
			}
		},
		{
			SPECIAL_KEY_WORDS	= {'TransferMech', 'TkTextureResource.xml'},
			VALUE_CHANGE_TABLE 	= {
				{'Filename',	'TEXTURES/UI/FRONTEND/ICONS/CATEGORIES/INVCAT.MECH.DDS'}
			}
		},
		{--	More items at shops
			REPLACE_TYPE 		= 'All',
			MATH_OPERATION 		= '*',
			INTEGER_TO_FLOAT	= 'Preserve',
			PRECEDING_KEY_WORDS = 'TradeSettings',
			VALUE_CHANGE_TABLE 	= {
				{'MinItemsForSale',	1.5},
				{'MaxItemsForSale',	2}
			}
		},
		{--	Higher substance amount at shops
			REPLACE_TYPE 		= 'All',
			MATH_OPERATION 		= '*',
			INTEGER_TO_FLOAT	= 'Preserve',
			PRECEDING_KEY_WORDS = 'MinAmountOfSubstanceAvailable',
			VALUE_CHANGE_TABLE 	= {
				{'Poor',		1.5},
				{'Average',		2},
				{'Wealthy',		3},
				{'Pirate',		2}
			}
		},
		{--	Higher substance amount at shops
			REPLACE_TYPE 		= 'All',
			MATH_OPERATION 		= '*',
			INTEGER_TO_FLOAT	= 'Preserve',
			PRECEDING_KEY_WORDS = 'MaxAmountOfSubstanceAvailable',
			VALUE_CHANGE_TABLE 	= {
				{'Poor',		1.5},
				{'Average',		2},
				{'Wealthy',		3},
				{'Pirate',		2}
			}
		}
	}
	for _,dmg in ipairs({
		{id='DOOR',				dt='Laser',			ml=0.15},
		{id='DEPOT',			dt='Laser',			ml=0.01},
		{id='CREATURE',			dt='Laser',			ml=0.1},
		{id='ROBOT',			dt='VehicleLaser',	ml=0.3},
		{id='FIEND',			dt='Laser',			ml=0.1},
		{id='SELF_ONFOOT',		dt='Cannon',		ml=0.01},
		{id='SELF_ONFOOT',		dt='Explosion',		ml=0.02},
	}) do
		ECT[#ECT+1] = {
			INTEGER_TO_FLOAT	= 'Force',
			SECTION_UP			= 1,
			SPECIAL_KEY_WORDS	= {'Id', dmg.id, 'DamageType', dmg.dt},
			VALUE_CHANGE_TABLE	= {
				{'Multiplier',	dmg.ml}
			}
		}
	end

	local shop_shipparts_patterns = {
		ExpShip		= {-- mid-space korvax
			'.-N_WING[A-F].-',		-- explorer wings A-F
			'.-L_WING[AB][A-E].-',	-- sailship wings AB
		},
		TraShip		= {-- mid-space gek
			'.-S_WING[12AB].-',		-- dropship wings 12AB
			'.-S_ENGI[AC].-',		-- dropship engines
			'.-L_WING[CD][A-E].-',	-- sailship wings CD
		},
		WarShip		= {-- mid-space vykeen
			'.-T_WING[ABDEF].-',	-- fighter wings  ABDEF
			'.-T_ENGI.-',			-- fighter engines
			'.-L_WING[EF][A-E].-',	-- sailship wings EF
		},
		LoneExp		= {-- landing pad korvax
			'.-N_WING[GHIKLT].-',	-- explorer wings GHIKLT
			'.-L_WING[AB][A-E].-',	-- sailship wings AB
		},
		LoneTra		= {-- landing pad gek
			'.-S_WING[CDES].-',		-- dropship wings CDES
			'.-S_ENGI[BCS].-',		-- dropship engines
			'.-L_WING[CD][A-E].-',	-- sailship wings CD
		},
		LoneWar		= {-- landing pad vykeen
			'.-T_WING[GHIJK].-',	-- fighter wings  GHIJK
			'.-T_ENGI.-',			-- fighter engines
			'.-L_WING[EF][A-E].-',	-- sailship wings EF
		},
		PirateVisitor= {-- ?
			'.-[TSN]_COC.-',		-- cockpit all
			'.-L_SAIL[ABC].-',		-- sailship sail
		},
		Shop		= {-- trade terminal
			'.-S_COC.-',			-- cockpit dropship
			'.-L_SAIL[ABC].-',		-- sailship sail
		},
		TechShop	= {-- minor settlement
			'.-T_COC.-', 			-- cockpit fighter
			'.-L_SAIL[ABC].-',		-- sailship sail
		},
		Scrap		= {-- station scraper
			'.-N_COC.-',			-- cockpit explorer
			'.-L_SAIL[ABC].-',		-- sailship sail
		},
		IllegalProds= {-- illegals shop pilot
			'.-[ST]_ENGI.-',		-- engines all
			'.-L_BODY[A-F].-',		-- sailship body
		},
		BuilderShop	= {-- robot camp
			'.-[ST]_ENGI.-',		-- engines all
			'.-L_BODY[A-F].-',		-- sailship body
		}
	}
	for shop, patterns in pairs(shop_shipparts_patterns) do
		local T = {}
		for _,id in ipairs(the_index.ship_parts) do
			for _,p in ipairs(patterns) do
				if id:match(p) then
					T[#T+1] = '<Property value="'..id..'"/>'
				end
			end
		end
		ECT[#ECT+1] = {
			SPECIAL_KEY_WORDS	= {shop, 'GcTradeData.xml'},
			PRECEDING_KEY_WORDS = 'OptionalProducts',
			ADD					= table.concat(T)
		}
	end
	-- Add to MBIN_CT
	the_index.MBIN_CT[#the_index.MBIN_CT+1] = {
		MBIN_FILE_SOURCE	= mbin,
		EXML_CHANGE_TABLE	= ECT
	}
end

ProcessRawExml = nil -- to silence unused_variable
function ProcessRawExml(the_index) -- called by AMUMSS
	return {
		[NormalizePath(mbin_gcproduct, true)]	= ReadShipParts(the_index, mbin_gcproduct),
		[NormalizePath(mbin_def_reality, true)]	= EditDefaultReality(the_index, mbin_def_reality)
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY default.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE 	= {
			mbin_gcproduct,
			mbin_def_reality
		},
		EXT_FUNC		 	= {'ProcessRawExml'}
	}
}}}}
