NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_00_POD.GetToTheFunPartv4.05.0.pak",
["MOD_DESCRIPTION"]         = "Start off with everything working and fueled up",
["MOD_AUTHOR"]              = "PodcastPrimate",
["LUA Fix and Update"]      = "Babscoole",
["NMS_VERSION"]             = "4.05",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StartCrashSiteMinDistance", "20"},
                                {"StartCrashSiteMaxDistance", "50"},
                                {"StartShelterMinDistance",   "200"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialShipInventory", "GcInventoryContainer.xml", "Id", "LAUNCHER"},
                            ["SECTION_ACTIVE"] = 1,
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Amount",       "300"},
                                {"DamageFactor", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialShipInventory", "GcInventoryContainer.xml", "Id", "SHIPJUMP1"},
                            ["SECTION_ACTIVE"] = 1,
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Amount",       "200"},
                                {"DamageFactor", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialShipInventory", "GcInventoryContainer.xml", "Id", "SHIPGUN1"},
                            ["SECTION_ACTIVE"] = {1,2},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Id", "SHIPMINIGUN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialShipInventory", "GcInventoryContainer.xml", "Id", "SHIPROCKETS"},
                            ["SECTION_ACTIVE"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                              ["ADD"] =
[[
          <Property value="GcInventoryElement.xml">
            <Property name="Type" value="GcInventoryType.xml">
              <Property name="InventoryType" value="Technology" />
            </Property>
            <Property name="Id" value="HYPERDRIVE" />
            <Property name="Amount" value="400" />
            <Property name="MaxAmount" value="100" />
            <Property name="DamageFactor" value="0" />
            <Property name="FullyInstalled" value="True" />
            <Property name="Index" value="GcInventoryIndex.xml">
              <Property name="X" value="-1" />
              <Property name="Y" value="-1" />
            </Property>
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialWeaponInventory", "GcInventoryContainer.xml", "Id", "SCAN1"},
                            ["SECTION_ACTIVE"] = {1,2},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageFactor", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialWeaponInventory", "GcInventoryContainer.xml", "Id", "SCAN1"},
                            ["SECTION_ACTIVE"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcInventoryElement.xml">
            <Property name="Type" value="GcInventoryType.xml">
              <Property name="InventoryType" value="Technology" />
            </Property>
            <Property name="Id" value="SCANBINOC1" />
            <Property name="Amount" value="1" />
            <Property name="MaxAmount" value="1" />
            <Property name="DamageFactor" value="0" />
            <Property name="FullyInstalled" value="True" />
            <Property name="Index" value="GcInventoryIndex.xml">
              <Property name="X" value="-1" />
              <Property name="Y" value="-1" />
            </Property>
          </Property>
          <Property value="GcInventoryElement.xml">
            <Property name="Type" value="GcInventoryType.xml">
              <Property name="InventoryType" value="Technology" />
            </Property>
            <Property name="Id" value="TERRAINEDITOR" />
            <Property name="Amount" value="100" />
            <Property name="MaxAmount" value="100" />
            <Property name="DamageFactor" value="0" />
            <Property name="FullyInstalled" value="True" />
            <Property name="Index" value="GcInventoryIndex.xml">
              <Property name="X" value="-1" />
              <Property name="Y" value="-1" />
            </Property>
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownEnabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml", "InitialKnownThings", "GcKnownThingsPreset.xml", "Value", "SHIP_TELEPORT"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownEnabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml", "InitialKnownThings", "GcKnownThingsPreset.xml", "Value", "STUN_GREN"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialShipInventory", "GcInventoryContainer.xml", "Id", "SHIPROCKETS"},
                            ["SECTION_ACTIVE"] = 2,
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Amount",    "1000"},
                                {"MaxAmount", "1000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InitialWeaponInventory", "GcInventoryContainer.xml", "Id", "SCANBINOC1"},
                            ["SECTION_ACTIVE"] = 2,
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageFactor", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipSummoningFuelCostMultipliers"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"High", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ReputationGainMultipliers"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Slow", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceCombatMultipliers"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Fast", "0.33"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GroundCombatMultipliers"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Fast", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BreakTechOnDamageMultipliers"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"High", "1"},
                            }
                        },
                        {
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienPodThreshold2",           "0"},
                                {"AlienPodThreshold1",           "0"},
                                {"SalvageValueAsProds",          "0.2"},
                                {"MaxDistanceForLadderTeleport", "1"},
                                {"SurveyMaxDistance",            "250"},
                                {"TerrainResourceScanRange",     "400"},
                                {"TerrainResourceCompassRange",  "0"},
                                {"BinocCreatureScanTime",        "1.5"},
                                {"WarpsBetweenBattles",          "4"},
                                {"HoursBetweenBattles",          "0.25"},
                                {"MaxDronesAggressiveSurvival",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateInterestLevels"},
                            ["LINE_OFFSET"] = "+1",
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "2000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateInterestLevels"},
                            ["LINE_OFFSET"] = "+2",
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "5000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateInterestLevels"},
                            ["LINE_OFFSET"] = "+3",
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "7000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateInterestLevelsSurvival"},
                            ["LINE_OFFSET"] = "+1",
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "2000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateInterestLevelsSurvival"},
                            ["LINE_OFFSET"] = "+2",
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "5000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateInterestLevelsSurvival"},
                            ["LINE_OFFSET"] = "+3",
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "7000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SentinelTimersLow", "GcExperienceTimers.xml", "Low", "Vector2f.xml"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "360"},
                                {"y", "360"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SentinelTimersNormal", "GcExperienceTimers.xml", "Normal", "Vector2f.xml"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SentinelTimersNormal", "GcExperienceTimers.xml", "Low", "Vector2f.xml"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "180"},
                                {"y", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpacePirateTimers", "GcExperienceTimers.xml", "Low", "Vector2f.xml"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "800"},
                                {"y", "1200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateFlybyTimer", "Vector2f.xml"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "9999"},
                                {"y", "9999"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Settings", "GcDifficultySettingsData.xml"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DeathConsequencesDifficulty",    "DestroyItems"},
                                {"DamageReceivedDifficulty",       "Low"},
                                {"DamageGivenDifficulty",          "Low"},
                                {"ActiveSurvivalBarsDifficulty",   "HealthOnly"},
                                {"InventoryStackLimitsDifficulty", "Low"},
                                {"CurrencyCostDifficulty",         "Cheap"},
                                {"ItemShopAvailabilityDifficulty", "Low"},
                                {"SprintingCostDifficulty",        "Low"},
                                {"BreakTechOnDamageProbability",   "None"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROCKETSUB"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                              ["ADD"] =
[[
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Id" value="HYPERFUEL1" />
          <Property name="Amount" value="10" />
          <Property name="MaxAmount" value="10" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Id" value="LAUNCHFUEL" />
          <Property name="Amount" value="10" />
          <Property name="MaxAmount" value="10" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Id" value="YELLOW2" />
          <Property name="Amount" value="250" />
          <Property name="MaxAmount" value="250" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Id" value="LAND2" />
          <Property name="Amount" value="250" />
          <Property name="MaxAmount" value="250" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Id" value="STELLAR2" />
          <Property name="Amount" value="250" />
          <Property name="MaxAmount" value="250" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Id" value="CATALYST1" />
          <Property name="Amount" value="250" />
          <Property name="MaxAmount" value="250" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Id" value="OXYGEN" />
          <Property name="Amount" value="250" />
          <Property name="MaxAmount" value="250" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Id" value="BP_SALVAGE" />
          <Property name="Amount" value="5" />
          <Property name="MaxAmount" value="5" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "MECH_PROT"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                              ["ADD"] =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="HYPERDRIVE" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="TERRAINEDITOR" />
      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "AMMO"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                              ["ADD"] =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="BASE_FLAG" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="CARBON_SEAL" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="HYPERFUEL1" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="ANTIMATTER" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="AM_HOUSING" />
      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "LAUNCHFUEL"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                              ["ADD"] =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="BP_ANALYSER" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="BAIT_BASIC" />
      </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SquadronUnlockedPilotSlots"},
                            ["LINE_OFFSET"] = "+1",
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "True"},
                            }
                        },
                        {
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Units", "69420"},
                                {"HasAccessToNexus",              "True"},
                                {"StartNextToShip",               "True"},
                                {"DistanceFromShipAtStartOfGame", "25"},
                                {"ShipStartsDamaged",             "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DifficultySettings", "GcDifficultySettingsData.xml"},
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AllSlotsUnlocked",      "True"},
                                {"WarpDriveRequirements", "False"},
                            }
                        },
                    }
                },
            },
        },
    }
}
