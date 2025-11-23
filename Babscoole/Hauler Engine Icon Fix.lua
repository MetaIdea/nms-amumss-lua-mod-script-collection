NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Hauler Engine Icon Fix",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.17",
["MOD_DESCRIPTION"] = "Assigns the correct icons to hauler engines, which normally have the duplicate icons despite visually being different",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_MODULARCUSTOMISATIONPRODUCTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DROPS_ENGIAA", "Icon", "TkTextureResource"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/FRONTEND/ICONS/SHIPICONS/SHIPPARTS.DROPSHIPENGINE.AA.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DROPS_ENGIAB", "Icon", "TkTextureResource"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/FRONTEND/ICONS/SHIPICONS/SHIPPARTS.DROPSHIPENGINE.AB.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DROPS_ENGIBA", "Icon", "TkTextureResource"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/FRONTEND/ICONS/SHIPICONS/SHIPPARTS.DROPSHIPENGINE.BA.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DROPS_ENGIBB", "Icon", "TkTextureResource"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/FRONTEND/ICONS/SHIPICONS/SHIPPARTS.DROPSHIPENGINE.BB.DDS"},
                            }
                        },
                    }
                },
            }
        }
    }
}