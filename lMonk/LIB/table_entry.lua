-------------------------------------------------------------------------------
---	Build reality tables entries (VERSION: 0.82.6) ... by lMonk
---	Add new items into technology, proc-tech, product & basebuilding
---	* Not ALL properties of the tables' classes are included, some which
---  can be safely left with their deafult value are omited.
---	* Requires lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

--	InventoryType Enum
IT_={ PRD='Product', SBT='Substance', TCH='Technology' }

--	build the requirements table for tech and products
--	receives a table of {id, amount, product/substance} items
function GetRequirements(r)
	if not r then return nil end
	local reqs = {META = {'name', 'Requirements'}}
	for _,req in ipairs(r) do
		reqs[#reqs+1] = {
			META	= {'value', 'GcTechnologyRequirement.xml'},
			ID		= req.id,
			Amount	= req.n,							--	i
			Type	= {
				META	= {'Type', 'GcInventoryType.xml'},
				InventoryType = req.tp					--	Enum
			}
		}
	end
	return reqs
end

--	receives a table of {type, bonus, level} items
function TechStatBonus(tsb)
	return {
		META	= {'value', 'GcStatsBonus.xml'},
		Stat	= {
			META		= {'Stat', 'GcStatsTypes.xml'},
			StatsType	= tsb.st					--	Enum
		},
		Bonus	= tsb.bn,							--	f
		Level	= tsb.lv or 0						--	i 0-4
	}
end

