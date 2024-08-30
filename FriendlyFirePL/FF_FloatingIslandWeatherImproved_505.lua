----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "FloatingIslandWeatherImproved"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "505"
METADATA_MOD_DESC       = "This mod changes the weather patterns and visual effects found on floating islands found on selected lush planets. Modifies METADATA\\SIMULATION\\SOLARSYSTEM\\BIOMES\\ROCKY\\ROCKBIOME.MBIN file."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_METADATA_BIOME_ISLANDS = "METADATA\\SIMULATION\\SOLARSYSTEM\\BIOMES\\ROCKY\\ROCKBIOME.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_BIOME_ISLANDS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- for all system types:
                            -- disable Dust and Swamp weather
                            -- enable Clear, Humid and Weird weather
                            ["SKW"] = 
                            {
                                {"Yellow","GcWeatherWeightings.xml",},
                                {"Green","GcWeatherWeightings.xml",},
                                {"Blue","GcWeatherWeightings.xml",},
                                {"Red","GcWeatherWeightings.xml",},
                            },
                            ["VCT"] = 
                            {
                                {"Dust",0,},
                                {"Swamp",0,},
                                {"Clear",2,},
                                {"Humid",1,},
                                {"Weird",1,},
                            },
                        },

                        -- for RGB systems enable respective special weathers
                        {   ["SKW"] = {"Green","GcWeatherWeightings.xml",},     ["VCT"] = {{"GreenWeather",1},},    },
                        {   ["SKW"] = {"Blue","GcWeatherWeightings.xml",},      ["VCT"] = {{"BlueWeather",1},},     },
                        {   ["SKW"] = {"Red","GcWeatherWeightings.xml",},       ["VCT"] = {{"RedWeather",1},},      },
                    }
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------