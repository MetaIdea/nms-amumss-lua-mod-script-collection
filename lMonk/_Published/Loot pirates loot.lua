--------------------------------------------------------------------------
local desc = [[
  Replace space pirates battle loot with a more varied list
]]------------------------------------------------------------------------

mod_version = 1.06

local F_ = {}
F_.TableItemSingle = function(item, data, reward)
	return [[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..item.c..[[" />
			<Property name="Reward" value="]]..reward..[[">
				]]..data..[[
				<Property name="AmountMin" value="]]..item.n..[[" />
				<Property name="AmountMax" value="]]..item.x..[[" />
			</Property>
			<Property name="LabelID" value="" />
		</Property>
	]]
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
		exml = exml..[[
			<Property value="GcMultiSpecificItemEntry.xml">
				<Property name="MultiItemRewardType" value="]]..item[i].t..[[" />
				<Property name="Id" value="]]..item[i].id..[[" />
				<Property name="Amount" value="]]..item[i].n..[[" />
				<Property name="ProcTechGroup" value="" />
				<Property name="ProcTechQuality" value="0" />
				<Property name="ProcProdType" value="GcProceduralProductCategory.xml">
					<Property name="ProceduralProductCategory" value="Loot" />
				</Property>
				<Property name="ProcProdRarity" value="GcRarity.xml">
					<Property name="Rarity" value="Common" />
				</Property>
				<Property name="HideInSeasonRewards" value="False" />
			</Property>]]
	end
	exml = exml..'</Property>'
	return tableItemMulti(item, exml, 'GcRewardMultiSpecificItems.xml')
end

local T_ = { PRD='Product', SBT='Substance', PCT='ProcTech', PCP='ProcProduct'}

local Rewards = {
	Pirate_Loot_Esay = {
		id = 'PIRAT_LOOT_EASY',
		choice = 'SelectAlways',
		rewardlist = {
			--id					Min		Max		%		function
			{id='LAND2',			n=60,	x=160,	c=5,	f=F_.Substance},
			{id='CAVE1',			n=70,	x=170,	c=5,	f=F_.Substance},
			{id='TRA_ALLOY1',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_ENERGY1',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_EXOTICS1',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='FOOD_CM_APPLE',	n=1,	x=1,	c=1,	f=F_.Product},
			-- {id='shield',			n=30,	x=40,	c=100,	f=F_.Shield},
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
			{id='WATER2',			n=90,	x=190,	c=5,	f=F_.Substance},
			{id='CAVE2',			n=100,	x=200,	c=5,	f=F_.Substance},
			{id='TRA_ALLOY2',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_ENERGY2',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='TRA_TECH2',		n=1,	x=3,	c=3,	f=F_.Product},
			{id='FOOD_ICE_GLITCH',	n=1,	x=1,	c=1,	f=F_.Product},
			-- {id='shield',			n=40,	x=50,	c=100,	f=F_.Shield},
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
			{id='WATER2',			n=120,	x=220,	c=5,	f=F_.Substance},
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
			{id='WATER2',			n=130,	x=230,	c=5,	f=F_.Substance},
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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Loot pirates loot.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.81,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PIRAT_LOOT_EASY'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PIRAT_LOOT_MED'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PIRATELOOT'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PIRAT_LOOT_HARD'},
				REMOVE				= 'SECTION'
			},
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Esay)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Med)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Reg)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot_Hard)
			}
		}
	}
}}}}
