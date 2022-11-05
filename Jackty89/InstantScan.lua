ModeName = "InstantScan"
Author = "Jackty89"

ScanSpeed = "0"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName .. ".pak",
    ["MOD_DESCRIPTION"] = ModeName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BinocMinScanTime", ScanSpeed},
                                {"BinocScanTime", ScanSpeed},
                                {"BinocCreatureScanTime", ScanSpeed}
                            }
                        }
                    }
                }
            }
        }
    }
}
