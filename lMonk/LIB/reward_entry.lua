-------------------------------------------------------------------------------
---	Construct reward table entries (VERSION: 0.83.6) ... by lMonk
---	* Requires _lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

--  * Default is first
RC_={--	RewardChoice Enum
	ALL   =	'GiveAll',			ALL_S =	'GiveAllSilent',
	ONE   =	'SelectAlways',		ONE_S =	'SelectAlwaysSilent',
	WIN   =	'SelectFromSuccess',WIN_S =	'SelectFromSuccessSilent',
	TRY   =	'TryEach',			TRY_ONE='TryFirst_ThenSelectAlways'
}
PC_={--	ProceduralProductCategory Enum
	LOT='Loot',					SLV='Salvage',
	DOC='Document',				FOS='Fossil',
	BIO='BioSample',			BNS='Bones',
	PLT='Plant',				TOL='Tool',
	FAR='Farm',					SLT='SeaLoot',
	SHR='SeaHorror',			SPH='SpaceHorror',
	SPB='SpaceBones',
	FRH='FreighterTechHyp',		FRS='FreighterTechSpeed',
	FRF='FreighterTechFuel',	FRT='FreighterTechTrade',
	FRC='FreighterTechCombat',	FRM='FreighterTechMine',
	FRE='FreighterTechExp',
	DBI='DismantleBio',			DTC='DismantleTech',
	DDT='DismantleData'
}
IT_={--	InventoryType Enum
	SBT='Substance',	TCH='Technology',	PRD='Product'
}
AR_={--	AlienRace Enum
	TRD='Traders',		WAR='Warriors',		XPR='Explorers',
	RBT='Robots',		ATL='Atlas',		DPL='Diplomats',
	XTC='Exotics',		NON='None',			BLD='Builders'
}
CU_={--	Currency Enum
	UT='Units',			NN='Nanites',		HG='Specials'
}
MI_={--	MultiItemRewardType Enum
	PRD='Product',				SBT='Substance',
	PRT='ProcTech',				PRP='ProcProduct',
	ISP='InventorySlot',		ISS='InventorySlotShip',
	ISW='InventorySlotWeapon'
}
RT_={--	Rarity Enum
	C='Common',			U='Uncommon',		R='Rare'
}
FT_={--	FrigateFlybyType Enum
	S='SingleShip',		G='AmbientGroup',	W='DeepSpaceCommon'
}

