
--[[ Summery Description:
Greatly increases the gain from digging dirt, copper, sodium or <insert deposit name here> using the Terrain Manipulator.

One would think that "Better_Rewards.lua" would do what this mod does, but nope...
So thanks to Makto on NMS Modding Discord for coming through and delivering more joy and fun for us.
]]--


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Terrain_Manipulator_Gain_Booster.pak",
    ["MOD_AUTHOR"]      = "Makto",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"ResourceDirtMinAmount",    "50"}, -- 1 Terrain Editor Gain
                                {"ResourceDirtMaxAmount",   "100"}, -- 8 Terrain Editor Gain
                                {"ResourceCommonMinAmount",  "50"}, -- 1 ?
                                {"ResourceCommonMaxAmount", "100"}, -- 8 ?
                                {"ResourceMinAmount",        "50"}, -- 1 Fat Asteroids (Gold/Silver), maybe - got a different file altering this, so maybe something else?
                                {"ResourceMaxAmount",       "100"}, -- 2 Fat Asteroids (Gold/Silver)
                                {"SpecialMiningAmount",     "100"}  -- 30 ?
                            }
                        }
                    }
                }
            }
        }
    }
}