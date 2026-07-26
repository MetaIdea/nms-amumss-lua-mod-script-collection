NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Creature Chaos SIZES",
["MOD_AUTHOR"]    = "quinn",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.04",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureInteractionRangeBoostHuge", "2.2000000"},
                {"MaxCreatureSize",                   "15.000000"},
                {"WaterDepthSizeScalingMinDepth",     "180.000000"},
                {"WaterDepthSizeScalingMaxDepth",     "900.000000"},
                {"WaterDepthSizeScalingMinScale",     "0.750000"},
                {"WaterDepthSizeScalingMaxScale",     "8.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.400000"},
                {"MaxScale",                    "4.000000"},
                {"FurLengthModifierAtMinScale", "0.400000"},
                {"FurLengthModifierAtMaxScale", "3.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxScale",                    "1.200000"},
                {"FurLengthModifierAtMinScale", "0.100000"},
                {"FurLengthModifierAtMaxScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMCOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.400000"},
                {"MaxScale",                    "3.300000"},
                {"FurLengthModifierAtMinScale", "0.400000"},
                {"FurLengthModifierAtMaxScale", "2.750000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMRODENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.400000"},
                {"MaxScale",                    "3.300000"},
                {"FurLengthModifierAtMinScale", "0.400000"},
                {"FurLengthModifierAtMaxScale", "2.750000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYFISH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.800000"},
                {"MaxScale",                    "2.400000"},
                {"FurLengthModifierAtMinScale", "0.800000"},
                {"FurLengthModifierAtMaxScale", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CRAB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.400000"},
                {"MaxScale",                    "3.000000"},
                {"FurLengthModifierAtMinScale", "0.400000"},
                {"FurLengthModifierAtMaxScale", "2.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEASNAKE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.400000"},
                {"MaxScale",                    "4.200000"},
                {"FurLengthModifierAtMinScale", "0.400000"},
                {"FurLengthModifierAtMaxScale", "3.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHARK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.400000"},
                {"MaxScale",                    "5.100000"},
                {"FurLengthModifierAtMinScale", "0.400000"},
                {"FurLengthModifierAtMaxScale", "4.250000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BIRD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.500000"},
                {"MaxScale",                    "12.600000"},
                {"FurLengthModifierAtMinScale", "0.500000"},
                {"FurLengthModifierAtMaxScale", "10.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGSNAKE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.500000"},
                {"MaxScale",                    "15.00000"},
                {"FurLengthModifierAtMinScale", "0.500000"},
                {"FurLengthModifierAtMaxScale", "11.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGLIZARD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "12.6"},
                {"FurLengthModifierAtMinScale", "0.5"},
                {"FurLengthModifierAtMaxScale", "10.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.20"},
                {"MaxScale",                    "2.4"},
                {"FurLengthModifierAtMinScale", "0.25"},
                {"FurLengthModifierAtMaxScale", "2.0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLBIRD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.25"},
                {"MaxScale",                    "2.5"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "2.75"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.20"},
                {"MaxScale",                    "2.5"},
                {"FurLengthModifierAtMinScale", "0.25"},
                {"FurLengthModifierAtMaxScale", "2.25"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEBUTTERFLY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.30"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.40"},
                {"FurLengthModifierAtMaxScale", "12.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGBEETLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "12.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ANTELOPE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.3"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.3"},
                {"FurLengthModifierAtMaxScale", "11"},
                {"FurChance",                   "1"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.3"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.3"},
                {"FurLengthModifierAtMaxScale", "11"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRICERATOPS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RODENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "12"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "10"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MOLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "8.1"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "6.75"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "COW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTCAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "12.5"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
                {"FurChance",                   "1"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDERGLOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
                {"FurChance",                   "0.3"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TREX"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ARTHROPOD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKINGBUILDING"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATSPIDER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOROLLER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTODIGGER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "12"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "10"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLOUGH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "6"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DRILL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "5"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "4.15"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDROLL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.5"},
                {"FurLengthModifierAtMaxScale", "11.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDFLOAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "9"},
                {"FurLengthModifierAtMinScale", "0.5"},
                {"FurLengthModifierAtMaxScale", "7.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDCRYSTAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "9"},
                {"FurLengthModifierAtMinScale", "0.5"},
                {"FurLengthModifierAtMaxScale", "7.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDBUTTERFLY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "4"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "2.95"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "25"},
                {"MaxScale",                    "75"},
                {"FurLengthModifierAtMinScale", "20"},
                {"FurLengthModifierAtMaxScale", "60"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PURPLE_WEIRD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "8"},
                {"FurLengthModifierAtMinScale", "1.2"},
                {"FurLengthModifierAtMaxScale", "7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "2.5"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHLARGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "1.5"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "1.4"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxScale",                    "0.35"},
                {"FurLengthModifierAtMinScale", "0.1"},
                {"FurLengthModifierAtMaxScale", "0.35"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.7"},
                {"MaxScale",                    "7.5"},
                {"FurLengthModifierAtMinScale", "0.5"},
                {"FurLengthModifierAtMaxScale", "7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTAGLOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.7"},
                {"MaxScale",                    "7.5"},
                {"FurLengthModifierAtMinScale", "0.5"},
                {"FurLengthModifierAtMaxScale", "7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "7.5"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSEGLOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.5"},
                {"MaxScale",                    "7.5"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SQUID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxScale",                    "7.5"},
                {"FurLengthModifierAtMinScale", "0.45"},
                {"FurLengthModifierAtMaxScale", "7"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HERMITCRAB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.4"},
                {"MaxScale",                    "3"},
                {"FurLengthModifierAtMinScale", "0.4"},
                {"FurLengthModifierAtMaxScale", "2.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PRAWN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxScale",                    "5"},
                {"FurLengthModifierAtMinScale", "0.15"},
                {"FurLengthModifierAtMaxScale", "5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BONECOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",                    "0.35"},
                {"MaxScale",                    "15"},
                {"FurLengthModifierAtMinScale", "0.35"},
                {"FurLengthModifierAtMaxScale", "12.5"},
              }
            },
          }
        },
      }
    }
  }
}