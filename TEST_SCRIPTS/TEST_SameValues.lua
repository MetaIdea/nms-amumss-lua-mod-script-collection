NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "SameValueTest.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.48",
["AMUMSS_SUPPRESS_MSG"] = "DONOT_REPORT_NEW_EQUAL_OLD_VALUE",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseSeedValue",   "True"},     --Same value string
                                {"SeaLevel",       "30"},       --Same value number as string
                                {"BeachHeight",    8},          --Same value number
                                {"NoSeaBaseLevel", "30"},       --Different value number as string
                                {"NoiseVoxelType", "Mountain"}, --Different value string
                                {"Octaves",        6},          --Different value number
                            }
                        },
                    }
                },
            }
        },
    } --6 global replacements
}