----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "TECHNOLOGY"
METADATA_NMS_VERSION    = "451"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for technology objects. Modifies files in METADATA\\REALITY and METADATA\\GAMESTATE\\PLAYERDATA."



--------------------------------------------------
-- technology costs for new research tree
--------------------------------------------------

COST_PHOTONIX = 1
COST_LAUNCHER = 2
COST_FRAMESHIFT = 2
COST_TRAIL_EXP = 2
COST_WAVEFORM = 3
COST_SINGULARITY = 3

COST_SHIELD = 1
COST_WEAPON = 2

COST_COMPUTER = 1
COST_LOCATOR = 2
COST_DISSONANT = 2
COST_POLICE = 1
COST_TRANSFER = 2
COST_HYPERDRIVE = 3

COST_TRAIL_MOD = 1
COST_BOBBLE_TOP = 1
COST_BOBBLE_BOTTOM = 0



----------------------------------------------------------------------------------------------------
-- functions
----------------------------------------------------------------------------------------------------

function BuildTechProperty(
name,type,cost,
primary,upgrade,ships,basetech,
charging,crafting,stats,
color0,color1,color2
) return
[[
<Property value="GcTechnology.xml">
  <Property name="ID" value="TECH_]]..name..[[" />
  <Property name="Group" value="" />
  <Property name="Name" value="TEXT_]]..type..[[_]]..name..[[_N" />
  <Property name="NameLower" value="TEXT_]]..type..[[_]]..name..[[_L" />
  <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_]]..type..[[_]]..name..[[_S" />
  </Property>
  <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_]]..type..[[_]]..name..[[_D" />
  </Property>
  <Property name="Teach" value="True" />
  <Property name="HintStart" value="" />
  <Property name="HintEnd" value="" />
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/]]..type..[[/]]..name..[[.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  ]]..color0..[[
  <Property name="Level" value="1" />
  ]]..charging..[[
  <Property name="ChargeMultiplier" value="1" />
  <Property name="BuildFullyCharged" value="True" />
  <Property name="UsesAmmo" value="False" />
  <Property name="AmmoId" value="" />
  <Property name="PrimaryItem" value="]]..primary..[[" />
  <Property name="Upgrade" value="]]..upgrade..[[" />
  <Property name="Core" value="False" />
  <Property name="RepairTech" value="False" />
  <Property name="Procedural" value="False" />
  <Property name="Category" value="GcTechnologyCategory.xml">
    <Property name="TechnologyCategory" value="]]..ships..[[" />
  </Property>
  <Property name="Rarity" value="GcTechnologyRarity.xml">
    <Property name="TechnologyRarity" value="Impossible" />
  </Property>
  <Property name="Value" value="5" />
  ]]..crafting..stats..[[
  <Property name="RequiredTech" value="]]..basetech..[[" />
  <Property name="RequiredLevel" value="0" />
  <Property name="FocusLocator" value="" />
  ]]..color1..color2..[[
  <Property name="RewardGroup" value="" />
  <Property name="BaseValue" value="1" />
  <Property name="Cost" value="GcItemPriceModifiers.xml">
    <Property name="SpaceStationMarkup" value="0" />
    <Property name="LowPriceMod" value="0" />
    <Property name="HighPriceMod" value="0" />
    <Property name="BuyBaseMarkup" value="0" />
    <Property name="BuyMarkupMod" value="0" />
  </Property>
  <Property name="RequiredRank" value="2" />
  <Property name="DispensingRace" value="GcAlienRace.xml">
    <Property name="AlienRace" value="Traders" />
  </Property>
  <Property name="FragmentCost" value="]]..cost..[[" />
  <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
    <Property name="TechnologyRarity" value="Normal" />
  </Property>
  <Property name="WikiEnabled" value="True" />
  <Property name="DamagedDescription" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="ParentTechId" value="" />
  <Property name="IsTemplate" value="False" />
</Property>
]]
end

function BuildColorProperty(name,r,g,b) return
[[
<Property name="]]..name..[[" value="Colour.xml">
  <Property name="R" value="]]..r..[[" />
  <Property name="G" value="]]..g..[[" />
  <Property name="B" value="]]..b..[[" />
  <Property name="A" value="1" />
</Property>
]]
end

function BuildTrailProperty(name) return
[[
<Property value="GcCustomisationShipTrails.xml">
  <Property name="LinkedTechID" value="TECH_]]..name..[[" />
  <Property name="Trails" value="TkModelResource.xml">
    <Property name="Filename" value="MODELS/TRAILS/]]..name..[[.SCENE.MBIN" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
</Property>
]]
end

function BuildBobbleheadProperty(name) return
[[
<Property value="GcCustomisationBobbleHead.xml">
  <Property name="LinkedTechId" value="TECH_]]..name..[[" />
  <Property name="BobbleHead" value="TkModelResource.xml">
    <Property name="Filename" value="MODELS/BOBBLEHEADS/]]..name..[[.SCENE.MBIN" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
</Property>
]]
end

function BuildCraftingSection(item,type,amount) return
[[
<Property value="GcTechnologyRequirement.xml">
  <Property name="ID" value="]]..item..[[" />
  <Property name="Type" value="GcInventoryType.xml">
    <Property name="InventoryType" value="]]..type..[[" />
  </Property>
  <Property name="Amount" value="]]..amount..[[" />
</Property>
]]
end

function BuildCraftingProperty(...)
  local arg = {...}
  if #arg == 3 then return
  [[<Property name="Requirements">]]..
  BuildCraftingSection(arg[1],arg[2],arg[3])..
  [[</Property>]]
  end
  if #arg == 6 then return
  [[<Property name="Requirements">]]..
  BuildCraftingSection(arg[1],arg[2],arg[3])..
  BuildCraftingSection(arg[4],arg[5],arg[6])..
  [[</Property>]]
  end
  if #arg == 9 then return
  [[<Property name="Requirements">]]..
  BuildCraftingSection(arg[1],arg[2],arg[3])..
  BuildCraftingSection(arg[4],arg[5],arg[6])..
  BuildCraftingSection(arg[7],arg[8],arg[9])..
  [[</Property>]]
  end
