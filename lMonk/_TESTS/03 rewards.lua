--------------------------------------------------------------------------
local desc = [[
  Replace freighter defense reward (requires changes in AlienPuzzle)
  Changes to pirate battle loot
  Add all 5 boosters to police loot
  Increase wild plants harvest yield
  More words learned at word stones and other places
]]------------------------------------------------------------------------

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
}

local F_ = {}
F_.TableItemSingle = function(item, data, reward)
	local minmax = ''
	if item.n ~= nil then
		minmax = [[
			<Property name="AmountMin" value="]]..item.n..[[" />
			<Property name="AmountMin" value="]]..item.x..[[" />]]
	end
	return [[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..item.c..[[" />
			<Property name="Reward" value="]]..reward..[[">
				]]..data..minmax..[[
			</Property>
			<Property name="LabelID" value="" />
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
			<Property name="Rarity" value="]]..(item.r or E_.C)..[["/>
		</Property>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardProceduralProduct.xml')
end

F_.Product = function(item)
	local exml = [[
		<Property name="Default" value="GcDefaultMissionProductEnum.xml">
			<Property name="DefaultProductType" value="None" />
		</Property>
		<Property name="ID" value="]]..item.id..[[" />
		<Property name="ForceSpecialMessage" value="False" />
		<Property name="HideInSeasonRewards" value="False" />
		<Property name="Silent" value="False"/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardSpecificProduct.xml')
end
F_.Substance = function(item)
	local exml = [[
		<Property name="Default" value="GcDefaultMissionSubstanceEnum.xml">
			<Property name="DefaultSubstanceType" value="None"/>
		</Property>
		<Property name="ID" value="]]..item.id..[[" />
		<Property name="HardModeMultiplier" value="1" />
		<Property name="DisableMultiplier" value="False" />
		<Property name="RewardAsBlobs" value="False" />
		<Property name="UseFuelMultiplier" value="False" />
		<Property name="Silent" value="False"/>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardSpecificSubstance.xml')
end
F_.Word = function(item)
	local exml = [[
		<Property name="Race" value="GcAlienRace.xml">
			<Property name="AlienRace" value="]]..item.id..[[" />
		</Property>
		<Property name="UseCategory" value="False" />
		<Property name="Category" value="GcWordCategoryTableEnum.xml">
			<Property name="gcwordcategorytableEnum" value="MISC" />
		</Property>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardTeachWord.xml')
end
F_.Units = function(item)
	local exml = [[
		<Property name="Currency" value="GcCurrency.xml">
			<Property name="Currency" value="Units" />
		</Property>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardMoney.xml')
end
F_.Nanites = function(item)
	local exml = [[
		<Property name="Currency" value="GcCurrency.xml">
			<Property name="Currency" value="Nanites" />
		</Property>
	]]
	return F_.TableItemSingle(item, exml, 'GcRewardMoney.xml')
end
F_.Shield = function(item)
	return F_.TableItemSingle(item, '', 'GcRewardShield.xml')
end
F_.ItemList = function(item)
	local function tableItemMulti(itc, data, reward)
		return [[
			<Property value="GcRewardTableItem.xml">
				<Property name="PercentageChance" value="]]..itc.c..[[" />
				<Property name="Reward" value="]]..reward..[[">
					]]..data..[[
				</Property>
				<Property name="LabelID" value="" />
			</Property>
		]]
	end
	local exml = '<Property name="Items">'
	for i=1, #item do
		exml = string.format([[%s
			<Property value="GcMultiSpecificItemEntry.xml">
				<Property name="MultiItemRewardType" value="%s" />
				<Property name="Id" value="%s" />
				<Property name="Amount" value="%s" />
				<Property name="ProcTechGroup" value="" />
				<Property name="ProcTechQuality" value="%s" />
				<Property name="ProcProdType" value="GcProceduralProductCategory.xml">
					<Property name="ProceduralProductCategory" value="%s" />
				</Property>
				<Property name="ProcProdRarity" value="GcRarity.xml">
					<Property name="Rarity" value="%s" />
				</Property>
				<Property name="HideInSeasonRewards" value="False" />
			</Property>]],
			exml,
			item[i].t,				-- MultiItemRewardType
			item[i].id or '',		-- Id
			item[i].n or 1,			-- Amount
			item[i].q or 0,			-- ProcTechQuality
			item[i].pid or E_.LOT,	-- ProceduralProductCategory
			item[i].r or E_.C		-- Rarity
		)

		-- exml = exml..[[
			-- <Property value="GcMultiSpecificItemEntry.xml">
				-- <Property name="MultiItemRewardType" value="]]..item[i].t..[[" />
				-- <Property name="Id" value="]]..(item[i].id or '')..[[" />
				-- <Property name="Amount" value="]]..(item[i].n or '')..[[" />
				-- <Property name="ProcTechGroup" value="" />
				-- <Property name="ProcTechQuality" value="]]..(item[i].q or 0)..[[" />
				-- <Property name="ProcProdType" value="GcProceduralProductCategory.xml">
					-- <Property name="ProceduralProductCategory" value="]]..(item[i].pid or E_.LOT)..[[" />
				-- </Property>
				-- <Property name="ProcProdRarity" value="GcRarity.xml">
					-- <Property name="Rarity" value="]]..(item[i].r or E_.C)..[[" />
				-- </Property>
				-- <Property name="HideInSeasonRewards" value="False" />
			-- </Property>]]
	end
	exml = exml..'</Property>'
	return tableItemMulti(item, exml, 'GcRewardMultiSpecificItems.xml')
end

local Rewards = {
	FreightLoot_Explorer = {
		id = 'FREIGHTERLOOT_E',
		choice = 'GiveAll',
		rewardlist = {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},	-- Hyperdrive fuel
				{id='SCRAP_TECH',	n=1, 	t=E_.PDT},
				{id='STARCHART_A',	n=3, 	t=E_.PDT},	-- chart
				{id='ASTEROID3',	n=160, 	t=E_.SBT},	-- Platinum
				{pid=E_.SPB, r=E_.U, q=3,	t=E_.PRP},
				c=100,
				f=F_.ItemList
			},
			{id='nanites', n=360, x=380, c=100, f=F_.Nanites},
		}
	},
	FreightLoot_Trader = {
		id = 'FREIGHTERLOOT_T',
		choice = 'GiveAll',
		rewardlist = {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='SCRAP_TECH',	n=1, 	t=E_.PDT},
				{id='FRIG_TOKEN',	n=1, 	t=E_.PDT},
				{id='GEODE_ASTEROID',n=4, 	t=E_.PDT},	-- gold nugget
				{pid=E_.SLV, r=E_.U, q=3,	t=E_.PRP},
				c=100,
				f=F_.ItemList
			},
			{id='units', n=40100, x=50200, c=100, f=F_.Units},
		}
	},
	FreightLoot_Warrior = {
		id = 'FREIGHTERLOOT_W',
		choice = 'GiveAll',
		rewardlist = {
			{
				--id				Amount	type
				{id='HYPERFUEL1',	n=1, 	t=E_.PDT},
				{id='SCRAP_WEAP',	n=1, 	t=E_.PDT},
				{id='GEODE_RARE',	n=2, 	t=E_.PDT},	-- Glowing crystal
				{id='ASTEROID2',	n=210, 	t=E_.SBT},	-- gold
				{pid=E_.DTC, r=E_.U, q=3,	t=E_.PRP},
				c=100,
				f=F_.ItemList
			},
			{id='nanites', n=315, x=335, c=100, f=F_.Nanites},
		}
	},
	Cook_Shield = {
		id = 'BAKE_SHIELD',
		choice = 'GiveAllSilent',
		rewardlist = {
			{id='shield',		n=50,	x=70,	c=100,	f=F_.Shield}
		}
	},
	Pirate_Loot_Esay = {
		id = 'PIRAT_LOOT_EASY',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min		Max		%		function
			{id='LAND2',			n=60,	x=160,	c=5,	f=F_.Substance},
			{id='CAVE1',			n=70,	x=170,	c=5,	f=F_.Substance},
			{id=E_.DBI,				r=E_.C,			c=3,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.C,			c=3,	f=F_.Procedural},
			{id='TRA_ALLOY1',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_ENERGY1',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_EXOTICS1',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='FOOD_CM_APPLE',	n=1,	x=1,	c=1,	f=F_.Product},
		}
	},
	Pirate_Loot_Med = {
		id = 'PIRAT_LOOT_MED',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min		Max		%		function
			{id='ALLOY2',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY3',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY4',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='WATER2',			n=260,	x=280,	c=5,	f=F_.Substance},
			{id='GEODE_CAVE',		n=1,	x=2,	c=5,	f=F_.Product},
			{id=E_.DBI,				r=E_.C,			c=3,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.C,			c=3,	f=F_.Procedural},
			{id='TRA_ALLOY2',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_ENERGY2',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_TECH2',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='FOOD_ICE_GLITCH',	n=1,	x=1,	c=1,	f=F_.Product},
		}
	},
	Pirate_Loot_Reg = {
		id = 'PIRATELOOT',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min		Max		%		function
			{id='ALLOY2',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY3',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY4',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='WATER2',			n=260,	x=280,	c=5,	f=F_.Substance},
			{id=E_.DBI,				r=E_.C,			c=5,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.C,			c=5,	f=F_.Procedural},
			{id='TRA_ALLOY3',		n=1,	x=3,	c=5,	f=F_.Product},
			{id='TRA_ENERGY3',		n=1,	x=3,	c=5,	f=F_.Product},
			{id='TRA_COMPONENT3',	n=1,	x=3,	c=5,	f=F_.Product},
			{id='TRA_MINERALS3',	n=1,	x=3,	c=5,	f=F_.Product},
			{id='EX_BLUE',			n=80,	x=180,	c=3,	f=F_.Substance},
			{id='GEODE_RARE',		n=1,	x=1,	c=3,	f=F_.Product},
			{id='FOOD_CM_APPLE',	n=1,	x=3,	c=3,	f=F_.Product},
			{id='FOOD_ICE_GLITCH',	n=1,	x=3,	c=3,	f=F_.Product},
			{id='AF_METAL',			n=60,	x=160,	c=1,	f=F_.Substance},
			{id='shield',			n=50,	x=60,	c=100,	f=F_.Shield},
		}
	},
	Pirate_Loot_Hard = {
		id = 'PIRAT_LOOT_HARD',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min		Max		%		function
			{id='ALLOY1',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY2',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY3',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY4',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY5',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='ALLOY6',			n=1,	x=1,	c=5,	f=F_.Product},
			{id='WATER2',			n=260,	x=280,	c=5,	f=F_.Substance},
			{id='TRA_ENERGY4',		n=1,	x=3,	c=5,	f=F_.Product},
			{id='TRA_ALLOY4',		n=1,	x=3,	c=5,	f=F_.Product},
			{id='TRA_EXOTICS4',		n=1,	x=3,	c=5,	f=F_.Product},
			{id='TRA_TECH4',		n=1,	x=3,	c=5,	f=F_.Product},
			{id='GEODE_RARE',		n=1,	x=1,	c=3,	f=F_.Product},
			{id='EX_GREEN',			n=90,	x=190,	c=3,	f=F_.Substance},
			{id='EX_BLUE',			n=80,	x=180,	c=3,	f=F_.Substance},
			{id='FOOD_CM_APPLE',	n=1,	x=2,	c=3,	f=F_.Product},
			{id='FOOD_CM_CHOC',		n=1,	x=2,	c=3,	f=F_.Product},
			{id='FOOD_ICE_GLITCH',	n=1,	x=2,	c=3,	f=F_.Product},
			{id='AF_METAL',			n=140,	x=160,	c=2,	f=F_.Substance},
			{id='SCRAP_TECH',		n=1,	x=1,	c=1,	f=F_.Product},
			{id='SCRAP_WEAP',		n=1,	x=1,	c=1,	f=F_.Product},
			{id='shield',			n=60,	x=65,	c=100,	f=F_.Shield},
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
			{id='shield',			n=50,	x=60,	c=100,	f=F_.Shield},
		}
	},
	BuildRewardTableEntry = function(rte)
		local function getRewardsList(lst)
			local exml = '<Property name="List">'
			for _,v in pairs(lst) do exml = exml..v.f(v) end
			return exml..'</Property>'
		end
		return [[
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="]]..rte.id..[[" />
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="]]..rte.choice..[[" />
				<Property name="OverrideZeroSeed" value="False" />
				]]..getRewardsList(rte.rewardlist)..[[
			</Property>
		</Property>]]
	end
}

print(Rewards.BuildRewardTableEntry(Rewards.FreightLoot_Explorer))

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEST REWARD 3.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Id', 'PIRAT_LOOT_EASY'},
				-- REMOVE				= 'SECTION'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Id', 'PIRAT_LOOT_MED'},
				-- REMOVE				= 'SECTION'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Id', 'PIRATELOOT'},
				-- REMOVE				= 'SECTION'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Id', 'PIRAT_LOOT_HARD'},
				-- REMOVE				= 'SECTION'
			-- },
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= Rewards.BuildRewardTableEntry(Rewards.FreightLoot_Explorer)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightLoot_Trader)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightLoot_Warrior)
									  -- ..
									  -- Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Esay)
									  -- ..
									  -- Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Med)
									  -- ..
									  -- Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Reg)
									  -- ..
									  -- Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Hard)
									  -- ..
									  -- Rewards.BuildRewardTableEntry(Rewards.Cook_Shield)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Test_Loot_09)
			},
		}
	},
}}}}
