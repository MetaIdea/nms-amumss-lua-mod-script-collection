--------------------------------------------------------------------------
---	rewards snippets
--------------------------------------------------------------------------

E_ = {
	---	RewardChoice Enum
	ALL   =	'GiveAll',			ALL_S =	'GiveAllSilent',
	ONE   =	'SelectAlways',		ONE_S =	'SelectAlwaysSilent',
	-- WIN   =	'SelectFromSuccess',WIN_S =	'SelectFromSuccessSilent',
	-- TRY   =	'TryEach',			TRY_ONE='TryFirst_ThenSelectAlways',

	---	ProceduralProductCategory Enum
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

	---	MultiItemRewardType Enum
	PDT='Product',		SBT='Substance',	PRP='ProcProduct',
	-- PRT='ProcTech', not supported

	---	Rarity Enum
	C='Common',			U='Uncommon',		R='Rare',

	---	Currency Enum
	UT='Units',			NN='Nanites',		HG='Specials', -- quicksilver

	---	FrigateFlybyType Enum
	SF='SingleShip',	GF='AmbientGroup',	SW='DeepSpaceCommon'
}

function R_TableItem(item, reward, data)
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

function R_MultiItem(item)
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

function R_Procedural(item)
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

function R_Substance(item)
	return R_TableItem(
		item,
		'GcRewardSpecificSubstance.xml',
		[[
			<Property name="ID" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end

function R_Product(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProduct.xml',
		[[
			<Property name="ID" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end

function R_ProductSysList(item)
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

function R_ProductAllList(item)
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

function R_Technology(item)
	return R_TableItem(
		item,
		'GcRewardSpecificTech.xml',
		[[
			<Property name="TechId" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end

function R_ProductRecipe(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProductRecipe.xml',
		[[
			<Property name="ID" value="]]..item.id..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end

function R_Word(item)
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

function R_Money(item)
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

function R_Jetboost(item)
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

function R_Stamina(item)
	return R_TableItem(
		item,
		'GcRewardFreeStamina.xml',
		[[<Property name="Duration" value="]]..(10 * item.t)..[["/>]]
	)
end

function R_Hazard(item)
	return R_TableItem(
		item,
		'GcRewardRefreshHazProt.xml',
		[[
			<Property name="Amount" value="-]]..item.z..[["/>
			<Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end

function R_Shield(item)
	return R_TableItem(item, 'GcRewardShield.xml', '')
end

function R_Health(item)
	return R_TableItem(
		item,
		'GcRewardHealth.xml',
		[[<Property name="SilentUnlessShieldAtMax" value="]]..bool(item.s)..[["/>]]
	)
end

function R_Wanted(item)
	return R_TableItem(
		item,
		'GcRewardWantedLevel.xml',
		[[<Property name="Level" value="]]..(item.n or 0)..[["/>]]
	)
end

function R_NoSentinels(item)
	return R_TableItem(
		item,
		'GcRewardDisableSentinels.xml',
		[[
			<Property name="Duration" value="]]..(item.t or -1)..[["/>
			<Property name="WantedBarMessage" value="UI_SENTINELS_DISABLED_MSG"/>
		]]
	)
end

function R_FlyBy(item)
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

function R_RewardTableEntry(rte)
	local exml = {}
	exml[1] = '<Property name="List">'
	for _,rwd in pairs(rte.rewardlist) do table.insert(exml, rwd.f(rwd)) end
	table.insert(exml, '</Property>')
	return [[
	<Property value="GcGenericRewardTableEntry.xml">
		<Property name="Id" value="]]..rte.id..[["/>
		<Property name="List" value="GcRewardTableItemList.xml">
			<Property name="RewardChoice" value="]]..rte.choice..[["/>
			<Property name="OverrideZeroSeed" value="]]..bool(rte.zeroseed)..[["/>
			]]..table.concat(exml)..[[
		</Property>
	</Property>]]
end