end

function BuildStatsSection(stat,bonus,level) return
[[
<Property value="GcStatsBonus.xml">
  <Property name="Stat" value="GcStatsTypes.xml">
    <Property name="StatsType" value="]]..stat..[[" />
  </Property>
  <Property name="Bonus" value="]]..bonus..[[" />
  <Property name="Level" value="]]..level..[[" />
</Property>
]]
end

function BuildStatsProperty(base,...)
  local arg = {...}
  local basesection = 
  [[
  <Property name="BaseStat" value="GcStatsTypes.xml">
    <Property name="StatsType" value="]]..base..[[" />
  </Property>
  ]]
  if #arg == 0 then return
  basesection..[[<Property name="StatBonuses" />]]
  end
  if #arg == 3 then return
  basesection..
  [[<Property name="StatBonuses">]]..
  BuildStatsSection(arg[1],arg[2],arg[3])..
  [[</Property>]]
  end
  if #arg == 6 then return
  basesection..
  [[<Property name="StatBonuses">]]..
  BuildStatsSection(arg[1],arg[2],arg[3])..
  BuildStatsSection(arg[4],arg[5],arg[6])..
  [[</Property>]]
  end
  if #arg == 9 then return
  basesection..
  [[<Property name="StatBonuses">]]..
  BuildStatsSection(arg[1],arg[2],arg[3])..
  BuildStatsSection(arg[4],arg[5],arg[6])..
  BuildStatsSection(arg[7],arg[8],arg[9])..
  [[</Property>]]
  end
end



----------------------------------------------------------------------------------------------------
-- Multitool scanner + shared properties
----------------------------------------------------------------------------------------------------

PROPERTY_TOOL_SCANNER =
[[
<Property value="GcTechnology.xml">
  <Property name="ID" value="TECH_SCANNER" />
  <Property name="Group" value="" />
  <Property name="Name" value="TEXT_TECH_SCANNER_N" />
  <Property name="NameLower" value="TEXT_TECH_SCANNER_L" />
  <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_TECH_SCANNER_S" />
  </Property>
  <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_TECH_SCANNER_D" />
  </Property>
  <Property name="Teach" value="True" />
  <Property name="HintStart" value="" />
  <Property name="HintEnd" value="" />
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/TECH/TOOL_SCANNER.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="Colour" value="Colour.xml">
    <Property name="R" value="0.101960786" />
    <Property name="G" value="0.15294118" />
    <Property name="B" value="0.2" />
    <Property name="A" value="1" />
  </Property>
  <Property name="Level" value="1" />
  <Property name="Chargeable" value="True" />
  <Property name="ChargeAmount" value="1" />
  <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
    <Property name="SubstanceCategory" value="Exotic" />
  </Property>
  <Property name="ChargeBy">
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="STORM_CRYSTAL" />
    </Property>
  </Property>
  <Property name="ChargeMultiplier" value="1" />
  <Property name="BuildFullyCharged" value="True" />
  <Property name="UsesAmmo" value="False" />
  <Property name="AmmoId" value="" />
  <Property name="PrimaryItem" value="False" />
  <Property name="Upgrade" value="True" />
  <Property name="Core" value="False" />
  <Property name="RepairTech" value="False" />
  <Property name="Procedural" value="False" />
  <Property name="Category" value="GcTechnologyCategory.xml">
    <Property name="TechnologyCategory" value="Weapon" />
  </Property>
  <Property name="Rarity" value="GcTechnologyRarity.xml">
    <Property name="TechnologyRarity" value="Impossible" />
  </Property>
  <Property name="Value" value="10" />
  <Property name="Requirements">
    <Property value="GcTechnologyRequirement.xml">
      <Property name="ID" value="ITEM_PLATING" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
      <Property name="Amount" value="4" />
    </Property>
    <Property value="GcTechnologyRequirement.xml">
      <Property name="ID" value="ITEM_FRAGMENT" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
      <Property name="Amount" value="1" />
    </Property>
    <Property value="GcTechnologyRequirement.xml">
      <Property name="ID" value="ITEM_CIRCUIT" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
      <Property name="Amount" value="1" />
    </Property>
  </Property>
  <Property name="BaseStat" value="GcStatsTypes.xml">
    <Property name="StatsType" value="Weapon_Scan" />
  </Property>
  <Property name="StatBonuses" />
  <Property name="RequiredTech" value="" />
  <Property name="RequiredLevel" value="0" />
  <Property name="FocusLocator" value="" />
  <Property name="UpgradeColour" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="LinkColour" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="0.8" />
    <Property name="B" value="0" />
    <Property name="A" value="1" />
  </Property>
  <Property name="RewardGroup" value="" />
  <Property name="BaseValue" value="1" />
  <Property name="Cost" value="GcItemPriceModifiers.xml">
    <Property name="SpaceStationMarkup" value="0" />
    <Property name="LowPriceMod" value="0" />
    <Property name="HighPriceMod" value="0" />
    <Property name="BuyBaseMarkup" value="0" />
    <Property name="BuyMarkupMod" value="0" />
  </Property>
  <Property name="RequiredRank" value="1" />
  <Property name="DispensingRace" value="GcAlienRace.xml">
    <Property name="AlienRace" value="None" />
  </Property>
  <Property name="FragmentCost" value="0" />
  <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
    <Property name="TechnologyRarity" value="Impossible" />
  </Property>
  <Property name="WikiEnabled" value="True" />
  <Property name="DamagedDescription" value="VariableSizeString.xml">
    <Property name="Value" value="" />
  </Property>
  <Property name="ParentTechId" value="" />
  <Property name="IsTemplate" value="False" />
</Property>
]]

PROPERTY_CHARGE_CRYSTAL =
[[
<Property value="NMSString0x10.xml">
  <Property name="Value" value="ITEM_CRYSTAL" />
</Property>
]]

--------------------------------------------------
-- shared properties
--------------------------------------------------

CHARGING_NONE =
[[
<Property name="Chargeable" value="False" />
<Property name="ChargeAmount" value="100" />
<Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
  <Property name="SubstanceCategory" value="Earth" />
</Property>
<Property name="ChargeBy" />
]]

STATS_NONE =              BuildStatsProperty("Ship_Scan")
STATS_TRAIL =             BuildStatsProperty("Ship_Scan","Ship_Boost",1.01,1)

COLOR0_BLUE =             BuildColorProperty("Colour",0.12941177,0.46666667,0.78431374)
COLOR0_GREEN =            BuildColorProperty("Colour",0.03529412,0.36078432,0.46666667)
COLOR0_GREY =             BuildColorProperty("Colour",0.101960786,0.15294118,0.2)

COLOR1_SHARED =           BuildColorProperty("UpgradeColour",1,1,1)
COLOR1_PHOTON =           BuildColorProperty("UpgradeColour",0.015686275,0.34901962,1)

COLOR2_SHARED =           BuildColorProperty("LinkColour",0.2,0.6,1)
COLOR2_PHOTON =           BuildColorProperty("LinkColour",0.26666668,0.99215686,1)
COLOR2_NOBORDER  =        BuildColorProperty("LinkColour",0,0,0)
COLOR2_TRAIL =            BuildColorProperty("LinkColour",1,1,1)



----------------------------------------------------------------------------------------------------
-- shield and weapons technologies
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- starship shield replacement
--------------------------------------------------

CHARGING_SHIELD =
[[
<Property name="Chargeable" value="True" />
<Property name="ChargeAmount" value="200" />
<Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
  <Property name="SubstanceCategory" value="Catalyst" />
</Property>
<Property name="ChargeBy">
  <Property value="NMSString0x10.xml">
    <Property name="Value" value="CATALYST1" />
  </Property>
  <Property value="NMSString0x10.xml">
    <Property name="Value" value="CATALYST2" />
  </Property>
  <Property value="NMSString0x10.xml">
    <Property name="Value" value="SHIPCHARGE" />
  </Property>
</Property>
]]

CRAFTING_SHIELD = BuildCraftingProperty(
  "ASTEROID3","Substance",100,
  "MIRROR","Product",3)

STATS_SHIELD = BuildStatsProperty(
  "Ship_Armour_Shield",
  "Ship_Armour_Shield",1,1,
  "Ship_Armour_Shield_Strength",0.75,1)

COLOR2_SHIELD = BuildColorProperty("LinkColour",1,0.972549,0.6509804)

PROPERTY_TECH_SHIELD = BuildTechProperty(
  "SHIELD","TECH",COST_SHIELD,
  "True","False","AllShipsExceptAlien","",
  CHARGING_SHIELD,CRAFTING_SHIELD,STATS_SHIELD,
  COLOR0_BLUE,COLOR1_SHARED,COLOR2_SHIELD)

--------------------------------------------------
-- Photon Cannon blueprint
--------------------------------------------------

CRAFTING_PHOTON = BuildCraftingProperty(
  "STELLAR2","Substance",200,
  "MAGNET","Product",4,
  "TECH_COMP","Product",2)

STATS_PHOTON = BuildStatsProperty(
  "Ship_Weapons_Guns",
  "Ship_Weapons_Guns_Damage",64,3,
  "Ship_Weapons_Guns_HeatTime",0.8,1)

PROPERTY_TECH_PHOTON = BuildTechProperty(
  "PHOTON","TECH",COST_WEAPON,
  "False","True","AllShipsExceptAlien","SHIPGUN1",
  CHARGING_NONE,CRAFTING_PHOTON,STATS_PHOTON,
  COLOR0_BLUE,COLOR1_PHOTON,COLOR2_PHOTON)

--------------------------------------------------
-- Cyclotron Ballista blueprint
--------------------------------------------------

COLOR1_CYCLO = BuildColorProperty("UpgradeColour",0.44313726,0.1882353,0.8235294)
COLOR2_CYCLO = BuildColorProperty("LinkColour",0.8039216,0.38039216,1)

CRAFTING_CYCLO = BuildCraftingProperty(
  "CAVE2","Substance",200,
  "BIO","Product",4,
  "TECH_COMP","Product",2)

STATS_CYCLO = BuildStatsProperty(
  "Ship_Weapons_Plasma",
  "Ship_Weapons_Guns_BulletsPerShot",4,3)
  
PROPERTY_TECH_CYCLO = BuildTechProperty(
  "CYCLO","TECH",COST_WEAPON,
  "False","True","AllShipsExceptAlien","SHIPPLASMA",
  CHARGING_NONE,CRAFTING_CYCLO,STATS_CYCLO,
  COLOR0_BLUE,COLOR1_CYCLO,COLOR2_CYCLO)

--------------------------------------------------
-- Phase Beam blueprint
--------------------------------------------------

COLOR1_PHASE = BuildColorProperty("UpgradeColour",1,1,1)
COLOR2_PHASE = BuildColorProperty("LinkColour",0.26666668,1,0.627451)

CRAFTING_PHASE = BuildCraftingProperty(
  "SUNGOLD","Substance",200,
  "COMPUTER","Product",2,
  "TECH_COMP","Product",2)

STATS_PHASE = BuildStatsProperty(
  "Ship_Weapons_Lasers",
  "Ship_Weapons_Lasers_Damage",600,3,
  "Ship_Weapons_Lasers_HeatTime",0.01,1)

PROPERTY_TECH_PHASE = BuildTechProperty(
  "PHASE","TECH",COST_WEAPON,
  "False","True","AllShipsExceptAlien","SHIPLAS1",
  CHARGING_NONE,CRAFTING_PHASE,STATS_PHASE,
  COLOR0_BLUE,COLOR1_PHASE,COLOR2_PHASE)

--------------------------------------------------
-- Positron Ejector blueprint
--------------------------------------------------

COLOR1_SHOTGUN = BuildColorProperty("UpgradeColour",1,0.8,0)
COLOR2_SHOTGUN = BuildColorProperty("LinkColour",1,0.84705883,0)

