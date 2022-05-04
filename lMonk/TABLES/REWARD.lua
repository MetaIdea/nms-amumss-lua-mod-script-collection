--------------------------------------------------------------------------
local desc = [[
  Replace freighter defense reward (requires changes in AlienPuzzle)
  Changes to pirate battle loot
  Increase wild plants harvest yield
  More words learned at word stones and other places

  ** ADD reward technology blueprint
]]------------------------------------------------------------------------

local F_ = {}
F_.TableItemSingle = function(item, data, reward)
	local minmax = ''
	if item.x ~= nil then
		minmax = [[
			<Property name="AmountMin" value="]]..item.n..[["/>
			<Property name="AmountMax" value="]]..item.x..[["/>
		]]
	end
	return [[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..item.c..[["/>
			<Property name="Reward" value="]]..reward..[[">
				]]..data..minmax..[[
			</Property>
			<Property name="LabelID" value=""/>
		</Property>
	]]
end
F_.Procedural = function(item)
	local exml = [[
		<Property name="Type" value="GcProceduralProductCategory.xml">
			<Property name="ProceduralProductCategory" value="]]..item.id..[["/>
		</Property>
		<Property name="OSDMessage" value=""/>
		<Property name="SubIfPlayerAlreadyHasOne" value="False"/>
		<Property name="OverrideRarity" value="False"/>
		<Property name="Rarity" value="GcRarity.xml">
			<Property name="Rarity" value="]]..(item.r or 'Common')..[["/>
		</Property>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardProceduralProduct.xml')
end
F_.Product = function(item)
	local exml = [[
		<Property name="Default" value="GcDefaultMissionProductEnum.xml">
			<Property name="DefaultProductType" value="None"/>
		</Property>
		<Property name="ID" value="]]..item.id..[["/>
		<Property name="HideAmountInMessage" value="False"/>
		<Property name="ForceSpecialMessage" value="False"/>
		<Property name="HideInSeasonRewards" value="False"/>
		<Property name="Silent" value="False"/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardSpecificProduct.xml')
end
F_.Substance = function(item)
	local exml = [[
		<Property name="Default" value="GcDefaultMissionSubstanceEnum.xml">
			<Property name="DefaultSubstanceType" value="None"/>
		</Property>
		<Property name="ID" value="]]..item.id..[["/>
		<Property name="HardModeMultiplier" value="1"/>
		<Property name="DisableMultiplier" value="False"/>
		<Property name="RewardAsBlobs" value="False"/>
		<Property name="UseFuelMultiplier" value="False"/>
		<Property name="Silent" value="False"/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardSpecificSubstance.xml')
end
F_.Technology = function(item)
	local exml = [[
		<Property name="TechId" value="]]..item.id..[["/>
		<Property name="AutoPin" value="False"/>
		<Property name="Silent" value="False"/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardSpecificTech.xml')
end
F_.ProductRecipe = function(item)
	local exml = [[
		<Property name="Id" value="]]..item.id..[["/>
		<Property name="Silent" value="False"/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardSpecificProductRecipe.xml')
end
F_.Word = function(item)
	local exml = [[
		<Property name="Race" value="GcAlienRace.xml">
			<Property name="AlienRace" value="]]..item.id..[["/>
		</Property>
		<Property name="UseCategory" value="False"/>
		<Property name="Category" value="GcWordCategoryTableEnum.xml">
			<Property name="gcwordcategorytableEnum" value="MISC"/>
		</Property>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardTeachWord.xml')
end
F_.Money = function(item)
	local exml = [[
		<Property name="RoundNumber" value="False"/>
		<Property name="Currency" value="GcCurrency.xml">
			<Property name="Currency" value="]]..item.id..[["/>
		</Property>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardMoney.xml')
end
F_.Jetboost = function(item)
	local exml = [[
		<Property name="Duration" value="]]..		(10 * item.t)..[["/>
		<Property name="ForwardBoost" value="]]..	(4.2 * item.b)..[["/>
		<Property name="UpBoost" value="]]..		(0.9 * item.b)..[["/>
		<Property name="IgnitionBoost" value="]]..	(1.8 * item.b)..[["/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardJetpackBoost.xml')
end
F_.Shield = function(item)
	local exml = [[
		<Property name="ShowOSDOnSuccess" value="True"/>
		<Property name="ShowOSDOnFail" value="True"/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardShield.xml')
end
F_.Health = function(item)
	local exml = '<Property name="SilentUnlessShieldAtMax" value="True"/>'
	return F_.TableItemSingle(item, exml, 'GcRewardHealth.xml')
end
F_.ItemList = function(item)
	local exml = ''
	for i=1, #item do
		exml = exml..[[
			<Property value="GcMultiSpecificItemEntry.xml">
				<Property name="MultiItemRewardType" value="]]..item[i].t..[["/>
				<Property name="Id" value="]]..(item[i].id or '')..[["/>
				<Property name="Amount" value="]]..(item[i].n or 1)..[["/>
				<Property name="ProcTechGroup" value=""/>
				<Property name="ProcTechQuality" value="3"/>
				<Property name="IllegalProcTech" value="]]..(item[i].l or 'False')..[["/>
				<Property name="ProcProdType" value="GcProceduralProductCategory.xml">
					<Property name="ProceduralProductCategory" value="]]..(item[i].pid or 'Loot')..[["/>
				</Property>
				<Property name="ProcProdRarity" value="GcRarity.xml">
					<Property name="Rarity" value="]]..(item[i].r or 'Common')..[["/>
				</Property>
				<Property name="HideInSeasonRewards" value="False"/>
			</Property>
		]]
	end
	return [[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..item.c..[["/>
			<Property name="Reward" value="GcRewardMultiSpecificItems.xml">
				<Property name="Silent" value="False"/>
				<Property name="Items">
					]]..exml..[[
				</Property>
			</Property>
			<Property name="LabelID" value=""/>
		</Property>
	]]
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
	PDT='Product',
	SBT='Substance',
 	PRP='ProcProduct',
	-- PRT='ProcTech', not supported

	-- RarityEnum
	C='Common',
	U='Uncommon',
	R='Rare',

	-- Money
	UT='Units',
	NN='Nanites',
	HG='Specials',
}

local Rewards = {
	FreightSave_Explorer = {
		id = 'FREIGHTERSAVE_E',
		choice = 'GiveAll',
		rewardlist = {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},	-- Hyperdrive fuel
				{id='SCRAP_TECH',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},	-- freighter inv slot
				{id='ASTEROID3',	n=169, 	t=E_.SBT},	-- Platinum
				{pid=E_.SPB,		r=E_.U,	t=E_.PRP},	-- Space Bones Procedural
				c=100,
				f=F_.ItemList
			},
			{id=E_.HG, n=50, x=60, c=100, f=F_.Money},
		}
	},
	FreightSave_Trader = {
		id = 'FREIGHTERSAVE_T',
		choice = 'GiveAll',
		rewardlist = {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='GEODE_RARE',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},
				{id='ASTEROID1',	n=523, 	t=E_.SBT},	-- silver
				{pid=E_.SLV,		r=E_.U,	t=E_.PRP},	-- Salvage Procedural
				c=100,
				f=F_.ItemList
			},
			{id=E_.UT, n=35100, x=50200, c=100, f=F_.Money},
		}
	},
	FreightSave_Warrior = {
		id = 'FREIGHTERSAVE_W',
		choice = 'GiveAll',
		rewardlist = {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='SCRAP_WEAP',	n=1, 	t=E_.PDT},
				{id='FREI_INV_TOKEN',n=1, 	t=E_.PDT},
				{id='ASTEROID2',	n=387, 	t=E_.SBT},	-- gold
				{pid=E_.DTC,		r=E_.U,	t=E_.PRP},
				c=100,
				f=F_.ItemList
			},
			{id=E_.NN, n=190, x=270, c=100, f=F_.Money},
		}
	},
	Pirate_Loot_Easy = {
		id = 'PIRATELOOT_EASY',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=1,	c=80,	f=F_.Product},
			{id='TRA_ALLOY1',		n=1,	x=2,	c=40,	f=F_.Product},
			{id='TRA_ENERGY1',		n=1,	x=2,	c=40,	f=F_.Product},
			{id='TRA_EXOTICS1',		n=1,	x=2,	c=40,	f=F_.Product},
			{id='ILLEGAL_PROD3',	n=1,	x=2,	c=40,	f=F_.Product},
			{id=E_.DBI,				r=E_.C,			c=30,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.C,			c=30,	f=F_.Procedural},
			{id=E_.UT,				n=18000,x=30000,c=80,	f=F_.Money},
		}
	},
	Pirate_Loot_Reg = {
		id = 'PIRATELOOT',
		choice = 'SelectAlways',
		zeroseed = 'True',
		rewardlist = {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=2,	c=80,	f=F_.Product},
			{id='SCRAP_GOODS',		n=1,	x=1,	c=90,	f=F_.Product},
			{id='SCRAP_TECH',		n=1,	x=1,	c=90,	f=F_.Product},
			{id='SCRAP_WEAP',		n=1,	x=1,	c=90,	f=F_.Product},
			{id='TRA_ALLOY3',		n=1,	x=3,	c=40,	f=F_.Product},
			{id='TRA_ENERGY3',		n=1,	x=3,	c=40,	f=F_.Product},
			{id='TRA_COMPONENT3',	n=1,	x=3,	c=40,	f=F_.Product},
			{id='TRA_MINERALS3',	n=1,	x=3,	c=40,	f=F_.Product},
			{id='ILLEGAL_PROD4',	n=1,	x=2,	c=30,	f=F_.Product},
			{id='AF_METAL',			n=100,	x=130,	c=30,	f=F_.Substance},
			{id=E_.DBI,				r=E_.U,			c=30,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.U,			c=30,	f=F_.Procedural},
			{id=E_.NN,				n=100,	x=250,	c=100,	f=F_.Money},
		}
	},
	Pirate_Loot_Hard = {
		id = 'PIRATELOOT_HARD',
		choice = 'SelectAlways',
		zeroseed = 'True',
		rewardlist = {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=3,	c=80,	f=F_.Product},
			{id='WATER2',			n=260,	x=360,	c=40,	f=F_.Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=40,	f=F_.Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=40,	f=F_.Substance},
			{id='AF_METAL',			n=110,	x=180,	c=40,	f=F_.Substance},
			{id='SCRAP_GOODS',		n=1,	x=1,	c=40,	f=F_.Product},
			{id='SCRAP_TECH',		n=1,	x=1,	c=40,	f=F_.Product},
			{id='SCRAP_WEAP',		n=1,	x=1,	c=40,	f=F_.Product},
			{id='TRA_ENERGY4',		n=1,	x=3,	c=50,	f=F_.Product},
			{id='TRA_ALLOY4',		n=1,	x=3,	c=50,	f=F_.Product},
			{id='TRA_EXOTICS4',		n=1,	x=3,	c=50,	f=F_.Product},
			{id='TRA_TECH4',		n=1,	x=3,	c=50,	f=F_.Product},
			{id='ILLEGAL_PROD5',	n=1,	x=2,	c=30,	f=F_.Product},
			{id='GEODE_RARE',		n=1,	x=1,	c=20,	f=F_.Product},
			{id=E_.DBI,				r=E_.R,			c=20,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.R,			c=20,	f=F_.Procedural},
			{id=E_.NN,				n=300,	x=400,	c=100,	f=F_.Money},
		}
	},
	Raid_Loot = {
		id = 'RAIDLOOT',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=1,	c=80,	f=F_.Product},
			{id='SCRAP_GOODS',		n=1,	x=1,	c=40,	f=F_.Product},
			{id='SCRAP_TECH',		n=1,	x=1,	c=40,	f=F_.Product},
			{id='ILLEGAL_PROD2',	n=1,	x=4,	c=30,	f=F_.Product},
			{id='WATER2',			n=260,	x=280,	c=30,	f=F_.Substance},
			{id='GEODE_RARE',		n=1,	x=1,	c=20,	f=F_.Product},
			{id=E_.DBI,				r=E_.U,			c=20,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.U,			c=20,	f=F_.Procedural},
			{id=E_.UT,				n=25000,x=35000,c=80,	f=F_.Money},
		}
	},
	Health_Major = {
		id = 'HEALTH_MAJOR',
		choice = 'GiveAllSilent',
		rewardlist = {
			{id='Health',		n=3,	x=5,	c=100,	f=F_.Health},
			{id='shield',		n=50,	x=70,	c=100,	f=F_.Shield},
			{id='jetboost',		t=4,	b=1.2,	c=100,	f=F_.Jetboost},
		}
	},
	Test_Loot_09 = {
		id = 'TEST_REWARD_09',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min/Rarity	Max	%		function
			{id=E_.SLT,				r=E_.C,			c=3,	f=F_.Procedural},
			{id=E_.DBI,				r=E_.C,			c=3,	f=F_.Procedural},
			{id=E_.FOS,				r=E_.R,			c=3,	f=F_.Procedural},
			{id=E_.SPH,				r=E_.U,			c=3,	f=F_.Procedural},
			{id=E_.FRH,				r=E_.R,			c=3,	f=F_.Procedural},
			{id=E_.SLV,				r=E_.U,			c=3,	f=F_.Procedural},
			{id=E_.BIO,				r=E_.R,			c=3,	f=F_.Procedural},
			{id='ALLOY1',			n=1,	x=2,	c=3,	f=F_.Product},
			{id='ALLOY5',			n=1,	x=2,	c=3,	f=F_.Product},
			{id='ALLOY6',			n=1,	x=2,	c=3,	f=F_.Product},
			{id='WATER2',			n=260,	x=280,	c=3,	f=F_.Substance},
			{id='TRA_ENERGY4',		n=6,	x=7,	c=3,	f=F_.Product},
			{id='TRA_ALLOY4',		n=6,	x=7,	c=3,	f=F_.Product},
			{id='EX_BLUE',			n=160,	x=180,	c=3,	f=F_.Substance},
			{id='FOOD_CM_APPLE',	n=3,	x=4,	c=3,	f=F_.Product},
			{id='FOOD_ICE_GLITCH',	n=3,	x=4,	c=3,	f=F_.Product},
			{id='AF_METAL',			n=140,	x=160,	c=3,	f=F_.Substance},
			{id='SCRAP_TECH',		n=1,	x=1,	c=3,	f=F_.Product},
			{id='SCRAP_WEAP',		n=1,	x=1,	c=3,	f=F_.Product},
			{id=E_.HG,				n=192,	x=322,	c=100,	f=F_.Money}, -- quicksilver
		}
	},
	BuildRewardTableEntry = function(rte)
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
					<Property name="OverrideZeroSeed" value="]]..(rte.zeroseed or 'False')..[["/>
					]]..getRewardsList(rte.rewardlist)..[[
				</Property>
			</Property>]]
	end
}

local Plant_Harvest = {
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
function Plant_Harvest:Get(x)
	return {
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'PRESERVE',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		VALUE_CHANGE_TABLE 	= {
			{'AmountMin',	x[2]},
			{'AmountMax',	x[3]}
		}
	}
end

local Learn_More_Words = {
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
function Learn_More_Words:Get(x)
	local t = {}
	for i=1, (x[3] - 1) do
		t[i] = {
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			SECTION_ACTIVE		= 1,
			PRECEDING_KEY_WORDS = 'GcRewardTableItem.xml',
			ADD_OPTION			= 'ADDAfterSection',
			ADD					= F_.Word({id=x[2], n=1, x=1, c=45})
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

local Source_Table_Reward = 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE REWARD.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Reward,
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'JETPACK_BOOST'},
				VALUE_CHANGE_TABLE 	= {
					{'Duration',		4},		-- 10
					{'ForwardBoost',	1.5},	-- 4.5
					{'UpBoost',			1.2},	-- 0.8
					{'IgnitionBoost',	1.3},	-- 1.9
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'MIXER_JETPACK'},
				VALUE_CHANGE_TABLE 	= {
					{'Duration',		4},
					{'ForwardBoost',	1.5},
					{'UpBoost',			1.2},
					{'IgnitionBoost',	1.3},
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'DE_FOOD_JETPACK'},
				VALUE_CHANGE_TABLE 	= {
					{'Duration',		4},
					{'ForwardBoost',	1.5},
					{'UpBoost',			1.2},
					{'IgnitionBoost',	1.3},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PIRATELOOT'},
				REMOVE				= 'SECTION'
			},
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Easy)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Reg)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Hard)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Raid_Loot)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightSave_Explorer)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightSave_Trader)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightSave_Warrior)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Health_Major)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Test_Loot_09)
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'TECHDEBRIS', 'ID', 'LAUNCHFUEL'},
				SECTION_UP			= 1,
				ADD_OPTION			= 'ADDAfterSection',
				ADD					= F_.Product({id='BP_SALVAGE', n=2, x=4, c=50})
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'REFRESH_HAZ', 'LabelID', 'UI_RESTORE_HAZARD'},
				ADD_OPTION			= 'ADDAfterSection',
				ADD					= F_.Technology({id='BODYSHIELD', c=100})
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Reward,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Plant_Harvest)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Reward,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Learn_More_Words)
	}
}}}}
