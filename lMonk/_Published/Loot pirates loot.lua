--------------------------------------------------------------------------
local desc = [[
  Replace space pirates battle loot with a more varied list
]]------------------------------------------------------------------------

mod_version = 1.12

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
	Pirate_Loot = {
		id = 'PIRATELOOT',
		choice = 'SelectAlways',
		zeroseed = 'True',
		rewardlist = {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=3,	x=3,	c=100,	f=F_.Product},
			{id='SCRAP_GOODS',		n=1,	x=1,	c=100,	f=F_.Product},
			{id='SCRAP_TECH',		n=1,	x=1,	c=100,	f=F_.Product},
			{id='SCRAP_WEAP',		n=1,	x=1,	c=100,	f=F_.Product},
			{id='TRA_ALLOY3',		n=1,	x=3,	c=40,	f=F_.Product},
			{id='TRA_ENERGY3',		n=1,	x=3,	c=40,	f=F_.Product},
			{id='TRA_COMPONENT3',	n=1,	x=3,	c=40,	f=F_.Product},
			{id='TRA_MINERALS3',	n=1,	x=3,	c=40,	f=F_.Product},
			{id='AF_METAL',			n=100,	x=130,	c=30,	f=F_.Substance},
			{id=E_.DBI,				r=E_.U,			c=30,	f=F_.Procedural},
			{id=E_.DTC,				r=E_.U,			c=30,	f=F_.Procedural},
			{id=E_.NN,				n=100,	x=250,	c=100,	f=F_.Money},
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
				<Property name="Id" value="]]..rte.id..[[" />
				<Property name="List" value="GcRewardTableItemList.xml">
					<Property name="RewardChoice" value="]]..rte.choice..[[" />
					<Property name="OverrideZeroSeed" value="False" />
					]]..getRewardsList(rte.rewardlist)..[[
				</Property>
			</Property>
		]]
	end
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Loot pirates loot.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.87,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PIRATELOOT'},
				REMOVE				= 'SECTION'
			},
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= Rewards.BuildRewardTableEntry(Rewards.Pirate_Loot)
			}
		}
	}
}}}}
