Author = "Gumsk"
ModName = "__CleanMultiplayer"
BaseDescription = ""
GameVersion = "385"
-- FileSource1 = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PROPS\\MESSENGER\\MESSENGER.SCENE.MBIN"
FileSource2 = "GCMULTIPLAYERGLOBALS.GLOBAL.MBIN"
FileSource4 = "MATERIALS\\LINE3D.MATERIAL.MBIN"
FileSource5 = "MODELS\\EFFECTS\\LINES\\LINERENDERERGALAXY.SCENE.MBIN"
ScannerIconsPath = "METADATA\\UI\\HUD\\SCANNERICONS.MBIN"
GCGamePlayGlobalsPath = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]	= ModName..GameVersion..".pak",
    ["MOD_DESCRIPTION"]	= BaseDescription,
    ["MOD_AUTHOR"]		= Author,
    ["NMS_VERSION"]		= GameVersion,
    ["MODIFICATIONS"]	=
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- --Makes the communication station invisible
                -- {
                --     ["MBIN_FILE_SOURCE"] = FileSource1,
                --     ["EXML_CHANGE_TABLE"] =
                --     {
                --         {
                --             ["SPECIAL_KEY_WORDS"] = {"Type","MESH"},
                --             ["REMOVE"] = "SECTION",
                --             ["REPLACE_TYPE"] = "ALL"
                --         }
                --     }
                -- },
                --Reduces how many bases are downloaded
                {
                    ["MBIN_FILE_SOURCE"] = FileSource2,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxDownloadableBases", 1}
                            }
                        }
                    }
                },
                --Makes the line renderer transparent
                {
                    ["MBIN_FILE_SOURCE"] = FileSource4,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class", "Transparent"},
                                {"t", "0"},
                                {"Map", ""}
                            }
                        }
                    }
                },
                --Points the galactice line renderer at a visible line
                {
                    ["MBIN_FILE_SOURCE"] = FileSource5,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MATERIALS/LINE3D.GALAXY.MATERIAL.MBIN"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = ScannerIconsPath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MessageBeacon", "GcScannerIcon.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", ""}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MessageBeaconSmall", "GcScannerIcon.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", ""}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = GCGamePlayGlobalsPath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BeaconInteractRange", "0"}
                            }
                        }
                    }
                }
            }
        }
    }
}