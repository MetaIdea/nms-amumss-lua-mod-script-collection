-------------------------------------------------------------------------------
---	Construct reward table entries (VERSION: 0.82.4) ... by lMonk
---	* Requires lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

---	RewardChoice Enum
RC_={	ALL   =	'GiveAll',			ALL_S =	'GiveAllSilent',
		ONE   =	'SelectAlways',		ONE_S =	'SelectAlwaysSilent',
		WIN   =	'SelectFromSuccess',WIN_S =	'SelectFromSuccessSilent',
		TRY   =	'TryEach',			TRY_ONE='TryFirst_ThenSelectAlways'
}
---	ProceduralProductCategory Enum
PC_={	LOT='Loot',					SLV='Salvage',
		BIO='BioSample',			BNS='Bones',
		FOS='Fossil',
		FRH='FreighterTechHyp',		FRS='FreighterTechSpeed',
		FRF='FreighterTechFuel',	FRT='FreighterTechTrade',
		FRC='FreighterTechCombat',	FRM='FreighterTechMine',
		FRE='FreighterTechExp',
		DBI='DismantleBio',			DTC='DismantleTech',
		DDT='DismantleData',
		SLT='SeaLoot',				SHR='SeaHorror',
		SPB='SpaceBones',			SPH='SpaceHorror'
}
---	InventoryType Enum
IT_={	PRD='Product',		SBT='Substance',	TCH='Technology' }
---	AlienRace Enum
AR_={	TRD='Traders',		WAR='Warriors',		XPR='Explorers',
		RBT='Robots',		ATL='Atlas',		DPL='Diplomats',
		XTC='Exotics',		NON='None',			BLD='Builders'
}
---	Currency Enum
CU_={	UT='Units',			NN='Nanites',		HG='Specials' }

---	MultiItemRewardType Enum
RM_={	PRD='Product',		SBT='Substance',	PRP='ProcProduct' }

---	Rarity Enum
RT_={	C='Common',			U='Uncommon',		R='Rare' }

---	FrigateFlybyType Enum
FT_={	S='SingleShip',		G='AmbientGroup',	W='DeepSpaceCommon' }

