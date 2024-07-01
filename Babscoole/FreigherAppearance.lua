NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FreigherAppearance.pak",
["MOD_AUTHOR"]    = "kuborr",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.64",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\DRESSROOM\PARTS\FLOOR0.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefCustomiser", "Name", "SCENEGRAPH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATIONTYPEB.SCENE.MBIN"}
                            }
                        },
                    }
                },
            }
        }
    }
}