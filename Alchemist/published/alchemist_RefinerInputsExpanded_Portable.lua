Author = "alchemist"
ModName = "RefinerInputsExpanded_Portable"
BaseDescription = "Increases the number of inputs for the portable refiner."
GameVersion = "4-41"
ModVersion = "2"

--[[

WARNING - Using this disables the fuel input to make it so you can pick it back up.
But in doing so, unintentionally disables the checks for if there is something inside,
and on pick up will DESTROY THE OUTPUT if it is not empty.

--]]

local Config = {
  -- must be 1-3 or game will crash
  NumInputs = 3
}

NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION			= BaseDescription,
MOD_AUTHOR					= Author,
NMS_VERSION					= GameVersion,

MODIFICATIONS	= {{
  MBIN_CHANGE_TABLE = {

    {
      MBIN_FILE_SOURCE = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER1.ENTITY.MBIN",
      EXML_CHANGE_TABLE = {
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
            {"VisibleMaintenanceSlots", 1 + Config.NumInputs},
            {"NumInputs", Config.NumInputs},
          }
        },
      }
    }

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER