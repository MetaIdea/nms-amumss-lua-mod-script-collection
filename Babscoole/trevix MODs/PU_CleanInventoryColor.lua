NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_CleanInventoryColor",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Changes icons to have a more neutral background, removes gradiente",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ProcProductColourCommon"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.491"},
                {"G", "0.55"},
                {"B", "0.605"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ProcProductColourUncommon"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5855"},
                {"G", "0.4735"},
                {"B", "0.546"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ProcProductColourRare"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8815"},
                {"G", "0.74"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"RefinerBackgroundColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.458"},
                {"G", "0.5735"},
                {"B", "0.699"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"RefinerErrorBackgroundColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8765"},
                {"G", "0.5175"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GridDisconnectedColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.575"},
                {"G", "0.5775"},
                {"B", "0.575"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GridOnlineColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.95"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GridOfflineColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.95"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GridBackgroundNeutralColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "0.189000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GridBackgroundPositiveColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.95"},
                {"B", "0.45"},
                {"A", "0.406000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GridBackgroundNegativeColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.95"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "0.606000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"TransferSendPopupColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.646"},
                {"G", "0.803"},
                {"B", "0.95"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ItemSlotColourSubstance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.95"},
                {"G", "0.95"},
                {"B", "0.95"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ItemSlotColourTech"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4835"},
                {"G", "0.4835"},
                {"B", "0.4835"},
                {"A", "0.867000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ItemSlotColourTechCharge"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.805"},
                {"G", "0.6135"},
                {"B", "0.45"},
                {"A", "0.867000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ItemSlotColourTechDamage"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7785"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "0.867000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ItemSlotColourPartiallyInstalled"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.466"},
                {"G", "0.524"},
                {"B", "0.95"},
                {"A", "0.867000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ItemSlotColourProduct"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.95"},
                {"G", "0.95"},
                {"B", "0.95"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InvSlotGradientBaseColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InvSlotGradientFactorMin", "0.000000"},
                {"InvSlotGradientFactor",    "0.000000"},
                {"InvSlotGradientTime",      "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CASING"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NANOTUBES"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CARBON_SEAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MICROCHIP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYDRALIC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPUTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAGNET"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MIRROR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TECH_COMP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REPAIRKIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PRODFUEL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPCHARGE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JELLY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHFUEL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUBFUEL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRENFUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AMMO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AM_HOUSING"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ANTIMATTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERFUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERFUEL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "QUAD_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPIDER_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALKER_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "QUEEN_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIRATE_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DEEPSEA_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENTFREI_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_SALVAGE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_SHARD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_LAND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_CAVE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_CRYSTAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_SPACE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_ASTEROID"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_RARE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SCRAP_GOODS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SCRAP_TECH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SCRAP_WEAP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "POI_LOCATOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ABAND_LOCATOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ABAND_LOCATOR_X"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_EYE_PROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SACVENOM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRAVBALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALBUMENPEARL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAVECUBE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FIENDCORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STORM_CRYSTAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CLAMPEARL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VENTGEM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FISHCORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EYEBALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STARCHART_A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STARCHART_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STARCHART_C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STARCHART_D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_EMPTY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "A1S6_STARMAP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TUT_STARMAP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_TREASURE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_HIVE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_ROBOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_BUILDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_SETTLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_BUI_SETTL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ARTIFACT_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRIDENT_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAR_CURIO3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXP_CURIO3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATION_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REP_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NAV_DATA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NAV_DATA_DROP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LOG_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ACCESS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ACCESS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ACCESS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "POLICE_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MIND_ARC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BP_SALVAGE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FACT_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_INV_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_INV_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WEAP_INV_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_INV_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALIEN_INV_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALIEN_TECHBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TECHBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "INVBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIGATE_FUEL_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIGATE_FUEL_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIGATE_FUEL_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_BOOST_TRA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_BOOST_EXP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_BOOST_MIN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_BOOST_COM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_BOOST_SPD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_CURIO1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_CURIO2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NIPNIPBUDS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAR_CURIO1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAR_CURIO2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXP_CURIO1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXP_CURIO2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REACTION1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REACTION2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REACTION3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MEGAPROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MEGAPROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MEGAPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ULTRAPROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ULTRAPROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5598039225"},
                {"G", "0.5598039225"},
                {"B", "0.5598039225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_STONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HEXCORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FISHBAIT_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FISHBAIT_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FISHBAIT_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FISHBAIT_DAY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FISHBAIT_NIGHT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FISHBAIT_STORM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BONE_TEMP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMBOOK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMSCROLL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMSCROLL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMSCROLL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMSCROLL4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMSCROLL5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMCORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMPROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIRATE_MAPPROD0"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIRATE_MAPPROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIRATE_MAPPROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIRATE_MAPWHOLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIRATE_BEACON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIRATE_INVITE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WHALE_BEACON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S8_BEACON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECHMT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECHMT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECHMT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECHMT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECHMT5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_STEM1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_STEM2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_STEM3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_STEM4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_GROWTH1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_GROWTH2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_GROWTH3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_GROWTH4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.5186274545"},
                {"B", "0.5284313755"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_EGG1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_EGG2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_EGG3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_EGG4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_EGG5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP5_0"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP5_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP5_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXOTIC_BIOPROD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART1B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART1C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART2B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART2C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART3B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MP_REP_PART3C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_BROKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_PART_E2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_PART_E3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_PART_P"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_FRIEND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_FRIEND_X"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALKER_PROD_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALKER_PROD_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALKER_PROD_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN_CLEAN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS_BRAIN_LOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TITLE_UNLOCK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGG18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_TECHBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_INVBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_CLASSBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_GUNBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_SGUNBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_SMARTBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_HAZBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_STARTBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_CARBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_BEACON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_FINDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_CRAFTBOX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_G_STONE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_G_STONE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_G_STONE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_G_STONE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROGUE_G_STONE5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_PACK1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_PACK2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_PACK3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_PACK4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.546078433"},
                {"G", "0.500980393"},
                {"B", "0.5931372615"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_MAP1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_MAP2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_MAP3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_MAP4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_MYSTERY_ITEM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ROBO_HEAD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ROBO_BODY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ROBO_ARMS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ROBO_LEGS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ROBO_CORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ATLAS_SEED1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ATLAS_SEED2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ATLAS_SEED3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ATLAS_SEED4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_ATLAS_SEED5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_SOUL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_FRAGMENT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_PART_A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_PART_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_PART_C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S12_POI_SEED1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S12_POI_SEED2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S12_POI_SEED3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S12_POI_SEED4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SIGNALCHARGE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORLDSMB_SOUL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_BOT_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_BOT_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_BOT_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_BOT_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_MESSAGE0"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_MESSAGE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_MESSAGE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_MESSAGE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_MESSAGE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S15_FISH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ANY_BONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ANY_FISH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ANY_FISH_RAW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ANY_FISH_COOKED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPOOK_JUICE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PORTAL_JUICE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MESSAGE_JUICE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOSS_JUICE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MESSAGE_JUICE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MESSAGE_JUICE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MESSAGE_JUICE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MESSAGE_JUICE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PURPM_PACKET"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PURPM_GAS_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PURPM_WATER_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PURPM_LUSH_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PURPM_MIRROR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S19_TP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ANY_MILK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_PAINT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_RED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_ORANGE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_YELLOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.95"},
                {"G", "0.832352948"},
                {"B", "0.618627456"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_GREEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7441176595"},
                {"G", "0.8068627535"},
                {"B", "0.6245098085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_CYAN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7539215805"},
                {"G", "0.861764711"},
                {"B", "0.8676470635"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_BLUE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.7382353065"},
                {"B", "0.8578431425"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_PURPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_PINK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8068627535"},
                {"G", "0.6245098085"},
                {"B", "0.7362745225"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_WHITE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHT_BLACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_HEAD_15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_ARMOUR_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_ARMOUR_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_ARMOUR_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_ARMOUR_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_CLOTH_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_CLOTH_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_CLOTH_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_CORE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_CORE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_CORE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_CORE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_CORE5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_CORE6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_HEAD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_HEAD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_HEAD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_HEAD4A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_HEAD4B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_HEAD5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_HEAD6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_POLE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_POLE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_POLE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_POLE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_POLE5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STAFF_POLE6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_XOHELMET"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DIVEHELMET"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BUG_HAT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BUG_HAT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BUG_HAT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BUG_HAT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_HAT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_HAT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_HAT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_HAT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_HAT5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_HAT6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_BOB1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_BOB2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_BOB3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_BOB4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_BOB5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FISH_BOB6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_SENTPACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_HOOD01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TGA_SHIP01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SWITCH_SHIP01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SWITCH_GUN01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BACKPACK01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_HELMET01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIP01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FIREPACK01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FIREWORK01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FIREWORK02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FIREWORK03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FIREWORK04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FIREPACK04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_EXPD_BASE01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SPEC02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MYSTERY_TRACKER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE02A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE02B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_PLANET_HOLO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_FLYJAR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_BUBBLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_WORM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_SKULL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_WORMHAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_SENT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER05A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER05B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER05C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_PETCUST05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BACKPACK05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_PIRATE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER06A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER06B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER06C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FLAG_06A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FLAG_06B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FLAG_06C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FLAG_06D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FLAG_06E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_CUBE_06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_CAPE06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER07A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER07B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER07C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_ROGUE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_CAPE07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_MINI_BIOFRI"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BIOFRIG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER08A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.7245098175"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER08B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.7245098175"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER08C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.7245098175"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_TRAIL_GRAV"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_CAPE08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_MAPTUBE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_FIREPIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_DATASIGN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER09A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER09B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER09C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_HOLOGEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BUCKETHELM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIP09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER10A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER10B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER10C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_CRYS_SENT0"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_CRYS_SENT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_CRYS_DRONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_ROCKETHAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_TRAIL_RED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_CORRUPT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER11A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER11B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER11C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_ELECTRIC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_PETCUST11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUI_HAND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUI_HEAD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUI_TENT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_PART1A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_PART1B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_PART2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_PART3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_PART4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S10_PART5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7245098175"},
                {"G", "0.5970588295"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIP12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_ATLASHELM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_ATLASSTAFF"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_ATLASPACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER12A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER12B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER12C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER13A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER13B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER13C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_SHIPBREAK1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_SHIPBREAK2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_SHIPBREAK3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_SHIPBREAK4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_SHIPBREAK5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIPMAT13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIP_METAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_GHOSTFRIG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIP13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPED_BUG_ARMOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPED_BUG_GLOVE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPED_BUG_BOOTS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPED_BUG_HAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPED_BUG_PACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUGHEAD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUGHEAD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUGHEAD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUGHEAD4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_BUGHEAD5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER14A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER14B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER14C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUGMECH_ARML"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUGMECH_ARMR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUGMECH_LEGS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUGMECH_HEAD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER15A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER15B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER15C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_FISH_PACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_S15_ARMOUR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_S15_HAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_S15_LEGS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_S15_BOOTS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_S15_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOBBLE_OCTO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIP16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_SQUID"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_S16_HAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER16A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER16B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER16C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S16_HEATER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIP17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER17A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER17B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER17C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_SHIPMAT17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_CAPE17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_STAFF_17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER18A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER18B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER18C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_STAFF_18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_STONE_PACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_HAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_ARMOUR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_TORSO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_GLOVES"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_LEGS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_BOOTS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER19A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER19B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_POSTER19C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_RUIN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_PLASMA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_EGG_19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.7147058965"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_TITLE19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_DECAL19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_BANNER19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP08B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP20"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP21"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP22"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP23"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP24"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP25"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP26"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP27"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP28"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP29"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP30"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP31"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP32"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP33"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP34"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP35"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP36"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP37"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP38"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP39"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP40"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP41"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP42"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP43"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP44"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP45"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP46"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP47"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP48"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP49"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP50"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP51"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP52"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP53"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP54"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_SHIP55"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET20"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET21"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET22"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET23"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_PET24"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN20"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN21"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN22"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN23"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN24"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN25"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN26"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUN27"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUNUP01A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUNUP01B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUNUP01C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUNUP01D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_GUNUP01E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW01A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW01B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW01C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW01D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW01E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW02A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW02B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW02C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW02D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW02E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW03A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW03B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW03C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW03D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW03E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW04A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW04B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW04C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW04D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW04E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW05A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW05B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW05C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW05D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW05E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW06A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW06B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW06C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW06D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW06E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW07A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW07B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW07C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW07D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW07E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW08A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW08B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW08C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW08D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW08E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW09A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW09B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW09C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW09D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW09E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW10A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW10B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW10C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW10D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW10E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW11A"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW11B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW11C"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW11D"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TWITCH_FIREW11E"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_BLOB_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_BLOB_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_BLOB_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_BLOB_I"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_DIP_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_DIP_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_DIP_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_DIP_I"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_GEK_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_GEK_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_GEK_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_GEK_I"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_SHIP_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_SHIP_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_SHIP_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_SHIP_I"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_WALK_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_WALK_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_WALK_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_WALK_I"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ATLAS_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ATLAS_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ATLAS_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ATLAS_I"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ASTRO_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ASTRO_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ASTRO_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STATUE_ASTRO_I"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EMOTE15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_DECAL08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_HAZARD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_SKULL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_HORROR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_JELLY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_AGT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_AMINO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CAFE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_UFT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_QIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_NMS_FR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_NMSCORD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_UN42"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_AF"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_BIOME3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CPLANET1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_STARTSHIP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_GALCORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_UWTREAS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_NEXUSM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_SPOOKATL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_SHIP1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_PIRATESYS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_BLUESYS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CREBEETLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CREFLY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CREPAWS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_FPLANET2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_TOSTARS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_WORM_P1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_WORM_P2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_WORM_P3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_WORM_P4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_WORM_P5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_PEEP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_BONESOUP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_EXTINCT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_SCAN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_BONEJUDGE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_RUINMECH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_HELMET01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_HELMET02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_HELMET03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_HELMET05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_VYK_ARMOUR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_VYK_TORSO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_VYK_GLOVES"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_VYK_LEGS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_VYK_BOOTS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_EXOTIC12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_SPOOKYHEAD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NEW_BACKPACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOBBLE_APOLLO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOBBLE_ART"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOBBLE_ATLAS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOBBLE_NADA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOBBLE_NULL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOBBLE_POLO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_RAINBOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_DARK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_RED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_GREEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_BLUE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_RAINBOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_DARK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_RED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_GREEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_GOLD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_ROBOTOY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TOYCUBE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TOYSPHERE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TOYJELLY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TREE01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TREE02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TREE03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_MEDPLANT01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_MEDPLANT02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_MEDPLANT03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_AQUARIUM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_WPLANT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_WPLANT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_WPLANT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_WPLANT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_WPLANT5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_WPLANT6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_BARNACLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK05"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK06"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK07"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK08"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK09"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.524509807"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TOYCORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TERRARIUM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_HOTPLANT01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_HOTPLANT02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_HOTPLANT03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_RADPLANT01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_RADPLANT02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_RADPLANT03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TOXPLANT01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TOXPLANT02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TOXPLANT03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_DUSTPLANT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_DUSTPLANT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_DUSTPLANT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_COLDPLANT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_COLDPLANT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_COLDPLANT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_ROCK01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_ROCK02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_ROCK03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SWAMP1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SWAMP2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SWAMP3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_HOUDINI1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_HOUDINI2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_HOUDINI3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_INFEST1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_INFEST2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_INFEST3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_LAVA1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_LAVA2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_LAVA3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_CAVE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_CAVE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_CAVE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_CAVE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_CAVE5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_NEXUS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_NEXUS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_NEXUS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_BUBPIPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_BUBPIPE_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_BUBPIPE_L"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_BUBPIPE_T"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_BUBPIPE_X"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_SAIL0"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_SAIL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_SAIL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_SAIL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDCHAIR4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANTPOT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_GRASS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_GRASS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_GRASS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_GRASS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_GRASS5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_GRASS6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_GRASS7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLOWER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLOWER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLOWER3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_COVSILOS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_COVCRATE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLD_CRANE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_SIGN_BAR1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_SIGN_BAR2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_SIGN_BAR3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_CHU"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_POLO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_NADA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_HUB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_CHEF"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_SPOOKY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_SLIMY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_PEEP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_TRA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_WAR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_EXP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_AGT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_AMINO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_CAFE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_UFT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_QIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_NMS_FR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_NMSCORD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_UN42"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BANNER_AF"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ODD_EGG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXPD_ODD_EGG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MYSTERY_BEACON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE11"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE13"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE20"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE21"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE22"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE23"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE24"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE25"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE26"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE27"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE28"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE29"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_TITLE30"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TITLE_SPOOKY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TITLE_SPOOKY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SLIME_MED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPOOKY_PLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_PETCUST1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_PETCUST2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_PETCUST3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BB_TRACK01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BB_TRACK02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_BB_TRACK03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER12"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER14"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER16"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER17"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER18"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER19"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER20"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER21"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER22"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER23"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER24"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER25"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER26"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER27"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER28"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER29"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER30"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S_POSTER31"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_TRAIL_GRE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_TRAIL_YEL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_TRAIL_PUR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_TRAIL_TUR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAPE_JELLY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.718627465"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAPE_BIOFRIG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.718627465"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAPE_WORM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.718627465"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAPE_SEED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HOOD_GEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_FIRE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_CONFETTI"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_FIREWORK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_PLASMA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JETS_FUSION"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FOXGLOVE01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLORAL01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLORAL02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLORAL03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLORAL04"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_PEACOCK01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_PEACOCK02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_PEACOCK03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SPRIGBUSH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLYINGFERN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_SUBZPLANT8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_JUNGLE01"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_JUNGLE02"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BASE_JUNGLE03"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LASER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LASER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LASER3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LASER4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LASERX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SCANNER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SCANNER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SCANNER3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SCANNER4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SCANNERX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_BOLT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_BOLT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_BOLT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_BOLT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_BOLTX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_GRENADE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_GRENADE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_GRENADE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_GRENADE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_GRENADEX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TGRENADE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TGRENADE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TGRENADE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TGRENADE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TGRENADEX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAIL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAIL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAIL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAIL4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAILX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHOTGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHOTGUN2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHOTGUN3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHOTGUN4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHOTGUNX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SMG1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SMG2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SMG3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SMG4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SMGX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CANNON1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CANNON2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CANNON3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CANNON4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CANNONX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SENTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_ENERGY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_ENERGY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_ENERGY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_ENERGYX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HAZARDX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_JETBOOST1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_JETBOOST2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_JETBOOST3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_JETBOOST4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_JETBOOSTX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIELDBOOST1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIELDBOOST2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIELDBOOST3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIELDBOOST4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIELDBOOSTX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_UNW1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_UNW2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_UNW3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_RAD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TOX1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TOX2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TOX3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_COLDPROT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_COLDPROT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_COLDPROT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HOTPROT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HOTPROT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HOTPROT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_ROBOSUIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SENTSUIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_PULSE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_PULSE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_PULSE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_PULSE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_PULSEX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LAUNCH1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LAUNCH2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LAUNCH3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LAUNCH4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_LAUNCHX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HYPER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HYPER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HYPER3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HYPER4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HYPERX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHIELD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHIELD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHIELD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHIELD4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHIELDX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPGUN2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPGUN3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPGUN4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPGUNX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPLAS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPLAS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPLAS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPLAS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPLASX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHOT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHOT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHOT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHOT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPSHOTX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPMINI1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPMINI2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPMINI3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPMINI4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPMINIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPBLOB1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPBLOB2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPBLOB3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPBLOB4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_SHIPBLOBX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOGUN2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOGUN3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOGUN4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOLAS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOLAS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOLAS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOLAS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOBOOST1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOBOOST2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOBOOST3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXOBOOST4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_ENG1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_ENG2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_ENG3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_ENG4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUB1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUB2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUB3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUB4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUBGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUBGUN2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUBGUN3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXO_SUBGUN4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECH_ENG2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECH_ENG3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECH_ENG4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHLAS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHLAS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHLAS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHFLAME2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHFLAME3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHFLAME4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHGUN2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHGUN3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_MECHGUN4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_PULSE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_PULSE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_PULSE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_PULSE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_LAUNCH1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_LAUNCH2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_LAUNCH3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_LAUNCH4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_HYPER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_HYPER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_HYPER3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_HYPER4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPSHIELD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPSHIELD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPSHIELD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPSHIELD4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPGUN2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPGUN3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPGUN4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPLAS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPLAS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPLAS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AP_SHIPLAS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_HYP1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_HYP2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_HYP3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_HYP4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_SPE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_SPE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_SPE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_SPE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_FUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_FUEL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_FUEL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_FUEL4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_COM1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_COM2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_COM3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_COM4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_TRA1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_TRA2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_TRA3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_TRA4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_EXP1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_EXP2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_EXP3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_EXP4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_MINE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_MINE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_MINE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_FR_MINE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TECHBOX_CORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TECHBOX_ALIEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TECHPACK_CORE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_TECHPACK_ALIE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRFIGHT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRFIGHT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRFIGHT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRFIGHT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRSCI1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRSCI2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRSCI3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRSCI4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRTRADE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRTRADE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRTRADE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRTRADE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRMINE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRMINE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRMINE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_CRMINE4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ALL_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TOX_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_RAD_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HOT_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_COLD_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_LUSH_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DUST_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_DEEP_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_GAS_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_COM_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_COM_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_COM_S3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_COM_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_COM_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_COM_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_COM_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_RARE_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_RARE_S2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_RARE_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_RARE_M2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_RARE_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_RARE_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_EPIC_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_EPIC_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_EPIC_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_EPIC_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_LEG_S1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_LEG_M1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_LEG_L1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_ODD_LEG_XL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_TRASH_8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_BOTTLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_JELLYCHILD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.514705886"},
                {"G", "0.6833333345"},
                {"B", "0.842156869"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_BASIC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_MEAT_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_MEAT_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_MEAT_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_MEAT_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_VEG_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_VEG_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_VEG_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BAIT_VEG_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_GEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_DIPLO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_REX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_CAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_STRIDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_COW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_CRAB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_BONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_MOLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_ROBOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_FLYER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_EGG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_MILK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_BUG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_V_PCAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_FISH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_FLYER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_FIEND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_HORROR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_GRUB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_GEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_DIPLO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_REX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_CAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_STRIDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_COW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_CRAB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_MOLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_BONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_DRILL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_BEETLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_BALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_DIGGER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_BUG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_M_MEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_LUSHWILD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_LUSHFARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_HOTWILD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_HOTFARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_COLDWILD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_COLDFARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_TOXWILD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_TOXFARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_RADWILD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_RADFARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_DUSTWILD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_DUSTFARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_GLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_ALL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_ALL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.610784319"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_ALL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_CAVE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_WATER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_POOP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_DEATH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_P_STELLAR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_EGGS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_FLOUR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.612745103"},
                {"G", "0.599019614"},
                {"B", "0.5852941245"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_SUGAR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.612745103"},
                {"G", "0.599019614"},
                {"B", "0.5852941245"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_VEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_MEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_HORROR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_SMOKED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.612745103"},
                {"G", "0.599019614"},
                {"B", "0.5852941245"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BUTTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_GBUTTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_GCREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_CARAMEL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_OIL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_GOIL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_PASTRY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BREAD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BONEMILK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BBUTTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BCHEESE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BCUSTARD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BCREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_CUSTARD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_FCUSTARD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_MCUSTARD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_SCUSTARD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_MERINGUE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_DONUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_GONUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_SWEETBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_SWEETGEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_HONEYBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_HONEYGEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BLOBGEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_PCATBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_PCATGEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BLOBBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_CHEESE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_GCHEESE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_DOUGH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_JAM_GLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_JAM_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_JAM_RAD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_JAM_DUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_JAM_CAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_JAM_CRAB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_JAM_BUG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_FCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_MCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_SCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_HON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_HONB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_PCAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_MEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_CJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_AJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DNUT_BJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_PIECASE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_MEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_SMEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_VEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_FISH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_FIEND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_ORGAN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_GEK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CRAB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_BERRY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_GLOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_MUSH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_WEIRD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_ROOTS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_GREASE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CRABJ"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_MCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_SCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_CHEESE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_VCHEE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_BONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_DRILL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_BEET"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_DIG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_BALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_MOLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_PIE_BMEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MEAT_STEW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_VEG_STEW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ORGAN_STEW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_BONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_DRILL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_BEET"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_DIG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_BALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_BUG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_EVIL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_EGGPIE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_EGGPIE_M"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_EGGPIE_G"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_EGGPIE_GM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_EGGPIE_B"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_EGGPIE_MU"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_EGGPIE_BUG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_J_ALL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_J_LUSH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_J_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_J_DUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_J_SALT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_S_VEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_S_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_S_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_S_CHEESE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_O_CH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_V_CH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_M_CH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_O_CR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_V_CR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_M_CR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_O_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_V_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_M_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_O_VEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_V_VEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.612745103"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_M_VEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_CAKEMIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_GCAKEMIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_BCAKEMIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_PCAKEMIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_MCAKEMIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_MERMIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_MMERMIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_BLOBBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_PCATBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_JHOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_JGLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_FCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_MCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CK_SCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_EYEBALLS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_EYESTEW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_EYEICE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_FISH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.769607854"},
                {"B", "0.9166666685"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_FIEND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_STAR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_FRUIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_GLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_GRAH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_BONE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_ICE_BUG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_PCAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_JHOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_JGLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_FCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_SCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_JHOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_JGLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_FCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CB_SCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_JHOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_JGLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_FCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CP_SCUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_JHOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_JGLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_JHOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_JGLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MC_PCAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_CHOC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_CARM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_BUGJAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_JHOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_JGLITCH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_CUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_MM_PCAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.65784314"},
                {"G", "0.8578431425"},
                {"B", "0.5088235295"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_BLOBBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CM_PCATBUT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_CG_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_W_CASE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_W_MEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_W_SWEETM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_DOUGH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_PLAIN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.612745103"},
                {"G", "0.599019614"},
                {"B", "0.5852941245"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_SALT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_JAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_CAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_HERB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_FLOWER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_MEAT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_HONEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_APPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_MILK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_CREAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_CARAMEL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_CHOCO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_VEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_MUSHROOM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_FIEND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_CACTUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_FISH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_WORM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_WEIRD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_CHEESE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_BURN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_B_BUG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8637255"},
                {"G", "0.612745103"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_EGGS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_SMALL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_SMALL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_SMALL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_MED1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_MED2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_MED3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_LARGE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_LARGE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_LARGE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_XL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_XL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_XL3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_MIX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_CLAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_JELLY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_TURTLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_WORM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_PRAWN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_SQUID"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_OCTOPUS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_STARFISH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_EEL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_CRAB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_SNAIL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_STEW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_STEW2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_PIE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_RICE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_CHIPS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_JEELS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_F_S15"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_R_FOSSIL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_STEW_FOSS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FUELPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LANDPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAVEPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WATERPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CATAPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "OXYPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "OXY_CRAFT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WATER_CRAFT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAVE_CRAFT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CATA_CRAFT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PRODFUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAVECUBE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SACVENOM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRAVBALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALBUMENPEARL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6872549025"},
                {"B", "0.608823535"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ACCESS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ACCESS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ACCESS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.6441176505"},
                {"B", "0.808823538"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NIPNIPBUDS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERFUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRENFUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PRODFUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PRODFUEL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8264705955"},
                {"G", "0.4950980403"},
                {"B", "0.5872549085"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALLOY8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FARMPROD9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REACTION1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REACTION2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "REACTION3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COMPOUND6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MEGAPROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MEGAPROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MEGAPROD3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ULTRAPROD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ULTRAPROD2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "POLICE_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ALLOY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMMODITY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_COMPONENT5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_ENERGY5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_EXOTICS5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_MINERALS5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_TECH5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MIND_ARC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_10"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.85"},
                {"G", "0.85"},
                {"B", "0.85"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ARTIFACT_KEY"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6539215715"},
                {"G", "0.5225490225"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FUEL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "OXYGEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHSUB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.55392157"},
                {"G", "0.6264705925"},
                {"B", "0.6950980395"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHSUB2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.55392157"},
                {"G", "0.6264705925"},
                {"B", "0.6950980395"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROCKETSUB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAND1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAND2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAND3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SAND1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9245098055"},
                {"G", "0.6637254925"},
                {"B", "0.4911764719"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAVE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.630392161"},
                {"B", "0.7068627595"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAVE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.630392161"},
                {"B", "0.7068627595"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WATER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WATER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WATERPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.720588249"},
                {"B", "0.579411772"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "YELLOW2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.732352954"},
                {"B", "0.4519607844"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RED2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GREEN2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.555882354"},
                {"G", "0.640196082"},
                {"B", "0.504901961"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLUE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4519607844"},
                {"G", "0.5598039225"},
                {"B", "0.6950980395"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PURPLE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "STELLAR2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TECHFRAG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.55392157"},
                {"B", "0.6029411825"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LUSH1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6029411825"},
                {"G", "0.5754902035"},
                {"B", "0.6049019665"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DUSTY1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.669607845"},
                {"B", "0.4539215689"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TOXIC1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.7754902065"},
                {"B", "0.600980398"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.95"},
                {"G", "0.789215696"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "COLD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.6049019665"},
                {"B", "0.8578431425"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HOT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.879411769"},
                {"G", "0.5205882385"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAVA1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RUINSUB"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WATERWORLD1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GASGIANT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.6049019665"},
                {"B", "0.8578431425"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CREATURE1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.608823535"},
                {"G", "0.526470591"},
                {"B", "0.5774509875"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROBOT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROBOT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.7833333435"},
                {"G", "0.6656862765"},
                {"B", "0.4617647061"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6068627505"},
                {"G", "0.679411766"},
                {"B", "0.679411766"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.524509807"},
                {"G", "0.6343137295"},
                {"B", "0.563725491"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.599019614"},
                {"G", "0.5578431385"},
                {"B", "0.700980407"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.7362745225"},
                {"B", "0.510784314"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4519607844"},
                {"G", "0.5598039225"},
                {"B", "0.6950980395"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EX_YELLOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.732352954"},
                {"B", "0.4519607844"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EX_RED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EX_GREEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.555882354"},
                {"G", "0.640196082"},
                {"B", "0.504901961"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EX_BLUE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4519607844"},
                {"G", "0.5598039225"},
                {"B", "0.6950980395"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EX_PURPLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_TOXIC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.7754902065"},
                {"B", "0.600980398"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_SNOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.6049019665"},
                {"B", "0.8578431425"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_RADIO"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8362745165"},
                {"G", "0.7147058965"},
                {"B", "0.5068627455"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_DUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5186274545"},
                {"G", "0.7441176595"},
                {"B", "0.524509807"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_HOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.812745106"},
                {"G", "0.581372556"},
                {"B", "0.4970588245"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_LUSH"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5127451015"},
                {"G", "0.7264706015"},
                {"B", "0.7852941275"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_CAVE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_WATER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.45"},
                {"G", "0.630392161"},
                {"B", "0.7068627595"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANT_POOP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.6872549025"},
                {"G", "0.6068627505"},
                {"B", "0.5401960805"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "AF_METAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_SCRAP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPECIAL_POOP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TECHFRAG_R"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "QUICKSILVER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UNITS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_STANDING_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRA_STANDING_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXP_STANDING_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXP_STANDING_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAR_STANDING_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAR_STANDING_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_STANDING_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUI_STANDING_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TGUILD_STAND_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TGUILD_STAND_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGUILD_STAND_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EGUILD_STAND_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WGUILD_STAND_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WGUILD_STAND_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIR_STAND_UP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIR_STAND_DN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NEW_PERK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500980393"},
                {"G", "0.526470591"},
                {"B", "0.55"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_POP_POS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_POP_NEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_PROD_POS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_PROD_NEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_MOOD_POS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_MOOD_NEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_COST_POS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_COST_NEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_SENT_POS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_SENT_NEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_DEBT_POS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SET_DEBT_NEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.691176471"},
                {"G", "0.45"},
                {"B", "0.45"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUNGOLD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.899019611"},
                {"G", "0.732352954"},
                {"B", "0.4519607844"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOULFRAG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.720588249"},
                {"G", "0.699019608"},
                {"B", "0.6735294135"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SQUIDFRAG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600980398"},
                {"G", "0.5303921595"},
                {"B", "0.62058824"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WORMDUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.608823535"},
                {"G", "0.526470591"},
                {"B", "0.5774509875"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TIMEDUST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.608823535"},
                {"G", "0.526470591"},
                {"B", "0.5774509875"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TIMEMILK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8852941215"},
                {"G", "0.881372553"},
                {"B", "0.859803927"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FUEL1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.8166666745"},
                {"G", "0.5598039225"},
                {"B", "0.544117649"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GAS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.628431377"},
                {"G", "0.667647061"},
                {"B", "0.55392157"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TECHFRAG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.5088235295"},
                {"G", "0.55392157"},
                {"B", "0.6029411825"},
                {"A", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_BASEPARTPRODUCTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOUNDATION"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDORL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDORT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDORX"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINROOM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOUNDLEG4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOUNDLEG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDTOWER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEROOM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEFOUND"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEFOUND4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEFLOOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GLASSCORRIDOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDRAMP"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BIOROOM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CURVEDCUBEROOF"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEROOMCURVED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEGLASS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEFRAME"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEINNERDOOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEWALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEROOF"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBESTAIRS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DOOR2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VIEWSPHERE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINROOMFRAME"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDORC"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINROOMCUBE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MAINROOMCUBEF"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDLANDINGPAD"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDTERMINAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_S"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_M"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_L"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HEALTHSTATION"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIELDSTATION"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RACE_START"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MESSAGEMODULE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDBEACON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDSIGNAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDHARVESTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDGASHARVEST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDSAVE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSUMMON"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MESSAGE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NPCSCIENCETERM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NPCWEAPONTERM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NPCFARMTERM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NPCVEHICLETERM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NPCBUILDERTERM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANTERMEGA"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TOXICPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SNOWPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RADIOPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BARRENPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LUSHPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SCORCHEDPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CREATUREPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "POOPPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRAVPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SACVENOMPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PEARLPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.9264705895"},
                {"G", "0.781372559"},
                {"B", "0.5186274545"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NIPPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.4676470597"},
                {"G", "0.630392161"},
                {"B", "0.6833333345"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER0"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECAL2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNMS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM0"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM6"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM7"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM8"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALNUM9"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALVIS1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALVIS2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALVIS3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALVIS4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALVIS5"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALSIMP1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALSIMP2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALSIMP3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDECALSIMP4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLLIGHTBLUE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLLIGHTPINK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLLIGHTYELLOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLLIGHTGREEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLLIGHTRED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLLIGHTWHITE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SMALLLIGHT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDLIGHT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDLIGHT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDLIGHT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDPAVING"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDLADDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDDOOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDWINDOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDCHAIR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDCHAIR2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDCHAIR3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDTABLE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDTABLE2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDTABLE3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDBED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDPAVINGTALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEWINDOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBELADDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TECHPANEL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLFAN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLSCREEN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANTPOT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BLDWALLUNIT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHEST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORNERPOST"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROOMFLOOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CYLINDERSHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBESHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SPHERESHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEWINDOWOVAL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEWINDOWSMALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLAG1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLAG2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLAG3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLAG4"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLFLAG1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLFLAG2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLFLAG3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DRAWS"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SERVERSTACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLOORMAT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROOFMONITOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CEILINGLIGHT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MONITORDESK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLDOOR"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LARGEDESK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANTPOT1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANTPOT2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLANTPOT3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WEAPONRACK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CURVEDDESK"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CRATELRARE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CRATELCYLINDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLFLOORLADDER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLTALL"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WEDGESHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WEDGESMALLSHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PYRAMIDSHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CURVEPIPESHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PIPESHAPE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBESOLID"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WALLCURVED"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDOR_WINDOW"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HEALTHPLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "NPCEXPLORER001"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CREATHOLOGRAM"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CARBONPLANTER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILD_REFINER1"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILD_REFINER2"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BUILD_REFINER3"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CUBEROOM_SPACE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDOR_SPACE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDORL_SPACE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CORRIDORT_SPACE"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.536274512"},
                {"G", "0.6931372555"},
                {"B", "0.761764717"},
                {"A", "1.000000"},
              }
            },
          }
        },
      }
    }
  }
}