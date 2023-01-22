HDRIVEBOOST1 = 
[[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
]]

HDRIVEBOOST2 = 
[[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="R_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
]]

HDRIVEBOOST3 = 
[[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="G_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
]]

UT_SUPER_HOT = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_HOT" />
      <Property name="Group" value="" />
      <Property name="Name" value="HOT3_NAME" />
      <Property name="NameLower" value="HOT3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="HAZARD_UNIT_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="HOT1_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTHEAT.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Suit" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_HOTPROT3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GLITCHMAT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="R_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Suit_Protection" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Protection_HeatDrain" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="4" />
        </Property>
      </Property>
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
        <Property name="R" value="0.7882353" />
        <Property name="G" value="0.8156863" />
        <Property name="B" value="0.89411765" />
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
      <Property name="FragmentCost" value="25000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

UT_SUPER_COLD = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_COLD" />
      <Property name="Group" value="" />
      <Property name="Name" value="COLD3_NAME" />
      <Property name="NameLower" value="COLD3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="HAZARD_UNIT_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="COLD1_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTCOLD.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Suit" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_COLDPROT3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GLITCHMAT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="B_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Suit_Protection" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Protection_ColdDrain" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="4" />
        </Property>
      </Property>
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
        <Property name="R" value="0.7882353" />
        <Property name="G" value="0.8156863" />
        <Property name="B" value="0.89411765" />
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
      <Property name="FragmentCost" value="25000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

UT_SUPER_TOX = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_TOX" />
      <Property name="Group" value="" />
      <Property name="Name" value="TOX3_NAME" />
      <Property name="NameLower" value="TOX3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="HAZARD_UNIT_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="TOX1_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTTOXIC.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Suit" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_TOX3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GLITCHMAT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="G_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Suit_Protection" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Protection_ToxDrain" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="4" />
        </Property>
      </Property>
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
        <Property name="R" value="0.7882353" />
        <Property name="G" value="0.8156863" />
        <Property name="B" value="0.89411765" />
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
      <Property name="FragmentCost" value="25000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

UT_SUPER_RAD = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_RAD" />
      <Property name="Group" value="" />
      <Property name="Name" value="RAD3_NAME" />
      <Property name="NameLower" value="RAD3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="HAZARD_UNIT_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="RAD1_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTRADS.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Suit" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_RAD3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GLITCHMAT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Suit_Protection" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Protection_RadDrain" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="4" />
        </Property>
      </Property>
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
        <Property name="R" value="0.7882353" />
        <Property name="G" value="0.8156863" />
        <Property name="B" value="0.89411765" />
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
      <Property name="FragmentCost" value="25000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

UT_SUPER_WATER = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_WATER" />
      <Property name="Group" value="" />
      <Property name="Name" value="UNW3_NAME" />
      <Property name="NameLower" value="UNW3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UNW3_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UNW2_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.HELMET.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Suit" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_UNW3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GLITCHMAT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Suit_Protection" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Protection_WaterDrain" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="4" />
        </Property>
      </Property>
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
        <Property name="R" value="0.7882353" />
        <Property name="G" value="0.8156863" />
        <Property name="B" value="0.89411765" />
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
      <Property name="FragmentCost" value="25000" />
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

UT_SUPER_ENERGY = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_ENERGY" />
      <Property name="Group" value="" />
      <Property name="Name" value="STAM3_NAME" />
      <Property name="NameLower" value="STAM3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="ENERGYBOOST2_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="ENERGYBOOST1_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.CELLMOD.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Suit" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_ENERGY3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ULTRAPROD2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="R_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Suit_Energy" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Energy" />
          </Property>
          <Property name="Bonus" value="5" />
          <Property name="Level" value="4" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Energy_Regen" />
          </Property>
          <Property name="Bonus" value="3" />
          <Property name="Level" value="1" />
        </Property>
      </Property>
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
        <Property name="R" value="0.2" />
        <Property name="G" value="0.6" />
        <Property name="B" value="1" />
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
      <Property name="FragmentCost" value="50000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

UT_SUPER_JET = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_JET" />
      <Property name="Group" value="" />
      <Property name="Name" value="JETBOOST3_NAME" />
      <Property name="NameLower" value="JETBOOST3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="JETBOOST3_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="JETBOOST1_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.JETPACKMOD.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Suit" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_JETBOOST4" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ULTRAPROD1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="G_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Suit_Jetpack" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Jetpack_Tank" />
          </Property>
          <Property name="Bonus" value="25" />
          <Property name="Level" value="4" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Jetpack_Refill" />
          </Property>
          <Property name="Bonus" value="21" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Stamina_Strength" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Suit_Stamina_Recovery" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="1" />
        </Property>
      </Property>
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
      <Property name="FragmentCost" value="50000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

SUPER_HDRIVE = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="SUPER_HDRIVE" />
      <Property name="Group" value="" />
      <Property name="Name" value="ION4_NAME" />
      <Property name="NameLower" value="ION4_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="ION4_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="ION4_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/TECHNOLOGY.INDIUMDRIVE.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Ship" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="50" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="BLUE2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="250" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ULTRAPROD1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="B_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Ship_Hyperdrive" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Hyperdrive" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="4" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Hyperdrive_JumpDistance" />
          </Property>
          <Property name="Bonus" value="10000" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Hyperdrive_JumpsPerCell" />
          </Property>
          <Property name="Bonus" value="5" />
          <Property name="Level" value="1" />
        </Property>
      </Property>
      <Property name="RequiredTech" value="HYPERDRIVE" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="MAINTENANCESLOT1" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="0.2" />
        <Property name="G" value="0.6" />
        <Property name="B" value="1" />
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
      <Property name="FragmentCost" value="50000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

UT_SUPER_BOLT =
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_BOLT" />
      <Property name="Group" value="" />
      <Property name="Name" value="BOLTDMG3_NAME" />
      <Property name="NameLower" value="BOLTDMG3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="BOLTDMG3_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="BOLTDMG4_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROJECTILE1MOD.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.050980393" />
        <Property name="G" value="0.5058824" />
        <Property name="B" value="0.654902" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_BOLT4" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="R_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_RED" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Weapon_Projectile" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Projectile_Damage" />
          </Property>
          <Property name="Bonus" value="100" />
          <Property name="Level" value="4" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Projectile_Rate" />
          </Property>
          <Property name="Bonus" value="1.5" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Projectile_BurstCooldown" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Projectile_ClipSize" />
          </Property>
          <Property name="Bonus" value="32" />
          <Property name="Level" value="1" />
        </Property>
      </Property>
      <Property name="RequiredTech" value="BOLT" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="0.26666668" />
        <Property name="G" value="0.99215686" />
        <Property name="B" value="1" />
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
      <Property name="FragmentCost" value="50000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

UT_SUPER_SHIPGUN =
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="UT_SUPER_SHIPGUN" />
      <Property name="Group" value="" />
      <Property name="Name" value="SHIPGDMG3_NAME" />
      <Property name="NameLower" value="SHIPGDMG3_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="SHIPGDMG3_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="SHIPGDMG1_DESCRIPTION" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.SHIPPROJECTILE1MOD.DDS" />
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
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
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
        <Property name="TechnologyCategory" value="Ship" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="VeryRare" />
      </Property>
      <Property name="Value" value="50" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="U_SHIPGUN4" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="G_STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="15" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_GREEN" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Ship_Weapons_Guns" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Weapons_Guns_Damage" />
          </Property>
          <Property name="Bonus" value="200" />
          <Property name="Level" value="4" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Weapons_Guns_Rate" />
          </Property>
          <Property name="Bonus" value="2" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Weapons_Guns_HeatTime" />
          </Property>
          <Property name="Bonus" value="1.5" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Weapons_Guns_CoolTime" />
          </Property>
          <Property name="Bonus" value="1.5" />
          <Property name="Level" value="1" />
        </Property>
      </Property>
      <Property name="RequiredTech" value="SHIPGUN1" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="SHOOT" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="0.015686275" />
        <Property name="G" value="0.34901962" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="0.26666668" />
        <Property name="G" value="0.99215686" />
        <Property name="B" value="1" />
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
      <Property name="FragmentCost" value="50000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

F_MEGAWARP2 =
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="F_MEGAWARP2" />
      <Property name="Group" value="" />
      <Property name="Name" value="UI_FREI_MEGAWARP_NAME" />
      <Property name="NameLower" value="UI_FREI_MEGAWARP_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_FREI_MEGAWARP_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_FREI_MEGAWARP_DESC" />
      </Property>
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/TECHNOLOGY.FREIGHTER.MEGAWARP.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="True" />
      <Property name="ChargeAmount" value="6" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
      <Property name="ChargeMultiplier" value="1" />
      <Property name="BuildFullyCharged" value="True" />
      <Property name="UsesAmmo" value="False" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="True" />
      <Property name="Upgrade" value="False" />
      <Property name="Core" value="False" />
      <Property name="RepairTech" value="False" />
      <Property name="Procedural" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="Freighter" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="50" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ULTRAPROD1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GLITCHMAT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="20" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_BLUE" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="2500" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Freighter_MegaWarp" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Freighter_MegaWarp" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="4" />
        </Property>
      </Property>
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
        <Property name="R" value="0.2" />
        <Property name="G" value="0.6" />
        <Property name="B" value="1" />
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
      <Property name="FragmentCost" value="50000" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Rare" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
]]

R_STORM_CRYSTAL = 
[[
    <Property value="GcProductData.xml">
      <Property name="ID" value="R_STORM_CRYSTAL" />
      <Property name="Name" value="UI_STORMCRYSTAL_NAME" />
      <Property name="NameLower" value="UI_STORMCRYSTAL_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_STORMCRYSTAL_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_STORMCRYSTAL_DESC" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="309000" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STORMCRYSTAL.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.9" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Exotic" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="Curiosity" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="True" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_RED" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="250" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0.05" />
        <Property name="BuyBaseMarkup" value="0.2" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0.013535193" />
      <Property name="NormalisedValueOffWorld" value="0.013535193" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Curio" />
      <Property name="IsCraftable" value="True" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0" />
      <Property name="PinObjective" value="UI_FIND_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_STORM_CRYSTAL_OBJ_TIP" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="True" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="True" />
      <Property name="IsTechbox" value="False" />
    </Property>
]]

G_STORM_CRYSTAL = 
[[
    <Property value="GcProductData.xml">
      <Property name="ID" value="G_STORM_CRYSTAL" />
      <Property name="Name" value="UI_STORMCRYSTAL_NAME" />
      <Property name="NameLower" value="UI_STORMCRYSTAL_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_STORMCRYSTAL_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_STORMCRYSTAL_DESC" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="463500" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STORMCRYSTAL.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0.9" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Exotic" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="Curiosity" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="True" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_GREEN" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="250" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0.05" />
        <Property name="BuyBaseMarkup" value="0.2" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0.013535193" />
      <Property name="NormalisedValueOffWorld" value="0.013535193" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Curio" />
      <Property name="IsCraftable" value="True" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0" />
      <Property name="PinObjective" value="UI_FIND_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_STORM_CRYSTAL_OBJ_TIP" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="True" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="True" />
      <Property name="IsTechbox" value="False" />
    </Property>
]]

B_STORM_CRYSTAL = 
[[
    <Property value="GcProductData.xml">
      <Property name="ID" value="B_STORM_CRYSTAL" />
      <Property name="Name" value="UI_STORMCRYSTAL_NAME" />
      <Property name="NameLower" value="UI_STORMCRYSTAL_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_STORMCRYSTAL_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_STORMCRYSTAL_DESC" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="695250" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STORMCRYSTAL.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0.9" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Exotic" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="Curiosity" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="True" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_BLUE" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="250" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="STORM_CRYSTAL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0.05" />
        <Property name="BuyBaseMarkup" value="0.2" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0.013535193" />
      <Property name="NormalisedValueOffWorld" value="0.013535193" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Curio" />
      <Property name="IsCraftable" value="True" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0" />
      <Property name="PinObjective" value="UI_FIND_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_STORM_CRYSTAL_OBJ_TIP" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="True" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="True" />
      <Property name="IsTechbox" value="False" />
    </Property>
]]

GLITCHMAT = 
[[
    <Property value="GcProductData.xml">
      <Property name="ID" value="GLITCHMAT" />
      <Property name="Name" value="UI_BUILD_GRID_GLITCHES" />
      <Property name="NameLower" value="UI_HEX_CORE_SUB" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="BLD_GLITCHPROP_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="BLD_GLITCHPROP_DESCRIPTION" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="375000" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PROCTECH/ROGUETECH.GENERAL.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.1" />
        <Property name="G" value="0.1" />
        <Property name="B" value="0.1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Exotic" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="Curiosity" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Illegal" />
      </Property>
      <Property name="Consumable" value="True" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements" />
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0.05" />
        <Property name="BuyBaseMarkup" value="0.2" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0.013535193" />
      <Property name="NormalisedValueOffWorld" value="0.013535193" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Curio" />
      <Property name="IsCraftable" value="False" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0" />
      <Property name="PinObjective" value="" />
      <Property name="PinObjectiveTip" value="" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="True" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="True" />
      <Property name="IsTechbox" value="False" />
    </Property>
]]

StormCraft = 
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_YELLOW" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="250" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="VENTGEM" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>	
]]

LushSwampTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_WATER" />
        </Property>
]]

ToxicTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_TOX" />
        </Property>
]]

ScorchedLavaTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_HOT" />
        </Property>
]]

RadioTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_RAD" />
        </Property>
]]

FrozenTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_COLD" />
        </Property>
]]

RedTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_ENERGY" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_BOLT" />
        </Property>
]]

GreenTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_JET" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UT_SUPER_SHIPGUN" />
        </Property>
]]

BlueTech =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="SUPER_HDRIVE" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="F_MEGAWARP2" />
        </Property>
]]

MissionScripts =
[[
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="ANIMALBONUS" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_ANIBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="50" />
                  <Property name="AmountMax" value="50" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="G_ANIBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="150" />
                  <Property name="AmountMax" value="150" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="B_ANIBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="250" />
                  <Property name="AmountMax" value="250" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="UNC_ANIBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="250" />
                  <Property name="AmountMax" value="250" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXT_ANIBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="100" />
                  <Property name="AmountMax" value="100" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXO_ANIBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="50" />
                  <Property name="AmountMax" value="50" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="WRD_ANIBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="50" />
                  <Property name="AmountMax" value="50" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceDiscover.xml">
            <Property name="Message" value="" />
            <Property name="PerPlanet" value="False" />
            <Property name="DiscoverTarget" value="Animal" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="DebugText" value="scanned creature" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if red system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Red" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="R_ANIBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if green system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Green" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="G_ANIBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if blue system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Blue" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="B_ANIBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if uncharted system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionAbandonedOrEmptySystem.xml">
                <Property name="MissionSystemType" value="Empty" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="UNC_ANIBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if extreme planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionWeather.xml">
                <Property name="IsExtreme" value="True" />
                <Property name="WeatherRequirement" value="GcPlayerHazardType.xml">
                  <Property name="Hazard" value="None" />
                </Property>
                <Property name="StormActive" value="False" />
                <Property name="IgnoreStormIfInShip" value="False" />
                <Property name="AllowNonHazardExtremeIfNoStorms" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXT_ANIBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
		</Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if RGB exotic planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Red" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Green" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Blue" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXO_ANIBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if weird planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Weird" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="WRD_ANIBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="BHOLEBONUS" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_WMODE" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMission.xml">
                  <Property name="Mission" value="WEIRDMODE" />
                  <Property name="SetAsSelected" value="False" />
                  <Property name="FailRewardIfMissionActive" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceWaitForStat.xml">
            <Property name="Message" value="" />
            <Property name="Stat" value="BLACKHOLE_WARPS" />
            <Property name="StatGroup" value="GLOBAL_STATS" />
            <Property name="Amount" value="1" />
            <Property name="DebugText" value="wait for black hole warp" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceWait.xml">
            <Property name="Time" value="7.5" />
            <Property name="DebugText" value="wait" />
            <Property name="SuppressMessages" value="False" />
            <Property name="MultiplyTimeBySeasonValue" value="False" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="play dice" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionPercentageChance.xml">
                <Property name="Percent" value="67" />
                <Property name="Seeded" value="True" />
                <Property name="OverrideZeroSeed" value="True" />
                <Property name="OverrideMissionSeedWithRandomSeed" value="True" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceAudioEvent.xml">
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_06_LP" />
                  </Property>
                  <Property name="DebugText" value="start music" />
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceWait.xml">
                  <Property name="Time" value="3" />
                  <Property name="DebugText" value="wait" />
                  <Property name="SuppressMessages" value="False" />
                  <Property name="MultiplyTimeBySeasonValue" value="False" />
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="R_WMODE" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="make things weird" />
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceWait.xml">
                  <Property name="Time" value="12" />
                  <Property name="DebugText" value="wait" />
                  <Property name="SuppressMessages" value="False" />
                  <Property name="MultiplyTimeBySeasonValue" value="False" />
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceAudioEvent.xml">
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_06_LP_STOP" />
                  </Property>
                  <Property name="DebugText" value="stop music" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="CRYSTALCRAFT" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="False" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_CRYS_PRODS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMultiSpecificProductRecipes.xml">
                  <Property name="ProductIds">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="STORM_CRYSTAL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="R_STORM_CRYSTAL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="G_STORM_CRYSTAL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="B_STORM_CRYSTAL" />
                    </Property>
                  </Property>
                  <Property name="DisplayProductId" value="" />
                  <Property name="SetName" value="" />
                  <Property name="Silent" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="R_CRYS_PRODS" />
            <Property name="DoMissionBoardOverride" value="False" />
            <Property name="Silent" value="True" />
            <Property name="RewardInventoryOverride" value="None" />
            <Property name="DebugText" value="crystal recipes" />
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="GBALLBONUS" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="GBALL_NANITES" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="50" />
                  <Property name="AmountMax" value="50" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceWaitForStat.xml">
            <Property name="Message" value="" />
            <Property name="Stat" value="GRAVBALLS" />
            <Property name="StatGroup" value="GLOBAL_STATS" />
            <Property name="Amount" value="1" />
            <Property name="DebugText" value="wait for grav ball interact" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="GBALL_NANITES" />
            <Property name="DoMissionBoardOverride" value="False" />
            <Property name="Silent" value="False" />
            <Property name="RewardInventoryOverride" value="None" />
            <Property name="DebugText" value="give nanites" />
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="MINERALBONUS" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_MINBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="15" />
                  <Property name="AmountMax" value="15" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="G_MINBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="30" />
                  <Property name="AmountMax" value="30" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="B_MINBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="75" />
                  <Property name="AmountMax" value="75" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="UNC_MINBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="75" />
                  <Property name="AmountMax" value="75" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXT_MINBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="25" />
                  <Property name="AmountMax" value="25" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXO_MINBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="15" />
                  <Property name="AmountMax" value="15" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="WRD_MINBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="15" />
                  <Property name="AmountMax" value="15" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceDiscover.xml">
            <Property name="Message" value="" />
            <Property name="PerPlanet" value="False" />
            <Property name="DiscoverTarget" value="Mineral" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="DebugText" value="scanned mineral" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if red system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Red" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="R_MINBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if green system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Green" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="G_MINBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if blue system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Blue" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="B_MINBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if uncharted system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionAbandonedOrEmptySystem.xml">
                <Property name="MissionSystemType" value="Empty" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="UNC_MINBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if extreme planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionWeather.xml">
                <Property name="IsExtreme" value="True" />
                <Property name="WeatherRequirement" value="GcPlayerHazardType.xml">
                  <Property name="Hazard" value="None" />
                </Property>
                <Property name="StormActive" value="False" />
                <Property name="IgnoreStormIfInShip" value="False" />
                <Property name="AllowNonHazardExtremeIfNoStorms" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXT_MINBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
		</Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if RGB exotic planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Red" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Green" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Blue" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXO_MINBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if weird planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Weird" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="WRD_MINBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="MONSTERMOLD" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="MOLD" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardSpecificSubstance.xml">
                  <Property name="Default" value="GcDefaultMissionSubstanceEnum.xml">
                    <Property name="DefaultSubstanceType" value="None" />
                  </Property>
                  <Property name="ID" value="SPACEGUNK2" />
                  <Property name="AmountMin" value="75" />
                  <Property name="AmountMax" value="125" />
                  <Property name="DisableMultiplier" value="True" />
                  <Property name="RewardAsBlobs" value="False" />
                  <Property name="UseFuelMultiplier" value="False" />
                  <Property name="Silent" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceKill.xml">
            <Property name="Message" value="" />
            <Property name="KillTarget" value="Fiends" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="DebugText" value="Kill monstrosity" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if abandoned system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionAbandonedOrEmptySystem.xml">
                <Property name="MissionSystemType" value="Abandoned" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="MOLD" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give runaway mold" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="PLANTBONUS" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_PLABONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="25" />
                  <Property name="AmountMax" value="25" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="G_PLABONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="75" />
                  <Property name="AmountMax" value="75" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="B_PLABONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="125" />
                  <Property name="AmountMax" value="125" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="UNC_PLABONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="125" />
                  <Property name="AmountMax" value="125" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXT_PLABONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="50" />
                  <Property name="AmountMax" value="50" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXO_PLABONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="25" />
                  <Property name="AmountMax" value="25" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="WRD_PLABONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="25" />
                  <Property name="AmountMax" value="25" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceDiscover.xml">
            <Property name="Message" value="" />
            <Property name="PerPlanet" value="False" />
            <Property name="DiscoverTarget" value="Vegetable" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="DebugText" value="scanned plant" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if red system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Red" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="R_PLABONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if green system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Green" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="G_PLABONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if blue system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Blue" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="B_PLABONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if uncharted system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionAbandonedOrEmptySystem.xml">
                <Property name="MissionSystemType" value="Empty" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="UNC_PLABONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if extreme planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionWeather.xml">
                <Property name="IsExtreme" value="True" />
                <Property name="WeatherRequirement" value="GcPlayerHazardType.xml">
                  <Property name="Hazard" value="None" />
                </Property>
                <Property name="StormActive" value="False" />
                <Property name="IgnoreStormIfInShip" value="False" />
                <Property name="AllowNonHazardExtremeIfNoStorms" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXT_PLABONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
		</Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if RGB exotic planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Red" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Green" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Blue" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXO_PLABONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if weird planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Weird" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="WRD_PLABONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="True" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="RGBCRYSTALS" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="CRYSTAL" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardSpecificProduct.xml">
                  <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                    <Property name="DefaultProductType" value="None" />
                  </Property>
                  <Property name="ID" value="STORM_CRYSTAL" />
                  <Property name="AmountMin" value="1" />
                  <Property name="AmountMax" value="1" />
                  <Property name="HideAmountInMessage" value="False" />
                  <Property name="ForceSpecialMessage" value="False" />
                  <Property name="HideInSeasonRewards" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="SeasonRewardListFormat" value="" />
                  <Property name="RequiresTech" value="" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_CRYSTAL" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardSpecificProduct.xml">
                  <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                    <Property name="DefaultProductType" value="None" />
                  </Property>
                  <Property name="ID" value="R_STORM_CRYSTAL" />
                  <Property name="AmountMin" value="1" />
                  <Property name="AmountMax" value="1" />
                  <Property name="HideAmountInMessage" value="False" />
                  <Property name="ForceSpecialMessage" value="False" />
                  <Property name="HideInSeasonRewards" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="SeasonRewardListFormat" value="" />
                  <Property name="RequiresTech" value="" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="G_CRYSTAL" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardSpecificProduct.xml">
                  <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                    <Property name="DefaultProductType" value="None" />
                  </Property>
                  <Property name="ID" value="G_STORM_CRYSTAL" />
                  <Property name="AmountMin" value="1" />
                  <Property name="AmountMax" value="1" />
                  <Property name="HideAmountInMessage" value="False" />
                  <Property name="ForceSpecialMessage" value="False" />
                  <Property name="HideInSeasonRewards" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="SeasonRewardListFormat" value="" />
                  <Property name="RequiresTech" value="" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="B_CRYSTAL" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardSpecificProduct.xml">
                  <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                    <Property name="DefaultProductType" value="None" />
                  </Property>
                  <Property name="ID" value="B_STORM_CRYSTAL" />
                  <Property name="AmountMin" value="1" />
                  <Property name="AmountMax" value="1" />
                  <Property name="HideAmountInMessage" value="False" />
                  <Property name="ForceSpecialMessage" value="False" />
                  <Property name="HideInSeasonRewards" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="SeasonRewardListFormat" value="" />
                  <Property name="RequiresTech" value="" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceWaitForStat.xml">
            <Property name="Message" value="" />
            <Property name="Stat" value="STORM_CRYSTALS" />
            <Property name="StatGroup" value="GLOBAL_STATS" />
            <Property name="Amount" value="1" />
            <Property name="DebugText" value="wait for storm crystal interact" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if yellow system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Yellow" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="CRYSTAL" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give crystal" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if red system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Red" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="R_CRYSTAL" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give crystal" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if green system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Green" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="G_CRYSTAL" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give crystal" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if blue system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Blue" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="B_CRYSTAL" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give crystal" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="WAYPOINTBONUS" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="AllModes" />
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_WPBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="600" />
                  <Property name="AmountMax" value="600" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="G_WPBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="300" />
                  <Property name="AmountMax" value="300" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="B_WPBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="400" />
                  <Property name="AmountMax" value="400" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXT_WPBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="250" />
                  <Property name="AmountMax" value="250" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="EXO_WPBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="100" />
                  <Property name="AmountMax" value="100" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="WRD_WPBONUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMoney.xml">
                  <Property name="AmountMin" value="100" />
                  <Property name="AmountMax" value="100" />
                  <Property name="Currency" value="GcCurrency.xml">
                    <Property name="Currency" value="Nanites" />
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceWaitForStat.xml">
            <Property name="Message" value="" />
            <Property name="Stat" value="DISC_WAYPOINTS" />
            <Property name="StatGroup" value="GLOBAL_STATS" />
            <Property name="Amount" value="1" />
            <Property name="DebugText" value="discover waypoint" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceWait.xml">
            <Property name="Time" value="5" />
            <Property name="DebugText" value="wait" />
            <Property name="SuppressMessages" value="False" />
            <Property name="MultiplyTimeBySeasonValue" value="False" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if red system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Red" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="R_WPBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if green system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Green" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="G_WPBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if blue system" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionSystemStarClass.xml">
                <Property name="Class" value="GcGalaxyStarTypes.xml">
                  <Property name="GalaxyStarType" value="Blue" />
                </Property>
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="B_WPBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if extreme planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionWeather.xml">
                <Property name="IsExtreme" value="True" />
                <Property name="WeatherRequirement" value="GcPlayerHazardType.xml">
                  <Property name="Hazard" value="None" />
                </Property>
                <Property name="StormActive" value="False" />
                <Property name="IgnoreStormIfInShip" value="False" />
                <Property name="AllowNonHazardExtremeIfNoStorms" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXT_WPBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
		</Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if RGB exotic planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Red" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Green" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Blue" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="EXO_WPBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="check if weird planet" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Weird" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="WRD_WPBONUS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Give nanites" />
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="WEIRDMODE" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="None" />
      <Property name="RestartOnCompletion" value="False" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents">
        <Property value="GcScanEventData.xml">
          <Property name="Name" value="SE_WEIRDPLA" />
          <Property name="ForceInteraction" value="" />
          <Property name="ForceInteractionType" value="GcInteractionType.xml">
            <Property name="InteractionType" value="None" />
          </Property>
          <Property name="RequireInteractionRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ForceBroken" value="False" />
          <Property name="ForceFixed" value="False" />
          <Property name="ForceOverridesAll" value="True" />
          <Property name="ForceOverrideEncounter" value="" />
          <Property name="IsCommunityPortalOverride" value="False" />
          <Property name="ClearForcedInteractionOnCompletion" value="False" />
          <Property name="BuildingPreventionRadius" value="0" />
          <Property name="AlwaysShow" value="False" />
          <Property name="NeverShow" value="True" />
          <Property name="PlanetLabelText" value="" />
          <Property name="SurveyDistance" value="1200" />
          <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
          <Property name="EventStartType" value="Special" />
          <Property name="EventEndType" value="Interact" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="False" />
          <Property name="DisableMultiplayerSync" value="False" />
          <Property name="ReplaceEventIfAlreadyActive" value="False" />
          <Property name="BuildingLocation" value="PlanetSearch" />
          <Property name="BuildingType" value="Any" />
          <Property name="BuildingClass" value="GcBuildingClassification.xml">
            <Property name="BuildingClass" value="None" />
          </Property>
          <Property name="AllowFriendsBases" value="False" />
          <Property name="ForceWideRandom" value="False" />
          <Property name="MustFindSystem" value="False" />
          <Property name="AllowOverriddenBuildings" value="True" />
          <Property name="SolarSystemLocation" value="LocalOrNear" />
          <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsPrimePlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="AnyInfestedBiome" value="False" />
            <Property name="NeedsBiome" value="True" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Weird" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="False" />
            <Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsPrimePlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="AnyInfestedBiome" value="False" />
            <Property name="NeedsBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="False" />
            <Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="ForceRestartInteraction" value="True" />
          <Property name="HasReward" value="" />
          <Property name="NextOption" value="" />
          <Property name="TriggerActions" value="GcScanEventTriggers.xml">
            <Property name="Range" value="100" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="False" />
          </Property>
          <Property name="UAsList" />
          <Property name="TechShopType" value="GcTechnologyCategory.xml">
            <Property name="TechnologyCategory" value="All" />
          </Property>
          <Property name="OSDMessage" value="" />
          <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
          <Property name="MarkerLabel" value="" />
          <Property name="MarkerIcon" value="TkTextureResource.xml">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
            <Property name="ScannerIconHighlightType" value="Diamond" />
          </Property>
          <Property name="StartTime" value="0" />
          <Property name="MessageTime" value="0" />
          <Property name="MessageDisplayTime" value="4" />
          <Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="IconTime" value="4" />
          <Property name="TooltipTime" value="10" />
          <Property name="TooltipRepeats" value="False" />
          <Property name="ShowEndTooltip" value="True" />
          <Property name="TooltipMessage" value="ANOMALY_DETECT" />
          <Property name="ResourceOverride" value="GcResourceElement.xml">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
            <Property name="Seed" value="GcSeed.xml">
              <Property name="Seed" value="0" />
              <Property name="UseSeedValue" value="False" />
            </Property>
            <Property name="AltId" value="" />
            <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
              <Property name="Samplers" />
            </Property>
          </Property>
        </Property>
        <Property value="GcScanEventData.xml">
          <Property name="Name" value="SE_WEIRDPLA_MARKER" />
          <Property name="ForceInteraction" value="" />
          <Property name="ForceInteractionType" value="GcInteractionType.xml">
            <Property name="InteractionType" value="None" />
          </Property>
          <Property name="RequireInteractionRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ForceBroken" value="False" />
          <Property name="ForceFixed" value="False" />
          <Property name="ForceOverridesAll" value="True" />
          <Property name="ForceOverrideEncounter" value="" />
          <Property name="IsCommunityPortalOverride" value="False" />
          <Property name="ClearForcedInteractionOnCompletion" value="False" />
          <Property name="BuildingPreventionRadius" value="0" />
          <Property name="AlwaysShow" value="True" />
          <Property name="NeverShow" value="False" />
          <Property name="PlanetLabelText" value="" />
          <Property name="SurveyDistance" value="1200" />
          <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
          <Property name="EventStartType" value="Special" />
          <Property name="EventEndType" value="Interact" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="False" />
          <Property name="DisableMultiplayerSync" value="False" />
          <Property name="ReplaceEventIfAlreadyActive" value="False" />
          <Property name="BuildingLocation" value="PlanetSearch" />
          <Property name="BuildingType" value="Any" />
          <Property name="BuildingClass" value="GcBuildingClassification.xml">
            <Property name="BuildingClass" value="None" />
          </Property>
          <Property name="AllowFriendsBases" value="False" />
          <Property name="ForceWideRandom" value="False" />
          <Property name="MustFindSystem" value="False" />
          <Property name="AllowOverriddenBuildings" value="True" />
          <Property name="SolarSystemLocation" value="LocalOrNear" />
          <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsPrimePlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="AnyInfestedBiome" value="False" />
            <Property name="NeedsBiome" value="True" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Weird" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="False" />
            <Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="SE_WEIRDPLA" />
          </Property>
          <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsPrimePlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="AnyInfestedBiome" value="False" />
            <Property name="NeedsBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="False" />
            <Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="ForceRestartInteraction" value="True" />
          <Property name="HasReward" value="" />
          <Property name="NextOption" value="" />
          <Property name="TriggerActions" value="GcScanEventTriggers.xml">
            <Property name="Range" value="100" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="False" />
          </Property>
          <Property name="UAsList" />
          <Property name="TechShopType" value="GcTechnologyCategory.xml">
            <Property name="TechnologyCategory" value="All" />
          </Property>
          <Property name="OSDMessage" value="" />
          <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
          <Property name="MarkerLabel" value="ANOMALY_DETECT" />
          <Property name="MarkerIcon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
            <Property name="ScannerIconHighlightType" value="Diamond" />
          </Property>
          <Property name="StartTime" value="0" />
          <Property name="MessageTime" value="0" />
          <Property name="MessageDisplayTime" value="4" />
          <Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="IconTime" value="4" />
          <Property name="TooltipTime" value="10" />
          <Property name="TooltipRepeats" value="False" />
          <Property name="ShowEndTooltip" value="True" />
          <Property name="TooltipMessage" value="" />
          <Property name="ResourceOverride" value="GcResourceElement.xml">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
            <Property name="Seed" value="GcSeed.xml">
              <Property name="Seed" value="0" />
              <Property name="UseSeedValue" value="False" />
            </Property>
            <Property name="AltId" value="" />
            <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
              <Property name="Samplers" />
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_WMTIMER" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMission.xml">
                  <Property name="Mission" value="WMODETIMER" />
                  <Property name="SetAsSelected" value="False" />
                  <Property name="FailRewardIfMissionActive" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="THEPOPO" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardWantedLevel.xml">
                  <Property name="Message" value="" />
                  <Property name="Level" value="3" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_GLITCHMAT" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardSpecificProduct.xml">
                  <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                    <Property name="DefaultProductType" value="None" />
                  </Property>
                  <Property name="ID" value="GLITCHMAT" />
                  <Property name="AmountMin" value="1" />
                  <Property name="AmountMax" value="1" />
                  <Property name="HideAmountInMessage" value="False" />
                  <Property name="ForceSpecialMessage" value="False" />
                  <Property name="HideInSeasonRewards" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="SeasonRewardListFormat" value="" />
                  <Property name="RequiresTech" value="" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
	  </Property>
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
            <Property name="Category" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="Time" value="0" />
            <Property name="Message" value="" />
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="OSDTime" value="6" />
            <Property name="OSDMessage" value="UI_CORE_ACT1_STEP13_MSG6" />
            <Property name="OSDMessageSubtitle" value="" />
            <Property name="OSDMessageColour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.141" />
              <Property name="B" value="0.141" />
              <Property name="A" value="0.8" />
            </Property>
            <Property name="OSDMessageStyle" value="Standard" />
            <Property name="OSDUseMissionIcon" value="False" />
            <Property name="DisableIcon" value="False" />
            <Property name="DisableTitlePrefix" value="False" />
            <Property name="UseConditionsForTextFormatting" />
            <Property name="DebugText" value="show detected message" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="R_WMTIMER" />
            <Property name="DoMissionBoardOverride" value="False" />
            <Property name="Silent" value="False" />
            <Property name="RewardInventoryOverride" value="None" />
            <Property name="DebugText" value="start timer" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
            <Property name="Table" value="GcScanEventTableType.xml">
              <Property name="ScanTable" value="Tutorial" />
            </Property>
            <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
              <Property name="ParticipantType" value="None" />
            </Property>
            <Property name="Event" value="SE_WEIRDPLA" />
            <Property name="Time" value="0" />
            <Property name="AllowOtherPlayersBase" value="False" />
            <Property name="DebugText" value="find boundary failure" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceGroup.xml">
            <Property name="Silent" value="True" />
            <Property name="Icon" value="TkTextureResource.xml">
              <Property name="Filename" value="" />
              <Property name="ResHandle" value="GcResource.xml">
                <Property name="ResourceID" value="0" />
              </Property>
            </Property>
            <Property name="PageHint" value="GcMissionPageHint.xml">
              <Property name="MissionPageHint" value="None" />
            </Property>
            <Property name="PageDataLocID" value="" />
            <Property name="BuildMenuHint" value="" />
            <Property name="InventoryHint" value="" />
            <Property name="DebugText" value="few minutes loop" />
            <Property name="ObjectiveID" value="" />
            <Property name="ObjectiveTipID" value="" />
            <Property name="HasCategoryOverride" value="False" />
            <Property name="OverrideCategory" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="HasColourOverride" value="False" />
            <Property name="ColourOverride" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="PrefixTitle" value="False" />
            <Property name="PrefixTitleText" value="" />
            <Property name="BlockPinning" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyTrue" />
            </Property>
            <Property name="RepeatLogic" value="Loop" />
            <Property name="IconStyle" value="Default" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
              <Property name="TargetMissionSurveyId" value="" />
              <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
              <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
              <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
              <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
              <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
            </Property>
            <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
              <Property name="HasCustomNotifyTimer" value="False" />
              <Property name="NotifyDisplayTime" value="20" />
              <Property name="NotifyPauseTime" value="30" />
            </Property>
            <Property name="Conditions">
              <Property value="GcMissionConditionMissionCompleted.xml">
                <Property name="MissionID" value="WMODETIMER" />
              </Property>
			</Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                  <Property name="Table" value="GcScanEventTableType.xml">
                    <Property name="ScanTable" value="Tutorial" />
                  </Property>
                  <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                    <Property name="ParticipantType" value="None" />
                  </Property>
                  <Property name="Event" value="SE_WEIRDPLA_MARKER" />
                  <Property name="Time" value="0" />
                  <Property name="AllowOtherPlayersBase" value="False" />
                  <Property name="DebugText" value="show marker" />
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                  <Property name="Message" value="" />
                  <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyTrue" />
                  </Property>
                  <Property name="Conditions">
                    <Property value="GcMissionConditionIsScanEventOnCurrentPlanet.xml">
                      <Property name="Event" value="SE_WEIRDPLA" />
                      <Property name="AllowInShip" value="True" />
                    </Property>
                  </Property>
                  <Property name="AllowedToFormatObjectives" value="True" />
                  <Property name="ForceAllowMissionRestart" value="False" />
                  <Property name="ForceAllowMissionRestartEvent" value="" />
                  <Property name="DebugText" value="reach the weird planet" />
                  <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                    <Property name="MissionMarkup" value="None" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions" />
                <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
                  <Property name="Event" value="SE_WEIRDPLA_MARKER" />
                  <Property name="DebugText" value="remove marker" />
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions"/>
                <Property name="Stage" value="GcMissionSequenceGroup.xml">
                  <Property name="Silent" value="True" />
                  <Property name="Icon" value="TkTextureResource.xml">
                    <Property name="Filename" value="" />
                    <Property name="ResHandle" value="GcResource.xml">
                      <Property name="ResourceID" value="0" />
                    </Property>
                  </Property>
                  <Property name="PageHint" value="GcMissionPageHint.xml">
                    <Property name="MissionPageHint" value="None" />
                  </Property>
                  <Property name="PageDataLocID" value="" />
                  <Property name="BuildMenuHint" value="" />
                  <Property name="InventoryHint" value="" />
                  <Property name="DebugText" value="stuff on weird planet" />
                  <Property name="ObjectiveID" value="" />
                  <Property name="ObjectiveTipID" value="" />
                  <Property name="HasCategoryOverride" value="False" />
                  <Property name="OverrideCategory" value="GcMissionCategory.xml">
                    <Property name="MissionCategory" value="Mission" />
                  </Property>
                  <Property name="HasColourOverride" value="False" />
                  <Property name="ColourOverride" value="Colour.xml">
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
                    <Property name="A" value="1" />
                  </Property>
                  <Property name="PrefixTitle" value="False" />
                  <Property name="PrefixTitleText" value="" />
                  <Property name="BlockPinning" value="False" />
                  <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="RepeatLogic" value="Loop" />
                  <Property name="IconStyle" value="Default" />
                  <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                    <Property name="InputButton" value="None" />
                  </Property>
                  <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                    <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                    <Property name="FormattableObjective" value="" />
                    <Property name="FormattableObjectiveTip" value="" />
                  </Property>
                  <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                    <Property name="TargetMissionSurveyId" value="" />
                    <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                    <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                    <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                    <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                    <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                  </Property>
                  <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                    <Property name="HasCustomNotifyTimer" value="False" />
                    <Property name="NotifyDisplayTime" value="20" />
                    <Property name="NotifyPauseTime" value="30" />
                  </Property>
                  <Property name="Conditions">
                    <Property value="GcMissionConditionIsScanEventOnCurrentPlanet.xml">
                      <Property name="Event" value="SE_WEIRDPLA" />
                      <Property name="AllowInShip" value="True" />
                    </Property>
		      	  </Property>
                  <Property name="Consequences" />
                  <Property name="Stages">
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions"/>
                      <Property name="Stage" value="GcMissionSequenceKill.xml">
                        <Property name="Message" value="" />
                        <Property name="KillTarget" value="Creatures" />
                        <Property name="AmountMin" value="1" />
                        <Property name="AmountMax" value="1" />
                        <Property name="DebugText" value="kill weird stuff" />
                      </Property>
                    </Property>
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions"/>
                      <Property name="Stage" value="GcMissionSequenceGroup.xml">
                        <Property name="Silent" value="True" />
                        <Property name="Icon" value="TkTextureResource.xml">
                          <Property name="Filename" value="" />
                          <Property name="ResHandle" value="GcResource.xml">
                            <Property name="ResourceID" value="0" />
                          </Property>
                        </Property>
                        <Property name="PageHint" value="GcMissionPageHint.xml">
                          <Property name="MissionPageHint" value="None" />
                        </Property>
                        <Property name="PageDataLocID" value="" />
                        <Property name="BuildMenuHint" value="" />
                        <Property name="InventoryHint" value="" />
                        <Property name="DebugText" value="summon police if needed" />
                        <Property name="ObjectiveID" value="" />
                        <Property name="ObjectiveTipID" value="" />
                        <Property name="HasCategoryOverride" value="False" />
                        <Property name="OverrideCategory" value="GcMissionCategory.xml">
                          <Property name="MissionCategory" value="Mission" />
                        </Property>
                        <Property name="HasColourOverride" value="False" />
                        <Property name="ColourOverride" value="Colour.xml">
                          <Property name="R" value="1" />
                          <Property name="G" value="1" />
                          <Property name="B" value="1" />
                          <Property name="A" value="1" />
                        </Property>
                        <Property name="PrefixTitle" value="False" />
                        <Property name="PrefixTitleText" value="" />
                        <Property name="BlockPinning" value="False" />
                        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                          <Property name="ConditionTest" value="AnyTrue" />
                        </Property>
                        <Property name="RepeatLogic" value="None" />
                        <Property name="IconStyle" value="Default" />
                        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                          <Property name="InputButton" value="None" />
                        </Property>
                        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                          <Property name="FormattableObjective" value="" />
                          <Property name="FormattableObjectiveTip" value="" />
                        </Property>
                        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                          <Property name="TargetMissionSurveyId" value="" />
                          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                        </Property>
                        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                          <Property name="HasCustomNotifyTimer" value="False" />
                          <Property name="NotifyDisplayTime" value="20" />
                          <Property name="NotifyPauseTime" value="30" />
                        </Property>
                        <Property name="Conditions">
                          <Property value="GcMissionConditionIsPlayerWanted.xml">
                            <Property name="Level" value="0" />
                            <Property name="Test" value="TkEqualityEnum.xml">
                              <Property name="EqualityEnum" value="Greater" />
                            </Property>
                          </Property>
		            	</Property>
                        <Property name="Consequences" />
                        <Property name="Stages">
                          <Property value="GcGenericMissionStage.xml">
                            <Property name="Versions"/>
                            <Property name="Stage" value="GcMissionSequenceReward.xml">
                              <Property name="Message" value="" />
                              <Property name="Reward" value="THEPOPO" />
                              <Property name="DoMissionBoardOverride" value="False" />
                              <Property name="Silent" value="True" />
                              <Property name="RewardInventoryOverride" value="None" />
                              <Property name="DebugText" value="summon police" />
                            </Property>
                          </Property>
		            	</Property>
                      </Property>
                    </Property>
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions"/>
                      <Property name="Stage" value="GcMissionSequenceReward.xml">
                        <Property name="Message" value="" />
                        <Property name="Reward" value="R_GLITCHMAT" />
                        <Property name="DoMissionBoardOverride" value="False" />
                        <Property name="Silent" value="False" />
                        <Property name="RewardInventoryOverride" value="None" />
                        <Property name="DebugText" value="give glitch mat" />
                      </Property>
                    </Property>
		      	  </Property>
                </Property>
              </Property>
			</Property>
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
            <Property name="Event" value="SE_WEIRDPLA_MARKER" />
            <Property name="DebugText" value="remove marker" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
            <Property name="Event" value="SE_WEIRDPLA" />
            <Property name="DebugText" value="end event" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
            <Property name="Category" value="GcMissionCategory.xml">
              <Property name="MissionCategory" value="Mission" />
            </Property>
            <Property name="Time" value="0" />
            <Property name="Message" value="" />
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="OSDTime" value="4" />
            <Property name="OSDMessage" value="UI_MISSIONSURVEY_NO_HINT" />
            <Property name="OSDMessageSubtitle" value="" />
            <Property name="OSDMessageColour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.141" />
              <Property name="B" value="0.141" />
              <Property name="A" value="0.8" />
            </Property>
            <Property name="OSDMessageStyle" value="Standard" />
            <Property name="OSDUseMissionIcon" value="False" />
            <Property name="DisableIcon" value="False" />
            <Property name="DisableTitlePrefix" value="False" />
            <Property name="UseConditionsForTextFormatting" />
            <Property name="DebugText" value="event end message" />
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="WMODETIMER" />
      <Property name="MissionClass" value="Guide" />
      <Property name="MissionIsCritical" value="False" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="False" />
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory.xml">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint.xml">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="False" />
      <Property name="MissionColourOverride" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
      </Property>
      <Property name="PrefixTitle" value="True" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
        <Property name="Type" value="GcMissionType.xml">
          <Property name="MissionType" value="Research" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty.xml">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="False" />
        <Property name="IsGuildShopMission" value="False" />
        <Property name="IsPlanetProcMission" value="False" />
        <Property name="IsMultiplayerEventMission" value="False" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="100" />
        <Property name="IgnoreCalculatedObjective" value="True" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="None" />
      <Property name="RestartOnCompletion" value="False" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards" />
      <Property name="Costs" />
      <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="False" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions"/>
          <Property name="Stage" value="GcMissionSequenceWait.xml">
            <Property name="Time" value="600" />
            <Property name="DebugText" value="wait" />
            <Property name="SuppressMessages" value="False" />
            <Property name="MultiplyTimeBySeasonValue" value="False" />
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="CanRenounce" value="False" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
]]

SuperTech = UT_SUPER_HOT..UT_SUPER_COLD..UT_SUPER_TOX..UT_SUPER_RAD
            ..UT_SUPER_WATER..UT_SUPER_ENERGY..UT_SUPER_JET..SUPER_HDRIVE
			..UT_SUPER_BOLT..UT_SUPER_SHIPGUN..F_MEGAWARP2

TechMats = R_STORM_CRYSTAL..G_STORM_CRYSTAL..B_STORM_CRYSTAL..GLITCHMAT

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "zzz_crystalprogress_v102.pak",
  ["MOD_AUTHOR"]			= "camus",
  ["LUA_AUTHOR"]			= "camus",
  ["NMS_VERSION"]			= "4.08",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","HDRIVEBOOST1",},
							["PRECEDING_KEY_WORDS"] = {"TECH_COMP",},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = HDRIVEBOOST1,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","HDRIVEBOOST2",},
							["PRECEDING_KEY_WORDS"] = {"TECH_COMP",},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = HDRIVEBOOST2,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","HDRIVEBOOST3",},
							["PRECEDING_KEY_WORDS"] = {"TECH_COMP",},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = HDRIVEBOOST3,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS1",},
							["PRECEDING_KEY_WORDS"] = {"HYPERFUEL2",},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ID", "R_STORM_CRYSTAL" },
								{ "Amount", "15" },
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS2",},
							["PRECEDING_KEY_WORDS"] = {"HYPERFUEL2",},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ID", "G_STORM_CRYSTAL" },
								{ "Amount", "15" },
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS3",},
							["PRECEDING_KEY_WORDS"] = {"HYPERFUEL2",},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ID", "B_STORM_CRYSTAL" },
								{ "Amount", "15" },
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_SENTGUN",},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = SuperTech,
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","UI_STORMCRYSTAL_NAME",},
							["REPLACE_TYPE"] 	= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[<Property name="Requirements" />]], StormCraft }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","UI_STORMCRYSTAL_NAME",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IsCraftable", "True" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FOOD_CG_HONEY",},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = TechMats,
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Lush","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_WATER" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = LushSwampTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Toxic","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_TOX" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = ToxicTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Scorched","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_HOT" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = ScorchedLavaTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Radioactive","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_RAD" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = RadioTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Frozen","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_COLD" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = FrozenTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Red","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_BOLT" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = RedTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Green","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_BOLT" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = GreenTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Blue","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_MIDAIR" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = BlueTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Swamp","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_BOLT" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = LushSwampTech,
						},
						{
							["PRECEDING_FIRST"] = "True",
							["PRECEDING_KEY_WORDS"] = {"PlanetTechShops",},
							["SPECIAL_KEY_WORDS"] = {"Lava","GcTechList.xml",},
							["WHERE_IN_SUBSECTION"] =
							{
								{ "Value", "UT_BOLT" },
							},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = ScorchedLavaTech,
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\FLEETMISSIONTABLE.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"MissionID","FRE_WARP_FIX",},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = MissionScripts,
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVE\ENTITIES\INTERACTION.ENTITY.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ActivationCost",},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "SubstanceId", "ACCESS3" },
								{ "Cost", "1" },
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\STORMCRYSTALS\ENTITIES\STORMCRYSTALS.ENTITY.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcSimpleInteractionComponentData.xml",},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "Id", "" },
							},
						},
					},
				},
			},
		},
	},	
}
