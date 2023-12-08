NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BetterBlobsMod-Terrarium Spawner.pak",
["MOD_AUTHOR"]    = "JustInNovel",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BASE_TERRARIUM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetBaseLimit",    "0"},
                                {"FreighterBaseLimit", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\BLOBRIG\BLOBTERRARIUM.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Body_Blob", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS/PLANETS/CREATURES/BLOBRIG/BLOB/ENTITIES/_BODY_BLOB.ENTITY.MBIN"},
                            }
                        },
                    }
                },
            }
        },
    }
}