--	Build a new entry for NMS_REALITY_GCTECHNOLOGYTABLE
--	sub lists (requirements and color) are entered in separate tables
function TechnologyEntry(tech)
	return {
		META			= {'value', 'GcTechnology.xml'},
		ID				= tech.id,
		Group			= tech.group,
		Name			= tech.name,
		NameLower		= tech.namelower,
		Subtitle		= {
			META	= {'Subtitle', 'VariableSizeString.xml'},
			Value		= tech.subtitle
		},
		Description		= {
			META	= {'Description', 'VariableSizeString.xml'},
			Value		= tech.description
		},
		Teach			= true,
		HintStart		= tech.hintstart,
		HintEnd			= tech.hintend,
		Icon			= {
			META	= {'Icon', 'TkTextureResource.xml'},
			Filename	= tech.icon,
		},
		Colour			= ColorData(tech.color, 'Colour'),				--	rgb or hex
		Level			= 1,
		Chargeable		= tech.chargeable,								--	b
		ChargeAmount	= tech.chargeamount	or 100,						--	i
		ChargeType		= {
			META	= {'ChargeType', 'GcRealitySubstanceCategory.xml'},
			SubstanceCategory = (tech.chargetype or 'Earth'),			--	E
		},
		ChargeBy		= StringArray(tech.chargeby, 'ChargeBy', 10),	--	Id
		ChargeMultiplier= tech.chargemultiply or 1,
		BuildFullyCharged= true,
		UsesAmmo		= tech.usesammo,								--	b
		AmmoId			= tech.ammoid,									--	Id
		PrimaryItem		= tech.primaryitem,								--	b
		Upgrade			= tech.upgrade,									--	b
		Core			= tech.core,									--	b
		Procedural		= tech.istemplate,								--	not a bug
		Category		= {
			META	= {'Category', 'GcTechnologyCategory.xml'},
			TechnologyCategory = tech.category,							--	Enum
		},
		Rarity			= {
			META	= {'Rarity', 'GcTechnologyRarity.xml'},
			TechnologyRarity = tech.rarity	or 'Normal',				--	Enum
		},
		Value			= tech.value		or 10,						--	i
		Requirements	= GetRequirements(tech.requirements),
		BaseStat		= {
			META	= {'BaseStat', 'GcStatsTypes.xml'},
			StatsType	= tech.basestat,								--	Enum
		},
		StatBonuses		= (
			function()
				local stats = {META = {'name', 'StatBonuses'}}
				for _,tsb in ipairs(tech.statbonuses) do
					stats[#stats+1] = TechStatBonus(tsb)
				end
				return stats
			end
		)(),
		RequiredTech	= tech.requiredtech,							--	Id
		FocusLocator	= tech.focuslocator,							--	??
		UpgradeColour	= ColorData(tech.upgradecolor, 'UpgradeColour'),--	rgb or hex
		LinkColour		= ColorData(tech.linkcolor, 'LinkColour'),		--	rgb or hex
		BaseValue		= 1,
		RequiredRank	= tech.requiredrank	or 1,
		FragmentCost	= tech.fragmentcost	or 1,
		TechShopRarity	= {
			META	= {'TechShopRarity', 'GcTechnologyRarity.xml'},
			TechnologyRarity = tech.rarity	or 'Normal',				--	E
		},
		WikiEnabled		= tech.wikienabled,								--	b
		IsTemplate		= tech.istemplate								--	b
	}
end

--	Build a new entry for NMS_REALITY_GCPRODUCTTABLE
--	sub lists (requirements and color) are entered in separate tables
function ProductEntry(prod)
	return {
		META	= {'value', 'GcProductData.xml'},
		ID			= prod.id,
		Name		= prod.name,
		NameLower	= prod.namelower,
		Subtitle	= {
			META	= {'Subtitle', 'VariableSizeString.xml'},
			Value	= prod.subtitle
		},
		Description	= {
			META	= {'Description', 'VariableSizeString.xml'},
			Value	= prod.description
		},
		DebrisFile	= {
			META	= {'DebrisFile', 'TkModelResource.xml'},
			Filename= 'MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN'
		},
		BaseValue	= prod.basevalue or 1,							--	i
		Icon		= {
			META	= {'Icon', 'TkTextureResource.xml'},
			Filename= prod.icon
		},
		Colour		= ColorData(prod.color, 'Colour'),				--	rgb or hex
		Category	= {
			META	= {'Category', 'GcRealitySubstanceCategory.xml'},
			SubstanceCategory	= prod.category	or 'Earth'			--	Enum
		},
		Type		= {
			META	= {'Type', 'GcProductCategory.xml'},
			ProductCategory		= prod.type		or 'Component'		--	Enum
		},
		Rarity		= {
			META	= {'Rarity', 'GcRarity.xml'},
			Rarity				= prod.rarity	or 'Common'			--	Enum
		},
		Legality	= {
			META	= {'Legality', 'GcLegality.xml'},
			Legality			= prod.legality	or 'Legal'			--	Enum
		},
		Consumable				= prod.consumable,					--	b
		ChargeValue				= prod.chargevalue,					--	i
		StackMultiplier			= prod.stackmultiplier	or 1,
		DefaultCraftAmount		= prod.craftamount		or 1,
		CraftAmountStepSize		= prod.craftstep		or 1,
		CraftAmountMultiplier	= prod.crafmultiplier	or 1,
		Requirements			= GetRequirements(prod.requirements),
		Cost		= {
			META	= {'Cost', 'GcItemPriceModifiers.xml'},
			SpaceStationMarkup	= prod.spacestationmarkup,
			LowPriceMod			= prod.lowpricemod		or -0.1,
			HighPriceMod		= prod.highpricemod		or 0.1,
			BuyBaseMarkup		= prod.buybasemarkup	or 0.2,
			BuyMarkupMod		= prod.buymarkupmod
		},
		RecipeCost				= prod.recipecost		or 1,
		SpecificChargeOnly		= prod.specificchargeonly,			--	b
		NormalisedValueOnWorld	= prod.normalisedvalueonworld,		--	f
		NormalisedValueOffWorld	= prod.normalisedvalueoffworld,		--	f
		TradeCategory= {
			META	= {'TradeCategory', 'GcTradeCategory.xml'},
			TradeCategory	= prod.tradecategory or 'None'			--	Enum
		},
		WikiCategory				= prod.wikicategory or 'NotEnabled',
		IsCraftable					= prod.iscraftable,				--	b
		DeploysInto					= prod.deploysinto,				--	Id
		EconomyInfluenceMultiplier	= prod.economyinfluence,		--	i
		PinObjective				= prod.pinobjective,			--	s
		PinObjectiveTip				= prod.pinobjectivetip,			--	s
		CookingIngredient			= prod.cookingingredient,		--	b
		CookingValue				= prod.cookingvalue,			--	i
		GoodForSelling				= prod.goodforselling,			--	b
		EggModifierIngredient		= prod.eggmodifier,				--	b
		IsTechbox					= prod.istechbox,				--	b
		CanSendToOtherPlayers		= prod.sendtoplayer				--	b
	}
end

--	receives a table of {type, min, max, weightcurve, always} items
function ProcTechStatLevel(tsl)
	return {
		META		= {'value', 'GcProceduralTechnologyStatLevel.xml'},
		Stat		= {
			META = {'Stat', 'GcStatsTypes.xml'},
			StatsType = tsl.st,							--	Enum
		},
		ValueMin	= tsl.mn,							--	f
		ValueMax	= tsl.mx,							--	f
		WeightingCurve = {
			META = {'WeightingCurve', 'GcWeightingCurve.xml'},
			WeightingCurve = tsl.wc or 'NoWeighting',	--	Enum
		},
		AlwaysChoose= tsl.ac							--	b
	}
end

--	Build a new entry for NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE
function ProcTechEntry(tech)
	return {
		META	= {'value', 'GcProceduralTechnologyData.xml'},
		ID				= tech.id,
		Template		= tech.template,
		Name			= tech.name,
		NameLower		= tech.namelower,
		Group			= tech.namelower, -- not a bug
		Subtitle		= tech.subtitle,
		Description		= tech.description,
		Colour			= ColorData(tech.color, 'Colour'),			--	rgb or hex
		Quality			= tech.quality or 'Normal',					--	Enum
		Category		= {
			META = {'Category', 'GcProceduralTechnologyCategory.xml'},
			ProceduralTechnologyCategory = tech.category,			--	Enum
		},
		NumStatsMin		= tech.numstatsmin,							--	i
		NumStatsMax		= tech.numstatsmax,							--	i
		WeightingCurve	= {
			META = {'WeightingCurve', 'GcWeightingCurve.xml'},
			WeightingCurve = tech.weightingcurve or 'NoWeighting',	--	Enum
		},
		UpgradeColour	= ColorData(tech.upgradecolor, 'UpgradeColour'),
		StatLevels		= (
			function()
				local stats = {META = {'name', 'StatLevels'}}
				for _,sl in ipairs(tech.statlevels) do
					stats[#stats+1] = ProcTechStatLevel(sl)
				end
				return stats
			end
		)()
	}
end

--	Build a new entry for BASEBUILDINGOBJECTSTABLE
function BaseBuildObjectEntry(bpart)
	local function getGroups(t)
		if not t then return nil end
		local T = {META = {'name', 'Groups'}}
		for _,v in ipairs(t) do
			T[#T+1] = {
				META	= {'value', 'GcBaseBuildingEntryGroup.xml'},
				Group			= v.group,
				SubGroupName	= v.subname
			}
		end
		return T
	end
	return {
		META = {'value', 'GcBaseBuildingEntry.xml'},
		ID							= bpart.id,
		Style						= {
			META		= {'Style', 'GcBaseBuildingPartStyle.xml'},
			Style		= bpart.style or 'None'						--	Enum
		},
		PlacementScene				= {
			META		= {'PlacementScene', 'TkModelResource.xml'},
			Filename	= bpart.placementscene
		},
		DecorationType				= {
			META		= {'DecorationType', 'GcBaseBuildingObjectDecorationTypes.xml'},
			BaseBuildingDecorationType = bpart.decorationtype or 'Normal'--	Enum
		},
		IsPlaceable					= bpart.isplaceable,			--	b
		IsDecoration				= bpart.isdecoration,			--	b
		BuildableOnPlanetBase 		= bpart.onplanetbase,			--	b
		BuildableOnFreighter		= bpart.onfreighter,			--	b
		BuildableOnPlanet			= bpart.onplanet,				--	b
		BuildableUnderwater			= true,
		BuildableAboveWater			= true,
		CheckPlayerCollision		= false,
		CanRotate3D					= true,
		CanScale					= true,
		Groups						= getGroups(bpart.groups),
		StorageContainerIndex 		= -1,							--	i
		CanChangeColour				= true,
		CanChangeMaterial			= true,
		CanPickUp					= bpart.canpickup,				--	b
		ShowInBuildMenu				= true,
		CompositePartObjectIDs		= StringArray(bpart.compositeparts, 'CompositePartObjectIDs', 10),
		FamilyIDs					= StringArray(bpart.familyids, 'FamilyIDs', 10),
		BuildEffectAccelerator		= 1,							--	i
		RemovesAttachedDecoration	= true,
		RemovesWhenUnsnapped		= false,
		EditsTerrain				= bpart.editsterrain,			--	b
		BaseTerrainEditShape		= 'Cube',						--	Enum
		MinimumDeleteDistance		= 1,							--	i
		IsSealed					= bpart.issealed,				--	b
		CloseMenuAfterBuild			= bpart.closemenuafterbuild,
		LinkGridData				= {
			META = {'LinkGridData', 'GcBaseLinkGridData.xml'},
			Connection = {
				META	= {'Connection', 'GcBaseLinkGridConnectionData.xml'},
				Network	= {
					META = {'Network', 'GcLinkNetworkTypes.xml'},
					LinkNetworkType = bpart.linknetwork or 'Power'	--	Enum
				},
				NetworkSubGroup		= bpart.networksubgroup,		--	i
				NetworkMask			= bpart.networkmask,			--	i
				ConnectionDistance	= 0.1							--	f
			},
			Rate					= bpart.rate,					--	f
			Storage					= bpart.storage					--	i
		},
		ShowGhosts					= bpart.showghosts,				--	b
		GhostsCountOverride			= 0,
		SnappingDistanceOverride	= 0,
		RegionSpawnLOD				= 1
	}
end

--	Build a new entry for BASEBUILDINGPARTSTABLE
function BaseBuildPartEntry(bpart)
	local function getStyleModels(t)
		local T = {META = {'name', 'StyleModels'}}
		for _,src in ipairs(t) do
			T[#T+1] = {
				META = {'value', 'GcBaseBuildingPartStyleModel.xml'},
				Style = {
					META = {'Style', 'GcBaseBuildingPartStyle.xml'},
					Style = src.style or 'None',					--	Enum
				},
				Model = {
					META = {'Model', 'TkModelResource.xml'},
					Filename = src.act,
				},
				Inactive = {
					META = {'Inactive', 'TkModelResource.xml'},
					Filename = src.lod
				}
			}
		end
		return T
	end
	return {
		META	= {'value', 'GcBaseBuildingPart.xml'},
		ID		= bpart.id,
		StyleModels = getStyleModels(bpart.stylemodels)
	}
end

--	Build a new entry for NMS_REALITY_GCRECIPETABLE
function RefinerRecipeEntry(recipe)
	local function addIngredient(elem, result)
		return {
			META	= {result and 'Result' or 'value', 'GcRefinerRecipeElement.xml'},
			Id		= elem.id,
			Amount	= elem.n,										--	i
			Type	= {
				META			= {'Type', 'GcInventoryType.xml'},
				InventoryType	= elem.tp							--	Enum
			}
		}
	end
	local t_ings = {META = {'name', 'Ingredients'}}
	for _,elem in ipairs(recipe.ingredients) do
		t_ings[#t_ings+1] = addIngredient(elem)
	end
	return {
		META	= {'value', 'GcRefinerRecipe.xml'},
		Id			= recipe.id,
		RecipeType	= recipe.name,									--	s
		RecipeName	= recipe.name,									--	s
		TimeToMake	= recipe.make,									--	i
		Cooking		= recipe.cook,									--	b
		Result		= addIngredient(recipe.result, true),
		Ingredients	= t_ings
	}
end
