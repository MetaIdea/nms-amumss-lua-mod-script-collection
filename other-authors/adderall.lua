NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "adderall.pak",
    ["MOD_AUTHOR"] = "LizeLive",
    ["LUA_AUTHOR"] = "LizeLive, based on work by Babscoole, Lo2k",
    ["NMS_VERSION"] = "3.96",
    ["MODIFICATIONS"] = {{
        ["MBIN_CHANGE_TABLE"] = {{
            ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
            ["EXML_CHANGE_TABLE"] = {{
                ["PRECEDING_KEY_WORDS"] = "",
                ["VALUE_CHANGE_TABLE"] = {{"BinocMinScanTime", "1"}, -- Original "3.9"
                {"BinocScanTime", "1"}, -- Original "3.9"
                {"BinocCreatureScanTime", "1"}, -- Original "3.2"							
                {"RefinerPadStartTime", "0.5"}, -- "E" press time to process material
                {"FrontendConfirmTimeMouseMultiplier", "1.0"},
                {"FrontendConfirmTime", "0.35"},
                {"FrontendConfirmTimeSlow", "0.7"} -- salvage time
                }
            }}
        }}
    }}
}
