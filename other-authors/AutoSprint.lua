NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Auto-Sprint",
    ["MOD_AUTHOR"] = "me",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"GroundWalkSpeed","8.000000"},
                                {"GroundWalkSpeedLowG","3.500000"},
                                {"GroundWalkSpeedSlow","0.500000"}, -- confirmed: light-press tier, user likes this value
                                {"MoveStickHighRangeLimit","0.950000"}, -- confirmed: widens medium-to-full ramp, user confirmed it feels distinct now
                                {"AnimRunSpeed","2.500000"}, -- TEMP experiment: was 4.0, lowering the animation playback reference speed so actual full-press speed (8.0) scales the run-cycle playback rate up further, without touching AnimWalkSpeed (which would also speed up light/medium press animation)
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "StickCurve",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Curve","Cubed"}, -- confirmed: gives light press more room before ramping up, user confirmed it feels good
                            },
                        },
                    },
                },
            }
        }
    }
}