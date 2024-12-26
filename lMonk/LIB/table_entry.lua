-------------------------------------------------------------------------------
---	Reality tables entries (VERSION: 0.85.2) ... by lMonk
---	Build full table entries, conversion-ready with ToExml; For technology,
--	 proc-tech, product, recipe, basebuild objects and basebuild parts.
---	* Not ALL properties of the tables' classes are included. Some properties
---	 who are unused/deprecated/can stay with a default value are omitted.
---	* Requires _lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

IT_={--	InventoryType Enum
	SBT='Substance',	TCH='Technology',	PRD='Product'
}

--	build the requirements table for tech and products
--	receives a table of {id, amount, product/substance} items
function GetRequirements(r)
	if not r then return nil end
	local reqs = {meta = {'name', 'Requirements'}}
	for _,req in ipairs(r) do
		reqs[#reqs+1] = {
			meta	= {'value', 'GcTechnologyRequirement.xml'},
			ID		= req.id,
			Amount	= req.n,							--	i
			Type	= {
				meta	= {'Type', 'GcInventoryType.xml'},
				InventoryType = req.tp					--	Enum
			}
		}
	end
	return reqs
end

--	receives a table of {type, bonus, level} items
function TechStatBonus(tsb)
	return {
		meta	= {'value', 'GcStatsBonus.xml'},
		Stat	= {
			meta		= {'Stat', 'GcStatsTypes.xml'},
			StatsType	= tsb.st					--	Enum
		},
		Bonus	= tsb.bn,							--	f
		Level	= tsb.lv or 0						--	i 0-4
	}
end

