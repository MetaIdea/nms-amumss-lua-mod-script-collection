Author = "Syzzle"
ModName = "Overclocked Industry"
GameVersion = "4.52"
--ModVersion = "v1.4"
Description = "Power up Autonomous Mining, Atmosphere Harvester and Oxygen Harvester to harvest a full stack of 9999 in 5 minutes."

FuelTime = "15"	-- How much time until the Fuel is fully used in seconds, 300 equals 5 minutes. When editing make sure it's a positive number.
WorkTime = "-15"	-- How much time until it's full in seconds, 300 equals 5 minutes. When changing make sure it's negative number.
Output = "9999"		-- How many resources it will give at the end of the work cycle.

-- If changing the amount of time make sure both FuelTime and WorkTime are the same number, but FuelTime being positive while WorkTime being negative.

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        {
          ["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/HARVESTER/ENTITIES/RESOURCEHARVESTER.ENTITY.MBIN", 
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AmountEmptyTimePeriod",FuelTime}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"MaxCapacity",Output},
                {"AmountEmptyTimePeriod",WorkTime}
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OXYGENHARVESTER180/ENTITIES/OXYGENHARVESTER.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AmountEmptyTimePeriod",FuelTime}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"MaxCapacity",Output},
                {"AmountEmptyTimePeriod",WorkTime}
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/GASHARVESTER/ENTITIES/GASHARVESTER.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AmountEmptyTimePeriod",FuelTime}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"MaxCapacity",Output},
                {"AmountEmptyTimePeriod",WorkTime}
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID","BUILDHARVESTER"},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"CanPickUp","True"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID","O2_HARVESTER"},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"CanPickUp","True"}
              }
            },
          }
        }
      }
    }
  }
}