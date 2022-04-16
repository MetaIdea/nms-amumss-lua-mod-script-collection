-- Drifter's YATERISM by DrifterOfTime
-- mostly original code, but I did get some small things from Consumerism and the AMUMSS examples, so thanks to them!
-- modifies METADATA\REALITY\TABLES\PURCHASEABLESPECIALS.MBIN and METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN, the latter only if DefaultPrices is false

------------------------------------------------------------------------------
-- Global overrides
------------------------------------------------------------------------------

DisableExpedition1Rewards = false	-- | default: false | If true, does not put expedition 1 rewards in the shop
DisableExpedition2Rewards = false	-- | default: false | If true, does not put expedition 2 rewards in the shop
DisableExpedition3Rewards = false	-- | default: false | If true, does not put expedition 3 rewards in the shop
DisableExpedition4Rewards = false	-- | default: false | If true, does not put expedition 4 rewards in the shop
DisableTwitch1Rewards = false		-- | default: false | If true, does not put Twitch campaign 1 drops in the shop
DisableTwitch2Rewards = false		-- | default: false | If true, does not put Twitch campaign 2 drops in the shop

ConsumablesOnly = false				-- | default: false | If true, only items marked as consumable will be added

DefaultPrices = false				-- | default: false | If true, does not change any prices from the default (most things cost 3000). If used with AllPricesFree, DefaultPrices takes precedence

------------------------------------------------------------------------------
-- (￣￣▽￣￣) <- Cheaty McCheatface
------------------------------------------------------------------------------

NoRequirements = false				-- | default: false | If true, removes CR tier requirements from all mod items (does not affect vanilla items)

AllPricesFree = false				-- | default: false | If true, makes all mod items' prices 0 (does not affect vanilla items). If used with DefaultPrices, DefaultPrices takes precedence

------------------------------------------------------------------------------
-- Prices
------------------------------------------------------------------------------

-- Expensive
PriceConsumable = 250  -- | default: 250  |
PriceVeryLow = 625     -- | default: 625  |
PriceLow = 1625        -- | default: 1625 |
PriceMedium = 2625     -- | default: 2625 |
PriceHigh = 4250       -- | default: 4250 |
PriceVeryHigh = 6875   -- | default: 6875 |

-- Cheap
-- PriceConsumable = 60   -- | default: 60   | 
-- PriceVeryLow = 150     -- | default: 150  | 
-- PriceLow = 390         -- | default: 390  |
-- PriceMedium = 630      -- | default: 630  |
-- PriceHigh = 1020       -- | default: 1020 |
-- PriceVeryHigh = 1650   -- | default: 1650 |

------------------------------------------------------------------------------
-- Community reward tier requirements
------------------------------------------------------------------------------
-- If there's an E after the comment, it's currently empty. If there's a C, there are commented items inside. Feel free to uncomment or populate it with whatever you want to pay QS for.
-- Possible values:
--   -1 -> No requirement
--   0 -> Item Disabled (?)
--   1,2,3,4 -> Tier requirement 1,2,3,4
------------------------------------------------------------------------------

TierRequirementConsumables = -1 -- | default: -1 |   | C |

TierRequirementEx1Ph1 = 1       -- | default:  1 |   | C |
TierRequirementEx1Ph2 = 1       -- | default:  1 |   |   |
TierRequirementEx1Ph3 = 2       -- | default:  2 |   |   |
TierRequirementEx1Ph4 = 2       -- | default:  2 |   |   |
TierRequirementEx1Ph5 = 3       -- | default:  3 |   |   |
TierRequirementEx1Complete = 3  -- | default:  4 |   |   |

TierRequirementEx2Ph1 = 1       -- | default:  1 |   | C |
TierRequirementEx2Ph2 = 1       -- | default:  1 |   |   |
TierRequirementEx2Ph3 = 2       -- | default:  2 | E |   |
TierRequirementEx2Ph4 = 2       -- | default:  2 | E |   |
TierRequirementEx2Ph5 = 3       -- | default:  3 |   |   |
TierRequirementEx2Complete = 3  -- | default:  4 |   |   |

TierRequirementEx3Ph1 = 1       -- | default:  1 |   |   |
TierRequirementEx3Ph2 = 1       -- | default:  1 |   |   |
TierRequirementEx3Ph3 = 2       -- | default:  2 |   |   |
TierRequirementEx3Ph4 = 2       -- | default:  2 |   |   |
TierRequirementEx3Ph5 = 3       -- | default:  3 |   |   |
TierRequirementEx3Complete = 3  -- | default:  4 |   |   |

TierRequirementEx4Ph1 = 1       -- | default:  1 |   |   |
TierRequirementEx4Ph2 = 1       -- | default:  1 |   |   |
TierRequirementEx4Ph3 = 2       -- | default:  2 |   |   |
TierRequirementEx4Ph4 = 2       -- | default:  2 |   |   |
TierRequirementEx4Ph5 = 3       -- | default:  3 |   |   |
TierRequirementEx4Complete = 3  -- | default:  4 |   |   |

TierRequirementTw1_15min = 1    -- | default:  1 | E | C |
TierRequirementTw1_30min = 1    -- | default:  1 | E |   |
TierRequirementTw1_1hr = 2      -- | default:  2 |   |   |
TierRequirementTw1_2hr = 3      -- | default:  3 | E |   |
TierRequirementTw1_3hr = 3      -- | default:  4 |   |   |

TierRequirementTw2_15min = 1    -- | default:  1 |   |   |
TierRequirementTw2_30min = 1    -- | default:  1 | E |   |
TierRequirementTw2_1hr = 2      -- | default:  2 | E |   |
TierRequirementTw2_2hr = 3      -- | default:  3 |   |   |
TierRequirementTw2_3hr = 3      -- | default:  4 |   |   |

ActiveShopNumber = 54		    -- | default: 54 | Needs to be set to the right value to activate tier requirements and for the items to be available |

------------------------------------------------------------------------------
-- ID Tables for Unique Rewards
------------------------------------------------------------------------------

RewardTable =
{
	-- ID - Item ID | IsConsumable - can buy multiple | Tier - community tier requirement | Price - if nil, vanilla default price (most are 3000). if integer, new price

	-- { ["ID"] = "TWITCH_FIREW01A", ["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceVeryLow}, -- DISABLED Can buy individually -- Fireworks Pack Day 1
	-- { ["ID"] = "TWITCH_FIREW01B", ["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceVeryLow}, -- DISABLED Can buy individually -- Fireworks Pack Day 2
	-- { ["ID"] = "TWITCH_FIREW01C", ["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceVeryLow}, -- DISABLED Can buy individually -- Fireworks Pack Day 3
	-- { ["ID"] = "TWITCH_FIREW01D", ["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceVeryLow}, -- DISABLED Can buy individually -- Fireworks Pack Day 4
	-- { ["ID"] = "TWITCH_FIREW01E", ["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceVeryLow}, -- DISABLED Can buy individually -- Fireworks Pack Day 5
	{ ["ID"] = "EXPD_FIREWORK01",	["Campaign"] = "Ex1",	["IsConsumable"] = "True",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceConsumable}, -- Blue-Red Atlas Firework (Expedition 1)
	{ ["ID"] = "EXPD_FIREWORK01",	["Campaign"] = "Ex2",	["IsConsumable"] = "True",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceConsumable}, -- Blue-Red Atlas Firework (Expedition 2)
	{ ["ID"] = "EXPD_FIREWORK02",	["Campaign"] = "Ex1",	["IsConsumable"] = "True",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceConsumable}, -- Gold-Blue Atlas Firework (Expedition 1)
	{ ["ID"] = "EXPD_FIREWORK02",	["Campaign"] = "Ex2",	["IsConsumable"] = "True",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceConsumable}, -- Gold-Blue Atlas Firework (Expedition 2)
	{ ["ID"] = "EXPD_FIREWORK03",	["Campaign"] = "Ex1",	["IsConsumable"] = "True",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceConsumable}, -- Red-Gold Atlas Firework (Expedition 1)
	{ ["ID"] = "EXPD_FIREWORK03",	["Campaign"] = "Ex2",	["IsConsumable"] = "True",	["Tier"] = TierRequirementConsumables,		["Price"] = PriceConsumable}, -- Red-Gold Atlas Firework (Expedition 2)
	{ ["ID"] = "EXPD_FIREWORK04",	["Campaign"] = "Ex4",	["IsConsumable"] = "True",	["Tier"] = TierRequirementEx4Ph1,			["Price"] = PriceConsumable}, -- Flesh Launcher
	-- { ["ID"] = "EXPD_FIREPACK01",	["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementConsumables,	["Price"] = PriceVeryLow}, -- DISABLED Can buy individually - Atlas Fireworks Pack (Expedition 1)
	-- { ["ID"] = "EXPD_FIREPACK01",	["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementConsumables,	["Price"] = PriceVeryLow}, -- DISABLED Can buy individually - Atlas Fireworks Pack (Expedition 2)
	
	{ ["ID"] = "EXPD_TITLE01", 		["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx1Ph5,		["Price"] = PriceLow}, -- Title: 'Pioneer'
	{ ["ID"] = "EXPD_TITLE02A",		["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx2Ph5,		["Price"] = PriceLow}, -- Title: 'Renegade'
	{ ["ID"] = "EXPD_TITLE02B",		["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx2Ph5,		["Price"] = PriceLow}, -- Title: 'Paragon'
	{ ["ID"] = "EXPD_TITLE03",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph5,		["Price"] = PriceMedium}, -- Title: 'Globemaster'
	{ ["ID"] = "EXPD_TITLE04",		["Campaign"] = "Ex4",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx4Ph5,		["Price"] = PriceHigh}, -- Title: 'Worm Lord'
	
	{ ["ID"] = "DECAL_HAZARD", 		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_15min,	["Price"] = PriceLow}, -- Hazard Decal
	{ ["ID"] = "EXPD_DECAL01", 		["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx1Ph5,		["Price"] = PriceLow}, -- Pioneers Expedition Decal
	{ ["ID"] = "EXPD_DECAL02",		["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx2Ph5,		["Price"] = PriceLow}, -- Beachhead Expedition Decal
	{ ["ID"] = "EXPD_DECAL03",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph5,		["Price"] = PriceMedium}, -- Cartographers Expedition Decal
	{ ["ID"] = "EXPD_DECAL04",		["Campaign"] = "Ex4",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx4Ph5,		["Price"] = PriceHigh}, -- Emergence Expedition Decal
	
	{ ["ID"] = "EXPD_BANNER01", 	["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx1Ph2,		["Price"] = PriceLow}, -- Pioneers Expedition Banner
	{ ["ID"] = "BLD_EXPD_BASE01", 	["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx1Ph5,		["Price"] = PriceLow}, -- Pioneers Expedition Flag
	{ ["ID"] = "EXPD_BANNER02",		["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx2Ph5,		["Price"] = PriceLow}, -- Beachhead Expedition Banner
	{ ["ID"] = "EXPD_BANNER03",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph5,		["Price"] = PriceMedium}, -- Cartographers Expedition Banner
	{ ["ID"] = "EXPD_BANNER04",		["Campaign"] = "Ex4",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx4Ph5,		["Price"] = PriceHigh}, -- Emergence Expedition Banner
	
	{ ["ID"] = "BLD_FLYJAR",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph3,		["Price"] = PriceHigh}, -- Bio-Lantern
	{ ["ID"] = "BLD_PLANET_HOLO",	["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph2,		["Price"] = PriceHigh}, -- Holographic Chart Projector
	{ ["ID"] = "BASE_CAVE1",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph4,		["Price"] = PriceHigh}, -- Saucer Fungus
	{ ["ID"] = "BASE_CAVE2",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph4,		["Price"] = PriceHigh}, -- Cave Creeper
	{ ["ID"] = "BASE_CAVE3",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph4,		["Price"] = PriceHigh}, -- Troglotulip
	{ ["ID"] = "BASE_CAVE4",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph4,		["Price"] = PriceHigh}, -- Veined Flat Caps
	{ ["ID"] = "BASE_CAVE5",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph4,		["Price"] = PriceHigh}, -- Fingery Deposit
	{ ["ID"] = "BLD_SKULL",			["Campaign"] = "Ex4",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx4Ph3,		["Price"] = PriceHigh}, -- Titanic Trophy
	
	{ ["ID"] = "EXPD_BACKPACK01", 	["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx1Ph4,		["Price"] = PriceHigh}, -- Streamlined Jetpack Unit
	{ ["ID"] = "JETS_BUBBLE",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Ph1,		["Price"] = PriceVeryHigh}, -- Jetpack Bubble Trail
	{ ["ID"] = "JETS_WORM",			["Campaign"] = "Ex4",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx4Ph2,		["Price"] = PriceHigh}, -- Ghastly Trail
	{ ["ID"] = "EXPD_HELMET01", 	["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx1Ph3,		["Price"] = PriceHigh}, -- Golden First Spawn Battle Mask
	{ ["ID"] = "EXPD_WORMHAT",		["Campaign"] = "Ex4",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx4Ph4,		["Price"] = PriceVeryHigh}, -- Feasting Casque
	
	-- { ["ID"] = "MYSTERY_TRACKER",	["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx2Complete,	["Price"] = nil}, -- DISABLED No longer needed -- Historiographical Dosimeter
	{ ["ID"] = "EXPD_SPEC02",		["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx2Complete,	["Price"] = PriceHigh}, -- SSV Normandy
	
	{ ["ID"] = "TWITCH_PET01",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_2hr,		["Price"] = PriceHigh}, -- Z. Falynascria Egg
	{ ["ID"] = "TWITCH_PET02",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_2hr,		["Price"] = PriceHigh}, -- V. Pentaamqum Egg
	{ ["ID"] = "TWITCH_PET03",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_2hr,		["Price"] = PriceHigh}, -- G. Oestridinzeus Egg
	{ ["ID"] = "TWITCH_PET04",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_2hr,		["Price"] = PriceHigh}, -- J. Croconaakeum Egg
	{ ["ID"] = "TWITCH_PET05",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_2hr,		["Price"] = PriceHigh}, -- P. Sheptefalae Egg
	{ ["ID"] = "EXPD_EGG_03",		["Campaign"] = "Ex3",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx3Complete,	["Price"] = PriceVeryHigh}, -- Whispering Companion Egg
	{ ["ID"] = "EXPD_EGG_04",		["Campaign"] = "Ex4",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx4Complete,	["Price"] = PriceVeryHigh}, -- Sandworm Egg
	
	{ ["ID"] = "TWITCH_GUN01", 		["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceHigh}, -- Quantum Harmoniser Mark IV (A-Class Rifle)
	{ ["ID"] = "TWITCH_GUNUP01A", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceVeryLow}, -- Multi-tool Upgrade Pack 1
	{ ["ID"] = "TWITCH_GUN02", 		["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceHigh}, -- Loop Scoop Mark IV (A-Class Pistol)
	{ ["ID"] = "TWITCH_GUNUP01B", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceVeryLow}, -- Multi-tool Upgrade Pack 2
	{ ["ID"] = "TWITCH_GUN03", 		["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceHigh}, -- Arc Capacitor W/17I-15P (A-Class Pistol)
	{ ["ID"] = "TWITCH_GUNUP01C", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceVeryLow}, -- Multi-tool Upgrade Pack 3
	{ ["ID"] = "TWITCH_GUN04", 		["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceHigh}, -- Hunevar's Dream Charger (A-Class Pistol)
	{ ["ID"] = "TWITCH_GUNUP01D", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceVeryLow}, -- Multi-tool Upgrade Pack 4
	{ ["ID"] = "TWITCH_GUN05", 		["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceHigh}, -- Imperfect Loop Reflector (A-Class Rifle)
	{ ["ID"] = "TWITCH_GUNUP01E", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_1hr,		["Price"] = PriceVeryLow}, -- Multi-tool Upgrade Pack 5
	
	{ ["ID"] = "EXPD_SHIP01", 		["Campaign"] = "Ex1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx1Complete,	["Price"] = PriceHigh}, -- Golden Vector (Expedition 1)
	{ ["ID"] = "TWITCH_SHIP01", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_3hr,		["Price"] = PriceHigh}, -- Eokai's Prime Inquirer (A-Class Explorer)
	{ ["ID"] = "TWITCH_SHIP02", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_3hr,		["Price"] = PriceHigh}, -- Hoshis HP7 (A-Class Fighter)
	{ ["ID"] = "TWITCH_SHIP03", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_3hr,		["Price"] = PriceHigh}, -- Nemesis of the Kudama (A-Class Fighter)
	{ ["ID"] = "TWITCH_SHIP04", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_3hr,		["Price"] = PriceHigh}, -- Ultimate Pride JB2 (A-Class Hauler)
	{ ["ID"] = "TWITCH_SHIP05", 	["Campaign"] = "Tw1",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw1_3hr,		["Price"] = PriceHigh}, -- Prime Song JZ4 (A-Class Shuttle)
	{ ["ID"] = "TWITCH_SHIP06",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_3hr,		["Price"] = PriceVeryHigh}, -- VV5 Ariyaz (A-Class Shuttle)
	{ ["ID"] = "TWITCH_SHIP07",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_3hr,		["Price"] = PriceVeryHigh}, -- Jirishi's Prospect (A-Class Fighter)
	{ ["ID"] = "TWITCH_SHIP08B",	["Campaign"] = "Ex2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementEx2Ph2,		["Price"] = PriceVeryHigh}, -- Hadach's Discovery KH3 (A-Class Hunter) (Expedition 2)
	{ ["ID"] = "TWITCH_SHIP08B",	["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_3hr,		["Price"] = PriceVeryHigh}, -- Hadach's Discovery KH3 (A-Class Hunter) (Twitch Campaign 2)
	{ ["ID"] = "TWITCH_SHIP09",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_3hr,		["Price"] = PriceVeryHigh}, -- Ultimate Sleep LO1 (A-Class Explorer)
	{ ["ID"] = "TWITCH_SHIP10",		["Campaign"] = "Tw2",	["IsConsumable"] = "False",	["Tier"] = TierRequirementTw2_3hr,		["Price"] = PriceVeryHigh}, -- Hiwamiha of Destiny (Silver A-Class Fighter)
}

------------------------------------------------------------------------------
-- END settings
------------------------------------------------------------------------------

function GetQuincyXmlEntry(id, shopNumber, tier, isConsumable) -- Returns a formatted XML section with the given data. id := Item ID, shopNumber := Used for determining which weeks item is available, tier := Community tier requirement, IsConsumable := If you can buy multiple
return[[    <Property value="GcPurchaseableSpecial.xml">
      <Property name="ID" value="]] .. id .. [[" />
      <Property name="ShopNumber" value="]] .. shopNumber .. [[" />
      <Property name="MissionTier" value="]] .. tier .. [[" />
      <Property name="IsConsumable" value="]] .. isConsumable .. [[" />
    </Property>
]]
end -- GetNewSpecial()

QuincyEntryTable = { ["xmlTable"] = {}, ["activeRewardTable"] = {} }
for u,reward in ipairs(RewardTable) do
	local tmpShopNumber = ActiveShopNumber
	local tmpTier = reward["Tier"]
	
	-- Apply Global Settings
	if NoRequirements then 
		tmpShopNumber = 1 
		tmpTier = -1
	end

	local enableReward = true
	if DisableExpedition1Rewards then
		if reward["Campaign"] == "Ex1" then
			enableReward = false
		end
	end
	if DisableExpedition2Rewards then
		if reward["Campaign"] == "Ex2" then
			enableReward = false
		end
	end
	if DisableExpedition3Rewards then
		if reward["Campaign"] == "Ex3" then
			enableReward = false
		end
	end
	if DisableExpedition4Rewards then
		if reward["Campaign"] == "Ex4" then
			enableReward = false
		end
	end
	if DisableTwitch1Rewards then
		if reward["Campaign"] == "Tw1" then
			enableReward = false
		end
	end
	if DisableTwitch2Rewards then
		if reward["Campaign"] == "Tw2" then
			enableReward = false
		end
	end
	if ConsumablesOnly then
		if reward["IsConsumable"] == "False" then
			enableReward = false
		end
	end
	-- END Apply Global Settings
	
	if enableReward then
		table.insert(QuincyEntryTable["xmlTable"], GetQuincyXmlEntry(reward["ID"], tmpShopNumber, tmpTier, reward["IsConsumable"])) -- add to the XML table of Quincy items
		table.insert(QuincyEntryTable["activeRewardTable"], reward) -- for compiling efficiently at changing prices with disabled items
	end
end

NMS_MOD_DEFINITION_CONTAINER = -- tell the compiler about the mod
{
	["MOD_FILENAME"] 			= "DriftersYATERISM.pak",
	["MOD_AUTHOR"]				= "DrifterOfTime", -- that's me!
	["MOD_DESCRIPTION"]			= "This mod aims to balance the experience of putting Twitch and Expedition rewards in the QuickSilver shop. Some items are cheaper, some items are much more expensive. Basically I wanted a mod like this that makes it feel less Cheaty McCheatface to put the items in the shop. (... Cheaty McCheatface version available)",
	["NMS_VERSION"]				= "3.64", -- minimum NMS version -- current: 3.68
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\PURCHASEABLESPECIALS.MBIN"}, -- Quincy's MBIN
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Table"}, -- tell the compiler to put the combined XML after the "Table" section in the EXML
							["LINE_OFFSET"] 		= "+0", -- tell the compiler to put the combined XML above the other entries
							["ADD"] 				= table.concat(QuincyEntryTable["xmlTable"]), -- combine the XML table entries and tell the compiler to finally add it to the file
						},
					},
				},
			},
		},
	},
}

-- Change prices
if not DefaultPrices then

	MbinChangeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"] -- for code readablility
	
	MbinChangeTable[2] = -- tell the compiler to use a second file now
	{
		["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"}, -- Prices (among other things) MBIN
		["EXML_CHANGE_TABLE"] 	= 
		{
		},
	}
	
	ExmlChangeTable = MbinChangeTable[2]["EXML_CHANGE_TABLE"] -- again for code readablility
	
	for i,item in ipairs(QuincyEntryTable["activeRewardTable"]) do -- this has changed to make compiling more efficient with disabled items
		local tmpPrice = item["Price"]
		if AllPricesFree then tmpPrice = 0 end -- apply last global setting
		local tmpTable = -- tell the compiler actually change prices
		{					
			["SPECIAL_KEY_WORDS"] = {"Id", item["ID"]},
			["VALUE_CHANGE_TABLE"] = 
			{
				{"BaseValue", tmpPrice},
			},
		}
		ExmlChangeTable[#ExmlChangeTable + 1] = tmpTable
	end
end