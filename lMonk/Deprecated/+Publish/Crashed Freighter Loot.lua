-----------------------------------------------------------
local mod_desc = [[
  Update crashed freighters loot with a better selection
  including a small chance for freighter upgrades
]]---------------------------------------------------------
local mod_version = '1.16'

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
	{--- crashed freighter containers ---
		id			= 'CRASHCONT_M',
		choice		= E_.ONE,
		replacement	= true,
		rewardlist	= {
			{id=E_.UT,	n=25000,	x=75000,	c=50,	f=R_Money},
			{
				f=R_MultiItem,
				c=45,
				{id='LAUNCHFUEL',		n=1, 	t=E_.PDT},
				{id='BP_SALVAGE',		n=3, 	t=E_.PDT},
				{pid=E_.DTC, 			q=2,	t=E_.PRP},
			},
			{
				f=R_MultiItem,
				c=45,
				{id='ANTIMATTER',		n=2, 	t=E_.PDT},
				{id='AM_HOUSING',		n=2, 	t=E_.PDT},
				{id='TECHFRAG',			n=230, 	t=E_.SBT},
			},
			{
				f=R_MultiItem,
				c=35,
				{id='FRIG_TOKEN',		n=1, 	t=E_.PDT},
				{id='TIMEMILK',			n=94, 	t=E_.SBT},
			},
			{
				f=R_MultiItem,
				c=35,
				{id='WEAP_INV_TOKEN',	n=1, 	t=E_.PDT},
				{id='AF_METAL',			n=117, 	t=E_.SBT},
			},
			{id=E_.UT,	n=150000,	x=260000,	c=20,	f=R_Money},
			{
				f=R_MultiItem,
				{id='FARMPROD1',		n=1, 	t=E_.PDT},	-- Acid
				{id='WATER1',			n=243, 	t=E_.SBT},
				c=25,
			},
			{
				f=R_MultiItem,
				c=25,
				{id='FARMPROD5',		n=1, 	t=E_.PDT},	-- Poly Fibre
				{id='WATER2',			n=189, 	t=E_.SBT},
			},
			{
				f=R_MultiItem,
				c=25,
				{id='SALVAGE_TECH8',	n=1, 	t=E_.PDT},	-- Subatomic Regulators
				{id='ROBOT1',			n=203, 	t=E_.SBT},
			},
			{
				f=R_MultiItem,
				c=25,
				{id='SALVAGE_TECH7',	n=1, 	t=E_.PDT},	-- Recycled Circuitry
				{id='ROBOT2',			n=180, 	t=E_.SBT},
			},
			{
				f=R_MultiItem,
				c=2,
				{id='FREI_INV_TOKEN',	n=1, 	t=E_.PDT},	-- freighter inv
				{id='SENTFREI_PROD',	n=2, 	t=E_.PDT},	-- AI Fragment
			},

			-- freighter hyper
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRH, 		q=0,	t=E_.PRP},
				{id='CASING',		n=5, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRH, 		q=1,	t=E_.PRP},
				{id='COMPOUND6',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRH, 		q=2,	t=E_.PRP},
				{id='PRODFUEL2',	n=1, 	t=E_.PDT},
			},
			{
				c=1,
				{pid=E_.FRH, 		q=3,	t=E_.PRP},
				{id='ILLEGAL_PROD6',n=1, 	t=E_.PDT},
				f=R_MultiItem,
			},
			-- freighter fuel
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRF, 		q=0,	t=E_.PRP},
				{id='NANOTUBES',	n=5, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRF, 		q=1,	t=E_.PRP},
				{id='COMPOUND5',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRF, 		q=2,	t=E_.PRP},
				{id='REPAIRKIT',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRF, 		q=3,	t=E_.PRP},
				{id='ILLEGAL_PROD5',n=1, 	t=E_.PDT},
			},
			-- freighter trade
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRT, 		q=0,	t=E_.PRP},
				{id='JELLY',		n=3, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRT, 		q=1,	t=E_.PRP},
				{id='COMPOUND4',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRT, 		q=2,	t=E_.PRP},
				{id='BIO',			n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRT, 		q=3,	t=E_.PRP},
				{id='ILLEGAL_PROD4',n=1, 	t=E_.PDT},
			},
			-- freighter combat
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRC, 		q=0,	t=E_.PRP},
				{id='POWERCELL',	n=5, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRC, 		q=1,	t=E_.PRP},
				{id='COMPOUND3',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRC, 		q=2,	t=E_.PRP},
				{id='MIRROR',		n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRC, 		q=3,	t=E_.PRP},
				{id='ILLEGAL_PROD3',n=1, 	t=E_.PDT},
			},
			-- freighter mining
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRM, 		q=0,	t=E_.PRP},
				{id='HYDRALIC',		n=3, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRM, 		q=1,	t=E_.PRP},
				{id='COMPOUND2',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRM, 		q=2,	t=E_.PRP},
				{id='MICROCHIP',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRM, 		q=3,	t=E_.PRP},
				{id='ILLEGAL_PROD2',n=1, 	t=E_.PDT},
			},
			-- freighter explore
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRE, 		q=0,	t=E_.PRP},
				{id='CARBON_SEAL',	n=3, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRE, 		q=1,	t=E_.PRP},
				{id='COMPOUND1',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRE, 		q=2,	t=E_.PRP},
				{id='TRA_ENERGY5',	n=1, 	t=E_.PDT},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRE, 		q=3,	t=E_.PRP},
				{id='ILLEGAL_PROD1',n=1, 	t=E_.PDT},
			}
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

-- loop through the rewards list and return the generated exml
local function AddNewRewardsToChangeTable()
	local T = {}
	T[1] = { FSKWG={}, REMOVE='Section' }
	local rewards = ''
	for _,rwd in ipairs(new_reward) do
		-- collect exisitng rewards to be removed in FSKWG
		if rwd.replacement then
			table.insert(T[1].FSKWG, {'Id', rwd.id})
		end
		rewards = rewards..new_reward:AddTableEntry(rwd)
	end
	table.insert(T, {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= rewards
	})
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Crashed Freighter Loot.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.50',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= AddNewRewardsToChangeTable()
	}
}}}}
