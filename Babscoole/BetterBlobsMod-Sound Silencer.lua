NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BetterBlobsMod-Sound Silencer.pak",
["MOD_AUTHOR"]    = "JustInNovel",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREAUDIOTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEE"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\BLOBRIG\BLOB\ENTITIES\_BODY_BLOB.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sound", "CREATURE_STEP_BLOB"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sound", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sound", "Creature_Step_Blob_Walk"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sound", ""},
                            }
                        },
                    }
                },
            }
        },
    }
}