function R_RewardTableEntry(rte)
	-- accepts an external list, if not found builds a new one
	if not rte.list then
		rte.list = {}
		for _,rwd in ipairs(rte.itemlist) do
			rte.list[#rte.list+1] = rwd.f(rwd)
		end
	end
	rte.list.meta = {'name', 'List'}
	return {
		meta = {'value', 'GcGenericRewardTableEntry.xml'},
		Id	 = rte.id,
		List = {
			meta = {'List', 'GcRewardTableItemList.xml'},
			RewardChoice	= rte.choice or RC_.ONE,			-- Enum
			OverrideZeroSeed= rte.zeroseed,						-- b
			List			= rte.list
		}
	}
end

function R_TableItem(item, reward_type, props)
	props.meta		= {'Reward', reward_type}
	props.AmountMin	= item.mn or item.mx						-- i
	props.AmountMax	= item.mx									-- i
	return {
		meta	= {'value', 'GcRewardTableItem.xml'},
		PercentageChance	= item.c or 1,						-- f
		Reward				= props
	}
end

function R_MultiItem(item)
	local T = {meta = {'name', 'Items'}}
	for _,itm in ipairs(item.list) do
		T[#T+1] = {
			meta = {'value', 'GcMultiSpecificItemEntry.xml'},
			Id					= itm.id,
			MultiItemRewardType	= itm.tp,						-- Enum
			Amount				= itm.mn or 1,					-- i
			ProcTechGroup		= itm.tg,						-- s
			ProcTechQuality		= itm.qt, -- used instead of ProcProdRarity
			IllegalProcTech		= itm.lgl,						-- b
			ProcProdType		= {
				meta = {'ProcProdType', 'GcProceduralProductCategory.xml'},
				ProceduralProductCategory = itm.pid or PC_.LOT	-- Enum
			}
		}
	end
	return R_TableItem(
		item,
		'GcRewardMultiSpecificItems.xml',
		{
			Silent	= item.sl,									-- b
			Items	= T
		}
	)
end

function R_Procedural(item)
	return R_TableItem(
		item,
		'GcRewardProceduralProduct.xml',
		{
			Type	= {
				meta = {'Type', 'GcProceduralProductCategory.xml'},
				ProceduralProductCategory = item.id				-- Enum
			},
			Rarity	= {
				meta = {'Rarity', 'GcRarity.xml'},
				Rarity = item.rt or 'Common'					-- Enum
			},
			OverrideRarity	= item.ort							-- b
		}
	)
end

function R_Substance(item)
	return R_TableItem(
		item,
		'GcRewardSpecificSubstance.xml',
		{
			ID		= item.id,
			Silent	= item.sl									-- b
		}
	)
end

function R_Product(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProduct.xml',
		{
			ID		= item.id,
			Silent	= item.sl									-- b
		}
	)
end

function R_DisguisedProduct(item)
	return R_TableItem(
		item,
		'GcRewardDisguisedProduct.xml',
		{
			ID						= item.id,
			DisplayAs				= item.display,				-- s
			UseDisplayIDWhenInShip	= true,						-- b
		}
	)
end

function R_ProductSysList(item)
	return R_TableItem(
		item,
		'GcRewardSystemSpecificProductFromList.xml',
		{ ProductList = StringArray(item.id, 'ProductList') }
	)
end

function R_ProductAllList(item)
	return R_TableItem(
		item,
		'GcRewardMultiSpecificProducts.xml',
		{ ProductIds = StringArray(item.id, 'ProductIds') }
	)
end

function R_Technology(item)
	return R_TableItem(
		item,
		'GcRewardSpecificTech.xml',
		{
			TechId	= item.id,
			Silent	= item.sl									-- b
		}
	)
end

function R_ProductRecipe(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProductRecipe.xml',
		{
			ID		= item.id,
			Silent	= item.sl									-- b
		}
	)
end

function R_Word(item)
	return R_TableItem(
		item,
		'GcRewardTeachWord.xml',
		{
			Race = {
				meta		= {'Race', 'GcAlienRace.xml'},
				AlienRace	= item.ar							-- Enum
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
				meta		= {'Currency', 'GcCurrency.xml'},
				Currency	= item.id							-- Enum
			}
		}
	)
end

function R_Jetboost(item)
	return R_TableItem(
		item,
		'GcRewardJetpackBoost.xml',
		{
			Duration		= (10 *  item.tm),					-- f
			ForwardBoost	= (4.2 * item.pw),					-- f
			UpBoost			= (0.9 * item.pw),					-- f
			IgnitionBoost	= (1.6 * item.pw)					-- f
		}
	)
end

function R_Stamina(item)
	return R_TableItem(
		item,
		'GcRewardFreeStamina.xml',
		{ Duration		= (10 * item.tm) }						-- f
	)
end

function R_Hazard(item)
	return R_TableItem(
		item,
		'GcRewardRefreshHazProt.xml',
		{
			Amount	= item.hz,									-- f
			Silent	= item.sl									-- b
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
		{ Level	= item.lvl or 0 }								-- i (0-5)
	)
end

function R_NoSentinels(item)
	return R_TableItem(
		item,
		'GcRewardDisableSentinels.xml',
		{
			Duration			= item.tm or -1,				-- f
			WantedBarMessage	= 'UI_SENTINELS_DISABLED_MSG'
		}
	)
end

function R_Storm(item)
	return R_TableItem(
		item,
		'GcRewardTriggerStorm.xml',
		{ Duration			= item.tm or -1 }					-- f
	)
end

function R_FlyBy(item)
	return R_TableItem(
		item,
		'GcRewardFrigateFlyby.xml',
		{
			FlybyType = {
				meta	= {'FlybyType', 'GcFrigateFlybyType.xml'},
				FrigateFlybyType = item.tp or FT_.W				-- Enum
			},
			AppearanceDelay	= item.tm or 3,						-- f
			CameraShake		= 'FRG_FLYBY_PREP'
		}
	)
end

function R_OpenPage(item)
	return R_TableItem(
		item,
		'GcRewardOpenPage.xml',
		{
			PageToOpen				= item.id,					-- Enum
			ReinteractWhenComplete	= item.Reinteract			-- b
		}
	)
end

function R_UnlockTree(item)
	return R_TableItem(
		item,
		'GcRewardOpenUnlockTree.xml',
		{
			TreeToOpen = {
				meta	= {'TreeToOpen', 'GcUnlockableItemTreeGroups.xml'},
				UnlockableItemTree = item.id					-- Enum
			}
		}
	)
end

function R_UnlockSeasonal(item)
	return R_TableItem(
		item,
		'GcRewardUnlockSeasonReward.xml',
		{
			ProductID				= item.id,
			Silent					= item.sl,					-- b
			UseSpecialFormatting	= item.frt,					-- b
			MarkAsClaimedInShop		= item.mc or true,			-- b
			UniqueInventoryItem		= item.unq					-- b
		}
	)
end

function R_Special(item)
	return R_TableItem(
		item,
		'GcRewardSpecificSpecial.xml',
		{
			ProductID				= item.id,
			ShowSpecialProductPopup	= item.pop,					-- b
			UseSpecialFormatting	= item.frt,					-- b
			HideInSeasonRewards		= item.hid					-- b
		}
	)
end

--	Used by ship & tool rewards for tech inventory only
local function InventoryContainer(inventory)
	if not inventory then return nil end
	local T = {meta = {'name', 'Slots'}}
	for id, chrg in pairs(inventory) do
		T[#T+1] = {
			meta	= {'value', 'GcInventoryElement.xml'},
			Id				= id,
			Amount			= chrg and 10000 or -1,				-- i
			MaxAmount		= chrg and 10000 or 100,			-- i
			FullyInstalled	= true,
			Type			= {
				meta	= {'Type', 'GcInventoryType.xml'},
				InventoryType	= IT_.TCH						-- Enum
			},
			Index	= {
				meta	= {'Index', 'GcInventoryIndex.xml'},
				X		= -1,									-- i
				Y		= -1									-- i
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
				meta	= {'ShipResource', 'GcResourceElement.xml'},
				Filename = item.filename,						-- s
				Seed	= {
					meta		= {'Seed', 'GcSeed.xml'},
					Seed			= tonumber(item.seed),		-- i
					UseSeedValue	= item.seed ~= nil
				}
			},
			ShipLayout	= {
				meta	= {'ShipLayout', 'GcInventoryLayout.xml'},
				Slots	= item.slots or 50						-- i
			},
			ShipInventory = {
				meta	= {'ShipInventory', 'GcInventoryContainer.xml'},
				Inventory	= InventoryContainer(item.inventory),
				Class		= {
					meta	= {'Class', 'GcInventoryClass.xml'},
					InventoryClass	= item.class and item.class:upper() or nil	-- Enum
				},
				BaseStatValues	= (
					function()
						local stat = nil
						if item.filename:find('BIOSHIP')  then stat = 'ALIEN_SHIP' end
						if item.filename:find('SENTINEL') then stat = 'ROBOT_SHIP' end
						return stat and {
							meta	= {'name', 'BaseStatValues'},
							{
								meta		= {'value', 'GcInventoryBaseStatEntry.xml'},
								Value		= 1,
								BaseStatID	= stat
							}
						} or nil
					end
				)(),
			},
			Customisation = item.custom and {
				meta = {'Customisation','GcCharacterCustomisationData.xml'},
				DescriptorGroups	= StringArray(item.custom.shipparts, 'DescriptorGroups'),
				PaletteID			= item.custom.paletteid,
				Colours				= (
					function()
						local T = {meta = {'name','Colours'}}
						for _,col in ipairs(item.custom.colors) do
							T[#T+1] = {
								meta	= {'value','GcCharacterCustomisationColourData.xml'},
								Palette	= {
									meta	= {'Palette','TkPaletteTexture.xml'},
									Palette		= col.palette,				-- Enum
									ColourAlt	= col.alt					-- Enum
								},
								Colour	= ColorData(col.rgb, 'Colour')		-- rgb
							}
						end
						return T
					end
				)(),
				TextureOptions		= {
					meta = {'name','TextureOptions'},
					{
						meta = {'value','GcCharacterCustomisationTextureOptionData.xml'},
						TextureOptionGroupName	= item.custom.texturegroup,	-- s
						TextureOptionName		= item.custom.texturename	-- s
					}
				},
				Scale	= 1
			} or nil,
			ShipType	= {
				meta	= {'ShipType', 'GcSpaceshipClasses.xml'},
				ShipClass	= item.modeltype					-- Enum
			},
			UseOverrideSizeType	= item.sizetype ~= nil,
			OverrideSizeType	= {
				meta	= {'OverrideSizeType', 'GcInventoryLayoutSizeType.xml'},
				SizeType	= item.sizetype						-- Enum
			},
			NameOverride = item.name,							-- s
			IsRewardShip = true,
			IsGift		 = true
		}
	)
end

function R_Multitool(item)
	return R_TableItem(
		item,
		'GcRewardSpecificWeapon.xml',
		{
			WeaponResource = {
				meta	= {'WeaponResource', 'GcExactResource.xml'},
				Filename	= item.filename,					-- s
				GenerationSeed	= {
					meta	= {'GenerationSeed', 'GcSeed.xml'},
					Seed			= tonumber(item.seed),		-- i
					UseSeedValue	= item.seed ~= nil
				}
			},
			WeaponLayout	= {
				meta	= {'WeaponLayout', 'GcInventoryLayout.xml'},
				Slots	= item.slots or 30						-- i
			},
			WeaponInventory	= {
				meta	= {'WeaponInventory', 'GcInventoryContainer.xml'},
				Inventory	= InventoryContainer(item.inventory),
				Class		= {
					meta	= {'Class', 'GcInventoryClass.xml'},
					InventoryClass	= item.class and item.class:upper() or nil	-- Enum
				}
			},
			WeaponType		= {
				meta	= {'WeaponType', 'GcWeaponClasses.xml'},
				WeaponStatClass	= item.modeltype				-- Enum
			},
			InventorySizeOverride	= {
				meta	= {'InventorySizeOverride', 'GcInventoryLayoutSizeType.xml'},
				SizeType	= item.sizetype	or 'WeaponLarge'	-- Enum
			},
			NameOverride = item.name,							-- s
			IsRewardWeapon = true
		}
	)
end
