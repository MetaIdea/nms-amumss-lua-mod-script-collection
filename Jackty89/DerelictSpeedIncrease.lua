ModeName = "DerelictSpeedIncrease"
Author = "Jackty89"

SpeedMultiplier = "1"

InputSpeedMultiplier = {SpeedMultiplier,
[[
    Would you like to modify the multiplier?
    Default = 1 | Current = >> ]] .. (SpeedMultiplier) .. [[ <<
]]}

SpeedMultiplier = GUIF(InputSpeedMultiplier, 10)
GroundWalkSpeed = "4.4" --these are their actual values
GroundRunSpeed = "8" --these are their actual values

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
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeedLowG", (GroundWalkSpeed * SpeedMultiplier)},
                                {"GroundRunSpeedLowG", (GroundRunSpeed * SpeedMultiplier)}
                            }
                        }
                    }
                }
            }
        }
    }
}