function R_RewardTableEntry(rte)
	-- accepts an external list, if not found builds a new list
	if not rte.list then
		rte.list = {}
		for _,rwd in pairs(rte.rewardlist) do
			rte.list[#rte.list+1] = rwd.f(rwd)
		end
	end
	rte.list.META = {'name', 'List'}
	return {
		META = {'value', 'GcGenericRewardTableEntry.xml'},
		Id	 = rte.id,
		List = {
			META = {'List', 'GcRewardTableItemList.xml'},
			RewardChoice	= rte.choice or RC_.ONE,
			OverrideZeroSeed= rte.zeroseed,
			ItemList		= rte.list
		}
	}
end

function R_TableItem(item, reward_type, props)
	props.META		= {'Reward', reward_type}
	props.AmountMin	= item.mn or item.mx
	props.AmountMax	= item.mx
	return {
		META	= {'value', 'GcRewardTableItem.xml'},
		PercentageChance	= item.c or 1,
		Reward				= props
	}
end

function R_MultiItem(item)
	local multies = {META = {'name', 'Items'}}
	for _,itm in ipairs(item) do
		multies[#multies+1] = {
			META = {'value', 'GcMultiSpecificItemEntry.xml'},
			MultiItemRewardType	= itm.tp,
			Id					= itm.id,
			Amount				= itm.mn or 1,
			ProcTechGroup		= itm.tg,
			ProcTechQuality		= itm.qt,
			IllegalProcTech		= itm.lgl,
			ProcProdType		= {
				META = {'ProcProdType', 'GcProceduralProductCategory.xml'},
				ProceduralProductCategory = itm.pid or 'Loot'
			}
		}
	end
	return R_TableItem(
		item,
		'GcRewardMultiSpecificItems.xml',
		{
			Silent	= item.sl,
			Items	= multies
		}
	)
end

function R_Procedural(item)
	return R_TableItem(
		item,
		'GcRewardProceduralProduct.xml',
		{
			Type	= {
				META = {'Type', 'GcProceduralProductCategory.xml'},
				ProceduralProductCategory = item.id
			},
			Rarity	= {
				META = {'Rarity', 'GcRarity.xml'},
				Rarity = item.rt or 'Common'
			},
			OverrideRarity	= item.ort
		}
	)
end

function R_Substance(item)
	return R_TableItem(
		item,
		'GcRewardSpecificSubstance.xml',
		{
			ID		= item.id,
			Silent	= item.sl
		}
	)
end

function R_Product(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProduct.xml',
		{
			ID		= item.id,
			Silent	= item.sl
		}
	)
end

function R_ProductSysList(item)
	return R_TableItem(
		item,
		'GcRewardSystemSpecificProductFromList.xml',
		{ ProductList = StringArray(item.id, 'ProductList', 10) }
	)
end

function R_ProductAllList(item)
	return R_TableItem(
		item,
		'GcRewardMultiSpecificProducts.xml',
		{ ProductIds = StringArray(item.id, 'ProductIds', 10) }
	)
end

function R_Technology(item)
	return R_TableItem(
		item,
		'GcRewardSpecificTech.xml',
		{
			TechId	= item.id,
			Silent	= item.sl
		}
	)
end

function R_ProductRecipe(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProductRecipe.xml',
		{
			ID		= item.id,
			Silent	= item.sl
		}
	)
end

function R_Word(item)
	return R_TableItem(
		item,
		'GcRewardTeachWord.xml',
		{
			Race = {
				META		= {'Race', 'GcAlienRace.xml'},
				AlienRace	= item.id
			}
		}
	)
end

function R_Money(item)
	return R_TableItem(
		item,
		'GcRewardMoney.xml',
		{
			Currency = {
				META		= {'Currency', 'GcCurrency.xml'},
				Currency	= item.id
			}
		}
	)
end

function R_Jetboost(item)
	return R_TableItem(
		item,
		'GcRewardJetpackBoost.xml',
		{
			Duration		= (10 *  item.tm),
			ForwardBoost	= (4.2 * item.pw),
			UpBoost			= (0.9 * item.pw),
			IgnitionBoost	= (1.6 * item.pw)
		}
	)
end

function R_Stamina(item)
	return R_TableItem(
		item,
		'GcRewardFreeStamina.xml',
		{ Duration		= (10 * item.tm) }
	)
end

function R_Hazard(item)
	return R_TableItem(
		item,
		'GcRewardRefreshHazProt.xml',
		{
			Amount	= item.hz,
			Silent	= item.sl
		}
	)
end

function R_Shield(item)
	return R_TableItem(item, 'GcRewardShield.xml', {})
end

function R_Health(item)
	return R_TableItem(
		item,
		'GcRewardHealth.xml',
		{ SilentUnlessShieldAtMax = item.sl }
	)
end

function R_Wanted(item)
	return R_TableItem(
		item,
		'GcRewardWantedLevel.xml',
		{ Level	= item.lvl or 0 }
	)
end

function R_NoSentinels(item)
	return R_TableItem(
		item,
		'GcRewardDisableSentinels.xml',
		{
			Duration			= item.tm or -1,
			WantedBarMessage	= 'UI_SENTINELS_DISABLED_MSG'
		}
	)
end

function R_Storm(item)
	return R_TableItem(
		item,
		'GcRewardTriggerStorm.xml',
		{ Duration			= item.tm or -1 }
	)
end

function R_FlyBy(item)
	return R_TableItem(
		item,
		'GcRewardFrigateFlyby.xml',
		{
			FlybyType = {
				META	= {'FlybyType', 'GcFrigateFlybyType.xml'},
				FrigateFlybyType = item.tp or FT_.W
			},
			AppearanceDelay	= item.tm or 3,
			CameraShake		= 'FRG_FLYBY_PREP'
		}
	)
end

function R_UnlockTree(item)
	return R_TableItem(
		item,
		'GcRewardOpenUnlockTree.xml',
		{
			TreeToOpen = {
				META	= {'TreeToOpen', 'GcUnlockableItemTreeGroups.xml'},
				UnlockableItemTree = item.id
			}
		}
	)
end

--	for tech inventory only. used by ship & tool rewards
local function InventoryContainer(inventory)
	if not inventory then return nil end
	local T = {META = {'name', 'Slots'}}
	for _,itm in ipairs(inventory) do
		T[#T+1] = {
			META	= {'value', 'GcInventoryElement.xml'},
			Id				= itm.id,
			Amount			= itm.itype and itm.amount or (itm.amount and 1000 or -1),
			MaxAmount		= itm.amount and 10000 or 100,
			FullyInstalled	= true,
			Type			= {
				META	= {'Type', 'GcInventoryType.xml'},
				InventoryType	= itm.itype or IT_.TCH
			},
			Index	= {
				META	= {'Index', 'GcInventoryIndex.xml'},
				X		= -1,
				Y		= -1
			}
		}
	end
	return T
end

function R_Ship(item)
	return R_TableItem(
		item,
		'GcRewardSpecificShip.xml',
		{
			ShipResource = {
				META	= {'ShipResource', 'GcResourceElement.xml'},
				Filename = item.filename,
				Seed	= {
					META		= {'Seed', 'GcSeed.xml'},
					Seed			= tonumber(item.seed),
					UseSeedValue	= true
				}
			},
			ShipLayout	= {
				META	= {'ShipLayout', 'GcInventoryLayout.xml'},
				Slots	= item.slots or 50
			},
			{
				META	= {'ShipInventory', 'GcInventoryContainer.xml'},
				Inventory	= InventoryContainer(item.inventory),
				Class		= {
					META	= {'Class', 'GcInventoryClass.xml'},
					InventoryClass	= item.class and item.class:upper() or nil
				},
				BaseStatValues	= {
					META	= {'name', 'BaseStatValues'},
					{
						META		= {'value', 'GcInventoryBaseStatEntry.xml'},
						Value		= 1,
						BaseStatID	= (
							function()
								if item.filename:find('BIOSHIP')  then return 'ALIEN_SHIP' end
								if item.filename:find('SENTINEL') then return 'ROBOT_SHIP' end
								return nil
							end
						)()
					}
				}
			},
			ShipType	= {
				META	= {'ShipType', 'GcSpaceshipClasses.xml'},
				ShipClass	= item.modeltype
			},
			NameOverride = item.name,
			IsRewardShip = true
		}
	)
end

function R_Multitool(item)
	return R_TableItem(
		item,
		'GcRewardSpecificWeapon.xml',
		{
			WeaponResource = {
				META	= {'WeaponResource', 'GcExactResource.xml'},
				Filename	= item.filename,
				GenerationSeed	= {
					META	= {'GenerationSeed', 'GcSeed.xml'},
					Seed			= tonumber(item.seed),
					UseSeedValue	= true
				}
			},
			WeaponLayout	= {
				META	= {'WeaponLayout', 'GcInventoryLayout.xml'},
				Slots	= item.slots or 30
			},
			WeaponInventory	= {
				META	= {'WeaponInventory', 'GcInventoryContainer.xml'},
				Inventory	= InventoryContainer(item.inventory),
				Class		= {
					META	= {'Class', 'GcInventoryClass.xml'},
					InventoryClass	= item.class and item.class:upper() or nil
				}
			},
			WeaponType		= {
				META	= {'WeaponType', 'GcWeaponClasses.xml'},
				WeaponStatClass	= item.modeltype
			},
			NameOverride = item.name,
			IsRewardWeapon = true
		}
	)
end
