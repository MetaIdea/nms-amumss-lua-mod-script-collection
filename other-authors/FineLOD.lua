Author = "Prof Horatio Hafnaugels"
LUAAuthor = "Droseran"
ModName = "Fine LOD"
BaseDescription = "Ground textures fix + water level fix + spawn delay reduction + farther LOD switch"
GameVersion = "3.97"
FileSource0 = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN"
FileSource1 = "GCGRAPHICSGLOBALS.GLOBAL.MBIN"
FileSource2 = "GCWATERGLOBALS.GLOBAL.MBIN"
FileSource3 = "METADATA\UI\BOOTLOGOPC.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = ModName.." for NMS "..GameVersion..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["LUA_AUTHOR"] 	= LUAAuthor,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource0,
                    ["EXML_CHANGE_TABLE"] = {
                        -- {
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml"},
                            -- ["MATH_OPERATION"] = "*",
                            -- ["LINE_OFFSET"] = "+1",
                            -- ["VALUE_CHANGE_TABLE"] = {
                                -- {"LODAdjust", 2}
                            -- }
                        -- },
                        -- {
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml"},
                            -- ["MATH_OPERATION"] = "*",
                            -- ["LINE_OFFSET"] = "+2",
                            -- ["VALUE_CHANGE_TABLE"] = {
                                -- {"LODAdjust", 2.5}
                            -- }
                        -- },
                        -- {
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml"},
                            -- ["MATH_OPERATION"] = "*",
                            -- ["LINE_OFFSET"] = "+3",
                            -- ["VALUE_CHANGE_TABLE"] = {
                                -- {"LODAdjust", 3}
                            -- }
                        -- },
                        -- {
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml"},
                            -- ["MATH_OPERATION"] = "*",
                            -- ["LINE_OFFSET"] = "+4",
                            -- ["VALUE_CHANGE_TABLE"] = {
                                -- {"LODAdjust", 3.5}
                            -- }
                        -- },
                        -- {
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml","TkLODSettingsData.xml"},
                            -- ["MATH_OPERATION"] = "*",
                            -- ["LINE_OFFSET"] = "+5",
                            -- ["VALUE_CHANGE_TABLE"] = {
                                -- {"LODAdjust", 4}
                            -- }
                        -- },
                        -- {
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["VALUE_CHANGE_TABLE"] = {
                                -- {"TerrainFadeTime","0.5"},
                            -- }
                        -- },
                        {
							["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AnimationScale","10"},
                                {"TerrainFadeTimeInShip","1"},
                                {"CreatureFadeTime","0.7"},
                                {"TerrainFadeTime","1"},
                                {"FloraFadeTimeMin","0.3"},
                                {"FloraFadeTimeMax","1.1"},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ForceUncachedTerrain","True"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = FileSource2,
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"WaveHeight","-0.2"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = FileSource3,
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_MATCH"] = "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            -- ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+1",
							["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 1}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+2",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 0}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+3",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 0}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+4",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 0}
                            }
                        }
                    }
                }
            }
        }
    }
}