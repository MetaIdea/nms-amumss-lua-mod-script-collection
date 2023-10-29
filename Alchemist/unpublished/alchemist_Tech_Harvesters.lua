
Author = "alchemist"
ModName = "Tech_Harvester"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

-- changes cycle time and volume of deployable harvesters
-- enables all deployable harvestables ability to pick up

HARVESTER_TIME = 8 * 60
HARVESTER_AMOUNT = 500

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

  {["MBIN_FILE_SOURCE"] = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\OXYGENHARVESTER180\\ENTITIES\\OXYGENHARVESTER.ENTITY.MBIN",
  ["EXML_CHANGE_TABLE"] = {

    {["SPECIAL_KEY_WORDS"] = {
      "Id", "MAINT_FUEL4",
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"AmountEmptyTimePeriod", tostring(HARVESTER_TIME)},
    }},

    {["SPECIAL_KEY_WORDS"] = {
      "Id", "OXYGEN",
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"AmountEmptyTimePeriod", tostring(HARVESTER_TIME * -1)},
    }},

  }},

  {["MBIN_FILE_SOURCE"] = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\HARVESTER\\ENTITIES\\RESOURCEHARVESTER.ENTITY.MBIN",
  ["EXML_CHANGE_TABLE"] = {

    {["SPECIAL_KEY_WORDS"] = {
      "Id", "MAINT_FUEL1",
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"AmountEmptyTimePeriod", tostring(HARVESTER_TIME)},
    }},

    {["SPECIAL_KEY_WORDS"] = {
      "Id", "YELLOW1",
    },
    ["VALUE_CHANGE_TABLE"] = {
      -- mbin typo
      {"MaxCapacity", tostring(HARVESTER_AMOUNT)},
      {"AmountEmptyTimePeriod", tostring(HARVESTER_TIME * -1)},
    }},

  }},

  {["MBIN_FILE_SOURCE"] = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\GASHARVESTER\\ENTITIES\\GASHARVESTER.ENTITY.MBIN",
  ["EXML_CHANGE_TABLE"] = {

    {["SPECIAL_KEY_WORDS"] = {
      "Id", "MAINT_FUEL1",
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"AmountEmptyTimePeriod", tostring(HARVESTER_TIME)},
    }},

    {["SPECIAL_KEY_WORDS"] = {
      "Id", "GAS2",
    },
    ["VALUE_CHANGE_TABLE"] = {
      -- mbin typo
      {"MaxCapacity", tostring(HARVESTER_AMOUNT)},
      {"AmountEmptyTimePeriod", tostring(HARVESTER_TIME * -1)},
    }},

  }},

  
  {["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
  ["EXML_CHANGE_TABLE"] = {

    -- o2 harvester can be picked up
    {["SPECIAL_KEY_WORDS"] = {
      "ID", "O2_HARVESTER"
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"BuildableOnPlanet",	"True"},
      {"CanPickUp", "True"},
      {"PlanetLimit", "0"},
      {"RegionLimit", "3"},
      {"CloseMenuAfterBuild", "False"}
    }},

    -- o2 harvester in proper group
    {["SPECIAL_KEY_WORDS"] = {
      "ID", "O2_HARVESTER"
    },
    ["PRECEDING_KEY_WORD"] = {
      "GcBaseBuildingEntryGroup.xml"
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"Group",	"PLANET_TECH"},
      {"SubGroupName", "PLANETPORTABLE"},
    }},

    -- harvesters can be picked up
    {["SPECIAL_KEY_WORDS"] = {
      "ID", "BUILDHARVESTER"
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"CanPickUp", "True"},
      {"PlanetLimit", "0"},
      {"RegionLimit", "5"},
      {"CloseMenuAfterBuild", "False"}
    }},

    -- gas harvesters can be picked up
    {["SPECIAL_KEY_WORDS"] = {
      "ID", "BUILDGASHARVEST"
    },
    ["VALUE_CHANGE_TABLE"] = {
      {"CanPickUp", "True"},
      {"PlanetLimit", "0"},
      {"RegionLimit", "5"},
      {"CloseMenuAfterBuild", "False"}
    }},

  }},

}}}}