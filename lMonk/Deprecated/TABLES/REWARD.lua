--------------------------------------------------------------------------
local desc = [[
  A system for adding & replacing rewards.
  - freighter defense reward (requires changes in AlienPuzzle)
  - crashed freighter containers
  - salvaged glass (sentinel loot)
  - pirate ships battle loot
  - jetpack boost bonuses
  - wild plants harvest yield increased
  - more words learned at word stones and other places
]]------------------------------------------------------------------------

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
local function R_Procedural(item)
	return R_TableItem(
		item,
		'GcRewardProceduralProduct.xml',
		[[
			<Property name="Type" value="GcProceduralProductCategory.xml">
				<Property name="ProceduralProductCategory" value="]]..item.id..[["/>
			</Property>
			<Property name="OverrideRarity" value="]]..bool(item.o)..[["/>
			<Property name="Rarity" value="GcRarity.xml">
				<Property name="Rarity" value="]]..(item.r or 'Common')..[["/>
			</Property>
		]]
	)
end
local function R_Substance(item)
	return R_TableItem(
		item,
		'GcRewardSpecificSubstance.xml',
		[[
			<Property name="ID" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end
local function R_Product(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProduct.xml',
		[[
			<Property name="ID" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end
local function R_ProductSysList(item)
	local lst = ''
	for _,v  in ipairs(item.id) do
		lst = lst..[[
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="]]..v..[["/>
			</Property>]]
	end
	return R_TableItem(
		item,
		'GcRewardSystemSpecificProductFromList.xml',
		[[<Property name="ProductList">]]..lst..[[</Property>]]
	)
end
local function R_ProductAllList(item)
	local lst = ''
	for _,v  in ipairs(item.id) do
		lst = lst..[[
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="]]..v..[["/>
			</Property>]]
	end
	return R_TableItem(
		item,
		'GcRewardMultiSpecificProducts.xml',
		[[<Property name="ProductIds">]]..lst..[[</Property>]]
	)
end
local function R_Technology(item)
	return R_TableItem(
		item,
		'GcRewardSpecificTech.xml',
		[[
			<Property name="TechId" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end
local function R_ProductRecipe(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProductRecipe.xml',
		[[
			<Property name="ID" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end
local function R_Word(item)
	return R_TableItem(
		item,
		'GcRewardTeachWord.xml',
		[[
			<Property name="Race" value="GcAlienRace.xml">
				<Property name="AlienRace" value="]]..item.id..[["/>
			</Property>
		]]
	)
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
local function R_Jetboost(item)
	return R_TableItem(
		item,
		'GcRewardJetpackBoost.xml',
		[[
			<Property name="Duration" value="]]..		(10 * item.t)..[["/>
			<Property name="ForwardBoost" value="]]..	(4.2 * item.b)..[["/>
			<Property name="UpBoost" value="]]..		(0.9 * item.b)..[["/>
			<Property name="IgnitionBoost" value="]]..	(1.8 * item.b)..[["/>
		]]
	)
end
local function R_Stamina(item)
	return R_TableItem(
		item,
		'GcRewardFreeStamina.xml',
		[[<Property name="Duration" value="]]..(10 * item.t)..[["/>]]
	)
end
local function R_Hazard(item)
	return R_TableItem(
		item,
		'GcRewardRefreshHazProt.xml',
		[[
			<Property name="Amount" value="-]]..item.n..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end
local function R_Shield(item)
	return R_TableItem(item, 'GcRewardShield.xml', '')
end
local function R_Health(item)
	return R_TableItem(
		item,
		'GcRewardHealth.xml',
		[[<Property name="SilentUnlessShieldAtMax" value="]]..bool(item.s)..[["/>]]
	)
end
local function R_Wanted(item)
	return R_TableItem(
		item,
		'GcRewardWantedLevel.xml',
		[[<Property name="Level" value="]]..(item.n or 0)..[["/>]]
	)
end
local function R_NoSentinels(item)
	return R_TableItem(
		item,
		'GcRewardDisableSentinels.xml',
		[[
			<Property name="Duration" value="]]..(item.t or -1)..[["/>
			<Property name="WantedBarMessage" value="UI_SENTINELS_DISABLED_MSG"/>
		]]
	)
end
local function R_FlyBy(item)
	return R_TableItem(
		item,
		'GcRewardFrigateFlyby.xml',
		[[
			<Property name="FlybyType" value="GcFrigateFlybyType.xml">
				<Property name="FrigateFlybyType" value="]]..(item.ft or 'DeepSpaceCommon')..[["/>
			</Property>
			<Property name="AppearanceDelay" value="]]..(item.t or 3)..[["/>
			<Property name="CameraShake" value="FRG_FLYBY_PREP"/>
		]]
	)
end

local E_ = {
	---	RewardChoiceEnum
	ALL   =	'GiveAll',			ALL_S =	'GiveAllSilent',
	ONE   =	'SelectAlways',		ONE_S =	'SelectAlwaysSilent',
	-- WIN   =	'SelectFromSuccess',WIN_S =	'SelectFromSuccessSilent',
	-- TRY   =	'TryEach',			TRY_ONE='TryFirst_ThenSelectAlways',

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

	---	FrigateFlybyType
	SF='SingleShip',	GF='AmbientGroup',	SW='DeepSpaceCommon'
}

local new_rewards = {
	{
	---	sentinel salvaged glass shard ---
		id			= 'DE_SENT_LOOT',
		choice		= E_.ONE,
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='CHART_HIVE',				x=1,	c=2,	f=R_Product},
			{id='U_SENTGUN',				x=1,	c=30,	f=R_Product},
			{id='U_SENTSUIT',				x=1,	c=30,	f=R_Product},
			{id='U_SENTSUIT',				x=1,	c=30,	f=R_Product},
			{id='COMPUTER',     	n=1,	x=2,	c=6,	f=R_Product},
			{id='ANTIMATTER',   	n=1,	x=2,	c=6,	f=R_Product},
			{id='MAGNET',       	n=1,	x=2,	c=6,	f=R_Product},
			{id='HYDRALIC',     	n=1,	x=2,	c=6,	f=R_Product},
			{id='MIRROR',       	n=1,	x=2,	c=6,	f=R_Product},
			{id='BIO',          	n=1,	x=2,	c=6,	f=R_Product},
			{id='MECH_PROD',    	n=1,	x=2,	c=6,	f=R_Product},
			{id='WALKER_PROD',  	n=1,	x=2,	c=6,	f=R_Product},
			{id='ALLOY1',    				x=1,	c=4,	f=R_Product},
			{id='ALLOY2',    				x=1,	c=4,	f=R_Product},
			{id='ALLOY3',    				x=1,	c=4,	f=R_Product},
			{id='ALLOY4',    				x=1,	c=4,	f=R_Product},
			{id='ALLOY5',    				x=1,	c=4,	f=R_Product},
			{id='ALLOY6',    				x=1,	c=4,	f=R_Product},
			{id='ALLOY7',    				x=1,	c=1,	f=R_Product},
			{id='ALLOY8',    				x=1,	c=1,	f=R_Product},
			{id=E_.HG,				n=100,	x=160,	c=10,	f=R_Money}
		}
	},
	{
	---	crashed freighter containers ---
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
	--[[2nd]]	{pid=E_.DTC, 			q=2,	t=E_.PRP}, --[[]]
			},
			{
				f=R_MultiItem,
				c=45,
				{id='ANTIMATTER',		n=2, 	t=E_.PDT},
	--[[2nd]]	{id='AM_HOUSING',		n=2, 	t=E_.PDT}, --[[]]
	--[[2nd]]	{id='TECHFRAG',			n=230, 	t=E_.SBT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=35,
				{id='FRIG_TOKEN',		n=1, 	t=E_.PDT},
	--[[2nd]]	{id='TIMEMILK',			n=94, 	t=E_.SBT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=35,
				{id='WEAP_INV_TOKEN',	n=1, 	t=E_.PDT},
	--[[2nd]]	{id='AF_METAL',			n=117, 	t=E_.SBT}, --[[]]
			},
			{id=E_.UT,	n=150000,	x=260000,	c=20,	f=R_Money},
			{
				f=R_MultiItem,
				{id='FARMPROD1',		n=1, 	t=E_.PDT},	-- Acid
	--[[2nd]]	{id='WORMDUST',			n=105, 	t=E_.SBT}, --[[]]
				c=25,
			},
			{
				f=R_MultiItem,
				c=25,
				{id='FARMPROD5',		n=1, 	t=E_.PDT},	-- Poly Fibre
	--[[2nd]]	{id='TIMEDUST',			n=94, 	t=E_.SBT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=25,
				{id='SALVAGE_TECH8',	n=1, 	t=E_.PDT},	-- Subatomic Regulators
	--[[2nd]]	{id='SPECIAL_POOP',		n=203, 	t=E_.SBT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=25,
				{id='SALVAGE_TECH7',	n=1, 	t=E_.PDT},	-- Recycled Circuitry
	--[[2nd]]	{id='TIMEMILK',			n=91, 	t=E_.SBT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=2,
				{id='FREI_INV_TOKEN',	n=2, 	t=E_.PDT},	-- freighter inv
	--[[2nd]]	{id='ROBOT1',			n=303, 	t=E_.SBT}, --[[]]
			},

			-- freighter hyper
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRH, 		q=0,	t=E_.PRP},
	--[[2nd]]	{id='CASING',		n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRH, 		q=1,	t=E_.PRP},
	--[[2nd]]	{id='COMPOUND6',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRH, 		q=2,	t=E_.PRP},
	--[[2nd]]	{id='PRODFUEL2',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				c=1,
				{pid=E_.FRH, 		q=3,	t=E_.PRP},
	--[[2nd]]	{id='ILLEGAL_PROD6',n=1, 	t=E_.PDT}, --[[]]
				f=R_MultiItem,
			},
			-- freighter fuel
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRF, 		q=0,	t=E_.PRP},
	--[[2nd]]	{id='NANOTUBES',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRF, 		q=1,	t=E_.PRP},
	--[[2nd]]	{id='COMPOUND5',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRF, 		q=2,	t=E_.PRP},
	--[[2nd]]	{id='REPAIRKIT',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRF, 		q=3,	t=E_.PRP},
	--[[2nd]]	{id='ILLEGAL_PROD5',n=1, 	t=E_.PDT}, --[[]]
			},
			-- freighter trade
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRT, 		q=0,	t=E_.PRP},
	--[[2nd]]	{id='JELLY',		n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRT, 		q=1,	t=E_.PRP},
	--[[2nd]]	{id='COMPOUND4',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRT, 		q=2,	t=E_.PRP},
	--[[2nd]]	{id='BIO',			n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRT, 		q=3,	t=E_.PRP},
	--[[2nd]]	{id='ILLEGAL_PROD4',n=1, 	t=E_.PDT}, --[[]]
			},
			-- freighter combat
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRC, 		q=0,	t=E_.PRP},
	--[[2nd]]	{id='POWERCELL',	n=187, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRC, 		q=1,	t=E_.PRP},
	--[[2nd]]	{id='COMPOUND3',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRC, 		q=2,	t=E_.PRP},
	--[[2nd]]	{id='MIRROR',		n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRC, 		q=3,	t=E_.PRP},
	--[[2nd]]	{id='ILLEGAL_PROD3',n=1, 	t=E_.PDT}, --[[]]
			},
			-- freighter mining
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRM, 		q=0,	t=E_.PRP},
	--[[2nd]]	{id='CATA_CRAFT',	n=187, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRM, 		q=1,	t=E_.PRP},
	--[[2nd]]	{id='COMPOUND2',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRM, 		q=2,	t=E_.PRP},
	--[[2nd]]	{id='MICROCHIP',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRM, 		q=3,	t=E_.PRP},
	--[[2nd]]	{id='ILLEGAL_PROD2',n=1, 	t=E_.PDT}, --[[]]
			},
			-- freighter explore
			{
				f=R_MultiItem,
				c=5,
				{pid=E_.FRE, 		q=0,	t=E_.PRP},
	--[[2nd]]	{id='CARBON_SEAL',	n=187, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=E_.FRE, 		q=1,	t=E_.PRP},
	--[[2nd]]	{id='COMPOUND1',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRE, 		q=2,	t=E_.PRP},
	--[[2nd]]	{id='TRA_ENERGY5',	n=1, 	t=E_.PDT}, --[[]]
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=E_.FRE, 		q=3,	t=E_.PRP},
	--[[2nd]]	{id='ILLEGAL_PROD1',n=1, 	t=E_.PDT}, --[[]]
			}
		}
	},
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
	},
	{
	---	pirate attack loot - easy level ---
		id			= 'PIRATELOOT_EASY',
		choice		= E_.ONE_S,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=80,	f=R_Product},
			{id='TRA_ALLOY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_ENERGY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_EXOTICS1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD3',	n=1,	x=2,	c=40,	f=R_Product},
			{id=E_.DBI,				r=E_.C,			c=30,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=30,	f=R_Procedural},
			{id=E_.UT,				n=18000,x=30000,c=80,	f=R_Money}
		}
	},
	{
	---	pirate attack loot - normal level ---
		id			= 'PIRATELOOT',
		choice 		= E_.ONE_S,
		zeroseed 	= true,
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=2,	c=80,	f=R_Product},
			{id='SCRAP_GOODS',				x=1,	c=90,	f=R_Product},
			{id='SCRAP_TECH',				x=1,	c=90,	f=R_Product},
			{id='SCRAP_WEAP',				x=1,	c=90,	f=R_Product},
			{id='TRA_ALLOY3',		n=1,	x=3,	c=40,	f=R_Product},
			{id='TRA_ENERGY3',		n=1,	x=3,	c=40,	f=R_Product},
			{id='TRA_COMPONENT3',	n=1,	x=3,	c=40,	f=R_Product},
			{id='TRA_MINERALS3',	n=1,	x=3,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD4',	n=1,	x=2,	c=30,	f=R_Product},
			{id='AF_METAL',			n=100,	x=130,	c=30,	f=R_Substance},
			{id=E_.DBI,				o=true,	r=E_.U,	c=30,	f=R_Procedural},
			{id=E_.DTC,				o=true,	r=E_.U,	c=30,	f=R_Procedural},
			{id=E_.NN,				n=100,	x=250,	c=100,	f=R_Money}
		}
	},
	{
	---	 pirate attack loot - hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= E_.ONE_S,
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=3,	c=80,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=40,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=40,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=40,	f=R_Substance},
			{id='AF_METAL',			n=110,	x=180,	c=40,	f=R_Substance},
			{id='SCRAP_GOODS',				x=1,	c=40,	f=R_Product},
			{id='SCRAP_TECH',				x=1,	c=40,	f=R_Product},
			{id='SCRAP_WEAP',				x=1,	c=40,	f=R_Product},
			{id='TRA_ENERGY4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='TRA_ALLOY4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='TRA_EXOTICS4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='TRA_TECH4',		n=1,	x=3,	c=50,	f=R_Product},
			{id='ILLEGAL_PROD5',	n=1,	x=2,	c=30,	f=R_Product},
			{id='GEODE_RARE',				x=1,	c=20,	f=R_Product},
			{id=E_.DBI,				o=true,	r=E_.U,	c=20,	f=R_Procedural},
			{id=E_.DTC,				o=true,	r=E_.U,	c=20,	f=R_Procedural},
			{id=E_.NN,				n=300,	x=400,	c=100,	f=R_Money}
		}
	},
	{
	---	 pirate attack loot - building raid ---
		id			= 'RAIDLOOT',
		choice		= E_.ONE_S,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=80,	f=R_Product},
			{id='SCRAP_GOODS',				x=1,	c=40,	f=R_Product},
			{id='SCRAP_TECH',				x=1,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD2',	n=1,	x=4,	c=30,	f=R_Product},
			{id='WATER2',			n=260,	x=280,	c=30,	f=R_Substance},
			{id='GEODE_RARE',				x=1,	c=20,	f=R_Product},
			{id=E_.DBI,				o=true,	r=E_.U,	c=20,	f=R_Procedural},
			{id=E_.DTC,				o=true,	r=E_.U,	c=20,	f=R_Procedural},
			{id=E_.UT,				n=25000,x=35000,c=80,	f=R_Money}
		}
	},
	{
	---	jetpack boost from tech plant ---
		id			= 'JETPACK_BOOST',
		choice		= E_.ALL,
		replacement	= true,
		rewardlist	= {
			{id='jetboost',		t=5,	b=1.25,	c=100,	f=R_Jetboost}
		}
	},
	{
	---	jetpack boost from ? ---
		id			= 'MIXER_JETPACK',
		choice		= E_.ALL,
		replacement	= true,
		rewardlist	= {
			{id='jetboost',		t=4,	b=1.2,	c=100,	f=R_Jetboost}
		}
	},
	{
	---	jetpack boost from consumable product ---
		id			= 'DE_FOOD_JETPACK',
		choice		= E_.ALL,
		replacement	= true,
		rewardlist	= {
			{id='jetboost',		t=3,	b=1.15,	c=100,	f=R_Jetboost}
		}
	},
	{
	---	health + shield + stamina + hazard + jetboost = balatant cheat! ---
		id			= 'HEALTH_MAJOR',
		choice		= E_.ALL_S,
		rewardlist	= {
			{id='health',		n=3,	x=5,	c=100,	f=R_Health},
			{id='shield',		n=70,	x=100,	c=100,	f=R_Shield},
			{id='hazard',		n=80,			c=100,	f=R_Hazard},
			{id='stamina',		t=6,			c=100,	f=R_Stamina},
			{id='jetboost',		t=4,	b=1.2,	c=100,	f=R_Jetboost}
		}
	},
	{
	---	quicksilver tiny=30 ---
		id			= 'RS_QUICKSILV_T',
		choice		= E_.ALL,
		rewardlist	= {
			{id=E_.HG,			x=30,		c=100,		f=R_Money}
		}
	},
	{
	---	test 9 ---
		id			= 'TEST_REWARD_09',
		choice		= E_.ALL,
		rewardlist	= {
			-- id					details			%		function
			{id='flyby',			t=5,			c=95,	f=R_FlyBy},
			{id=E_.FOS,				r=E_.R,			c=2,	f=R_Procedural},
			{id=E_.SPH,				r=E_.U,			c=2,	f=R_Procedural},
			{id='ALLOY6',			n=1,	x=2,	c=2,	f=R_Product},
			{id='FOOD_CM_JHOT',		n=1,	x=2,	c=2,	f=R_Product},
			{id='SCRAP_WEAP',				x=1,	c=2,	f=R_Product},
			{id='WATER2',			n=260,	x=280,	c=2,	f=R_Substance},
			{id='WORMDUST',			n=1060,	x=1180,	c=2,	f=R_Substance},
			{id=E_.NN,				n=5,	x=15,	c=100,	f=R_Money}
		}
	},
	{
	---	more tests ---
		id			= 'TEST_99',
		choice		= E_.ONE,
		disabled	= true,
		rewardlist	= {
			-- id					details			%		function
			{id='no_sentinels',		t=20,			c=90,	f=R_NoSentinels},
			{id='wanted_level',		w=0,			c=50,	f=R_Wanted},
			{id='ROGUE_HAZBOX',				x=1,	c=10,	f=R_Product},
			{id='UT_SHIPLAS',				x=1,	c=10,	f=R_Product},
			{id=E_.FOS,				r=E_.R,			c=10,	f=R_Procedural},
			{id=E_.SPH,				r=E_.U,			c=10,	f=R_Procedural},
			{id='SCRAP_WEAP',				x=1,	c=10,	f=R_Product},
			{id='STEALTH',			s=true,			c=10,	f=R_Technology},
			{id='ACCESS1',			s=true,			c=10,	f=R_ProductRecipe},
			{id={'ALLOY7','ALLOY8'},n=2,	x=5,	c=2,	f=R_ProductSysList},
			{id={'ALLOY4','ALLOY5'},				c=2,	f=R_ProductAllList},
			{id=E_.NN,				n=101,	x=202,	c=100,	f=R_Money}
		}
	}
}
function new_rewards:AddTableEntry(rte)
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
	local rewards = {}
	for _,rwd in ipairs(new_rewards) do
		-- collect exisitng rewards to be removed in FSKWG
		if not rwd.disabled then
			if rwd.replacement then
				table.insert(T[1].FSKWG, {'Id', rwd.id})
			end
			table.insert(rewards, new_rewards:AddTableEntry(rwd))
		end
	end
	table.insert(T, {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= table.concat(rewards)
	})
	return T
