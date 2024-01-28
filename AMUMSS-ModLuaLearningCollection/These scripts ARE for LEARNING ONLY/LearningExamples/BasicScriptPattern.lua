NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]  = "GENERIC.pak",
  ["MOD_AUTHOR"]    = "AMUMSS",
  ["LUA_AUTHOR"]    = "AMUMSS",
  ["NMS_VERSION"]   = "",
  ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "",  --a NMS valid path for MBINs
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Property name OR Property value","newValue"},
                            },
                        },
                    },
                },
            },
        },
    },
}
--NOTE: ANYTHING NOT referenced in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED