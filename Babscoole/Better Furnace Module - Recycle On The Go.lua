NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Furnace Module - Recycle On The Go",
["MOD_AUTHOR"]      = "dragonloverlord",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "A mod for the the furnace module so that you can recycle anything in it AND have it actually recorded as such",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\EXPLOSIVE_LARGE_CRATE\ENTITIES\EXPLOSIVELARGECRATE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_EXP_L"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\EXPLOSIVE_MEDIUM_BARREL\ENTITIES\EXPLOSIVEMEDIUMBARREL.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_EXP_M"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\EXPLOSIVE_SMALL_CANISTER\ENTITIES\EXPLOSIVESMALLCANISTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_EXP_S"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\RADIOACTIVE_LARGE_CRATE\ENTITIES\RADIOACTIVELARGECRATE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_RAD_L"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\RADIOACTIVE_MEDIUM_CRATE\ENTITIES\RADIOACTIVECRATEMEDIUMCRATE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_RAD_M"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\RADIOACTIVE_SMALL_CANISTER\ENTITIES\RADIOACTIVESMALLCANISTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_RAD_S"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\SWARMDRONE\EXPLOSIVE_MEDIUM_GENERATOR\ENTITIES\EXPLOSIVEMEDIUMGENERATOR.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\SWARMDRONE\JUNKMEDIUMJET\ENTITIES\JUNKMEDIUMJET.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\SWARMDRONE\RADIOACTIVE_LARGE_EYE\ENTITIES\RADIOACTIVELARGEEYE.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_SWARM"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\SWARMDRONE\JUNKMEDIUMWINGMB\ENTITIES\JUNKMEDIUMWING.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_SCRAP"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\SWARMDRONE\TOXIC_MEDIUM_BATTERY\ENTITIES\TOXICMEDIUMBATTERY.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\TOXIC_MEDIUM_BARREL\ENTITIES\TOXICMEDIUMBARREL.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_TOX_M"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\TOXIC_LARGE_CRATE\ENTITIES\TOXICLARGECRATE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_TOX_L"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\PHYSICSPROPS\TOXIC_SMALL_CANISTER\ENTITIES\TOXICSMALLCANISTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TruckFurnace", "GcRecyclableReward"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardID", "R_CARGO_TOX_S"},
              },
            },
          }
        },
      }
    }
  }
}