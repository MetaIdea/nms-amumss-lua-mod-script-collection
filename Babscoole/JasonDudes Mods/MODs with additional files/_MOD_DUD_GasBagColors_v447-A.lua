--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_GasBagColors_v447-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.47",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "TEXTURES\PLANETS\BIOMES\COMMON\INTERACTIVE\SPOREVENT.TEXTURE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative3"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK", "Palette", "TkPaletteTexture.xml"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette", "Scientific"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative3"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASE", "Palette", "TkPaletteTexture.xml"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette", "Grass"}
                            }
                        },
                    }
                },
            }
        },
    }
}