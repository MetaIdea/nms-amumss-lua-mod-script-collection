--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_SeaPlantFix_v529-B.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\PLANETS\BIOMES\UNDERWATER\INTERACTIVE\FISHFIENDROCK\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPROP\UNDERWATERBOULDER\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.1.DDS"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\LARGESTRANDS\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\FLOATPLANT\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUMSEAPLANT\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMasksMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.MASKS.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.NORMAL.DDS"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\FLOATPLANT\FLOATLEAF_MAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/FLOATLEAF.NORMAL.DDS"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANT\ALPHASTRANDSTILE.TEXTURE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Base"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "1", "Palette", "TkPaletteTexture.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette",   "Grass"},
                                {"ColourAlt", "Alternative1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Diffuse", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.1.DDS"},
                                {"Normal",  "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.1.NORMAL.DDS"},
                                {"Mask",    "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.1.MASKS.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "2", "Palette", "TkPaletteTexture.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette",   "Grass"},
                                {"ColourAlt", "Alternative1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Diffuse", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.2.DDS"},
                                {"Normal",  "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.2.NORMAL.DDS"},
                                {"Mask",    "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.2.MASKS.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "3", "Palette", "TkPaletteTexture.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette",   "Grass"},
                                {"ColourAlt", "Alternative1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Diffuse", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.3.DDS"},
                                {"Normal",  "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.3.NORMAL.DDS"},
                                {"Mask",    "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.3.MASKS.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "4", "Palette", "TkPaletteTexture.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette",   "Grass"},
                                {"ColourAlt", "Alternative1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Diffuse", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.4.DDS"},
                                {"Normal",  "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.4.NORMAL.DDS"},
                                {"Mask",    "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.4.MASKS.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "5", "Palette", "TkPaletteTexture.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette",   "Grass"},
                                {"ColourAlt", "Alternative1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH", "Name", "5"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Diffuse", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.5.DDS"},
                                {"Normal",  "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.5.NORMAL.DDS"},
                                {"Mask",    "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/ALPHASTRANDSTILE.BASEO.5.MASKS.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Layers"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATCH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SelectToMatchBase", "False"},
                                {"Name",              "BASEO"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANT\FLOATLEAF.TEXTURE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASEI", "Name", "1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative1"},
                                {"Diffuse",   "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.1.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASEI", "Name", "2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative1"},
                                {"Diffuse",   "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.2.DDS"},
                            }
                        },                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASEI", "Name", "3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative1"},
                                {"Diffuse",   "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.3.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASEI", "Name", "4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative1"},
                                {"Diffuse",   "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.4.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASEI", "Name", "6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative1"},
                                {"Diffuse",   "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.6.DDS"},
                            }
                        },
                       {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASEI", "Name", "5"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative1"},
                                {"Diffuse",   "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.5.DDS"},
                            }
                        },
                    }
                },
            }
        },
    }
}