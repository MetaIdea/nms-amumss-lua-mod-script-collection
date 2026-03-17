NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]  = "AppearanceModifierTypeB",
    ["MOD_AUTHOR"]    = "kuborr",
    ["LUA_AUTHOR"]    = "Babscoole",
    ["NMS_VERSION"]   = "6.24",
    ["MODIFICATIONS"] = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                -- Change 1: Swap model to Type B in building parts table
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "_DRESSING_TABLE", "Model", "TkModelResource"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/CUSTOMISESTATIONTYPEB.SCENE.MBIN"}
                            }
                        },
                    }
                },
                -- Change 2: Enable colour changing in building objects table
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DRESSING_TABLE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ColourPaletteGroupId",    "FREIGHTERBASE"},
                                {"DefaultColourPaletteId",  "FREIGHTERBASE0"},
                                {"CanChangeColour",         "true"}
                            }
                        },
                    }
                },
                -- Change 3: Freighter dress room floor scene (RefCustomiser swap)
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/DRESSROOM/PARTS/FLOOR0.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefCustomiser", "Name", "SCENEGRAPH"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Value", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/CUSTOMISESTATIONTYPEB.SCENE.MBIN"}
                            }
                        },
                    }
                },
            }
        }
    }
}