--	Build an entry for NMS_REALITY_GCTECHNOLOGYTABLE
--	sub lists (requirements and color) are entered in separate tables
function TechnologyEntry(items)
	local function techEntry(tech)
		return {
			meta			= {'value', 'GcTechnology.xml'},
			ID				= tech.id,
			Group			= tech.group,									--	s
			Name			= tech.name,									--	s
			NameLower		= tech.namelower,								--	s
			Subtitle		= tech.subtitle,								--	s
			Description		= tech.description,								--	s
			Teach			= true,
			HintStart		= tech.hintstart,
			HintEnd			= tech.hintend,
			Icon			= {
				meta	= {'Icon', 'TkTextureResource.xml'},
				Filename	= tech.icon,									--	s
			},
			Colour			= ColorData(tech.color, 'Colour'),				--	rgb/hex
			Level			= 1,
			Chargeable		= tech.chargeable,								--	b
			ChargeAmount	= tech.chargeamount	or 100,						--	i
			ChargeType		= {
				meta	= {'ChargeType', 'GcRealitySubstanceCategory.xml'},
				SubstanceCategory = (tech.chargetype or 'Earth'),			--	E
			},
			ChargeBy		= StringArray(tech.chargeby, 'ChargeBy'),		--	Id
			ChargeMultiplier= tech.chargemultiply or 1,
			BuildFullyCharged= true,
			UsesAmmo		= tech.usesammo,								--	b
			AmmoId			= tech.ammoid,									--	Id
			PrimaryItem		= tech.primaryitem,								--	b
			Upgrade			= tech.upgrade,									--	b
			Core			= tech.core,									--	b
			Procedural		= tech.istemplate,								--	not a bug
			Category		= {
				meta	= {'Category', 'GcTechnologyCategory.xml'},
				TechnologyCategory = tech.category,							--	Enum
			},
			Rarity			= {
				meta	= {'Rarity', 'GcTechnologyRarity.xml'},
				TechnologyRarity = tech.rarity	or 'Normal',				--	Enum
			},
			Value			= tech.value		or 10,						--	i
			Requirements	= GetRequirements(tech.requirements),
			BaseStat		= {
				meta	= {'BaseStat', 'GcStatsTypes.xml'},
				StatsType	= tech.basestat,								--	Enum
			},
			StatBonuses		= (
				function()
					local stats = {meta = {'name', 'StatBonuses'}}
					for _,tsb in ipairs(tech.statbonuses) do
						stats[#stats+1] = TechStatBonus(tsb)
					end
					return stats
				end
			)(),
			RequiredTech	= tech.requiredtech,							--	Id
			FocusLocator	= tech.focuslocator,							--	??
			UpgradeColour	= ColorData(tech.upgradecolor, 'UpgradeColour'),--	rgb/hex
			LinkColour		= ColorData(tech.linkcolor, 'LinkColour'),		--	rgb/hex
			BaseValue		= 1,
			RequiredRank	= tech.requiredrank	or 1,
			FragmentCost	= tech.fragmentcost	or 1,
			TechShopRarity	= {
				meta	= {'TechShopRarity', 'GcTechnologyRarity.xml'},
				TechnologyRarity = tech.rarity	or 'Normal',				--	E
			},
			WikiEnabled		= tech.wikienabled,								--	b
			IsTemplate		= tech.istemplate								--	b
		}
	end
	return processOnenAll(items, techEntry)
end

--	Build an entry for NMS_REALITY_GCPRODUCTTABLE
--	sub lists (requirements and color) are entered in separate tables
function ProductEntry(items)
	local function prodEntry(prod)
		return {
			meta	= {'value', 'GcProductData.xml'},
			ID			= prod.id,
			Name		= prod.name,									--	s
			NameLower	= prod.namelower,								--	s
			Subtitle	= prod.subtitle,								--	s
			Description	= prod.description,								--	s
			DebrisFile	= {
				meta	= {'DebrisFile', 'TkModelResource.xml'},
				Filename= 'MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN'
			},
			BaseValue	= prod.basevalue or 1,							--	i
			Icon		= {
				meta	= {'Icon', 'TkTextureResource.xml'},
				Filename= prod.icon										--	s
			},
			Colour		= ColorData(prod.color, 'Colour'),				--	rgb/hex
			Category	= {
				meta	= {'Category', 'GcRealitySubstanceCategory.xml'},
				SubstanceCategory	= prod.category	or 'Earth'			--	Enum
			},
			Type		= {
				meta	= {'Type', 'GcProductCategory.xml'},
				ProductCategory		= prod.type		or 'Component'		--	Enum
			},
			Rarity		= {
				meta	= {'Rarity', 'GcRarity.xml'},
				Rarity				= prod.rarity	or 'Common'			--	Enum
			},
			Legality	= {
				meta	= {'Legality', 'GcLegality.xml'},
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
				meta	= {'Cost', 'GcItemPriceModifiers.xml'},
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
				meta	= {'TradeCategory', 'GcTradeCategory.xml'},
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
	return processOnenAll(items, prodEntry)
end

--	receives a table of {type, min, max, weightcurve, always} items
function ProcTechStatLevel(tsl)
	return {
		meta		= {'value', 'GcProceduralTechnologyStatLevel.xml'},
		Stat		= {
			meta = {'Stat', 'GcStatsTypes.xml'},
			StatsType = tsl.st,							--	Enum
		},
		ValueMin	= tsl.mn and tsl.mn or tsl.mx,		--	f
		ValueMax	= tsl.mx,							--	f
		WeightingCurve = {
			meta = {'WeightingCurve', 'GcWeightingCurve.xml'},
			WeightingCurve = tsl.wc or 'NoWeighting',	--	Enum
		},
		AlwaysChoose= tsl.ac							--	b
	}
end

--	Build an entry for NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE
function ProcTechEntry(items)
	local function proctechEntry(tech)
		return {
			meta	= {'value', 'GcProceduralTechnologyData.xml'},
			ID				= tech.id,
			Template		= tech.template,
			Name			= tech.name,
			NameLower		= tech.namelower,
			Group			= tech.namelower, -- not a bug
			Subtitle		= tech.subtitle,
			Description		= tech.description,
			Colour			= ColorData(tech.color, 'Colour'),			--	rgb/hex
			Quality			= tech.quality or 'Normal',					--	Enum
			Category		= {
				meta = {'Category', 'GcProceduralTechnologyCategory.xml'},
				ProceduralTechnologyCategory = tech.category,			--	Enum
			},
			NumStatsMin		= tech.numstatsmin,							--	i
			NumStatsMax		= tech.numstatsmax,							--	i
			WeightingCurve	= {
				meta = {'WeightingCurve', 'GcWeightingCurve.xml'},
				WeightingCurve = tech.weightingcurve or 'NoWeighting',	--	Enum
			},
			UpgradeColour	= ColorData(tech.upgradecolor, 'UpgradeColour'),
			StatLevels		= (
				function()
					local stats = {meta = {'name', 'StatLevels'}}
					for _,sl in ipairs(tech.statlevels) do
						stats[#stats+1] = ProcTechStatLevel(sl)
					end
					return stats
				end
			)()
		}
	end
	return processOnenAll(items, proctechEntry)
end

--	Build an entry for BASEBUILDINGOBJECTSTABLE
function BaseBuildObjectEntry(items)
	local function baseObjectEntry(bpart)
		return {
			meta = {'value', 'GcBaseBuildingEntry.xml'},
			ID							= bpart.id,
			Style						= {
				meta		= {'Style', 'GcBaseBuildingPartStyle.xml'},
				Style		= bpart.style or 'None'						--	Enum
			},
			PlacementScene				= {
				meta		= {'PlacementScene', 'TkModelResource.xml'},
				Filename	= bpart.placementscene
			},
			DecorationType				= {
				meta		= {'DecorationType', 'GcBaseBuildingObjectDecorationTypes.xml'},
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
			Groups						= (
				function()
					if not bpart.groups then return nil end
					local T = {meta = {'name', 'Groups'}}
					for _,v in ipairs(bpart.groups) do
						T[#T+1] = {
							meta	= {'value', 'GcBaseBuildingEntryGroup.xml'},
							Group			= v.group,
							SubGroupName	= v.subname
						}
					end
					return T
				end
			)(),
			StorageContainerIndex 		= -1,							--	i
			CanChangeColour				= true,
			CanChangeMaterial			= true,
			CanPickUp					= bpart.canpickup,				--	b
			ShowInBuildMenu				= true,
			CompositePartObjectIDs		= StringArray(bpart.compositeparts, 'CompositePartObjectIDs'),
			FamilyIDs					= StringArray(bpart.familyids, 'FamilyIDs'),
			BuildEffectAccelerator		= 1,							--	i
			RemovesAttachedDecoration	= true,
			RemovesWhenUnsnapped		= false,
			EditsTerrain				= bpart.editsterrain,			--	b
			BaseTerrainEditShape		= 'Cube',						--	Enum
			MinimumDeleteDistance		= 1,							--	i
			IsSealed					= bpart.issealed,				--	b
			CloseMenuAfterBuild			= bpart.closemenuafterbuild,
			LinkGridData				= {
				meta = {'LinkGridData', 'GcBaseLinkGridData.xml'},
				Connection = {
					meta	= {'Connection', 'GcBaseLinkGridConnectionData.xml'},
					Network	= {
						meta = {'Network', 'GcLinkNetworkTypes.xml'},
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
	return processOnenAll(items, baseObjectEntry)
end

--	Build an entry for BASEBUILDINGPARTSTABLE
function BaseBuildPartEntry(items)
	local function basePartEntry(bpart)
		local T = {
			meta	= {'value', 'GcBaseBuildingPart.xml'},
			ID		= bpart.id,
			StyleModels = {meta = {'name', 'StyleModels'}}
		}
		for _,src in ipairs(bpart.stylemodels) do
			T.StyleModels[#T.StyleModels+1] = {
				meta = {'value', 'GcBaseBuildingPartStyleModel.xml'},
				Style = {
					meta = {'Style', 'GcBaseBuildingPartStyle.xml'},
					Style = src.style or 'None',						--	Enum
				},
				Model = {
					meta = {'Model', 'TkModelResource.xml'},
					Filename = src.act,
				},
				Inactive = {
					meta = {'Inactive', 'TkModelResource.xml'},
					Filename = src.lod
				}
			}
		end
		return T
	end
	return processOnenAll(items, basePartEntry)
end

--	Build an entry for NMS_REALITY_GCRECIPETABLE
function RefinerRecipeEntry(items)
	local function addIngredient(elem, result)
		return {
			meta	= {result and 'Result' or 'value', 'GcRefinerRecipeElement.xml'},
			Id		= elem.id,
			Amount	= elem.n,										--	i
			Type	= {
				meta			= {'Type', 'GcInventoryType.xml'},
				InventoryType	= elem.tp							--	Enum
			}
		}
	end
	local function refinerecipeEntry(recipe)
		local igrds = {meta = {'name', 'Ingredients'}}
		for _,elem in ipairs(recipe.ingredients) do
			igrds[#igrds+1] = addIngredient(elem)
		end
		return {
			meta	= {'value', 'GcRefinerRecipe.xml'},
			Id			= recipe.id,
			RecipeType	= recipe.name,									--	s
			RecipeName	= recipe.name,									--	s
			TimeToMake	= recipe.make,									--	i
			Cooking		= recipe.cook,									--	b
			Result		= addIngredient(recipe.result, true),
			Ingredients	= igrds
		}
	end	
	return processOnenAll(items, refinerecipeEntry)
end
