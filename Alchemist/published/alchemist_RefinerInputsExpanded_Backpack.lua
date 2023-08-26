Author = "alchemist"
ModName = "RefinerInputsExpanded_Backpack"
BaseDescription = "Increases the number of inputs for the backpack refiners."
GameVersion = "4-41"
ModVersion = "2"

local Config = {
  -- FuelTime is shared by all backpack refiners.
  FuelTime = 15 * 60,

  NumInputs = 2,
  NumInputsMk2 = 3,
}

NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION			= BaseDescription,
MOD_AUTHOR					= Author,
NMS_VERSION					= GameVersion,

MODIFICATIONS	= {{
  MBIN_CHANGE_TABLE = {

    {
      MBIN_FILE_SOURCE = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
      EXML_CHANGE_TABLE = {
        {
          SPECIAL_KEY_WORDS = {
            "Title", "UI_SUIT_REFINER_NAME_L",
            "Id", "MAINT_FUEL1"
          },
          VALUE_CHANGE_TABLE = {
            {"AmountEmptyTimePeriod", Config.FuelTime}
          }
        },
      }
    },

    {
      MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
      EXML_CHANGE_TABLE = {

        {
          SPECIAL_KEY_WORDS = {"Name", "UI_SUIT_REFINER_NAME"},
          PRECEDING_KEY_WORDS = {"StatBonuses"},
          VALUE_CHANGE_TABLE = {
            {"Bonus", Config.NumInputs}
          }
        },

        {
          SPECIAL_KEY_WORDS = {"Name", "UI_SUIT_REFINER2_NAME"},
          PRECEDING_KEY_WORDS = {"StatBonuses"},
          VALUE_CHANGE_TABLE = {
            {"Bonus", Config.NumInputsMk2}
          }
        },
      }
    },

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER