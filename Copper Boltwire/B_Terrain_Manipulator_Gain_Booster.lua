
--[[ Summery Description:
Greatly increases the gain from digging dirt, copper, sodium or <insert deposit name here> using the Terrain Manipulator.

One would think that "Better_Rewards.lua" would do what this mod does, but nope...
So thanks to Makto on NMS Modding Discord for coming through and delivering more joy and fun for us.
]]--


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 			= "Terrain Manipulator Gain Booster.pak",
    ["MOD_AUTHOR"]				= "Makto",
    ["NMS_VERSION"]				= "3.21",
    ["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"ResourceDirtMinAmount",   "50"}, -- 1 Terrain Editor Gain
								{"ResourceDirtMaxAmount",   "100"}, -- 8 Terrain Editor Gain
								{"ResourceCommonMinAmount", "50"}, -- 1 ?
								{"ResourceCommonMaxAmount", "100"}, -- 8 ?
								{"ResourceMinAmount",       "50"}, -- 1 Fat Asteroids (Gold/Silver)
								{"ResourceMaxAmount",       "100"}, -- 2 Fat Asteroids (Gold/Silver)
								{"SpecialMiningAmount",     "100"} -- 30 ?
							}
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE