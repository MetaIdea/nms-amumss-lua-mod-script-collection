NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Improvingweapons.pak",
["MOD_AUTHOR"]    = "Aufram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.05",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_ClipSize"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_BurstCooldown"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_MaximumCharge"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "9999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_BulletsPerShot"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Dispersion"},
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_HeatTime"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "16"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyCategory", "AllShips"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1024"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_HeatTime"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_ReloadTime"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_ChargeTime"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Recoil"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Drain"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Drain"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Stun" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Stun_Duration" />
          </Property>
          <Property name="Bonus" value="32" />
          <Property name="Level" value="1" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_RAIL_STUN", "StatsType", "Weapon_Stun_Duration"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HDRIVEBOOST3"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="HDRIVEBOOST4" />
      <Property name="Group" value="" />
      <Property name="Name" value="HYP_ACCESS4_NAME" />
      <Property name="NameLower" value="HYP_ACCESS4_NAME_L" />
      <Property name="Subtitle" value="HYP_ACCESS4_SUB" />
      <Property name="Description" value="RGB_WARP_4_DESC" />
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/TECHNOLOGY.PURPLEDRIVE.DDS" />
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
      <Property name="Level" value="3" />
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
      <Property name="BrokenSlotTech" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="AllShipsExceptAlien" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
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
          <Property name="ID" value="ROBOT2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="DRONE_SALVAGE" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
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
          <Property name="Level" value="6" />
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
      <Property name="RequiredRank" value="2" />
      <Property name="DispensingRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="Traders" />
      </Property>
      <Property name="FragmentCost" value="200" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Common" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="" />
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
      <Property name="ExclusivePrimaryStat" value="False" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS3"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="F_HACCESS4" />
      <Property name="Group" value="" />
      <Property name="Name" value="RGB_WARP_4_NAME" />
      <Property name="NameLower" value="RGB_WARP_4_NAME_L" />
      <Property name="Subtitle" value="HYP_ACCESS4_SUB" />
      <Property name="Description" value="RGB_WARP_4_DESC" />
      <Property name="Teach" value="True" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/TECHNOLOGY.FREIGHTERPURPLE.DDS" />
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
      <Property name="Level" value="4" />
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
      <Property name="ChargeMultiplier" value="1" />
      <Property name="BuildFullyCharged" value="False" />
      <Property name="UsesAmmo" value="False" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="False" />
      <Property name="Upgrade" value="True" />
      <Property name="Core" value="False" />
      <Property name="RepairTech" value="False" />
      <Property name="Procedural" value="False" />
      <Property name="BrokenSlotTech" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="Freighter" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="100" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="SPIDER_PROD" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ROBOT2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="160" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PURPLE2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="250" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Freighter_Hyperdrive" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Freighter_Hyperdrive_JumpDistance" />
          </Property>
          <Property name="Bonus" value="50" />
          <Property name="Level" value="6" />
        </Property>
      </Property>
      <Property name="RequiredTech" value="F_HYPERDRIVE" />
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
      <Property name="RequiredRank" value="8" />
      <Property name="DispensingRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="Traders" />
      </Property>
      <Property name="FragmentCost" value="12" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Rare" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="" />
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
      <Property name="ExclusivePrimaryStat" value="False" />
    </Property>
]]
                        },
                    }
                },
            }
        }
    }
}