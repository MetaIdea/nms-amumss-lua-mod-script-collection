--------------------------------------------------------------------------
local desc = [[
  Replace freighter after-warp-battle reward with better a selection
  with something different from each race
  * (the lists are non-random because a bug causes them to misbehave)
]]------------------------------------------------------------------------

Mod_Version = 1.23

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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Freighter Defense Rewards.'..Mod_Version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= Rewards.BuildRewardTableEntry(Rewards.FreightSave_Explorer)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightSave_Trader)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightSave_Warrior)
			}
		}
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
