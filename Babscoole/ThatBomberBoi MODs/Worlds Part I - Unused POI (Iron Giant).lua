NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "IronGiant.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"BuildingFiles", "Traders",   "BuildingFiles", "Beacon", "Scene", "Normal"},
                                {"BuildingFiles", "Traders",   "BuildingFiles", "Beacon", "Scene", "AbandonedSystem"},
                                {"BuildingFiles", "Warriors",  "BuildingFiles", "Beacon", "Scene", "Normal"},
                                {"BuildingFiles", "Warriors",  "BuildingFiles", "Beacon", "Scene", "AbandonedSystem"},
                                {"BuildingFiles", "Explorers", "BuildingFiles", "Beacon", "Scene", "Normal"},
                                {"BuildingFiles", "Explorers", "BuildingFiles", "Beacon", "Scene", "AbandonedSystem"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS/PLANETS/COMMON/WRECKS/IRONGIANT.SCENE.MBIN"}
                            }
                        },
                    }
                },
            }
        }
    }
}