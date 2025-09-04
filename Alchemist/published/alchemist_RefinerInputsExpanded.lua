Author = "alchemist"
ModName = "RefinerInputsExpanded"
BaseDescription = "Increases the number of inputs for various refiners."
GameVersion = "6.03"
ModVersion = "1"

local Config = {
  -- NumInputs > 3 will crash the game.

  BaseMedium = {
    Enabled = true,
    NumInputs = 3,
  },

  Portable = {
    Enabled = true,
    NumInputs = 3,
  },

  Backpack = {
    Enabled = true,
    NumInputsMk1 = 2,
    NumInputsMk2 = 3,

    Fuel = {
      -- Multiplier for AmountEmptyTimePeriod (default: 300s).
      ScalingMultiplier = 3,

      -- Modify charge multiplier based on ScalingMultiplier.
      ModifyCharge = {
        Enabled = false,
        UseStaticChargeMultiplier = false,
        ChargeMultiplier = 1 / 3,

        -- Handle shared fuel slot.
        RevertSharedEntities = true,
        SharedSlotId = "MAINT_FUEL1_ORIG",
        SharedEntities = {
          "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/GASHARVESTER/ENTITIES/GASHARVESTER.ENTITY.MBIN",
          "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/HARVESTER/ENTITIES/RESOURCEHARVESTER.ENTITY.MBIN",
          -- Uncomment if not using alchemist_RefinerInputsExpanded_Portable, untested
          -- "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER1.ENTITY.MBIN",
        }
      }
    }
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

local playerEntityChangeTable = {
  {
    SPECIAL_KEY_WORDS = {
      "Title", "UI_SUIT_REFINER_NAME_L",
      "Id", "MAINT_FUEL1"
    },
    MATH_OP = "*",
    INTEGER_TO_FLOAT = "PRESERVE",
    VALUE_CHANGE_TABLE = {
      {"AmountEmptyTimePeriod", Config.Backpack.Fuel.ScalingMultiplier}
    }
  }
}

local techChangeTable = {
  {
    SPECIAL_KEY_WORDS = {"Name", "UI_SUIT_REFINER_NAME"},
    PRECEDING_KEY_WORDS = {"StatBonuses"},
    VALUE_CHANGE_TABLE = {
      {"Bonus", Config.Backpack.NumInputsMk1}
    }
  },

  {
    SPECIAL_KEY_WORDS = {"Name", "UI_SUIT_REFINER2_NAME"},
    PRECEDING_KEY_WORDS = {"StatBonuses"},
    VALUE_CHANGE_TABLE = {
      {"Bonus", Config.Backpack.NumInputsMk2}
    }
  },
}

if Config.Backpack.Fuel.ModifyCharge.Enabled then
  -- handle separating shared entities
  if Config.Backpack.Fuel.ModifyCharge.RevertSharedEntities then
    local techSection = "TECH_MAINT_FUEL1"

    techChangeTable[#techChangeTable+1] = {
      SPECIAL_KEY_WORDS = {"ID", "MAINT_FUEL1"},
      SEC_SAVE_TO = techSection,
    }

    techChangeTable[#techChangeTable+1] = {
      SEC_EDIT = techSection,
      VALUE_CHANGE_TABLE = {
        {"ID", Config.Backpack.Fuel.ModifyCharge.SharedSlotId}
      }
    }

    techChangeTable[#techChangeTable+1] = {
      PRECEDING_KEY_WORDS = {"Table"},
      REPLACE_TYPE = "ADDafterSECTION",
      LINE_OFFSET = -1,
      SEC_ADD_NAMED = techSection
    }

    for i = 1, #Config.Backpack.Fuel.ModifyCharge.SharedEntities do
      Ref[#Ref+1] = {
        MBIN_FILE_SOURCE = Config.Backpack.Fuel.ModifyCharge.SharedEntities[i],
        MXML_CHANGE_TABLE = {
          {
            SPECIAL_KEY_WORDS = {"ID", "MAINT_FUEL1"},
            VALUE_CHANGE_TABLE = {
              {"ID", Config.Backpack.Fuel.ModifyCharge.SharedSlotId}
            }
          }
        }
      }
    end
  end

  -- modify the charge multiplier of the original fuel slot
  if Config.Backpack.Fuel.ModifyCharge.UseStaticChargeMultiplier then
    techChangeTable[#techChangeTable+1] = {
      SPECIAL_KEY_WORDS = {"ID", "MAINT_FUEL1"},
      VALUE_CHANGE_TABLE = {
        {"ChargeMultiplier", Config.Backpack.Fuel.ModifyCharge.ChargeMultiplier}
      }
    }
  else
    techChangeTable[#techChangeTable+1] = {
      SPECIAL_KEY_WORDS = {"ID", "MAINT_FUEL1"},
      MATH_OP = [[/]],
      INTEGER_TO_FLOAT = "FORCE",
      VALUE_CHANGE_TABLE = {
        {"ChargeMultiplier", Config.Backpack.Fuel.ScalingMultiplier}
      }
    }
  end
end

if Config.BaseMedium.Enabled then
  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER2.ENTITY.MBIN",
    MXML_CHANGE_TABLE = {
      {
        SPECIAL_KEY_WORDS = {
          "Title", "REFINER2_NAME_L",
        },
        SECTION_UP = 1,
        VALUE_CHANGE_TABLE = {
          {"VisibleMaintenanceSlots", 1 + Config.BaseMedium.NumInputs},
          {"NumInputs", Config.BaseMedium.NumInputs},
        }
      },
    }
  }
end

if Config.Portable.Enabled then
  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER1.ENTITY.MBIN",
    MXML_CHANGE_TABLE = {
      {
        SPECIAL_KEY_WORDS = {
          "Title", "REFINER1_NAME_L",
          "Id", "MAINT_FUEL1",
        },
        REMOVE = "SECTION",
      },

      {
        SPECIAL_KEY_WORDS = {
          "Title", "REFINER1_NAME_L",
        },
        SECTION_UP = 1,
        VALUE_CHANGE_TABLE = {
          {"VisibleMaintenanceSlots", 1 + Config.Portable.NumInputs},
          {"NumInputs", Config.Portable.NumInputs},
        }
      },
    }
  }
end

Ref[#Ref+1] = {
  MBIN_FILE_SOURCE = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
  MXML_CHANGE_TABLE = playerEntityChangeTable
}

Ref[#Ref+1] = {
  MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
  MXML_CHANGE_TABLE = techChangeTable
}