CRAFTING_SHOTGUN = BuildCraftingProperty(
  "ASTEROID3","Substance",200,
  "HYDRALIC","Product",4,
  "TECH_COMP","Product",2)

STATS_SHOTGUN = BuildStatsProperty(
  "Ship_Weapons_Shotgun",
  "Ship_Weapons_Guns_Dispersion",0.8,3,
  "Ship_Weapons_Guns_Rate",1.1,1)

PROPERTY_TECH_SHOTGUN = BuildTechProperty(
  "SHOTGUN","TECH",COST_WEAPON,
  "False","True","AllShipsExceptAlien","SHIPSHOTGUN",
  CHARGING_NONE,CRAFTING_SHOTGUN,STATS_SHOTGUN,
  COLOR0_BLUE,COLOR1_SHOTGUN,COLOR2_SHOTGUN)

--------------------------------------------------
-- Rocket Launcher blueprint
--------------------------------------------------

COLOR1_ROCKET = BuildColorProperty("UpgradeColour",0.44313726,0.1882353,0.8235294)
COLOR2_ROCKET = BuildColorProperty("LinkColour",0.8039216,0.38039216,1)

CRAFTING_ROCKET = BuildCraftingProperty(
  "LAVA1","Substance",200,
  "CASING","Product",6,
  "TECH_COMP","Product",2)

STATS_ROCKET = BuildStatsProperty(
  "Ship_Weapons_Rockets",
  "Ship_Weapons_Guns_Damage",650,3,
  "Ship_Weapons_Guns_Scale",0.5,1,
  "Ship_Weapons_Guns_Damage_Radius",0.1,1)

PROPERTY_TECH_ROCKET = BuildTechProperty(
  "ROCKET","TECH",COST_WEAPON,
  "False","True","AllShipsExceptAlien","SHIPROCKETS",
  CHARGING_NONE,CRAFTING_ROCKET,STATS_ROCKET,
  COLOR0_BLUE,COLOR1_ROCKET,COLOR2_ROCKET)

--------------------------------------------------
-- Sentinel Cannon blueprint
--------------------------------------------------

CRAFTING_SENTINEL = BuildCraftingProperty(
  "COMPOUND5","Product",1,
  "SPIDER_PROD","Product",3)

STATS_SENTINEL = BuildStatsProperty(
  "Ship_Weapons_Guns",
  "Ship_Weapons_ShieldLeech",0.05,3,
  "Ship_Weapons_Guns_Damage_Radius",1.01,1)

PROPERTY_TECH_SENTINEL = BuildTechProperty(
  "SENTINEL","TECH",COST_WEAPON,
  "False","True","RobotShip","SHIPGUN1",
  CHARGING_NONE,CRAFTING_SENTINEL,STATS_SENTINEL,
  COLOR0_GREY,COLOR1_PHOTON,COLOR2_PHOTON)



----------------------------------------------------------------------------------------------------
-- functional modules
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- item transfer
--------------------------------------------------

CRAFTING_TRANSFER = BuildCraftingProperty(
  "ROBOT1","Substance",200,
  "ILLEGAL_PROD6","Product",5)

STATS_TRANSFER = BuildStatsProperty(
  "Ship_Teleport",
  "Ship_Teleport",950,1)

PROPERTY_TECH_TRANSFER = BuildTechProperty(
  "TRANSFER","TECH",COST_TRANSFER,
  "True","False","AllShipsExceptAlien","",
  CHARGING_NONE,CRAFTING_TRANSFER,STATS_TRANSFER,
  COLOR0_GREEN,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- hyperdrive blueprint
--------------------------------------------------

CRAFTING_HYPERDRIVE = BuildCraftingProperty(
  "POI_LOCATOR","Product",1,
  "COMPUTER","Product",3)

STATS_HYPERDRIVE = BuildStatsProperty(
  "Ship_Hyperdrive",
  "Ship_Hyperdrive_JumpDistance",400,4)

PROPERTY_TECH_HYPERDRIVE = BuildTechProperty(
  "HYPERDRIVE","TECH",COST_HYPERDRIVE,
  "False","True","AllShipsExceptAlien","HYPERDRIVE",
  CHARGING_NONE,CRAFTING_HYPERDRIVE,STATS_HYPERDRIVE,
  COLOR0_BLUE,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- conflict + economy scanner combo
--------------------------------------------------

CRAFTING_COMPUTER = BuildCraftingProperty(
  "FRIG_BOOST_EXP","Product",1,
  "FRIG_BOOST_TRA","Product",1,
  "TECH_COMP","Product",3)

STATS_COMPUTER = BuildStatsProperty(
  "Ship_Scan_EconomyFilter",
  "Ship_Scan_EconomyFilter",1,1,
  "Ship_Scan_ConflictFilter",1,1)

PROPERTY_TECH_COMPUTER = BuildTechProperty(
  "COMPUTER","TECH",COST_COMPUTER,
  "True","False","AllShipsExceptAlien","",
  CHARGING_NONE,CRAFTING_COMPUTER,STATS_COMPUTER,
  COLOR0_GREEN,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- portal + archive locator
--------------------------------------------------

CRAFTING_LOCATOR = BuildCraftingProperty(
  "CAVE1","Substance",100,
  "FARMPROD5","Product",1,
  "TECH_COMP","Product",2)

STATS_LOCATOR = BuildStatsProperty(
  "Ship_Scan",
  "Ship_Scan",1,2)

PROPERTY_TECH_LOCATOR = BuildTechProperty(
  "LOCATOR","TECH",COST_LOCATOR,
  "False","True","AllShipsExceptAlien","",
  CHARGING_NONE,CRAFTING_LOCATOR,STATS_LOCATOR,
  COLOR0_BLUE,COLOR1_SHARED,COLOR2_NOBORDER)
  
--------------------------------------------------
-- dissonant navigation
--------------------------------------------------

CRAFTING_DISSONANT = BuildCraftingProperty(
  "AF_METAL","Substance",50,
  "DRONE_SHARD","Product",5,
  "TECH_COMP","Product",2)

STATS_DISSONANT = BuildStatsProperty(
  "Ship_Scan",
  "Ship_Scan",1,3)

PROPERTY_TECH_DISSONANT = BuildTechProperty(
  "DISSONANT","TECH",COST_DISSONANT,
  "False","True","AllShipsExceptAlien","",
  CHARGING_NONE,CRAFTING_DISSONANT,STATS_DISSONANT,
  COLOR0_BLUE,COLOR1_SHARED,COLOR2_NOBORDER)

--------------------------------------------------
-- police antenna
--------------------------------------------------

CRAFTING_POLICE = BuildCraftingProperty(
  "LAND2","Substance",100,
  "POLICE_TOKEN","Product",1,
  "TECH_COMP","Product",1)

PROPERTY_TECH_POLICE = BuildTechProperty(
  "POLICE","TECH",COST_POLICE,
  "False","True","AllShipsExceptAlien","",
  CHARGING_NONE,CRAFTING_POLICE,STATS_NONE,
  COLOR0_BLUE,COLOR1_SHARED,COLOR2_NOBORDER)



----------------------------------------------------------------------------------------------------
-- starship trails
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- cyan
--------------------------------------------------

TRAIL_CYAN = BuildTrailProperty("CYAN")

CRAFTING_CYAN = BuildCraftingProperty(
  "LAND2","Substance",50,
  "LAUNCHSUB2","Substance",50)

PROPERTY_TRAIL_CYAN = BuildTechProperty(
  "CYAN","TRAIL",COST_TRAIL_MOD,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_CYAN,STATS_TRAIL,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_TRAIL)

--------------------------------------------------
-- orange
--------------------------------------------------

TRAIL_ORANGE = BuildTrailProperty("ORANGE")

CRAFTING_ORANGE = BuildCraftingProperty(
  "LAND2","Substance",50,
  "SUNGOLD","Substance",50)

PROPERTY_TRAIL_ORANGE = BuildTechProperty(
  "ORANGE","TRAIL",COST_TRAIL_MOD,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_ORANGE,STATS_TRAIL,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_TRAIL)

--------------------------------------------------
-- pink
--------------------------------------------------

TRAIL_PINK = BuildTrailProperty("PINK")

CRAFTING_PINK = BuildCraftingProperty(
  "LAND2","Substance",50,
  "BUI_SCRAP","Substance",50)

PROPERTY_TRAIL_PINK = BuildTechProperty(
  "PINK","TRAIL",COST_TRAIL_MOD,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_PINK,STATS_TRAIL,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_TRAIL)

--------------------------------------------------
-- white
--------------------------------------------------

TRAIL_WHITE = BuildTrailProperty("WHITE")

CRAFTING_WHITE = BuildCraftingProperty(
  "LAND2","Substance",50,
  "PLANT_WATER","Substance",50)

PROPERTY_TRAIL_WHITE = BuildTechProperty(
  "WHITE","TRAIL",COST_TRAIL_MOD,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_WHITE,STATS_TRAIL,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_TRAIL)

--------------------------------------------------
-- orange + effects
--------------------------------------------------

TRAIL_GLITCH = BuildTrailProperty("GLITCH")

CRAFTING_GLITCH = BuildCraftingProperty(
  "STELLAR2","Substance",50,
  "HEXCORE","Product",1)

PROPERTY_TRAIL_GLITCH = BuildTechProperty(
  "GLITCH","TRAIL",COST_TRAIL_MOD,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_GLITCH,STATS_TRAIL,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_TRAIL)

--------------------------------------------------
-- cyan + effects
--------------------------------------------------

TRAIL_ELECTRIC = BuildTrailProperty("ELECTRIC")

CRAFTING_ELECTRIC = BuildCraftingProperty(
  "STELLAR2","Substance",50,
  "STORM_CRYSTAL","Product",1)

PROPERTY_TRAIL_ELECTRIC = BuildTechProperty(
  "ELECTRIC","TRAIL",COST_TRAIL_MOD,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_ELECTRIC,STATS_TRAIL,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_TRAIL)

--------------------------------------------------
-- purple + effects
--------------------------------------------------

TRAIL_PSYCHIC = BuildTrailProperty("PSYCHIC")

CRAFTING_PSYCHIC = BuildCraftingProperty(
  "STELLAR2","Substance",50,
  "DRONE_SALVAGE","Product",1)

PROPERTY_TRAIL_PSYCHIC = BuildTechProperty(
  "PSYCHIC","TRAIL",COST_TRAIL_MOD,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_PSYCHIC,STATS_TRAIL,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_TRAIL)



----------------------------------------------------------------------------------------------------
-- bobblehead bonuses
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- launch cost
--------------------------------------------------

CRAFTING_BOOSTLAUNCH = BuildCraftingProperty(
  "TRA_COMPONENT5","Product",1,
  "TECH_COMP","Product",1)
  
STATS_BOOSTLAUNCH = BuildStatsProperty("Ship_Scan","Ship_Launcher_TakeOffCost",0.9,1)
  
PROPERTY_TECH_BOOSTLAUNCH = BuildTechProperty(
  "BOOSTL","TECH",COST_BOBBLE_TOP,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_BOOSTLAUNCH,STATS_BOOSTLAUNCH,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- damage
--------------------------------------------------

CRAFTING_BOOSTDAMAGE = BuildCraftingProperty(
  "TRA_ENERGY5","Product",1,
  "TECH_COMP","Product",1)
  
STATS_BOOSTDAMAGE = BuildStatsProperty("Ship_Scan","Ship_Weapons_Guns_Damage",8,1)
  
PROPERTY_TECH_BOOSTDAMAGE = BuildTechProperty(
  "BOOSTD","TECH",COST_BOBBLE_TOP,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_BOOSTDAMAGE,STATS_BOOSTDAMAGE,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- boost
--------------------------------------------------

CRAFTING_BOOSTPULSE = BuildCraftingProperty(
  "TRA_ALLOY5","Product",1,
  "TECH_COMP","Product",1)
  
STATS_BOOSTPULSE = BuildStatsProperty("Ship_Scan","Ship_Boost",1.05,1)
  
PROPERTY_TECH_BOOSTPULSE = BuildTechProperty(
  "BOOSTP","TECH",COST_BOBBLE_TOP,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_BOOSTPULSE,STATS_BOOSTPULSE,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- warp range
--------------------------------------------------

CRAFTING_BOOSTWARP = BuildCraftingProperty(
  "TRA_TECH5","Product",1,
  "TECH_COMP","Product",1)
  
STATS_BOOSTWARP = BuildStatsProperty("Ship_Scan","Ship_Hyperdrive_JumpDistance",50,1)
  
PROPERTY_TECH_BOOSTWARP = BuildTechProperty(
  "BOOSTW","TECH",COST_BOBBLE_TOP,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_BOOSTWARP,STATS_BOOSTWARP,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- shield
--------------------------------------------------

CRAFTING_BOOSTSHIELD = BuildCraftingProperty(
  "TRA_MINERALS5","Product",1,
  "TECH_COMP","Product",1)
  
STATS_BOOSTSHIELD = BuildStatsProperty("Ship_Scan","Ship_Armour_Shield_Strength",0.05,1)
  
PROPERTY_TECH_BOOSTSHIELD = BuildTechProperty(
  "BOOSTS","TECH",COST_BOBBLE_TOP,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_BOOSTSHIELD,STATS_BOOSTSHIELD,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- manueverability
--------------------------------------------------

CRAFTING_BOOSTMANUEV = BuildCraftingProperty(
  "TRA_EXOTICS5","Product",1,
  "TECH_COMP","Product",1)
  
STATS_BOOSTMANUEV = BuildStatsProperty("Ship_Scan","Ship_BoostManeuverability",1.05,1)
  
PROPERTY_TECH_BOOSTMANUEV = BuildTechProperty(
  "BOOSTM","TECH",COST_BOBBLE_TOP,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_BOOSTMANUEV,STATS_BOOSTMANUEV,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)



----------------------------------------------------------------------------------------------------
-- bobblehead models
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- holo collection - blob
--------------------------------------------------

BOBBLE_BLOB = BuildBobbleheadProperty("BLOB")

CRAFTING_BLOB = BuildCraftingProperty(
  "ASTEROID3","Substance",20,
  "NAV_DATA","Product",1,
  "JELLY","Product",1)

PROPERTY_BOBBLE_BLOB = BuildTechProperty(
"BLOB","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_BLOB,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- holo collection - solar system
--------------------------------------------------

BOBBLE_SOLAR = BuildBobbleheadProperty("SOLAR")

CRAFTING_SOLAR = BuildCraftingProperty(
  "ASTEROID3","Substance",20,
  "NAV_DATA","Product",1,
  "ANTIMATTER","Product",1)

PROPERTY_BOBBLE_SOLAR = BuildTechProperty(
"SOLAR","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_SOLAR,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- holo collection - frigate
--------------------------------------------------

BOBBLE_FRIGATE = BuildBobbleheadProperty("FRIGATE")

CRAFTING_FRIGATE = BuildCraftingProperty(
  "ASTEROID3","Substance",20,
  "NAV_DATA","Product",1,
  "POWERCELL","Product",1)

PROPERTY_BOBBLE_FRIGATE = BuildTechProperty(
"FRIGATE","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_FRIGATE,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)



--------------------------------------------------
-- sentinel collection - laylaps
--------------------------------------------------

BOBBLE_LAYLAPS = BuildBobbleheadProperty("LAYLAPS")

CRAFTING_LAYLAPS = BuildCraftingProperty(
  "ALLOY2","Product",1,
  "BP_SALVAGE","Product",1)

PROPERTY_BOBBLE_LAYLAPS = BuildTechProperty(
"LAYLAPS","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_LAYLAPS,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- sentinel collection - walker
--------------------------------------------------

BOBBLE_WALKER = BuildBobbleheadProperty("WALKER")

CRAFTING_WALKER = BuildCraftingProperty(
  "ALLOY5","Product",1,
  "MICROCHIP","Product",1)

PROPERTY_BOBBLE_WALKER = BuildTechProperty(
"WALKER","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_WALKER,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- sentinel collection - crystalized drone
--------------------------------------------------

BOBBLE_CRYSDRONE = BuildBobbleheadProperty("CRYSDRONE")

CRAFTING_CRYSDRONE = BuildCraftingProperty(
  "ALLOY5","Product",1,
  "DRONE_SHARD","Product",1)

PROPERTY_BOBBLE_CRYSDRONE = BuildTechProperty(
"CRYSDRONE","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_CRYSDRONE,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)



--------------------------------------------------
-- monster collection - jellyfish
--------------------------------------------------

BOBBLE_JELLYFISH = BuildBobbleheadProperty("JELLYFISH")

CRAFTING_JELLYFISH = BuildCraftingProperty(
  "SPACEGUNK1","Substance",20,
  "GRENFUEL1","Product",1)

PROPERTY_BOBBLE_JELLY = BuildTechProperty(
"JELLYFISH","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_JELLYFISH,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- monster collection - worm
--------------------------------------------------

BOBBLE_WORM = BuildBobbleheadProperty("WORM")

CRAFTING_WORM = BuildCraftingProperty(
  "SPACEGUNK5","Substance",20,
  "WORMCORE","Product",1)

PROPERTY_BOBBLE_WORM = BuildTechProperty(
"WORM","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_WORM,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- monster collection - void egg
--------------------------------------------------

BOBBLE_EGG = BuildBobbleheadProperty("EGG")

CRAFTING_EGG = BuildCraftingProperty(
  "SPACEGUNK4","Substance",20,
  "CLAMPEARL","Product",1)

PROPERTY_BOBBLE_EGG = BuildTechProperty(
"EGG","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_EGG,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)



--------------------------------------------------
-- planet collection - knowledge stone
--------------------------------------------------

BOBBLE_STONE = BuildBobbleheadProperty("STONE")

CRAFTING_STONE = BuildCraftingProperty(
  "LAVA1","Substance",20,
  "GRAVBALL","Product",1)

PROPERTY_BOBBLE_STONE = BuildTechProperty(
"STONE","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_STONE,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- planet collection - underwater crystal
--------------------------------------------------

BOBBLE_AQUATIC = BuildBobbleheadProperty("AQUATIC")

CRAFTING_AQUATIC = BuildCraftingProperty(
  "LAND2","Substance",20,
  "VENTGEM","Product",1)

PROPERTY_BOBBLE_AQUATIC = BuildTechProperty(
"AQUATIC","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_AQUATIC,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- planet collection - grave model
--------------------------------------------------

BOBBLE_GRAVE = BuildBobbleheadProperty("GRAVE")

CRAFTING_GRAVE = BuildCraftingProperty(
  "ASTEROID1","Substance",20,
  "GEODE_ASTEROID","Product",1)

PROPERTY_BOBBLE_GRAVE = BuildTechProperty(
"GRAVE","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_GRAVE,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)



--------------------------------------------------
-- glitch collection - calcishroom
--------------------------------------------------

BOBBLE_SHROOM = BuildBobbleheadProperty("SHROOM")

CRAFTING_SHROOM = BuildCraftingProperty(
  "AF_METAL","Substance",20,   
  "LUSH1","Substance",20)

PROPERTY_BOBBLE_SHROOM = BuildTechProperty(
"SHROOM","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_SHROOM,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- glitch collection - ossified star
--------------------------------------------------

BOBBLE_STAR = BuildBobbleheadProperty("STAR")

CRAFTING_STAR = BuildCraftingProperty(
  "AF_METAL","Substance",20,
  "RADIO1","Substance",20)

PROPERTY_BOBBLE_STAR = BuildTechProperty(
"STAR","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_STAR,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- glitch collection - separator
--------------------------------------------------

BOBBLE_SHARD = BuildBobbleheadProperty("SHARD")

CRAFTING_SHARD = BuildCraftingProperty(
  "AF_METAL","Substance",20,
  "COLD1","Substance",20)

PROPERTY_BOBBLE_SHARD = BuildTechProperty(
"SHARD","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_SHARD,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)



--------------------------------------------------
-- misc collection - globe statue
--------------------------------------------------

BOBBLE_GLOBE = BuildBobbleheadProperty("GLOBE")

CRAFTING_GLOBE = BuildCraftingProperty(
  "ASTEROID2","Substance",20,
  "NAV_DATA","Product",1)

PROPERTY_BOBBLE_GLOBE = BuildTechProperty(
"GLOBE","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_GLOBE,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- misc collection - shield generator 
--------------------------------------------------

BOBBLE_SHIELDGEN = BuildBobbleheadProperty("SHIELDGEN")

CRAFTING_SHIELDGEN = BuildCraftingProperty(
  "ALLOY1","Product",1,
  "POWERCELL","Product",1)

PROPERTY_BOBBLE_SHIELDGEN = BuildTechProperty(
"SHIELDGEN","BOBBLE",COST_BOBBLE_BOTTOM,
"False","False","AllShips","",
CHARGING_NONE,CRAFTING_SHIELDGEN,STATS_NONE,
COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)

--------------------------------------------------
-- misc collection - Nexus synthesis core
--------------------------------------------------

BOBBLE_NEXUSORB = BuildBobbleheadProperty("NEXUSORB")

CRAFTING_NEXUSORB = BuildCraftingProperty(
  "LAVA1","Substance",20,
  "ANTIMATTER","Product",1)

PROPERTY_BOBBLE_NEXUSORB = BuildTechProperty(
  "NEXUSORB","BOBBLE",COST_BOBBLE_BOTTOM,
  "False","False","AllShips","",
  CHARGING_NONE,CRAFTING_NEXUSORB,STATS_NONE,
  COLOR0_GREY,COLOR1_SHARED,COLOR2_SHARED)



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_TECHNOLOGYTABLE =          "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
FILE_GAMESTATE_THRUSTERDATA =           "METADATA\\GAMESTATE\\PLAYERDATA\\THRUSTERCUSTOMISATIONDATA.MBIN"
FILE_GAMESTATE_BOBBLEDATA =             "METADATA\\GAMESTATE\\PLAYERDATA\\BOBBLEHEADCUSTOMISATIONDATA.MBIN"

--------------------------------------------------
-- lists of stuff to be added
--------------------------------------------------

LIST_TECHNOLOGY = 
{
    PROPERTY_TOOL_SCANNER,
    
    PROPERTY_TECH_SHIELD,
    PROPERTY_TECH_PHOTON,PROPERTY_TECH_SHOTGUN,PROPERTY_TECH_CYCLO,
    PROPERTY_TECH_PHASE,PROPERTY_TECH_ROCKET,PROPERTY_TECH_SENTINEL,

    PROPERTY_TECH_TRANSFER,PROPERTY_TECH_COMPUTER,PROPERTY_TECH_HYPERDRIVE,
    PROPERTY_TECH_LOCATOR,PROPERTY_TECH_DISSONANT,PROPERTY_TECH_POLICE,
	
    PROPERTY_TRAIL_WHITE,
    PROPERTY_TRAIL_CYAN,PROPERTY_TRAIL_ORANGE,PROPERTY_TRAIL_PINK,
    PROPERTY_TRAIL_ELECTRIC,PROPERTY_TRAIL_GLITCH,PROPERTY_TRAIL_PSYCHIC,

    PROPERTY_TECH_BOOSTDAMAGE,PROPERTY_TECH_BOOSTLAUNCH,PROPERTY_TECH_BOOSTMANUEV,
    PROPERTY_TECH_BOOSTPULSE,PROPERTY_TECH_BOOSTSHIELD,PROPERTY_TECH_BOOSTWARP,

    PROPERTY_BOBBLE_BLOB,PROPERTY_BOBBLE_SOLAR,PROPERTY_BOBBLE_FRIGATE,
    PROPERTY_BOBBLE_LAYLAPS,PROPERTY_BOBBLE_CRYSDRONE,PROPERTY_BOBBLE_WALKER,
    PROPERTY_BOBBLE_JELLY,PROPERTY_BOBBLE_WORM,PROPERTY_BOBBLE_EGG,
    PROPERTY_BOBBLE_STONE,PROPERTY_BOBBLE_GRAVE,PROPERTY_BOBBLE_AQUATIC,
    PROPERTY_BOBBLE_SHROOM,PROPERTY_BOBBLE_STAR,PROPERTY_BOBBLE_SHARD,  
    PROPERTY_BOBBLE_GLOBE,PROPERTY_BOBBLE_SHIELDGEN,PROPERTY_BOBBLE_NEXUSORB,
}

LIST_SHIPTRAILS = 
{
    TRAIL_PSYCHIC,
    TRAIL_GLITCH,
    TRAIL_ELECTRIC,
    TRAIL_PINK,
    TRAIL_ORANGE,
    TRAIL_CYAN,
    TRAIL_WHITE,
}

LIST_BOBBLEHEADS =
{
    BOBBLE_BLOB,BOBBLE_SOLAR,BOBBLE_FRIGATE,
    BOBBLE_LAYLAPS,BOBBLE_CRYSDRONE,BOBBLE_WALKER,
    BOBBLE_JELLYFISH,BOBBLE_WORM,BOBBLE_EGG,
    BOBBLE_STONE,BOBBLE_GRAVE,BOBBLE_AQUATIC,
    BOBBLE_SHROOM,BOBBLE_STAR,BOBBLE_SHARD,
    BOBBLE_GLOBE,BOBBLE_SHIELDGEN,BOBBLE_NEXUSORB,
}



--------------------------------------------------
-- mod container
--------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   	= METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_TECHNOLOGYTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- basic ship tech - set Core flag to False
                            ["FSKWG"] =  
                            {
                                {"ID","SHIPJUMP1",},
                                {"ID","HYPERDRIVE",},
                                {"ID","LAUNCHER",},
                                {"ID","SHIPSHIELD",},
                            },
                            ["VCT"] = {{"Core","False",},},
                        },

                        {
                            -- Pulse Engine - add crystal recharge option
                            ["SKW"] = {"ID","SHIPJUMP1","Value","DUSTY1",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_CHARGE_CRYSTAL,
                        },

                        {
                            -- Photonix Core - set the token cost
                            ["SKW"] = {"ID","PHOTONIX_CORE",},
                            ["VCT"] = {{"FragmentCost",COST_PHOTONIX,},},
                        },

                        {
                            -- Waveform Engine
                            -- set the cost, set Core flag to False, enable wiki entry
                            ["SKW"] = {"ID","SHIPJUMP_SPEC",},
                            ["VCT"] =
                            {
                                {"Core","False",},
                                {"FragmentCost",COST_WAVEFORM,},
                                {"WikiEnabled","True"},
                            },
                        },

                        {
                            -- Waveform Engine - change the desctiption
                            ["SKW"] = {"ID","SHIPJUMP_SPEC","Description","VariableSizeString.xml",},
                            ["VCT"] = {{"Value","TEXT_NEWDESC_SHIPJUMP",},},
                        },

                        {
                            -- Waveform Engine - add crystal recharge option
                            ["SKW"] = {"ID","SHIPJUMP_SPEC","Value","DUSTY1",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_CHARGE_CRYSTAL,
                        },

                        {
                            -- Frameshift Catapult
                            -- set the cost, set Core flag to False, enable wiki entry
                            ["SKW"] = {"ID","HYPERDRIVE_SPEC",},
                            ["VCT"] =
                            {
                                {"Core","False",},
                                {"FragmentCost",COST_FRAMESHIFT,},
                                {"WikiEnabled","True"},
                            },
                        },

                        {
                            -- Waveform Engine - change the desctiption
                            ["SKW"] = {"ID","HYPERDRIVE_SPEC","Description","VariableSizeString.xml",},
                            ["VCT"] = {{"Value","TEXT_NEWDESC_HYPERDRIVE",},},
                        },

                        {
                            -- Advanced Launch System
                            -- set the cost, set Core flag to False, enable wiki entry
                            ["SKW"] = {"ID","LAUNCHER_SPEC",},
                            ["VCT"] =
                            {
                                {"Core","False",},
                                {"FragmentCost",COST_LAUNCHER,},
                                {"WikiEnabled","True"},
                            },
                        },

                        {
                            -- Waveform Engine - change the desctiption
                            ["SKW"] = {"ID","LAUNCHER_SPEC","Description","VariableSizeString.xml",},
                            ["VCT"] = {{"Value","TEXT_NEWDESC_LAUNCHER",},},
                        },

                        {
                            -- Singularity Engine - set the token cost
                            ["SKW"] = {"ID","F_MEGAWARP",},
                            ["VCT"] = {{"FragmentCost",COST_SINGULARITY,},},
                        },

                        {
                            -- Singularity Engine - change the desctiption
                            ["SKW"] = {"ID","F_MEGAWARP","Description","VariableSizeString.xml",},
                            ["VCT"] = {{"Value","TEXT_NEWDESC_MEGAWARP",},},
                        },

                        {
                            -- smoke trail - set the token cost
                            ["SKW"] = {"ID","T_SHIP_PIRATE",},
                            ["VCT"] = {{"FragmentCost",COST_TRAIL_EXP,},},
                        },

                        {
                            -- temporal trail - set the token cost
                            ["SKW"] = {"ID","T_SHIP_ROGUE",},
                            ["VCT"] = {{"FragmentCost",COST_TRAIL_EXP,},},
                        },

                        {
                            ["PKW"] = "Table",
                            ["ADD"] = LIST_TECHNOLOGY,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_THRUSTERDATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "ShipEffects",
                            ["ADD"] = LIST_SHIPTRAILS,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_BOBBLEDATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "BobbleHeads",
                            ["ADD"] = LIST_BOBBLEHEADS,
                        },
                    },
                }
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------