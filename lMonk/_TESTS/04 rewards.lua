--------------------------------------------------------------------------
local desc = [[
  Replace freighter defense reward (requires changes in AlienPuzzle)
  Changes to pirate battle loot
  Increase wild plants harvest yield
  More words learned at word stones and other places

  ** ADD reward technology blueprint
]]------------------------------------------------------------------------

local function bool(b)
	return (b == true) and 'True' or 'False'
end

local function R_TableItem(item, data, reward)
	local minmax = ''
	if item.x then
		minmax = [[
			<Property name="AmountMin" value="]]..(item.n or item.x)..[["/>
			<Property name="AmountMax" value="]]..item.x..[["/>
		]]
	end
	return [[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..item.c..[["/>
			<Property name="Reward" value="]]..reward..[[">
				]]..data..minmax..[[
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
				<Property name="ProcProdRarity" value="GcRarity.xml">
					<Property name="Rarity" value="]]..(itm.r or 'Common')..[["/>
				</Property>
			</Property>]]
	end
	exml = [[
		<Property name="Silent" value="]]..bool(item.s)..[["/>
		<Property name="Items">
			]]..exml..[[
		</Property>
	]]
	return R_TableItem(item, exml, 'GcRewardMultiSpecificItems.xml')
end
local function R_Procedural(item)
	local exml = [[
		<Property name="Type" value="GcProceduralProductCategory.xml">
			<Property name="ProceduralProductCategory" value="]]..item.id..[["/>
		</Property>
		<Property name="Rarity" value="GcRarity.xml">
			<Property name="Rarity" value="]]..(item.r or 'Common')..[["/>
		</Property>
	]]
	return R_TableItem(item, exml, 'GcRewardProceduralProduct.xml')
end
local function R_Product(item)
	local exml = [[
		<Property name="Default" value="GcDefaultMissionProductEnum.xml">
			<Property name="DefaultProductType" value="None"/>
		</Property>
		<Property name="ID" value="]]..item.id..[["/>
		<Property name="Silent" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardSpecificProduct.xml')
end
local function R_Substance(item)
	local exml = [[
		<Property name="Default" value="GcDefaultMissionSubstanceEnum.xml">
			<Property name="DefaultSubstanceType" value="None"/>
		</Property>
		<Property name="ID" value="]]..item.id..[["/>
		<Property name="HardModeMultiplier" value="1"/>
		<Property name="Silent" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardSpecificSubstance.xml')
end
local function R_Technology(item)
	local exml = [[
		<Property name="TechId" value="]]..item.id..[["/>
		<Property name="Silent" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardSpecificTech.xml')
end
local function R_ProductRecipe(item)
	-- [Slient] typo is hardcoded
	local exml = [[
		<Property name="Id" value="]]..item.id..[["/>
		<Property name="Slient" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardSpecificProductRecipe.xml')
end
local function R_Word(item)
	local exml = [[
		<Property name="Race" value="GcAlienRace.xml">
			<Property name="AlienRace" value="]]..item.id..[["/>
		</Property>
		<Property name="Category" value="GcWordCategoryTableEnum.xml">
			<Property name="gcwordcategorytableEnum" value="MISC"/>
		</Property>
	]]
	return R_TableItem(item, exml, 'GcRewardTeachWord.xml')
end
local function R_Money(item)
	local exml = [[
		<Property name="Currency" value="GcCurrency.xml">
			<Property name="Currency" value="]]..item.id..[["/>
		</Property>
	]]
	return R_TableItem(item, exml, 'GcRewardMoney.xml')
end
local function R_Jetboost(item)
	local exml = [[
		<Property name="Duration" value="]]..		(10 * item.t)..[["/>
		<Property name="ForwardBoost" value="]]..	(4.2 * item.b)..[["/>
		<Property name="UpBoost" value="]]..		(0.9 * item.b)..[["/>
		<Property name="IgnitionBoost" value="]]..	(1.8 * item.b)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardJetpackBoost.xml')
end
local function R_Stamina(item)
	local exml = [[
		<Property name="Duration" value="]]..(10 * item.t)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardFreeStamina.xml')
end
local function R_Hazard(item)
	local exml = [[
		<Property name="Amount" value="-]]..item.n..[["/>
		<Property name="Silent" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardRefreshHazProt.xml')
end
local function R_Shield(item)
	return R_TableItem(item, '', 'GcRewardShield.xml')
end
local function R_Health(item)
	local exml = [[
		<Property name="SilentUnlessShieldAtMax" value="]]..bool(item.s)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardHealth.xml')
end
local function R_Wanted(item)
	local exml = [[
		<Property name="Level" value="]]..(item.n or 0)..[["/>
	]]
	return R_TableItem(item, exml, 'GcRewardWantedLevel.xml')
end
local function R_FlyBy(item)
	local exml = [[
		<Property name="FlybyType" value="GcFrigateFlybyType.xml">
			<Property name="FrigateFlybyType" value="AmbientGroup"/>
		</Property>
		<Property name="AppearanceDelay" value="]]..(item.t or 3)..[["/>
		<Property name="CameraShake" value="FRG_FLYBY_PREP"/>
	]]
	return R_TableItem(item, exml, 'GcRewardFrigateFlyby.xml')
end

local E_ = {
	-- ProceduralProductCategoryEnum
	LOT='Loot',
	FRH='FreighterTechHyp',
	FRS='FreighterTechSpeed',
	FRF='FreighterTechFuel',
	FRT='FreighterTechTrade',
	FRC='FreighterTechCombat',
	FRM='FreighterTechMine',
	FRE='FreighterTechExp',
	DBI='DismantleBio',
	DTC='DismantleTech',
	DDT='DismantleData',
	BIO='BioSample',
	BNS='Bones',
	FOS='Fossil',
	SLT='SeaLoot',
	SHR='SeaHorror',
	SPB='SpaceBones',
	SPH='SpaceHorror',
	SLV='Salvage',

	-- MultiItemRewardTypeEnum
	PDT='Product',	SBT='Substance',	PRP='ProcProduct',
	-- PRT='ProcTech', not supported

	-- RarityEnum
	C='Common',		U='Uncommon',		R='Rare',

	-- Money
	UT='Units',		NN='Nanites',		HG='Specials', -- quicksilver
}

local new_reward = {
	{
	---	explorer freighter defense battle ---
		id			= 'FREIGHTERSAVE_E',
		choice		= 'GiveAll',
		rewardlist	= {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},	-- Hyperdrive fuel
				{id='SCRAP_TECH',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},	-- freighter inv slot
				{id='ASTEROID3',	n=169, 	t=E_.SBT},	-- Platinum
				{pid=E_.SPB,		r=E_.U,	t=E_.PRP},	-- Space Bones Procedural
				c=100,
				f=R_MultiItem
			},
			{id=E_.HG, n=50, x=60, c=100, f=R_Money},
		}
	},{
	---	trader freighter defense battle ---
		id			= 'FREIGHTERSAVE_T',
		choice		= 'GiveAll',
		rewardlist	= {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='GEODE_RARE',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},
				{id='ASTEROID1',	n=523, 	t=E_.SBT},	-- silver
				{pid=E_.SLV,		r=E_.U,	t=E_.PRP},	-- Salvage Procedural
				c=100,
				f=R_MultiItem
			},
			{id=E_.UT, n=35100, x=50200, c=100, f=R_Money},
		}
	},{
	---	warior freighter defense battle ---
		id			= 'FREIGHTERSAVE_W',
		choice		= 'GiveAll',
		rewardlist	= {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='SCRAP_WEAP',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},
				{id='ASTEROID2',	n=387, 	t=E_.SBT},	-- gold
				{pid=E_.DTC,		r=E_.U,	t=E_.PRP},
				c=100,
				f=R_MultiItem
			},
			{id=E_.NN, n=190, x=270, c=100, f=R_Money},
		}
	},{
	---	pirate attack loot - easy level ---
		id			= 'PIRATELOOT_EASY',
		choice		= 'SelectAlways',
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=80,	f=R_Product},
			{id='TRA_ALLOY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_ENERGY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_EXOTICS1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD3',	n=1,	x=2,	c=40,	f=R_Product},
			{id=E_.DBI,				r=E_.C,			c=30,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=30,	f=R_Procedural},
			{id=E_.UT,				n=18000,x=30000,c=80,	f=R_Money},
		}
	},{
	---	pirate attack loot - normal level ---
		id			= 'PIRATELOOT',
		choice 		= 'SelectAlways',
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
			{id=E_.DBI,				r=E_.U,			c=30,	f=R_Procedural},
			{id=E_.DTC,				r=E_.U,			c=30,	f=R_Procedural},
			{id=E_.NN,				n=100,	x=250,	c=100,	f=R_Money},
		}
	},{
	---	 pirate attack loot - hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= 'SelectAlways',
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
			{id=E_.DBI,				r=E_.R,			c=20,	f=R_Procedural},
			{id=E_.DTC,				r=E_.R,			c=20,	f=R_Procedural},
			{id=E_.NN,				n=300,	x=400,	c=100,	f=R_Money},
		}
	},{
	---	 pirate attack loot - building raid ---
		id			= 'RAIDLOOT',
		choice		= 'SelectAlways',
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=80,	f=R_Product},
			{id='SCRAP_GOODS',				x=1,	c=40,	f=R_Product},
			{id='SCRAP_TECH',				x=1,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD2',	n=1,	x=4,	c=30,	f=R_Product},
			{id='WATER2',			n=260,	x=280,	c=30,	f=R_Substance},
			{id='GEODE_RARE',				x=1,	c=20,	f=R_Product},
			{id=E_.DBI,				r=E_.U,			c=20,	f=R_Procedural},
			{id=E_.DTC,				r=E_.U,			c=20,	f=R_Procedural},
			{id=E_.UT,				n=25000,x=35000,c=80,	f=R_Money},
		}
	},{
	---	jetpack boost from tech plant ---
		id			= 'JETPACK_BOOST',
		choice		= 'GiveAll',
		replacement	= true,
		rewardlist	= {
			{id='jetboost',		t=5,	b=1.25,	c=100,	f=R_Jetboost},
		}
	},{
	---	jetpack boost from ? ---
		id			= 'MIXER_JETPACK',
		choice		= 'GiveAll',
		replacement	= true,
		rewardlist	= {
			{id='jetboost',		t=4,	b=1.2,	c=100,	f=R_Jetboost},
		}
	},{
	---	jetpack boost from consumable product ---
		id			= 'DE_FOOD_JETPACK',
		choice		= 'GiveAll',
		replacement	= true,
		rewardlist	= {
			{id='jetboost',		t=3,	b=1.15,	c=100,	f=R_Jetboost},
		}
	},{
	---	quicksilver tiny=30 ---
		id			= 'RS_QUICKSILV_T',
		choice		= 'GiveAll',
		rewardlist	= {
			{id=E_.HG,			x=30,		c=100,		f=R_Money},
		}
	},{
	---	health + shield + stamina + hazard + jetboost = balatant cheat! ---
		id			= 'HEALTH_MAJOR',
		choice		= 'GiveAllSilent',
		rewardlist	= {
			{id='health',		n=3,	x=5,	c=100,	f=R_Health},
			{id='shield',		n=70,	x=100,	c=100,	f=R_Shield},
			{id='hazard',		n=80,			c=100,	f=R_Hazard},
			{id='stamina',		t=6,			c=100,	f=R_Stamina},
			{id='jetboost',		t=4,	b=1.2,	c=100,	f=R_Jetboost},
		}
	},{
	---	test reward ---
		id			= 'TEST_REWARD_09',
		choice		= 'GiveAllSilent', -- SelectAlways
		rewardlist	= {
			-- id					details			%		function
			{id='wanted_level',		w=0,			c=100,	f=R_Wanted},
			{id='flyby',			t=5,			c=50,	f=R_FlyBy},
			{id='ROGUE_HAZBOX',				x=1,	c=2,	f=R_Product},
			{id='UT_SHIPLAS',				x=1,	c=2,	f=R_Product},
			{id=E_.FOS,				r=E_.R,			c=2,	f=R_Procedural},
			{id=E_.SPH,				r=E_.U,			c=2,	f=R_Procedural},
			{id='ALLOY6',			n=1,	x=2,	c=2,	f=R_Product},
			{id='WATER2',			n=260,	x=280,	c=2,	f=R_Substance},
			{id='FOOD_ICE_GLITCH',	n=3,	x=4,	c=2,	f=R_Product},
			{id='SCRAP_WEAP',				x=1,	c=2,	f=R_Product},
			{id='STEALTH',			s=true,			c=2,	f=R_Technology},
			{id='ACCESS1',			s=true,			c=2,	f=R_ProductRecipe},
			{id=E_.HG,				n=192,	x=322,	c=100,	f=R_Money},
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
		</Property>]]
end

local function AddNewRewardsToChangeTable()
	local T = {}
	local rewards = ''
	for _,rwd in ipairs(new_reward) do
		if rwd.replacement then
			table.insert(T, {
				SPECIAL_KEY_WORDS	= {'Id', rwd.id},
				REMOVE				= 'Section'
			})
		end
		rewards = rewards..new_reward:AddTableEntry(rwd)
	end
	table.insert(T, {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= rewards
	})	
	return T
end

local plant_harvest = {
	{'DE_COOK_ALL1',	1.3,	1.5},	-- Heptaploid Wheat
	{'DE_COOK_ALL2',	1.3,	1.5},	-- Sweetroot
	{'DE_COOK_ALL3',	1.3,	1.5},	-- Pulpy Roots
	{'DE_COOK_HOT',		1.2,	1.6},	-- Fireberry
	{'DE_COOK_RAD',		1.2,	1.6},	-- Grahberry
	{'DE_COOK_DUST',	1.2,	1.6},	-- Aloe Flesh
	{'DE_COOK_COLD',	1.1,	1.4},	-- Frozen Tubers
	{'DE_COOK_TOX',		1.2,	1.6},	-- Jade Peas
	{'DE_COOK_LUSH',	1.2,	1.6},	-- Impulse Beans
	{'DE_COOK_WEIRD',	1.1,	1.5},	-- Hexaberry
	{'WILD_SCORCHED',	1.6,	2.2},	-- Solanium
	{'WILD_RADIO',		1.2,	1.6},	-- Gamma Root
	{'WILD_BARREN',		1.6,	2},		-- Cactus Flesh
	{'WILD_SNOW',		1.2,	1.6},	-- Frost Crystal
	{'WILD_TOXIC',		1.6,	2},		-- Fungal Mould
	{'WILD_LUSH',		1.6,	2.2},	-- Star Bulb
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
	local t = {}
	for i=1, (x[3] - 1) do
		t[i] = {
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			SECTION_ACTIVE		= 1,
			PRECEDING_KEY_WORDS = 'GcRewardTableItem.xml',
			ADD_OPTION			= 'ADDAfterSection',
			ADD					= R_Word({id=x[2], n=1, x=1, c=45})
		}
	end
	return t
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
	MOD_FILENAME 		= '___TEST 4 REWARDS.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
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
