--------------------------------------------------------------------------
local desc = [[
  Replace freighter after-warp-battle reward with better a selection
  with something different from each race
  * (the lists are non-random because a bug causes them to misbehave)
]]------------------------------------------------------------------------

Mod_Version = 1.2

local F_ = {}
F_.TableItemSingle = function(item, data, reward)
	local minmax = ''
	if item.x ~= nil then
		minmax = string.format([[
			<Property name="AmountMin" value="%s" />
			<Property name="AmountMin" value="%s" />]],
			item.n, item.x
		)
	end
	return string.format([[
		<Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="%s" />
			<Property name="Reward" value="%s">
				%s%s
			</Property>
			<Property name="LabelID" value="" />
		</Property>]],
		item.c,	-- chance
		reward,
		data,
		minmax
	)
end
F_.Procedural = function(item)
	local exml = string.format([[
		<Property name="Type" value="GcProceduralProductCategory.xml">
			<Property name="ProceduralProductCategory" value="%s"/>
		</Property>
		<Property name="OSDMessage" value=""/>
		<Property name="SubIfPlayerAlreadyHasOne" value="False"/>
		<Property name="OverrideRarity" value="False"/>
		<Property name="Rarity" value="GcRarity.xml">
			<Property name="Rarity" value="%s"/>
		</Property>]],
		item.id,
		item.r or 'Common'
	)
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
		return string.format([[
			<Property value="GcRewardTableItem.xml">
				<Property name="PercentageChance" value="%s" />
				<Property name="Reward" value="%s">
					%s
				</Property>
				<Property name="LabelID" value="" />
			</Property>]],
			itc.c,
			reward,
			data
		)
	end
	local exml = '<Property name="Items">'
	for i=1, #item do
		exml = string.format([[%s
			<Property value="GcMultiSpecificItemEntry.xml">
				<Property name="MultiItemRewardType" value="%s" />
				<Property name="Id" value="%s" />
				<Property name="Amount" value="%s" />
				<Property name="ProcTechGroup" value="" />
				<Property name="ProcTechQuality" value="3" />
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
			item[i].pid or 'Loot',	-- ProceduralProductCategory
			item[i].r or 'Common'	-- Rarity
		)
	end
	exml = exml..'</Property>'
	return tableItemMulti(item, exml, 'GcRewardMultiSpecificItems.xml')
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
}

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
				{pid=E_.SPB, r=E_.U, 		t=E_.PRP},
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
				{pid=E_.SLV, r=E_.U,		t=E_.PRP},
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
				{pid=E_.DTC, r=E_.R,		t=E_.PRP},
				c=100,
				f=F_.ItemList
			},
			{id='nanites', n=315, x=335, c=100, f=F_.Nanites},
		}
	},
	BuildRewardTableEntry = function(rte)
		local function getRewardsList(lst)
			local exml = '<Property name="List">'
			for _,v in pairs(lst) do exml = exml..v.f(v) end
			return exml..'</Property>'
		end
		return string.format([[
			<Property value="GcGenericRewardTableEntry.xml">
				<Property name="Id" value="%s" />
				<Property name="List" value="GcRewardTableItemList.xml">
					<Property name="RewardChoice" value="%s" />
					<Property name="OverrideZeroSeed" value="False" />
					%s
				</Property>
			</Property>]],
			rte.id,
			rte.choice,
			getRewardsList(rte.rewardlist)
		)
	end
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Freighter Defense Rewards.'..Mod_Version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.84,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= Rewards.BuildRewardTableEntry(Rewards.FreightLoot_Explorer)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightLoot_Trader)
									  ..
									  Rewards.BuildRewardTableEntry(Rewards.FreightLoot_Warrior)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Warriors'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_W'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Explorers'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_E'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Traders'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_T'}
				}
			}
		}
	}
}}}}
