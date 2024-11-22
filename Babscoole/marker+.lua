NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "marker+.pak",
["MOD_AUTHOR"]    = "Fuchs",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.28",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSIMULATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlaceMarkerFile", "MODELS/SPACE/BLACKHOLE/BLACKHOLE.SCENE.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\BLACKHOLE\BLACKHOLE\ENTITIES\BLACKHOLE.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Event", "GcPlayerNearbyEvent.xml"},
                            ["SECTION_ACTIVE"] = {2}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RequirePlayerAction", "OnFoot"},
                                {"Distance",            "10000"}
                            }
                        },
                    }
                },
            }
        }
    }
}