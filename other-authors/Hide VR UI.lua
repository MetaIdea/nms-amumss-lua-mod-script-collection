local mod_desc = [[
  Hide most UI (except compass, jetpack, inventory notifications, targeted resource info)
]]-------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME         = 'Hide VR UI',
    MOD_AUTHOR            = 'fortytwoish',
    NMS_VERSION            = '6.01',
    MOD_DESCRIPTION        = mod_desc,
    MODIFICATIONS         = {{
    MBIN_CHANGE_TABLE = {
        {
            ["MBIN_FILE_SOURCE"] =
            {
                "UI/HUD/HUDHAZARD.MBIN",
                "UI/HUD/HUDHEALTH.MBIN",
                "UI/HUD/HUDINDICATORSVR.MBIN",
                "UI/HUD/HUDLINES.MBIN",
                "UI/HUD/HUDVRWARNING.MBIN",
                "UI/HUD/HUDWEAPONS.MBIN",
                "UI/HUD/HUDNOTIFICATIONPANEL.MBIN",
                -- "UI/HUD/HUDCOMPASSDISTANCE.MBIN", do not work
                -- "UI/HUD/HUDCOMPASSLINES.MBIN",
                -- "UI/HUD/HUDHOTACTION.MBIN",
            },
            ["MXML_CHANGE_TABLE"] =
            {
                {
                    ["REPLACE_TYPE"] = "ALL",
                    ["VALUE_CHANGE_TABLE"] =
                    {
                        {"Is Hidden", "True"},
                    }
                },
            }
        },
    }
}}}