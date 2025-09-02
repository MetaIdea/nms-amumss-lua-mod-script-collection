Author = "Syzzle"
ModName = "Overclocked Industry"
GameVersion = "6.02"
--ModVersion = "v1.4"
Description = "Power up Autonomous Mining, Atmosphere Harvester and Oxygen Harvester to harvest a full stack of 9999 in 5 minutes."

FuelTime = "15"	-- How much time until the Fuel is fully used in seconds, 300 equals 5 minutes. When editing make sure it's a positive number.
WorkTime = "-15"	-- How much time until it's full in seconds, 300 equals 5 minutes. When changing make sure it's negative number.
Output = "9999"		-- How many resources it will give at the end of the work cycle.

-- If changing the amount of time make sure both FuelTime and WorkTime are the same number, but FuelTime being positive while WorkTime being negative.

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
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
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PreInstalledTech","GcMaintenanceElement"},
              ["SECTION_ACTIVE"] = 0,
              ["WHERE_IN_SECTION"] =  
                {  
                  {"AmountEmptyTimePeriod","3600.000000",}, 
                },
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AmountEmptyTimePeriod",FuelTime} -- Original: 3600
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PreInstalledTech","GcMaintenanceElement"},
              ["SECTION_ACTIVE"] = 1,
              ["WHERE_IN_SECTION"] =  
                {  
                  {"AmountEmptyTimePeriod","-3600.000000",},
                  {"MaxCapacity","250",},
                },
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"MaxCapacity",Output}, -- Original: 250
                {"AmountEmptyTimePeriod",WorkTime} -- Original: -3600
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OXYGENHARVESTER180/ENTITIES/OXYGENHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PreInstalledTech","GcMaintenanceElement"},
              ["SECTION_ACTIVE"] = 0,
              ["WHERE_IN_SECTION"] =  
                {  
                  {"AmountEmptyTimePeriod","720.000000",}, 
                },
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AmountEmptyTimePeriod",FuelTime} -- Original: 720
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PreInstalledTech","GcMaintenanceElement"},
              ["SECTION_ACTIVE"] = 1,
              ["WHERE_IN_SECTION"] =  
                {  
                  {"AmountEmptyTimePeriod","-720.000000",},
                  {"MaxCapacity","250",}, 
                },
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"MaxCapacity",Output}, -- Original: 250
                {"AmountEmptyTimePeriod",WorkTime} -- Original: -720
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/GASHARVESTER/ENTITIES/GASHARVESTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PreInstalledTech","GcMaintenanceElement"},
              ["SECTION_ACTIVE"] = 0,
              ["WHERE_IN_SECTION"] =  
                {  
                  {"AmountEmptyTimePeriod","3600.000000",}, 
                },
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AmountEmptyTimePeriod",FuelTime} -- Original: 3600
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PreInstalledTech","GcMaintenanceElement"},
              ["SECTION_ACTIVE"] = 1,
              ["WHERE_IN_SECTION"] =  
                {  
                  {"AmountEmptyTimePeriod","-3600.000000",},
                  {"MaxCapacity","250",},
                },
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"MaxCapacity",Output}, -- Original: 250
                {"AmountEmptyTimePeriod",WorkTime} -- Original: -3600
              }
            },
          }
        },
      }
    }
  }
}