end

local plant_harvest = {
	{'DE_COOK_ALL1',	1.3,	1.5},	--  5 10 Heptaploid Wheat
	{'DE_COOK_ALL2',	1.3,	1.5},	--  5 10 Sweetroot
	{'DE_COOK_ALL3',	1.3,	1.5},	--  5 10 Pulpy Roots
	{'DE_COOK_HOT',		1.2,	1.6},	--  5 10 Fireberry
	{'DE_COOK_RAD',		1.2,	1.6},	--  5 10 Grahberry
	{'DE_COOK_DUST',	1.2,	1.6},	--  5 10 Aloe Flesh
	{'DE_COOK_COLD',	1.1,	1.4},	--  5 10 Frozen Tubers
	{'DE_COOK_TOX',		1.2,	1.6},	--  5 10 Jade Peas
	{'DE_COOK_LUSH',	1.2,	1.6},	--  5 10 Impulse Beans
	{'DE_COOK_WEIRD',	1.1,	1.5},	--  5 10 Hexaberry
	{'WILD_SCORCHED',	1.6,	2.2},	-- 18 30
	{'WILD_RADIO',		1.2,	1.6},	-- 18 30
	{'WILD_BARREN',		1.6,	2},		-- 40 60
	{'WILD_SNOW',		1.2,	1.6},	-- 18 30
	{'WILD_LUSH',		1.6,	2.2},	-- 10 15
	{'WILD_TOXIC',		1.6,	2},		-- 18 30
}
function plant_harvest:Get(x)
	return {
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Preserve',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		VALUE_CHANGE_TABLE 	= {
			{'AmountMin',	x[2]},
			{'AmountMax',	x[3]}
		}
	}
end

local learn_more_words = {
	{'WORD',			'None',			3},
	{'EXP_WORD',		'Explorers',	3},
	{'TRA_WORD',		'Traders',		3},
	{'WAR_WORD',		'Warriors',		3},
	{'TEACHWORD_EXP',	'Explorers',	3},
	{'TEACHWORD_TRA',	'Traders',		3},
	{'TEACHWORD_WAR',	'Warriors',		3},
	{'TEACHWORD_ATLAS',	'Atlas',		3},
	multi = true
}
function learn_more_words:Get(x)
	local T = {}
	for i=1, (x[3] - 1) do
		T[i] = {
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			SECTION_ACTIVE		= 1,
			PRECEDING_KEY_WORDS = 'GcRewardTableItem.xml',
			ADD_OPTION			= 'ADDAfterSection',
			ADD					= R_Word({id=x[2], x=1, c=45})
		}
	end
	return T
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	if tbl.multi or false then
		for _,v in ipairs(tbl) do
			for _,w in ipairs(tbl:Get(v)) do table.insert(T, w) end
		end
	else
		for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	end
	return T
end

local source_table_reward = 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE REWARD.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_table_reward,
		EXML_CHANGE_TABLE	= AddNewRewardsToChangeTable()
	},
	{
		MBIN_FILE_SOURCE	= source_table_reward,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'TECHDEBRIS', 'ID', 'LAUNCHFUEL'},
				SECTION_UP			= 1,
				ADD_OPTION			= 'ADDAfterSection',
				ADD					= R_Product({id='BP_SALVAGE', n=2, x=4, c=50})
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Id', 'REFRESH_HAZ', 'LabelID', 'UI_RESTORE_HAZARD'},
				-- ADD_OPTION			= 'ADDAfterSection',
				-- ADD					= R_Technology({id='BODYSHIELD', c=100, s=true})
			-- }
		}
	},
	{
		MBIN_FILE_SOURCE	= source_table_reward,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(plant_harvest)
	},
	{
		MBIN_FILE_SOURCE	= source_table_reward,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(learn_more_words)
	}
}}}}
