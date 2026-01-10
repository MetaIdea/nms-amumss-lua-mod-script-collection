--------------------------------------------------------------------------
local mod_desc = [[
  Replace freighter after-warp-battle reward with better a selection
  with something different from each race
  * (the lists are non-random because a bug causes them to misbehave)
]]------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.06
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite', '_remove'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					for _,at in ipairs(at_ord) do
					-- Just for readability. The compiler doesn't need the ordering
						if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					end
					-- for k, v in pairs(cls.meta) do
						-- if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					-- end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate consecutive (instead of nested) sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

local RC_={--	RewardChoice Enum
	ALL	= 'GiveAll',			ALL_S =	'GiveAllSilent',
	ONE	= 'SelectAlways',		ONE_S =	'SelectAlwaysSilent',
	WIN	= 'SelectFromSuccess',	WIN_S =	'SelectFromSuccessSilent',
	TRY	= 'TryEach',			TRY_1 = 'TryFirst_ThenSelectAlways',
	G1_ONE = 'GiveFirst_ThenAlsoSelectAlwaysFromRest'
}

local MI_={--	MultiItemRewardType Enum
	PRD='Product',				SBT='Substance',
	PRT='ProcTech',				PRP='ProcProduct',
	ISP='InventorySlot',		ISS='InventorySlotShip',
	ISW='InventorySlotWeapon'
}

local PC_={--	ProceduralProductCategory Enum
	LOT='Loot',					SLV='Salvage',
	DOC='Document',				FOS='Fossil',
	BIO='BioSample',			BNS='Bones',
	PLT='Plant',				TOL='Tool',
	FAR='Farm',					SLT='SeaLoot',
	SHR='SeaHorror',			SPH='SpaceHorror',
	SPB='SpaceBones',
	FRH='FreighterTechHyp',		FRS='FreighterTechSpeed',
	FRF='FreighterTechFuel',	FRT='FreighterTechTrade',
	FRC='FreighterTechCombat',	FRM='FreighterTechMine',
	FRE='FreighterTechExp',
	DBI='DismantleBio',			DTC='DismantleTech',
	DDT='DismantleData'
}

local CU_={--	Currency Enum
	UT='Units',			NN='Nanites',		HG='Specials'
}

--	=> Build a single reward item
local function R_tableItem(item, gc_reward, props)
	props.AmountMin = item.mn or item.mx						-- i
	props.AmountMax = item.mx									-- i
	props.meta = {name=gc_reward}
	return {
		meta = {name='List', value='GcRewardTableItem'},
		PercentageChance	= item.c or 1,						-- f
		LabelID				= item.bl,							-- s
		Reward				= {
			meta = {name='Reward', value=gc_reward},
			props
		}
	}
end

--	=> Build GcRewardMoney
local function R_Money(item)
	return R_tableItem(
		item,
		'GcRewardMoney',
		{
			Currency = {
				meta		= {name='Currency', value='GcCurrency'},
				Currency	= item.id							-- Enum
			}
		}
	)
end

--	=> Build GcRewardSpecificProduct
local function R_Product(item)
	return R_tableItem(
		item,
		'GcRewardSpecificProduct',
		{
			ID				= item.id,
			Silent			= item.sl,							-- b
			RequiresTech	= item.req							-- s
		}
	)
end

--	=> Build GcMultiSpecificItemEntry
local function R_MultiItem(item)
	local T = {meta = {name='Items'}}
	for _,itm in ipairs(item.lst) do
		T[#T+1] = {
			meta = {name='Items', value='GcMultiSpecificItemEntry'},
			Id					= itm.id,
			MultiItemRewardType	= itm.mi or MI_.PRD,			-- Enum
			Amount				= itm.am or 1,					-- i
			ProcTechGroup		= itm.tg,						-- s
			ProcTechQuality		= itm.qt, 						-- [0-4] used instead of ProcProdRarity
			IllegalProcTech		= itm.igl,						-- b
			SentinelProcTech	= itm.sen,						-- b
			ProcProdType		= {
				meta = {name='ProcProdType', value='GcProceduralProductCategory'},
				ProceduralProductCategory = itm.pc or PC_.LOT	-- Enum
			}
		}
	end
	return R_tableItem(
		item,
		'GcRewardMultiSpecificItems',
		{
			Silent	= item.sl,									-- b
			Items	= T
		}
	)
end

--	=> Build reward table entry
local function R_RewardTableEntry(rte)
	-- accepts an external list, if not found builds a new one
	if not rte.list then
		rte.list = {}
		for _,rwd in ipairs(rte.itemlist) do
			rte.list[#rte.list+1] = rwd.f(rwd)
		end
	end
	rte.list.meta = {name='List'}
	return {
		meta = {
			name		= 'GenericTable',
			value		= 'GcGenericRewardTableEntry',
			_id			= rte.id,
			_overwrite	= rte.overwrite	or nil
		},
		Id	 = rte.id,
		List = {
			meta = {name='List', value='GcRewardTableItemList'},
			RewardChoice	= rte.choice or RC_.ONE,			-- Enum
			OverrideZeroSeed= rte.zeroseed,						-- b
			List			= rte.list
		}
	}
end

--	=> Build GcRewardStanding
local function R_Standing(item)
	return R_tableItem(
		item,
		'GcRewardStanding',
		{
			meta = {name='GcRewardStanding'},
			Race = {
				meta = {name='Race', value='GcAlienRace'},
				AlienRace = item.ar or 'None'					-- Enum
			}
		}
	)
end
---------------------------------------------------------------------------------

local new_rewards = {
	R_PIR_TRIBUTE	= {--- pirate freighter defeat tribute ---
		overwrite	= true,
		choice		= RC_.ONE,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='SENTINEL_GUN_NAME_L',	qt=3,	mi=MI_.PRT,	sen=true},
					{tg='SENTINEL_SUIT_NAME_L',	qt=3,	mi=MI_.PRT,	sen=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				},
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{pc=PC_.FRH,				qt=3,	mi=MI_.PRP},
					{id='MEGAPROD2',					mi=MI_.PRD}
				},
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{pc=PC_.FRC,				qt=3,	mi=MI_.PRP},
					{id='MEGAPROD1',					mi=MI_.PRD}
				},
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='CANNON_NAME_L',		qt=4,	mi=MI_.PRT,	igl=true},
					{tg='RAILGUN1_NAME_L',		qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='BOLTSHOTGUN_NAME_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{tg='LASER_NAME_L',			qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='UI_RAD_NAME_CORE_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{tg='UI_TOX_NAME_CORE_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='UI_ENERGY_NAME_CORE_L',qt=4,	mi=MI_.PRT,	igl=true},
					{tg='UI_JETPACK_NAME_CORE_L',qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='SHIPMINIGUN_NAME_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{tg='SHIPJUMP_NAME_L',		qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD2',					mi=MI_.PRD}
				}
			}
		},
		multiadd	= {
			{id='STATION_KEY',					mi=MI_.PRD},
			{id='FREI_INV_TOKEN',		am=2,	mi=MI_.PRD}
		}
	},
	FREIGHTERSAVE_E	= {--- freighter defense :: explorer ---
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{id='HYPERFUEL1',		am=1, 		mi=MI_.PRD},	-- Hyperdrive fuel
					{id='SCRAP_TECH',		am=1, 		mi=MI_.PRD},
					{id='FREI_INV_TOKEN',	am=1, 		mi=MI_.PRD},	-- freighter inv slot
					{id='ASTEROID3',		am=169, 	mi=MI_.SBT},	-- Platinum
					{pc=PC_.SPB,			qt=1,		mi=MI_.PRP},	-- Space Bones Procedural
				}
			},
			{id=CU_.HG,	mn=50,		mx=60,		c=100,	f=R_Money},
			{id='good',	mn=2,		mx=3,		c=100,	f=R_Standing}
		}
	},
	FREIGHTERSAVE_T	= {--- freighter defense :: trader ---
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{id='HYPERFUEL1',		am=1, 		mi=MI_.PRD},
					{id='GEODE_RARE',		am=1, 		mi=MI_.PRD},
					{id='FREI_INV_TOKEN',	am=1, 		mi=MI_.PRD},
					{id='ASTEROID1',		am=523, 	mi=MI_.SBT},	-- silver
					{pc=PC_.SLV,			qt=1,		mi=MI_.PRP},	-- Salvage Procedural
				}
			},
			{id=CU_.UT,	mn=35100,	mx=50200,	c=100,	f=R_Money},
			{id='good',	mn=2,		mx=3,		c=100,	f=R_Standing}
		}
	},
	FREIGHTERSAVE_W	= {--- freighter defense :: warior ---
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{id='HYPERFUEL1',		am=1, 		mi=MI_.PRD},
					{id='SCRAP_WEAP',		am=1, 		mi=MI_.PRD},
					{id='FREI_INV_TOKEN',	am=1, 		mi=MI_.PRD},
					{id='ASTEROID2',		am=387, 	mi=MI_.SBT},	-- gold
					{pc=PC_.DTC,			qt=1,		mi=MI_.PRP}		-- Procedural
				}
			},
			{id=CU_.NN,	mn=190,		mx=270,		c=100,	f=R_Money},
			{id='MIRROR',mn=1,		mx=2,		c=6,	f=R_Product},
			{id='good',	mn=2,		mx=3,		c=100,	f=R_Standing}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Freighter Defense Rewards',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.18',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= (
					function()
						local rewards = {}
						for id, rwd in pairs(new_rewards) do
							if rwd.multiadd then
							-- add repeating items to MultiItem
								for _,rw in ipairs(rwd.itemlist) do
									if rw.f == R_MultiItem then
										for _,ad in ipairs(rwd.multiadd) do
											rw.lst[#rw.lst + 1] = ad
										end
									end
								end
							end
							rwd.id = id
							rewards[#rewards+1] = R_RewardTableEntry(rwd)
						end
						return ToMxml(rewards)
					end
				)()
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'TextAlien', 'DNT_WAR_FREIGHT_LANG_1', 'Name', 'ALL_FREIGHTER_OPT_3'},
				PRECEDING_KEY_WORDS = 'Rewards',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Rewards',		'FREIGHTERSAVE_W'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'TextAlien', 'DNT_EXP_FREIGHT_LANG_1', 'Name', 'ALL_FREIGHTER_OPT_3'},
				PRECEDING_KEY_WORDS = 'Rewards',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Rewards',		'FREIGHTERSAVE_E'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'TextAlien', 'DNT_TRA_FREIGHT_LANG_1', 'Name', 'ALL_FREIGHTER_OPT_3'},
				PRECEDING_KEY_WORDS = 'Rewards',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Rewards',		'FREIGHTERSAVE_T'}
				}
			}
		}
	}
}}}}