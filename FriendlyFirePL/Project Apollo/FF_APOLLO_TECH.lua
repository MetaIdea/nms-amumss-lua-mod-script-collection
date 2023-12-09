----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "BETA11"
METADATA_MOD_DESC       = "TECH"



----------------------------------------------------------------------------------------------------
-- technology costs for new research tree
----------------------------------------------------------------------------------------------------

COST_LIFESUPPORT = 1
COST_PHOTONIX = 2
COST_LAUNCHER = 2
COST_FRAMESHIFT = 2
COST_TRAIL_EXP = 2
COST_WAVEFORM = 3
COST_SINGULARITY = 3

COST_SHIELD = 1
COST_WEAPON = 2

COST_COMPUTER = 1
COST_LOCATOR = 2
COST_DISSONANT = 3
COST_POLICE = 1
COST_TRANSFER = 2

COST_HYPERDRIVE = 3

COST_TRAIL_MOD = 1
COST_BOBBLEHEAD = 1



----------------------------------------------------------------------------------------------------
-- functions to build properties
----------------------------------------------------------------------------------------------------

function BuildTechProperty(name,charging,primary,upgrade,ships,crafting,stats,basetech,color1,color2,cost) return
[[
<Property value="GcTechnology.xml">
  <Property name="ID" value="TECH_]]..name..[[" />
  <Property name="Group" value="" />
  <Property name="Name" value="TEXT_]]..name..[[_N" />
  <Property name="NameLower" value="TEXT_]]..name..[[_L" />
  <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_]]..name..[[_S" />
  </Property>
  <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_]]..name..[[_D" />
  </Property>
  <Property name="Teach" value="True" />
  <Property name="HintStart" value="" />
  <Property name="HintEnd" value="" />
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/TECH/]]..name..[[.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="Colour" value="Colour.xml">
    <Property name="R" value="0.12941177" />
    <Property name="G" value="0.46666667" />
    <Property name="B" value="0.78431374" />
    <Property name="A" value="1" />
  </Property>
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

function BuildColorProperty(name,r,g,b,a) return
[[
<Property name="]]..name..[[" value="Colour.xml">
  <Property name="R" value="]]..r..[[" />
  <Property name="G" value="]]..g..[[" />
  <Property name="B" value="]]..b..[[" />
  <Property name="A" value="]]..a..[[" />
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

----------------------------------------------------------------------------------------------------
-- shared properties
----------------------------------------------------------------------------------------------------

PROPERTY_CHARGE_CRYSTAL =
[[
<Property value="NMSString0x10.xml">
  <Property name="Value" value="ITEM_CRYSTAL" />
</Property>
]]

CHARGING_NONE =
[[
<Property name="Chargeable" value="False" />
<Property name="ChargeAmount" value="100" />
<Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
  <Property name="SubstanceCategory" value="Earth" />
</Property>
<Property name="ChargeBy" />
]]

STATS_TRAIL = 
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Scan" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Boost" />
    </Property>
    <Property name="Bonus" value="1.01" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

STATS_NONE =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Scan" />
</Property>
<Property name="StatBonuses" />
]]

COLOR1_SHARED =           BuildColorProperty("UpgradeColour",1,1,1,1)
COLOR1_PHOTON_SENT =      BuildColorProperty("UpgradeColour",0.015686275,0.34901962,1,1)

COLOR2_SHARED =           BuildColorProperty("LinkColour",0.2,0.6,1,1)
COLOR2_PHOTON =           BuildColorProperty("LinkColour",0.26666668,0.99215686,1,1)
COLOR2_NOBORDER  =        BuildColorProperty("LinkColour",0,0,0,1)
COLOR2_TRAIL =            BuildColorProperty("LinkColour",1,1,1,1)

----------------------------------------------------------------------------------------------------
-- multitool scanner module
----------------------------------------------------------------------------------------------------

PROPERTY_TOOL_SCANNER =
[[
<Property value="GcTechnology.xml">
  <Property name="ID" value="TECH_SCANNER" />
  <Property name="Group" value="" />
  <Property name="Name" value="TEXT_SCANNER_N" />
  <Property name="NameLower" value="TEXT_SCANNER_L" />
  <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_SCANNER_S" />
  </Property>
  <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_SCANNER_D" />
  </Property>
  <Property name="Teach" value="True" />
  <Property name="HintStart" value="" />
  <Property name="HintEnd" value="" />
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/OTHER/SCANNER.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="Colour" value="Colour.xml">
    <Property name="R" value="0.12941177" />
    <Property name="G" value="0.46666667" />
    <Property name="B" value="0.78431374" />
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

----------------------------------------------------------------------------------------------------
-- shield blueprint data
----------------------------------------------------------------------------------------------------

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

CRAFTING_SHIELD =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ASTEROID3" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="100" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="MIRROR" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="5" />
  </Property>
</Property>
]]

STATS_SHIELD = 
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Armour_Shield" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Armour_Shield" />
    </Property>
    <Property name="Bonus" value="1" />
    <Property name="Level" value="1" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Armour_Shield_Strength" />
    </Property>
    <Property name="Bonus" value="0.75" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

COLOR2_SHIELD = BuildColorProperty("LinkColour",1,0.972549,0.6509804,1)

PROPERTY_TECH_SHIELD = BuildTechProperty(
  "SHIELD",CHARGING_SHIELD,
  "True","False","AllShipsExceptAlien",
  CRAFTING_SHIELD,STATS_SHIELD,"",
  COLOR1_SHARED,COLOR2_SHIELD,COST_SHIELD)

----------------------------------------------------------------------------------------------------
-- Photon Cannon blueprint data
----------------------------------------------------------------------------------------------------

CRAFTING_PHOTON = 
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="STELLAR2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="200" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="MAGNET" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="4" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
</Property>
]]

STATS_PHOTON = 
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Weapons_Guns" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_Damage" />
    </Property>
    <Property name="Bonus" value="64" />
    <Property name="Level" value="3" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_HeatTime" />
    </Property>
    <Property name="Bonus" value="0.8" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

PROPERTY_TECH_PHOTON = BuildTechProperty(
  "PHOTON",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_PHOTON,STATS_PHOTON,"SHIPGUN1",
  COLOR1_PHOTON_SENT,COLOR2_PHOTON,COST_WEAPON)

----------------------------------------------------------------------------------------------------
-- Cyclotron Ballista blueprint data
----------------------------------------------------------------------------------------------------

CRAFTING_CYCLO =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="CAVE2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="200" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="BIO" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="4" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
</Property>
]]

STATS_CYCLO =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Weapons_Plasma" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_BulletsPerShot" />
    </Property>
    <Property name="Bonus" value="4" />
    <Property name="Level" value="3" />
  </Property>
</Property>
]]

COLOR1_CYCLO = BuildColorProperty("UpgradeColour",0.44313726,0.1882353,0.8235294,1)
COLOR2_CYCLO = BuildColorProperty("LinkColour",0.8039216,0.38039216,1,1)

PROPERTY_TECH_CYCLO = BuildTechProperty(
  "CYCLO",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_CYCLO,STATS_CYCLO,"SHIPPLASMA",
  COLOR1_CYCLO,COLOR2_CYCLO,COST_WEAPON)

----------------------------------------------------------------------------------------------------
-- Phase Beam blueprint data
----------------------------------------------------------------------------------------------------

CRAFTING_PHASE =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="SUNGOLD" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="200" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="COMPUTER" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
</Property>
]]

STATS_PHASE =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Weapons_Lasers" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Lasers_Damage" />
    </Property>
    <Property name="Bonus" value="600" />
    <Property name="Level" value="3" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Lasers_HeatTime" />
    </Property>
    <Property name="Bonus" value="0.01" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

COLOR1_PHASE = BuildColorProperty("UpgradeColour",1,1,1,1)
COLOR2_PHASE = BuildColorProperty("LinkColour",0.26666668,1,0.627451,1)

PROPERTY_TECH_PHASE = BuildTechProperty(
  "PHASE",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_PHASE,STATS_PHASE,"SHIPLAS1",
  COLOR1_PHASE,COLOR2_PHASE,COST_WEAPON)

----------------------------------------------------------------------------------------------------
-- Positron Ejector blueprint data
----------------------------------------------------------------------------------------------------

CRAFTING_SHOTGUN = 
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ASTEROID3" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="200" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="HYDRALIC" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="4" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
</Property>
]]

STATS_SHOTGUN =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Weapons_Shotgun" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_Dispersion" />
    </Property>
    <Property name="Bonus" value="0.80" />
    <Property name="Level" value="3" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_Rate" />
    </Property>
    <Property name="Bonus" value="1.1" />
    <Property name="Level" value="3" />
  </Property>
</Property>
]]

COLOR1_SHOTGUN = BuildColorProperty("UpgradeColour",1,0.8,0,1)
COLOR2_SHOTGUN = BuildColorProperty("LinkColour",1,0.84705883,0,1)

PROPERTY_TECH_SHOTGUN = BuildTechProperty(
  "SHOTGUN",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_SHOTGUN,STATS_SHOTGUN,"SHIPSHOTGUN",
  COLOR1_SHOTGUN,COLOR2_SHOTGUN,COST_WEAPON)

----------------------------------------------------------------------------------------------------
-- Rocket Launcher blueprint data
----------------------------------------------------------------------------------------------------

CRAFTING_ROCKET =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="LAVA1" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="200" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="CASING" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="6" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
</Property>
]]

STATS_ROCKET =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Weapons_Rockets" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_Damage" />
    </Property>
    <Property name="Bonus" value="650" />
    <Property name="Level" value="3" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_Scale" />
    </Property>
    <Property name="Bonus" value="0.5" />
    <Property name="Level" value="1" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_Damage_Radius" />
    </Property>
    <Property name="Bonus" value="0.1" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

COLOR1_ROCKET = BuildColorProperty("UpgradeColour",0.44313726,0.1882353,0.8235294,1)
COLOR2_ROCKET = BuildColorProperty("LinkColour",0.8039216,0.38039216,1,1)

PROPERTY_TECH_ROCKET = BuildTechProperty(
  "ROCKET",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_ROCKET,STATS_ROCKET,"SHIPROCKETS",
  COLOR1_ROCKET,COLOR2_ROCKET,COST_WEAPON)

----------------------------------------------------------------------------------------------------
-- Sentinel Cannon blueprint data
----------------------------------------------------------------------------------------------------

CRAFTING_SENTINEL =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="COMPOUND5" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="SPIDER_PROD" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="3" />
  </Property>
</Property>
]]

STATS_SENTINEL =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Weapons_Guns" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_ShieldLeech" />
    </Property>
    <Property name="Bonus" value="0.05" />
    <Property name="Level" value="3" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Weapons_Guns_Damage_Radius" />
    </Property>
    <Property name="Bonus" value="1.01" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

PROPERTY_TECH_SENTINEL = BuildTechProperty(
  "SENTINEL",CHARGING_NONE,
  "False","True","RobotShip",
  CRAFTING_SENTINEL,STATS_SENTINEL,"SHIPGUN1",
  COLOR1_PHOTON_SENT,COLOR2_PHOTON,COST_WEAPON)

----------------------------------------------------------------------------------------------------
-- item transfer blueprint data
----------------------------------------------------------------------------------------------------

CRAFTING_TRANSFER =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ROBOT1" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="200" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ILLEGAL_PROD6" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="5" />
  </Property>
</Property>
]]

STATS_TRANSFER = 
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Teleport" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Teleport" />
    </Property>
    <Property name="Bonus" value="950" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

PROPERTY_TECH_TRANSFER = BuildTechProperty(
  "TRANSFER",CHARGING_NONE,
  "True","False","AllShipsExceptAlien",
  CRAFTING_TRANSFER,STATS_TRANSFER,"",
  COLOR1_SHARED,COLOR2_SHARED,COST_TRANSFER)

----------------------------------------------------------------------------------------------------
-- new hyperdrive blueprint
----------------------------------------------------------------------------------------------------

CRAFTING_HYPERDRIVE =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="POI_LOCATOR" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="COMPUTER" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="3" />
  </Property>
</Property>
]]

STATS_HYPERDRIVE =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Hyperdrive" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Hyperdrive_JumpDistance" />
    </Property>
    <Property name="Bonus" value="300" />
    <Property name="Level" value="4" />
  </Property>
</Property>
]]

PROPERTY_TECH_HYPERDRIVE = BuildTechProperty(
  "HYPERDRIVE",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_HYPERDRIVE,STATS_HYPERDRIVE,"HYPERDRIVE",
  COLOR1_SHARED,COLOR2_SHARED,COST_HYPERDRIVE)

----------------------------------------------------------------------------------------------------
-- new computer tech (conflict + economy scanner)
----------------------------------------------------------------------------------------------------

CRAFTING_COMPUTER =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="FRIG_BOOST_EXP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="FRIG_BOOST_TRA" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="3" />
  </Property>
</Property>
]]

STATS_COMPUTER =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Scan_EconomyFilter" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Scan_EconomyFilter" />
    </Property>
    <Property name="Bonus" value="1" />
    <Property name="Level" value="1" />
  </Property>
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Scan_ConflictFilter" />
    </Property>
    <Property name="Bonus" value="1" />
    <Property name="Level" value="1" />
  </Property>
</Property>
]]

PROPERTY_TECH_COMPUTER = BuildTechProperty(
  "COMPUTER",CHARGING_NONE,
  "True","False","AllShipsExceptAlien",
  CRAFTING_COMPUTER,STATS_COMPUTER,"",
  COLOR1_SHARED,COLOR2_SHARED,COST_COMPUTER)

----------------------------------------------------------------------------------------------------
-- locator tech
----------------------------------------------------------------------------------------------------

CRAFTING_LOCATOR =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="CAVE1" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="100" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="FARMPROD5" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
</Property>
]]

STATS_LOCATOR =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Scan" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Scan" />
    </Property>
    <Property name="Bonus" value="1" />
    <Property name="Level" value="2" />
  </Property>
</Property>
]]

PROPERTY_TECH_LOCATOR = BuildTechProperty(
  "LOCATOR",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_LOCATOR,STATS_LOCATOR,"",
  COLOR1_SHARED,COLOR2_NOBORDER,COST_LOCATOR)

----------------------------------------------------------------------------------------------------
-- dissonant navigation
----------------------------------------------------------------------------------------------------

CRAFTING_DISSONANT =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="AF_METAL" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="DRONE_SHARD" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="5" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="2" />
  </Property>
</Property>
]]

STATS_DISSONANT =
[[
<Property name="BaseStat" value="GcStatsTypes.xml">
  <Property name="StatsType" value="Ship_Scan" />
</Property>
<Property name="StatBonuses">
  <Property value="GcStatsBonus.xml">
    <Property name="Stat" value="GcStatsTypes.xml">
      <Property name="StatsType" value="Ship_Scan" />
    </Property>
    <Property name="Bonus" value="1" />
    <Property name="Level" value="3" />
  </Property>
</Property>
]]

PROPERTY_TECH_DISSONANT = BuildTechProperty(
  "DISSONANT",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_DISSONANT,STATS_DISSONANT,"",
  COLOR1_SHARED,COLOR2_NOBORDER,COST_DISSONANT)





----------------------------------------------------------------------------------------------------
-- police antenna
----------------------------------------------------------------------------------------------------

CRAFTING_POLICE = 
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="LAND2" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Substance" />
      </Property>
    <Property name="Amount" value="100" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="POLICE_TOKEN" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="TECH_COMP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

PROPERTY_TECH_POLICE = BuildTechProperty(
  "POLICE",CHARGING_NONE,
  "False","True","AllShipsExceptAlien",
  CRAFTING_POLICE,STATS_NONE,"",
  COLOR1_SHARED,COLOR2_NOBORDER,COST_POLICE)






----------------------------------------------------------------------------------------------------
-- cyan starship trail
----------------------------------------------------------------------------------------------------

CRAFTING_CYAN =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="LAND2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="LAUNCHSUB2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="50" />
  </Property>
</Property>
]]

TRAIL_CYAN = BuildTrailProperty("CYAN")

PROPERTY_TRAIL_CYAN = BuildTechProperty(
  "CYAN",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_CYAN,STATS_TRAIL,"",
  COLOR1_SHARED,COLOR2_TRAIL,COST_TRAIL_MOD)

----------------------------------------------------------------------------------------------------
-- orange starship trail
----------------------------------------------------------------------------------------------------

CRAFTING_ORANGE =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="LAND2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="SUNGOLD" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="50" />
  </Property>
</Property>
]]

TRAIL_ORANGE = BuildTrailProperty("ORANGE")

PROPERTY_TRAIL_ORANGE = BuildTechProperty(
  "ORANGE",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_ORANGE,STATS_TRAIL,"",
  COLOR1_SHARED,COLOR2_TRAIL,COST_TRAIL_MOD)

----------------------------------------------------------------------------------------------------
-- pink starship trail
----------------------------------------------------------------------------------------------------

CRAFTING_PINK =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="LAND2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="BUI_SCRAP" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="50" />
  </Property>
</Property>
]]

TRAIL_PINK = BuildTrailProperty("PINK")

PROPERTY_TRAIL_PINK = BuildTechProperty(
  "PINK",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_PINK,STATS_TRAIL,"",
  COLOR1_SHARED,COLOR2_TRAIL,COST_TRAIL_MOD)

----------------------------------------------------------------------------------------------------
-- white starship trail
----------------------------------------------------------------------------------------------------

CRAFTING_WHITE =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="LAND2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="PLANT_WATER" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="50" />
  </Property>
</Property>
]]

TRAIL_WHITE = BuildTrailProperty("WHITE")

PROPERTY_TRAIL_WHITE = BuildTechProperty(
  "WHITE",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_WHITE,STATS_TRAIL,"",
  COLOR1_SHARED,COLOR2_TRAIL,COST_TRAIL_MOD)

----------------------------------------------------------------------------------------------------
-- glitch starship trail
----------------------------------------------------------------------------------------------------

CRAFTING_GLITCH =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="STELLAR2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="HEXCORE" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

TRAIL_GLITCH = BuildTrailProperty("GLITCH")

PROPERTY_TRAIL_GLITCH = BuildTechProperty(
  "GLITCH",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_GLITCH,STATS_TRAIL,"",
  COLOR1_SHARED,COLOR2_TRAIL,COST_TRAIL_MOD)

----------------------------------------------------------------------------------------------------
-- electic starship trail
----------------------------------------------------------------------------------------------------

CRAFTING_ELECTRIC =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="STELLAR2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="STORM_CRYSTAL" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

TRAIL_ELECTRIC = BuildTrailProperty("ELECTRIC")

PROPERTY_TRAIL_ELECTRIC = BuildTechProperty(
  "ELECTRIC",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_ELECTRIC,STATS_TRAIL,"",
  COLOR1_SHARED,COLOR2_TRAIL,COST_TRAIL_MOD)

----------------------------------------------------------------------------------------------------
-- purple starship trail
----------------------------------------------------------------------------------------------------

CRAFTING_PSYCHIC =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="STELLAR2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="DRONE_SALVAGE" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

TRAIL_PSYCHIC = BuildTrailProperty("PSYCHIC")

PROPERTY_TRAIL_PSYCHIC = BuildTechProperty(
  "PSYCHIC",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_PSYCHIC,STATS_TRAIL,"",
  COLOR1_SHARED,COLOR2_TRAIL,COST_TRAIL_MOD)

----------------------------------------------------------------------------------------------------
-- holo blob
----------------------------------------------------------------------------------------------------

CRAFTING_BLOB = 
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ASTEROID3" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="JELLY" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

BOBBLE_BLOB = BuildBobbleheadProperty("BLOB")

PROPERTY_BOBBLE_BLOB = BuildTechProperty(
  "BLOB",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_BLOB,STATS_NONE,"",
  COLOR1_SHARED,COLOR2_SHARED,COST_BOBBLEHEAD)

----------------------------------------------------------------------------------------------------
-- holo jellyfish
----------------------------------------------------------------------------------------------------

CRAFTING_JELLYFISH = 
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ASTEROID3" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="GRENFUEL1" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

BOBBLE_JELLYFISH = BuildBobbleheadProperty("JELLYFISH")

PROPERTY_BOBBLE_JELLY = BuildTechProperty(
  "JELLYFISH",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_JELLYFISH,STATS_NONE,"",
  COLOR1_SHARED,COLOR2_SHARED,COST_BOBBLEHEAD)

----------------------------------------------------------------------------------------------------
-- globe statue
----------------------------------------------------------------------------------------------------

CRAFTING_GLOBE =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ASTEROID2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="GRAVBALL" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

BOBBLE_GLOBE = BuildBobbleheadProperty("GLOBE")

PROPERTY_BOBBLE_GLOBE = BuildTechProperty(
  "GLOBE",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_GLOBE,STATS_NONE,"",
  COLOR1_SHARED,COLOR2_SHARED,COST_BOBBLEHEAD)

----------------------------------------------------------------------------------------------------
-- holo walker
----------------------------------------------------------------------------------------------------

CRAFTING_WALKER =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ASTEROID3" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>s
    <Property name="Amount" value="50" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ALLOY5" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

BOBBLE_WALKER = BuildBobbleheadProperty("WALKER")

PROPERTY_BOBBLE_WALKER = BuildTechProperty(
  "WALKER",CHARGING_NONE,
  "False","False","AllShips",
  CRAFTING_WALKER,STATS_NONE,"",
  COLOR1_SHARED,COLOR2_SHARED,COST_BOBBLEHEAD)



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_TECHNOLOGYTABLE =      "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
FILE_THRUSTERDATA =         "METADATA\\GAMESTATE\\PLAYERDATA\\THRUSTERCUSTOMISATIONDATA.MBIN"
FILE_BOBBLEHEADDATA =       "METADATA\\GAMESTATE\\PLAYERDATA\\BOBBLEHEADCUSTOMISATIONDATA.MBIN"



NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_TECHNOLOGYTABLE,
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
                            -- ship life support - set the token cost
                            ["SKW"] = {"ID","SHIP_LIFESUP",},
                            ["VCT"] = {{"FragmentCost",COST_LIFESUPPORT,},},
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
                            -- add new technology
                            ["PKW"] = "Table",
                            ["ADD"] =
                            {
                                PROPERTY_TOOL_SCANNER,

                                PROPERTY_TECH_SHIELD,
                                PROPERTY_TECH_PHOTON,
                                PROPERTY_TECH_SHOTGUN,
                                PROPERTY_TECH_CYCLO,
                                PROPERTY_TECH_PHASE,
                                PROPERTY_TECH_ROCKET,
                                PROPERTY_TECH_SENTINEL,

                                PROPERTY_TECH_TRANSFER,
                                PROPERTY_TECH_COMPUTER,
                                PROPERTY_TECH_HYPERDRIVE,
                                PROPERTY_TECH_LOCATOR,
                                PROPERTY_TECH_DISSONANT,
                                PROPERTY_TECH_POLICE,

                                PROPERTY_TRAIL_WHITE,
                                PROPERTY_TRAIL_CYAN,
                                PROPERTY_TRAIL_ORANGE,
                                PROPERTY_TRAIL_PINK,
                                PROPERTY_TRAIL_ELECTRIC,
                                PROPERTY_TRAIL_GLITCH,
                                PROPERTY_TRAIL_PSYCHIC,

                                PROPERTY_BOBBLE_GLOBE,
                                PROPERTY_BOBBLE_BLOB,
                                PROPERTY_BOBBLE_JELLY,
                                PROPERTY_BOBBLE_WALKER,
                            },
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_THRUSTERDATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "ShipEffects",
                            ["ADD"] = 
                            {
                                TRAIL_PSYCHIC,
                                TRAIL_GLITCH,
                                TRAIL_ELECTRIC,
                                TRAIL_PINK,
                                TRAIL_ORANGE,
                                TRAIL_CYAN,
                                TRAIL_WHITE,
                            },
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_BOBBLEHEADDATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "BobbleHeads",
                            ["ADD"] = 
                            {
                                BOBBLE_GLOBE,
                                BOBBLE_BLOB,
                                BOBBLE_JELLYFISH,
                                BOBBLE_WALKER,
                            },
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