NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "NoMoreCompass.pak",
    ["MOD_AUTHOR"] = "Cadet Murphy and OperatorSanta",
    ["NMS_VERSION"] = "700",
    ["MOD_DESCRIPTION"] =
        "Diagnostic test: zeros all graphic stroke widths in HUDCOMPASSLINES.",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI/HUD/HUDCOMPASSLINES.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Stroke Size", "0"},
                            },
                        },
                    },
                },
            },
        },
    },
}