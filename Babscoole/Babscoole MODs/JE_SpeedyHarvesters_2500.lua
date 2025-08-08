-- speed is in seconds, and has to be a negative value. default = -79200 which is 22 hours, -3600 is 1 hour.
HARVESTER_SPEED = -1800 -- default = -3600
HARVESTER_STORAGE = 2500 -- default = 250
F_HARVESTER_SPEED = 1800 -- default = 3600, fuel burn time
FUEL_AMOUNT = 800 -- Default is 100

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JE_SpeedyHarvesters_2500",
["MOD_DESCRIPTION"] = "Increases speed and storage of AMUs and Oxygen and Gas Harvesters",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "5.75",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_FUEL5"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Table" value="GcTechnology">
      <Property name="ID" value="MAINT_FUEL6" />
      <Property name="Group" value="" />
      <Property name="Name" value="UI_MAINTAIN_FUEL1_NAME" />
      <Property name="NameLower" value="UI_MAINTAIN_FUEL1_NAME_L" />
      <Property name="Subtitle" value="UI_MAINTAIN_FUEL_SUB" />
      <Property name="Description" value="UI_MAINTAIN_FUEL1_DESC" />
      <Property name="Teach" value="false" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/MAINTTECH.FUEL1.DDS" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="true" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory">
        <Property name="SubstanceCategory" value="Fuel" />
      </Property>
      <Property name="ChargeBy">
        <Property name="ChargeBy" value="FUEL1" />
        <Property name="ChargeBy" value="FUEL2" />
      </Property>
      <Property name="ChargeMultiplier" value="1.000000" />
      <Property name="BuildFullyCharged" value="false" />
      <Property name="UsesAmmo" value="false" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="false" />
      <Property name="Upgrade" value="false" />
      <Property name="Core" value="true" />
      <Property name="RepairTech" value="false" />
      <Property name="Procedural" value="false" />
      <Property name="BrokenSlotTech" value="false" />
      <Property name="Category" value="GcTechnologyCategory">
        <Property name="TechnologyCategory" value="Maintenance" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="10.000000" />
      <Property name="Requirements" />
      <Property name="BaseStat" value="GcStatsTypes">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="StatBonuses" />
      <Property name="RequiredTech" value="" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="1.000000" />
        <Property name="B" value="1.000000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="LinkColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="1.000000" />
        <Property name="B" value="1.000000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="RewardGroup" value="" />
      <Property name="BaseValue" value="1" />
      <Property name="Cost" value="GcItemPriceModifiers">
        <Property name="SpaceStationMarkup" value="0.000000" />
        <Property name="LowPriceMod" value="0.000000" />
        <Property name="HighPriceMod" value="0.000000" />
        <Property name="BuyBaseMarkup" value="0.000000" />
        <Property name="BuyMarkupMod" value="0.000000" />
      </Property>
      <Property name="RequiredRank" value="1" />
      <Property name="DispensingRace" value="GcAlienRace">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="FragmentCost" value="2" />
      <Property name="TechShopRarity" value="GcTechnologyRarity">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="WikiEnabled" value="false" />
      <Property name="NeverPinnable" value="false" />
      <Property name="DamagedDescription" value="" />
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="false" />
      <Property name="ExclusivePrimaryStat" value="false" />
    </Property>
    <Property name="Table" value="GcTechnology">
      <Property name="ID" value="MAINT_FUEL7" />
      <Property name="Group" value="" />
      <Property name="Name" value="UI_MAINTAIN_FUEL4_NAME" />
      <Property name="NameLower" value="UI_MAINTAIN_FUEL4_NAME_L" />
      <Property name="Subtitle" value="UI_MAINTAIN_FUEL_SUB" />
      <Property name="Description" value="UI_MAINTAIN_FUEL4_DESC" />
      <Property name="Teach" value="false" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/MAINTTECH.FUEL4.DDS" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="true" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory">
        <Property name="SubstanceCategory" value="Fuel" />
      </Property>
      <Property name="ChargeBy">
        <Property name="ChargeBy" value="FUEL1" />
        <Property name="ChargeBy" value="FUEL2" />
      </Property>
      <Property name="ChargeMultiplier" value="1.000000" />
      <Property name="BuildFullyCharged" value="false" />
      <Property name="UsesAmmo" value="false" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="false" />
      <Property name="Upgrade" value="false" />
      <Property name="Core" value="true" />
      <Property name="RepairTech" value="false" />
      <Property name="Procedural" value="false" />
      <Property name="BrokenSlotTech" value="false" />
      <Property name="Category" value="GcTechnologyCategory">
        <Property name="TechnologyCategory" value="Maintenance" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="10.000000" />
      <Property name="Requirements" />
      <Property name="BaseStat" value="GcStatsTypes">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="StatBonuses" />
      <Property name="RequiredTech" value="" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="1.000000" />
        <Property name="B" value="1.000000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="LinkColour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="1.000000" />
        <Property name="B" value="1.000000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="RewardGroup" value="" />
      <Property name="BaseValue" value="1" />
      <Property name="Cost" value="GcItemPriceModifiers">
        <Property name="SpaceStationMarkup" value="0.000000" />
        <Property name="LowPriceMod" value="0.000000" />
        <Property name="HighPriceMod" value="0.000000" />
        <Property name="BuyBaseMarkup" value="0.000000" />
        <Property name="BuyMarkupMod" value="0.000000" />
      </Property>
      <Property name="RequiredRank" value="1" />
      <Property name="DispensingRace" value="GcAlienRace">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="FragmentCost" value="2" />
      <Property name="TechShopRarity" value="GcTechnologyRarity">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="WikiEnabled" value="false" />
      <Property name="NeverPinnable" value="false" />
      <Property name="DamagedDescription" value="" />
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="false" />
      <Property name="ExclusivePrimaryStat" value="false" />
    </Property>
]],
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", FUEL_AMOUNT},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL7"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", FUEL_AMOUNT},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\GASHARVESTER\ENTITIES\GASHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_FUEL1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Id", "MAINT_FUEL6"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GAS1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCapacity",           HARVESTER_STORAGE},
                {"AmountEmptyTimePeriod", HARVESTER_SPEED},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\OXYGENHARVESTER180\ENTITIES\OXYGENHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_FUEL4"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Id", "MAINT_FUEL7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "OXYGEN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCapacity",           HARVESTER_STORAGE},
                {"AmountEmptyTimePeriod", HARVESTER_SPEED},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL7"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HARVESTER\ENTITIES\RESOURCEHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_FUEL1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Id", "MAINT_FUEL6"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "YELLOW2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCapacity",           HARVESTER_STORAGE},
                {"AmountEmptyTimePeriod", HARVESTER_SPEED},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUILDHARVESTER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CanPickUp", "true"}

              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUILDGASHARVEST"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CanPickUp", "true"}

              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "O2_HARVESTER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CanPickUp", "true"}

              }
            },
          },
        },
      }
    }
  }
}