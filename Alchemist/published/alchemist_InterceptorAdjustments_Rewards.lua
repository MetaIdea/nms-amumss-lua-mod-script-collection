Author = "alchemist"
ModName = "InterceptorAdjustments_Rewards"
BaseDescription = [[Balance adjustments for rewards added by the Interceptor update.]]
GameVersion = "6.03"
ModVersion = "1"

local Config = {
  RobotSubstanceReduction = {
    Enabled = true,
    AmountMult = 0.5,
    ListIds = {
      "CORRUPT_LOOT",
      "R_ROBOTCRATE",
    }
  },

  ModifyRewardList = {
    Enabled = true,
    List = {
      DE_MINIHIVE = {
        ReplaceAll = true,
        RewardChoice = "GiveAll",
        Items = {
          {
            PercentageChance = 100,
            ID = "DRONE_SALVAGE",
            AmountMin = 3,
            AmountMax = 3,
          },
          {
            PercentageChance = 100,
            ID = "DRONE_SHARD",
            AmountMin = 3,
            AmountMax = 6,
          },
          {
            PercentageChance = 20,
            ID = "CHART_ROBOT",
            AmountMin = 1,
            AmountMax = 1,
          },
        },
      },
      CORRUPT_LOOT = {
        Items = {
          {
            PercentageChance = 35,
            ID = "SPIDER_PROD",
            AmountMin = 1,
            AmountMax = 1,
          }
        }
      },
    },
  },

  SmallSpiderDiscreteLoot = {
    Enabled = true,
    Source = {
      SceneFrom = "MODELS/COMMON/ROBOTS/LOOTDROP/CORRUPTLOOT.SCENE.MBIN",
      SceneToFile = "MODELS/ALCH_ROBOTS/SMSPIDERLOOT.SCENE.MBIN",
      SceneToName = "MODELS/ALCH_ROBOTS/SMSPIDERLOOT",
      SceneToNameHash = 0,

      EntityFrom = "MODELS/COMMON/ROBOTS/LOOTDROP/CORRUPTLOOT/ENTITIES/CORRUPTLOOT.ENTITY.MBIN",
      EntityToFile = "MODELS/ALCH_ROBOTS/SMSPIDERLOOT/ENTITIES/SMSPIDERLOOT.ENTITY.MBIN",
    },
    Reward = {
      SourceId = "SPIDER_LOOT",
      Change = {
        SPECIAL_KEY_WORDS = {"ID", "SPIDER_PROD"},
        SECTION_UP = 2,
        VALUE_CHANGE_TABLE = {
          {"PercentageChance", 65},
        }
      }
    },
  },

  MaintenanceLoot = {
    Enabled = true,
    -- OverrideAmount doesn't seem to work for products, so for now just RemoveInstead
    RemoveInstead = true,
    Tech = {
      SENTINEL_LOOT = {
        {"OverrideAmount", 6},
      },
      WALKER_PROD = {
        {"OverrideAmount", 2},
      },
      DRONE_SALVAGE = {
        {"OverrideAmount", 2},
      },
      QUAD_PROD = {
        {"OverrideAmount", 4},
      },
    },
  },
}


NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION			= BaseDescription,
MOD_AUTHOR					= Author,
NMS_VERSION					= GameVersion,

MODIFICATIONS	= {{
  MBIN_CHANGE_TABLE = {

    -- 

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER

local Ref = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
local rewardChangeTable = {}

local function tableMap(t, fn)
  local res = {}
  for _, v in ipairs(t) do
    table.insert(res, fn(v))
  end
  return res
end

local function GcRewardSpecificProduct(product)
  return [[<Property name="List" value="GcRewardTableItem">
  <Property name="PercentageChance" value="]]..product.PercentageChance..[[" />
  <Property name="Reward" value="GcRewardSpecificProduct">
    <Property name="GcRewardSpecificProduct">
      <Property name="Default" value="GcDefaultMissionProductEnum">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="ID" value="]]..product.ID..[[" />
      <Property name="AmountMin" value="]]..product.AmountMin..[[" />
      <Property name="AmountMax" value="]]..product.AmountMax..[[" />
      <Property name="HideAmountInMessage" value="false" />
      <Property name="ForceSpecialMessage" value="false" />
      <Property name="HideInSeasonRewards" value="false" />
      <Property name="Silent" value="false" />
      <Property name="SeasonRewardListFormat" value="" />
      <Property name="RequiresTech" value="" />
    </Property>
  </Property>
  <Property name="LabelID" value="" />
</Property>]]
end

local function createRewardList(list, addWrapper)
  local productList = tableMap(list, function (v)
    return GcRewardSpecificProduct(v)
  end)

  local productListXml = table.concat(productList, "\n")

  if addWrapper == true then
    productListXml = [[<Property name="List">
]] .. productListXml .. [[
</Property>]]
  end

  return productListXml
end

if Config.RobotSubstanceReduction.Enabled then
  local keyGroups = {}
  for _, value in ipairs(Config.RobotSubstanceReduction.ListIds) do
    keyGroups[#keyGroups+1] = {"Id", value, "ID", "ROBOT2"}
  end

  rewardChangeTable[#rewardChangeTable+1] = {
    FOREACH_SKW_GROUP = keyGroups,
    MATH_OP = "*",
    INTEGER_TO_FLOAT = "PRESERVE",
    VALUE_CHANGE_TABLE = {
      {"AmountMin", Config.RobotSubstanceReduction.AmountMult},
      {"AmountMax", Config.RobotSubstanceReduction.AmountMult},
    }
  }
end

if Config.ModifyRewardList.Enabled then
  for key, value in pairs(Config.ModifyRewardList.List) do
    if value.RewardChoice ~= nil then
      rewardChangeTable[#rewardChangeTable+1] = {
        SPECIAL_KEY_WORDS = {"Id", key},
        VALUE_CHANGE_TABLE = {
          {"RewardChoice", value.RewardChoice}
        }
      }
    end

    if value.ReplaceAll then
      rewardChangeTable[#rewardChangeTable+1] = {
        SPECIAL_KEY_WORDS = {"Id", key},
        PRECEDING_KEY_WORDS = {"LIst", "List"},
        REMOVE = "SECTION",
      }

      rewardChangeTable[#rewardChangeTable+1] = {
        SPECIAL_KEY_WORDS = {"Id", key},
        PRECEDING_KEY_WORDS = {"UseInventoryChoiceOverride"},
        ADD = createRewardList(value.Items, true),
      }
    else
      rewardChangeTable[#rewardChangeTable+1] = {
        SPECIAL_KEY_WORDS = {"Id", key},
        PRECEDING_KEY_WORDS = {"LIst", "List"},
        REPLACE_TYPE = "ADDafterSECTION",
        LINE_OFFSET = -1,
        ADD = createRewardList(value.Items),
      }
    end
  end
end

if Config.SmallSpiderDiscreteLoot.Enabled then
  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = {
      {
        Config.SmallSpiderDiscreteLoot.Source.SceneFrom,
        Config.SmallSpiderDiscreteLoot.Source.SceneToFile,
        "REMOVE",
      }
    }
  }

  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = {
      {
        Config.SmallSpiderDiscreteLoot.Source.EntityFrom,
        Config.SmallSpiderDiscreteLoot.Source.EntityToFile,
        "REMOVE",
      }
    }
  }

  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = Config.SmallSpiderDiscreteLoot.Source.SceneToFile,
    MXML_CHANGE_TABLE = {
      {
        VALUE_CHANGE_TABLE = {
          {"Name", Config.SmallSpiderDiscreteLoot.Source.SceneToName},
          {"NameHash", GNH(Config.SmallSpiderDiscreteLoot.Source.SceneToName)},
        }
      },
      {
        SPECIAL_KEY_WORDS = {"Name", "ATTACHMENT"},
        VALUE_CHANGE_TABLE = {
          {"Value", Config.SmallSpiderDiscreteLoot.Source.EntityToFile},
        },
      },
    }
  }

  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = Config.SmallSpiderDiscreteLoot.Source.EntityToFile,
    MXML_CHANGE_TABLE = {
      {
        SPECIAL_KEY_WORDS = {"Components","GcSimpleInteractionComponentData"},
        SECTION_UP = 1,
        VALUE_CHANGE_TABLE = {
          {"Id", "SM_SPIDER_LOOT"},
        }
      },
      {
        SPECIAL_KEY_WORDS = {"Components","GcDestructableComponentData"},
        SECTION_UP = 1,
        VALUE_CHANGE_TABLE = {
          {"GivesReward", "SM_SPIDER_LOOT"},
        }
      }
    },
  }

  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "MODELS/COMMON/ROBOTS/SPIDER_SMALLQUAD/ENTITIES/SPIDERSMALLQUAD.ENTITY.MBIN",
    MXML_CHANGE_TABLE = {
      {
        SPECIAL_KEY_WORDS = {"Components","GcDestructableComponentData"},
        PRECEDING_KEY_WORDS = {
          "DestroyedModel"
        },
        VALUE_CHANGE_TABLE = {
          {"Filename", Config.SmallSpiderDiscreteLoot.Source.SceneToFile}
        }
      }
    }
  }

  local lootSection = "ALCH_SPIDER_LOOT"

  rewardChangeTable[#rewardChangeTable+1] = {
    SPECIAL_KEY_WORDS = {"Id", Config.SmallSpiderDiscreteLoot.Reward.SourceId},
    SEC_SAVE_TO = lootSection,
  }

  local lootChange = Config.SmallSpiderDiscreteLoot.Reward.Change
  lootChange.SEC_EDIT = lootSection
  rewardChangeTable[#rewardChangeTable+1] = lootChange

  rewardChangeTable[#rewardChangeTable+1] = {
    SEC_EDIT = lootSection,
    VALUE_CHANGE_TABLE = {
      {"Id", "SM_SPIDER_LOOT"}
    }
  }

  rewardChangeTable[#rewardChangeTable+1] = {
    PRECEDING_KEY_WORDS = {"GenericTable"},
    REPLACE_TYPE = "ADDafterSECTION",
    LINE_OFFSET = -1,
    SEC_ADD_NAMED = lootSection
  }
end


if Config.MaintenanceLoot.Enabled then
  local maintenanceTable = {}

  for key, value in pairs(Config.MaintenanceLoot.Tech) do
    if Config.MaintenanceLoot.RemoveInstead then
      maintenanceTable[#maintenanceTable+1] = {
        SPECIAL_KEY_WORDS = {"Id", key},
        REMOVE = "SECTION"
      }
    else
      maintenanceTable[#maintenanceTable+1] = {
        SPECIAL_KEY_WORDS = {"Id", key},
        VALUE_CHANGE_TABLE = value,
      }
    end
  end

  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/MAINTENANCEGROUPSTABLE.MBIN",
    MXML_CHANGE_TABLE = maintenanceTable
  }
end


if #rewardChangeTable > 0 then
  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
    MXML_CHANGE_TABLE = rewardChangeTable
  }
end