-- Loaded_M <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\_lua_2_mxml.lua>
-------------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.06
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
-------------------------------------------------------------------------------
---	MXML builder - Build mxml from lua table
--- Tools for color -and vector class, ordered string list
-------------------------------------------------------------------------------

--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite', '_remove'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					for _,at in ipairs(at_ord) do
					-- Just for readability. The compiler doesn't need the ordering
						if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					end
					-- for k, v in pairs(cls.meta) do
						-- if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					-- end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate consecutive (instead of nested) sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	=> Adds the header and class template for a standard mxml file
--	@param data: A lua2mxml formatted table
--	@param template: [optional] A class template string. Overwrites the internal template!
function ToMxmlFile(tlua, ext_tmpl)
	local wrapper = '<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>'
	if type(tlua) == 'string' then
		return wrapper:format(ext_tmpl, tlua)
	end
	-- replace existing or add template layer if needed
	if ext_tmpl then
		if tlua.meta.template then
			tlua.meta.template = ext_tmpl
		else
			tlua = {
				meta = {template=ext_tmpl},
				tlua
			}
		end
	end
	-- strip mock template
	local txt_data = ToMxml(tlua):sub(#tlua.meta.template + 23, -12)
	return wrapper:format(tlua.meta.template, txt_data)
end

--	=> Translates a 0xFF hex section from a longer string to 0-1.0 percentage
--	@param hex: hex string (case insensitive [A-z0-9])
--	@param i: the hex pair's index
function Hex2Percent(hex, i)
	return math.floor(tonumber(hex:sub(i * 2 - 1, i * 2), 16) / 255 * 1000) / 1000
end

--	=> Builds a Colour class
--	@param T: ARGB color in percentage values or hex format.
--	  Either {1.0, 0.5, 0.4, 0.3} or {<a=1.0> <,r=0.5> <,g=0.4> <,b=0.3>} or 'FFA0B1C2'
--	@param color_name: class name
function ColorData(C, color_name)
	local argb = {}
	if type(C) == 'string' then
		for i=#C > 6 and 1 or 2, #C/2 do
			argb[i] = Hex2Percent(C, i)
		end
	elseif C == 0 then
		argb = {1, -1, -1, -1} -- 'real' black
	else
		argb = C or {}
	end
	return {
		meta= {name=color_name},
		{A	= (argb[1] or argb.a) or 1},
		{R	= (argb[2] or argb.r) or 1},
		{G	= (argb[3] or argb.g) or 1},
		{B	= (argb[4] or argb.b) or 1}
	}
end

--	=> Builds an amumss VCT table from a hex color string
--	@param h: hex color string in ARGB or RGB format (default is white)
--	(not really the place for this one, but it's convenient)
function Hex2VCT(h)
	local argb = {{'A', 1}, {'R', -1}, {'G', -1}, {'B', -1}}
	if h == 0 then return argb end -- 'real' black
	for i=#h > 6 and 1 or 2, #h/2 do
		argb[i][2] = Hex2Percent(h, i)
	end
	return argb
end

--	=> Builds a Vector 2, 3 or 4f class, depending on number of values
--	@param T: xy<z<t>> vector
--	  Either {1.0, 0.5 <,0.4, <,2>>} or {x=1.0, y=0.5 <,z=0.4 <,t=2>>}
--	@param vector_name: class name
function VectorData(T, vector_name)
	if not T then return nil end
	return {
		-- if a name is present then use 2-property tags
		meta= {name=vector_name},
		{X	= T[1] or T.x},
		{Y	= T[2] or T.y},
		{Z	= (T[3] or T.z) or nil},
		{W	= (T[4] or T.w) or nil}
	}
end

--	=> Builds a 'name' type array of strings
--	@param t: an ordered (non-keyed) table of strings
--	@param s_arr_name: class name
function StringArray(t, s_arr_name)
	if not t then return nil end
	local T = { meta = {name=s_arr_name} }
	for _,s in ipairs(t) do
		T[#T+1] = { meta = {name=s_arr_name, value=s, _index=#T} }
	end
	return T
end

--	=> Determine if received is a single or multi-item
--	then process items through the received function
--	@param items: table of item properties or a non-keyed table of items (keys are ignored)
--	@param acton: the function to process the items in the table
function ProcessOnenAll(items, acton)
	-- first key = 1 means multiple entries
	if next(items) == 1 then
		local T = {}
		for _,e in ipairs(items) do
			T[#T+1] = acton(e)
		end
		return T
	end
	return acton(items)
end

-- END: <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\_lua_2_mxml.lua>
-- Loaded_M <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\reward_entry.lua>
-------------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
-------------------------------------------------------------------------------
---	Construct reward table entries ... version: 1.01.0
-------------------------------------------------------------------------------

--  * Default is first
RC_={--	RewardChoice Enum
	ALL	= 'GiveAll',			ALL_S =	'GiveAllSilent',
	ONE	= 'SelectAlways',		ONE_S =	'SelectAlwaysSilent',
	WIN	= 'SelectFromSuccess',	WIN_S =	'SelectFromSuccessSilent',
	TRY	= 'TryEach',			TRY_1 = 'TryFirst_ThenSelectAlways',
	G1_ONE = 'GiveFirst_ThenAlsoSelectAlwaysFromRest'
}-- Enum
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
}-- Enum
IT_={--	InventoryType Enum
	SBT='Substance',	TCH='Technology',	PRD='Product'
}-- Enum
AR_={--	AlienRace Enum
	TRD='Traders',		WAR='Warriors',		XPR='Explorers',
	RBT='Robots',		ATL='Atlas',		DPL='Diplomats',
	XTC='Exotics',		NON='None',			BLD='Builders'
}-- Enum
CU_={--	Currency Enum
	UT='Units',			NN='Nanites',		HG='Specials'
}-- Enum
MI_={--	MultiItemRewardType Enum
	PRD='Product',				SBT='Substance',
	PRT='ProcTech',				PRP='ProcProduct',
	ISP='InventorySlot',		ISS='InventorySlotShip',
	ISW='InventorySlotWeapon'
}-- Enum
RT_={--	Rarity Enum
	C='Common',			U='Uncommon',		R='Rare'
}-- Enum
FT_={--	FrigateFlybyType Enum
	S='SingleShip',		G='AmbientGroup',	W='DeepSpaceCommon'
}-- Enum

--	=> Build reward table entry
function R_RewardTableEntry(rte)
	-- accepts an external list, if not found builds a new one
	if not rte.list then
		rte.list = {}
		for _,rwd in ipairs(rte.itemlist) do
			rte.list[#rte.list+1] = rwd.f(rwd)
		end
	end
	rte.list.meta = {name='List'}
	return {
		meta = {
			name		= 'GenericTable',
			value		= 'GcGenericRewardTableEntry',
			_id			= rte.id,
			_overwrite	= rte.overwrite	or nil
		},
		Id	 = rte.id,
		List = {
			meta = {name='List', value='GcRewardTableItemList'},
			RewardChoice	= rte.choice or RC_.ONE,			-- Enum
			OverrideZeroSeed= rte.zeroseed,						-- b
			List			= rte.list
		}
	}
end

--	=> Build a single reward item
local function R_tableItem(item, gc_reward, props)
	props.AmountMin = item.mn or item.mx						-- i
	props.AmountMax = item.mx									-- i
	props.meta = {name=gc_reward}
	return {
		meta = {name='List', value='GcRewardTableItem'},
		PercentageChance	= item.c or 1,						-- f
		LabelID				= item.bl,							-- s
		Reward				= {
			meta = {name='Reward', value=gc_reward},
			props
		}
	}
end

--	=> Build GcMultiSpecificItemEntry
function R_MultiItem(item)
	local T = {meta = {name='Items'}}
	for _,itm in ipairs(item.lst) do
		T[#T+1] = {
			meta = {name='Items', value='GcMultiSpecificItemEntry'},
			Id					= itm.id,
			MultiItemRewardType	= itm.mi or MI_.PRD,			-- Enum
			Amount				= itm.am or 1,					-- i
			ProcTechGroup		= itm.tg,						-- s
			ProcTechQuality		= itm.qt, 						-- [0-4] used instead of ProcProdRarity
			IllegalProcTech		= itm.igl,						-- b
			SentinelProcTech	= itm.sen,						-- b
			ProcProdType		= {
				meta = {name='ProcProdType', value='GcProceduralProductCategory'},
				ProceduralProductCategory = itm.pc or PC_.LOT	-- Enum
			}
		}
	end
	return R_tableItem(
		item,
		'GcRewardMultiSpecificItems',
		{
			Silent	= item.sl,									-- b
			Items	= T
		}
	)
end

--	=> Build GcRewardSpecificSubstance
function R_Substance(item)
	return R_tableItem(
		item,
		'GcRewardSpecificSubstance',
		{
			ID					= item.id,
			RewardAsBlobs		= item.bb,						-- b
			DisableMultiplier	= item.dsm,   					-- b
			UseFuelMultiplier	= item.ufm,   					-- b
			Silent				= item.sl						-- b
		}
	)
end

--	=> Build GcRewardSpecificProduct
function R_Product(item)
	return R_tableItem(
		item,
		'GcRewardSpecificProduct',
		{
			ID				= item.id,
			Silent			= item.sl,							-- b
			RequiresTech	= item.req							-- s
		}
	)
end

--	=> Build GcRewardSpecificProductFromList
function R_ProductFromList(item)
	return R_tableItem(
		item,
		'GcRewardSpecificProductFromList',
		{
			IncrementGlobalStatOnSuccess = item.igs, 				-- s
			ProductList = StringArray(item.id, 'ProductList')
		}
	)
end

--	=> Build GcRewardProceduralProduct
function R_ProcProduct(item)
	return R_tableItem(
		item,
		'GcRewardProceduralProduct',
		{
			Type	= {
				meta = {name='Type', value='GcProceduralProductCategory'},
				ProceduralProductCategory = item.pc or PC_.LOT	-- Enum
			},
			SubIfPlayerAlreadyHasOne	= item.sub,				-- b
			OverrideRarity				= item.rt ~= nil,
			Rarity	= {
				meta = {name='Rarity', value='GcRarity'},
				Rarity	= item.rt or RT_.C						-- Enum
			},
			FreighterTechQualityOverride = item.qt or -1		-- [0-3]
		}
	)
end

--	=> Build GcRewardProcTechProduct
function R_ProcTechProduct(item)
	return R_tableItem(
		item,
		'GcRewardProcTechProduct',
		{
			Group					= item.tg,					-- s
			WeightedChanceNormal	= item.w1 or 3,				-- i
			WeightedChanceRare		= item.w2 or 3,				-- i
			WeightedChanceEpic		= item.w3 or 3,				-- i
			WeightedChanceLegendary	= item.w4 or 3,				-- i
			ForceRelevant			= item.frl,					-- b
			ForceQualityRelevant	= item.fqr,					-- b
		}
	)
end

--	=> Build GcRewardDisguisedProduct
function R_DisguisedProduct(item)
	return R_tableItem(
		item,
		'GcRewardDisguisedProduct',
		{
			ID						= item.id,
			DisplayAs				= item.idd,					-- s
			UseDisplayIDWhenInShip	= true,						-- b
		}
	)
end

--	=> Build GcRewardMultiSpecificProducts
function R_ProductAllList(item)
	return R_tableItem(
		item,
		'GcRewardMultiSpecificProducts',
		{
			SetName			= item.nm,							-- s
			UseListPopup	= item.pop,							-- b
			OnlyGiveThisManyFromTheListAtRandom = item.n or -1,	-- i
			ProductIds = StringArray(item.id, 'ProductIds')
		}
	)
end

--	=> Build GcRewardSpecificTech
function R_Technology(item)
	return R_tableItem(
		item,
		'GcRewardSpecificTech',
		{
			TechId	= item.id,
			Silent	= item.sl									-- b
		}
	)
end

--	=> Build GcRewardMultiSpecificTechRecipes
function R_TechnologyList(item)
	return R_tableItem(
		item,
		'GcRewardMultiSpecificTechRecipes',
		{
			TechIds			= StringArray(item.id, 'TechIds'),
			DisplayTechId	= item.id[1],						-- s
			SetName			= item.nm,							-- s
			Silent			= item.sl							-- b
		}
	)
end

--	=> Build GcRewardSpecificProductRecipe
function R_ProductRecipe(item)
	return R_tableItem(
		item,
		'GcRewardSpecificProductRecipe',
		{
			ID		= item.id,
			Silent	= item.sl									-- b
		}
	)
end

--	=> Build GcRewardMultiSpecificProductRecipes
function R_ProductRecipeList(item)
	return R_tableItem(
		item,
		'GcRewardMultiSpecificProductRecipes',
		{
			ProductIds		= StringArray(item.id, 'ProductIds'),
			DisplayProductId= item.id[1],						-- s
			SetName			= item.nm,							-- s
			Silent			= item.sl							-- b
		}
	)
end

--	=> Build GcRewardTeachWord
function R_Word(item)
	return R_tableItem(
		item,
		'GcRewardTeachWord',
		{
			Race = {
				meta		= {name='Race', value='GcAlienRace'},
				AlienRace	= item.ar or AR_.TRD				-- Enum
			},
			Category		= item.cat and {
				meta		= {name='Category', value='GcWordCategoryTableEnum'},
				wordcategorytableEnum	= item.cat				-- Enum
			} or nil
		}
	)
end

--	=> Build GcRewardMoney
function R_Money(item)
	return R_tableItem(
		item,
		'GcRewardMoney',
		{
			Currency = {
				meta		= {name='Currency', value='GcCurrency'},
				Currency	= item.id							-- Enum
			}
		}
	)
end

--	=> Build GcRewardJetpackBoost
function R_Jetboost(item)
	return R_tableItem(
		item,
		'GcRewardJetpackBoost',
		{
			Duration		= (10 *  item.tm),					-- f
			ForwardBoost	= (4.2 * item.pw),					-- f
			UpBoost			= (0.9 * item.pw),					-- f
			IgnitionBoost	= (1.6 * item.pw)					-- f
		}
	)
end

--	=> Build GcRewardFreeStamina
function R_Stamina(item)
	return R_tableItem(
		item,
		'GcRewardFreeStamina',
		{
			Duration		= (10 * item.tm)					-- f
		}
	)
end

--	=> Build GcRewardRefreshHazProt
function R_Hazard(item)
	return R_tableItem(
		item,
		'GcRewardRefreshHazProt',
		{
			Amount			= item.am,							-- f
			Silent			= item.sl,							-- b
			SpecificHazard	= item.hz and {
				meta	= {name='SpecificHazard', value='GcPlayerHazardType'},
				Hazard	= item.hz								-- Enum
			} or nil
		}
	)
end

--	=> Build GcRewardShield
function R_Shield(item)
	return R_tableItem(item, 'GcRewardShield', {})
end

--	=> Build GcRewardHealth
function R_Health(item)
	return R_tableItem(
		item,
		'GcRewardHealth',
		{
			SilentUnlessShieldAtMax = item.sl					-- b
		}
	)
end

--	=> Build GcRewardWantedLevel
function R_Wanted(item)
	return R_tableItem(
		item,
		'GcRewardWantedLevel',
		{
			Level	= item.lvl or 0								-- i (0-5)
		}
	)
end

--	=> Build GcRewardDisableSentinels
function R_NoSentinels(item)
	return R_tableItem(
		item,
		'GcRewardDisableSentinels',
		{
			Duration			= item.tm or -1,				-- f
			WantedBarMessage	= 'UI_SENTINELS_DISABLED_MSG'
		}
	)
end

--	=> Build GcRewardTriggerStorm
function R_Storm(item)
	return R_tableItem(
		item,
		'GcRewardTriggerStorm',
		{
			Duration			= item.tm or -1					-- f
		}
	)
end

--	=> Build GcRewardFrigateFlyby
function R_FlyBy(item)
	return R_tableItem(
		item,
		'GcRewardFrigateFlyby',
		{
			FlybyType = {
				meta	= {name='FlybyType', value='GcFrigateFlybyType'},
				FrigateFlybyType = item.tp or FT_.W				-- Enum
			},
			AppearanceDelay	= item.tm or 3,						-- f
			CameraShake		= 'FRG_FLYBY_PREP'
		}
	)
end

--	=> Build GcRewardOpenPage
function R_OpenPage(item)
	return R_tableItem(
		item,
		'GcRewardOpenPage',
		{
			PageToOpen				= item.id,					-- Enum
			ReinteractWhenComplete	= item.Reinteract			-- b
		}
	)
end

--	=> Build GcRewardStanding
function R_Standing(item)
	return R_tableItem(
		item,
		'GcRewardStanding',
		{
			meta = {name='GcRewardStanding'},
			Race = {
				meta = {name='Race', value='GcAlienRace'},
				AlienRace = item.ar or AR_.NON					-- Enum
			}
		}
	)
end

--	=> Build GcRewardOpenUnlockTree
function R_UnlockTree(item)
	return R_tableItem(
		item,
		'GcRewardOpenUnlockTree',
		{
			TreeToOpen = {
				meta	= {name='TreeToOpen', value='GcUnlockableItemTreeGroups'},
				UnlockableItemTree = item.id					-- Enum
			},
			PageIndexOverride	= item.inx						-- i
		}
	)
end

--	=> Build GcRewardUnlockSeasonReward
function R_UnlockSeasonal(item)
	return R_tableItem(
		item,
		'GcRewardUnlockSeasonReward',
		{
			ProductID				= item.id,
			Silent					= item.sl,					-- b
			UseSpecialFormatting	= item.frt,					-- b
			MarkAsClaimedInShop		= item.mc == nil and true or item.mc, -- b
			UniqueInventoryItem		= item.unq					-- b
		}
	)
end

--	=> Build GcRewardSpecificSpecial
function R_Special(item)
	return R_tableItem(
		item,
		'GcRewardSpecificSpecial',
		{
			ProductID				= item.id,
			ShowSpecialProductPopup	= item.pop,					-- b
			UseSpecialFormatting	= item.frt,					-- b
			HideInSeasonRewards		= item.hid					-- b
		}
	)
end

--	=> Build GcInventoryElement
--	Used by ship & tool rewards for tech inventory only
local function inventoryContainer(inventory)
	if not inventory then return nil end
	local T = {meta = {name='Slots'}}
	for id, chrg in pairs(inventory) do
		T[#T+1] = {
			meta	= {name='Slots', value='GcInventoryElement'},
			Id				= id,
			Amount			= chrg and 10000 or -1,				-- i
			MaxAmount		= chrg and 10000 or 100,			-- i
			FullyInstalled	= true,
			Type			= {
				meta	= {name='Type', value='GcInventoryType'},
				InventoryType	= IT_.TCH						-- Enum
			},
			Index	= {
				meta	= {name='Index', value='GcInventoryIndex'},
				X		= -1,									-- i
				Y		= -1									-- i
			}
		}
	end
	return T
end

--	=> Build GcRewardSpecificShip
function R_Ship(item)
	return R_tableItem(
		item,
		'GcRewardSpecificShip',
		{
			ShipResource = {
				meta	= {name='ShipResource', value='GcResourceElement'},
				Filename = item.filename,						-- s
				Seed	= item.seed,							-- uint
			},
			ShipLayout	= {
				meta	= {name='ShipLayout', value='GcInventoryLayout'},
				Slots	= item.slots or 50						-- i
			},
			ShipInventory = {
				meta	= {name='ShipInventory', value='GcInventoryContainer'},
				Inventory	= inventoryContainer(item.inventory),
				Class		= {
					meta	= {name='Class', value='GcInventoryClass'},
					InventoryClass	= item.class and item.class:upper() or 'C'	-- Enum
				},
				BaseStatValues	= (
					function()
						local stat = nil
						if item.filename:find('BIOSHIP')  then stat = 'ALIEN_SHIP' end
						if item.filename:find('SENTINEL') then stat = 'ROBOT_SHIP' end
						return stat and {
							meta	= {name='BaseStatValues'},
							{
								meta		= {name='BaseStatValues', value='GcInventoryBaseStatEntry'},
								Value		= 1,
								BaseStatID	= stat
							}
						} or nil
					end
				)(),
			},
			Customisation = item.custom and {
				meta = {name='Customisation', value='GcCharacterCustomisationData'},
				DescriptorGroups	= StringArray(item.custom.shipparts, 'DescriptorGroups'),
				PaletteID			= item.custom.paletteid,
				Colours				= (
					function()
						local T = {meta = {name='Colours'}}
						for _,col in ipairs(item.custom.colors) do
							T[#T+1] = {
								meta	= {name='Colours', value='GcCharacterCustomisationColourData'},
								Palette	= {
									meta	= {name='Palette', value='TkPaletteTexture'},
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
					meta = {name='TextureOptions'},
					{
						meta = {name='TextureOptions', value='GcCharacterCustomisationTextureOptionData'},
						TextureOptionGroupName	= item.custom.texturegroup,	-- s
						TextureOptionName		= item.custom.texturename	-- s
					}
				},
				Scale	= 1
			} or nil,
			ShipType	= {
				meta	= {name='ShipType', value='GcSpaceshipClasses'},
				ShipClass	= item.modeltype					-- Enum
			},
			UseOverrideSizeType	= item.sizetype ~= nil,
			OverrideSizeType	= {
				meta	= {name='OverrideSizeType', value='GcInventoryLayoutSizeType'},
				SizeType	= item.sizetype	or 'DrpLarge'		-- Enum
			},
			NameOverride	= item.name,						-- s
			IsRewardShip	= true,
			IsGift			= true,
			ModelViewOverride	= {
				meta	= {name='ModelViewOverride', value='GcModelViews'},
				ModelViews	= item.modelviews or 'Ship'			-- Enum
			}
		}
	)
end

--	=> Build GcRewardSpecificWeapon
function R_Multitool(item)
	return R_tableItem(
		item,
		'GcRewardSpecificWeapon',
		{
			WeaponResource = {
				meta	= {name='WeaponResource', value='GcExactResource'},
				Filename		= item.filename,				-- s
				GenerationSeed	= item.seed						 -- uint
			},
			WeaponLayout	= {
				meta	= {name='WeaponLayout', value='GcInventoryLayout'},
				Slots	= item.slots or 30,						-- i
				Seed	= item.seed								-- uint
			},
			WeaponInventory	= {
				meta	= {name='WeaponInventory', value='GcInventoryContainer'},
				Inventory	= inventoryContainer(item.inventory),
				Class		= {
					meta	= {name='Class', value='GcInventoryClass'},
					InventoryClass	= item.class and item.class:upper() or 'C'	-- Enum
				}
			},
			WeaponType		= {
				meta	= {name='WeaponType', value='GcWeaponClasses'},
				WeaponStatClass	= item.modeltype				-- Enum
			},
			InventorySizeOverride	= {
				meta	= {name='InventorySizeOverride', value='GcInventoryLayoutSizeType'},
				SizeType	= item.sizetype	or 'WeaponLarge'	-- Enum
			},
			NameOverride	= item.name,						-- s
			IsRewardWeapon	= true,
			IsGift		 	= true
		}
	)
end

-- END: <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\reward_entry.lua>
--------------------------------------------------------------------------
local mod_desc = [[
  Replace freighter after-warp-battle reward with better a selection
  with something different from each race
  * (the lists are non-random because a bug causes them to misbehave)
]]------------------------------------------------------------------------
--<<M2L marker>>--

local new_rewards = {
	R_PIR_TRIBUTE	= {--- pirate freighter defeat tribute ---
		overwrite	= true,
		choice		= RC_.ONE,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='SENTINEL_GUN_NAME_L',	qt=3,	mi=MI_.PRT,	sen=true},
					{tg='SENTINEL_SUIT_NAME_L',	qt=3,	mi=MI_.PRT,	sen=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				},
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{pc=PC_.FRH,				qt=3,	mi=MI_.PRP},
					{id='MEGAPROD2',					mi=MI_.PRD}
				},
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{pc=PC_.FRC,				qt=3,	mi=MI_.PRP},
					{id='MEGAPROD1',					mi=MI_.PRD}
				},
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='CANNON_NAME_L',		qt=4,	mi=MI_.PRT,	igl=true},
					{tg='RAILGUN1_NAME_L',		qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='BOLTSHOTGUN_NAME_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{tg='LASER_NAME_L',			qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='UI_RAD_NAME_CORE_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{tg='UI_TOX_NAME_CORE_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='UI_ENERGY_NAME_CORE_L',qt=4,	mi=MI_.PRT,	igl=true},
					{tg='UI_JETPACK_NAME_CORE_L',qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD3',					mi=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{tg='SHIPMINIGUN_NAME_L',	qt=4,	mi=MI_.PRT,	igl=true},
					{tg='SHIPJUMP_NAME_L',		qt=4,	mi=MI_.PRT,	igl=true},
					{id='MEGAPROD2',					mi=MI_.PRD}
				}
			}
		},
		multiadd	= {
			{id='STATION_KEY',					mi=MI_.PRD},
			{id='FREI_INV_TOKEN',		am=2,	mi=MI_.PRD}
		}
	},
	FREIGHTERSAVE_E	= {--- freighter defense :: explorer ---
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{id='HYPERFUEL1',		am=1, 		mi=MI_.PRD},	-- Hyperdrive fuel
					{id='SCRAP_TECH',		am=1, 		mi=MI_.PRD},
					{id='FREI_INV_TOKEN',	am=1, 		mi=MI_.PRD},	-- freighter inv slot
					{id='ASTEROID3',		am=169, 	mi=MI_.SBT},	-- Platinum
					{pc=PC_.SPB,			qt=1,		mi=MI_.PRP},	-- Space Bones Procedural
				}
			},
			{id=CU_.HG,	mn=50,		mx=60,		c=100,	f=R_Money},
			{id='good',	mn=2,		mx=3,		c=100,	f=R_Standing}
		}
	},
	FREIGHTERSAVE_T	= {--- freighter defense :: trader ---
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{id='HYPERFUEL1',		am=1, 		mi=MI_.PRD},
					{id='GEODE_RARE',		am=1, 		mi=MI_.PRD},
					{id='FREI_INV_TOKEN',	am=1, 		mi=MI_.PRD},
					{id='ASTEROID1',		am=523, 	mi=MI_.SBT},	-- silver
					{pc=PC_.SLV,			qt=1,		mi=MI_.PRP},	-- Salvage Procedural
				}
			},
			{id=CU_.UT,	mn=35100,	mx=50200,	c=100,	f=R_Money},
			{id='good',	mn=2,		mx=3,		c=100,	f=R_Standing}
		}
	},
	FREIGHTERSAVE_W	= {--- freighter defense :: warior ---
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				lst	= {
					{id='HYPERFUEL1',		am=1, 		mi=MI_.PRD},
					{id='SCRAP_WEAP',		am=1, 		mi=MI_.PRD},
					{id='FREI_INV_TOKEN',	am=1, 		mi=MI_.PRD},
					{id='ASTEROID2',		am=387, 	mi=MI_.SBT},	-- gold
					{pc=PC_.DTC,			qt=1,		mi=MI_.PRP}		-- Procedural
				}
			},
			{id=CU_.NN,	mn=190,		mx=270,		c=100,	f=R_Money},
			{id='MIRROR',mn=1,		mx=2,		c=6,	f=R_Product},
			{id='good',	mn=2,		mx=3,		c=100,	f=R_Standing}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Freighter Defense Rewards',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.18',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GenericTable',
				ADD					= (
					function()
						local rewards = {}
						for id, rwd in pairs(new_rewards) do
							if rwd.multiadd then
							-- add repeating items to MultiItem
								for _,rw in ipairs(rwd.itemlist) do
									if rw.f == R_MultiItem then
										for _,ad in ipairs(rwd.multiadd) do
											rw.lst[#rw.lst + 1] = ad
										end
									end
								end
							end
							rwd.id = id
							rewards[#rewards+1] = R_RewardTableEntry(rwd)
						end
						return ToMxml(rewards)
					end
				)()
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'TextAlien', 'DNT_WAR_FREIGHT_LANG_1', 'Name', 'ALL_FREIGHTER_OPT_3'},
				PRECEDING_KEY_WORDS = 'Rewards',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Rewards',		'FREIGHTERSAVE_W'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'TextAlien', 'DNT_EXP_FREIGHT_LANG_1', 'Name', 'ALL_FREIGHTER_OPT_3'},
				PRECEDING_KEY_WORDS = 'Rewards',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Rewards',		'FREIGHTERSAVE_E'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'TextAlien', 'DNT_TRA_FREIGHT_LANG_1', 'Name', 'ALL_FREIGHTER_OPT_3'},
				PRECEDING_KEY_WORDS = 'Rewards',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Rewards',		'FREIGHTERSAVE_T'}
				}
			}
		}
	}
}}}}