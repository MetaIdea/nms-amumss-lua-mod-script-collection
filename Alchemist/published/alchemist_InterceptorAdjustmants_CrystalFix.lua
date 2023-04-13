Author = "alchemist"
ModName = "InterceptorAdjustmants_CrystalFix"
BaseDescription = [[Fixed the loot drop of a one of the planetary large 
corrupted crystal variants that gave Atlantideum instead of a Radiant Shard
like all the other crystals in its planetary placement group.]]
GameVersion = "4-21"
ModVersion = "1"


NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION			= BaseDescription,
MOD_AUTHOR					= Author,
NMS_VERSION					= GameVersion,

MODIFICATIONS	= {{
  MBIN_CHANGE_TABLE = {

    --[[
    Fixes the the large crystal with a drone that should give shards
    but gives ROBOT2 instead. Switches the (placeholder?) entity from the 
    small drone crystal to large shard crystal.
    --]]
    {
      MBIN_FILE_SOURCE = "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONE.SCENE.MBIN",
      EXML_CHANGE_TABLE = {
        {
          SPECIAL_KEY_WORDS = {"Name", "ATTACHMENT"},
          VALUE_CHANGE_TABLE = {
            {"Value", "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTAL/ENTITIES/DATA.ENTITY.MBIN"}
          }
        }
      }
    }

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER