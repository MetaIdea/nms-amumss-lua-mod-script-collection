--------------------------------------------------------------------------
local mod_desc = [[
  Replace freighter after-warp-battle reward with better a selection
  with something different from each race
  * (the lists are non-random because a bug causes them to misbehave)
]]------------------------------------------------------------------------

local mod_version = '1.45'

local function bool(b)
	return (b == true) and 'True' or 'False'
end
local function R_TableItem(item, reward, data)
	local function Amount()
		if not item.x then return '' end
		return [[
			<Property name="AmountMin" value="]]..(item.n or item.x)..[["/>
			<Property name="AmountMax" value="]]..item.x..[["/>]]
	end
	return [[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..item.c..[["/>
			<Property name="Reward" value="]]..reward..[[">
				]]..data..Amount()..[[
			</Property>
		</Property>
	]]
end
local function R_Money(item)
	return R_TableItem(
		item,
		'GcRewardMoney.xml',
		[[
			<Property name="Currency" value="GcCurrency.xml">
				<Property name="Currency" value="]]..item.id..[["/>
			</Property>
		]]
	)
end
local function R_MultiItem(item)
	local exml = ''
	for _,itm in ipairs(item) do
		exml = exml..[[
			<Property value="GcMultiSpecificItemEntry.xml">
				<Property name="MultiItemRewardType" value="]]..itm.t..[["/>
				<Property name="Id" value="]]..(itm.id or '')..[["/>
				<Property name="Amount" value="]]..(itm.n or 1)..[["/>
				<Property name="ProcTechGroup" value="]]..(itm.tg or '')..[["/>
				<Property name="ProcTechQuality" value="]]..(itm.q or 0)..[["/>
				<Property name="IllegalProcTech" value="]]..bool(itm.l)..[["/>
				<Property name="ProcProdType" value="GcProceduralProductCategory.xml">
					<Property name="ProceduralProductCategory" value="]]..(itm.pid or 'Loot')..[["/>
				</Property>
			</Property>
		]]
	end
	return R_TableItem(
		item,
		'GcRewardMultiSpecificItems.xml',
		[[
			<Property name="Silent" value="]]..bool(item.s)..[["/>
			<Property name="Items">
				]]..exml..[[
			</Property>
		]]
	)
end

local E_ = {
	---	RewardChoiceEnum
	ALL   =	'GiveAll',			ALL_S =	'GiveAllSilent',
	ONE   =	'SelectAlways',		ONE_S =	'SelectAlwaysSilent',

	---	ProceduralProductCategoryEnum
	LOT='Loot',					SLV='Salvage',
	BIO='BioSample',			BNS='Bones',
	FOS='Fossil',
	FRH='FreighterTechHyp',		FRS='FreighterTechSpeed',
	FRF='FreighterTechFuel',	FRT='FreighterTechTrade',
	FRC='FreighterTechCombat',	FRM='FreighterTechMine',
	FRE='FreighterTechExp',
	DBI='DismantleBio',			DTC='DismantleTech',
	DDT='DismantleData',
	SLT='SeaLoot',				SHR='SeaHorror',
	SPB='SpaceBones',			SPH='SpaceHorror',

	---	MultiItemRewardTypeEnum
	PDT='Product',		SBT='Substance',	PRP='ProcProduct',
	-- PRT='ProcTech', not supported

	---	RarityEnum
	C='Common',			U='Uncommon',		R='Rare',

	---	CurrencyEnum
	UT='Units',			NN='Nanites',		HG='Specials', -- quicksilver
}

local new_reward = {
	{
	---	explorer freighter defense battle ---
		id			= 'FREIGHTERSAVE_E',
		choice		= E_.ALL,
		rewardlist	= {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},	-- Hyperdrive fuel
				{id='SCRAP_TECH',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},	-- freighter inv slot
				{id='ASTEROID3',	n=169, 	t=E_.SBT},	-- Platinum
				{pid=E_.SPB,		q=1,	t=E_.PRP},	-- Space Bones Procedural
				c=100,
				f=R_MultiItem
			},
			{id=E_.HG, n=50, x=60, c=100, f=R_Money},
		}
	},
	{
	---	trader freighter defense battle ---
		id			= 'FREIGHTERSAVE_T',
		choice		= E_.ALL,
		rewardlist	= {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='GEODE_RARE',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},
				{id='ASTEROID1',	n=523, 	t=E_.SBT},	-- silver
				{pid=E_.SLV,		q=1,	t=E_.PRP},	-- Salvage Procedural
				c=100,
				f=R_MultiItem
			},
			{id=E_.UT, n=35100, x=50200, c=100, f=R_Money},
		}
	},
	{
	---	warior freighter defense battle ---
		id			= 'FREIGHTERSAVE_W',
		choice		= E_.ALL,
		rewardlist	= {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='SCRAP_WEAP',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},
				{id='ASTEROID2',	n=387, 	t=E_.SBT},	-- gold
				{pid=E_.DTC,		q=1,	t=E_.PRP},
				c=100,
				f=R_MultiItem
			},
			{id=E_.NN, n=190, x=270, c=100, f=R_Money},
		}
	}
}
function new_reward:AddTableEntry(rte)
	local function getRewardsList(list)
		local exml = {}
		table.insert(exml, '<Property name="List">')
		for _,rwd in pairs(list) do
			table.insert(exml, rwd.f(rwd))
		end
		table.insert(exml, '</Property>')
		return table.concat(exml)
	end
	return [[
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="]]..rte.id..[["/>
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="]]..rte.choice..[["/>
				<Property name="OverrideZeroSeed" value="]]..bool(rte.zeroseed)..[["/>
				]]..getRewardsList(rte.rewardlist)..[[
			</Property>
		</Property>
	]]
end

local function AddNewRewardsToChangeTable()
	local T = {}
	local rewards = ''
	for _,rwd in ipairs(new_reward) do
		rewards = rewards..new_reward:AddTableEntry(rwd)
	end
	table.insert(T, {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= rewards
	})
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Freighter Defense Rewards.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.50',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= AddNewRewardsToChangeTable()
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_MATCH			= 'FREIGHTER_SAVED',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Warriors'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERSAVE_W'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTER_SAVED',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Explorers'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERSAVE_E'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTER_SAVED',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Traders'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERSAVE_T'}
				}
			}
		}
	}
}}}}
