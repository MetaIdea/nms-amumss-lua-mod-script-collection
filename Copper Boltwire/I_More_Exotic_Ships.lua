
--[[ Summery Description:
Increases spawnrate of Exotic ships, making them less "exotic".
Decreases spawnrate of shuttle crafts by quite a large amount. Don't get me wrong, shuttles are nice, but i just don't like the look of them.
Want normal spawnrate for shuttles? read the comment below.
]]--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "I_More_Exotic_Ships.pak",
    ["MOD_DESCRIPTION"] = "Changes frequency of ships spawning in the wild",
    ["MOD_AUTHOR"]      = "Gumsk and Copper B.",
    ["NMS_VERSION"]     = "3.75",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        { -- Changes how many distinct spaceships each solar system has (Might be RAM intensive...)
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CivilianTraderSpaceshipsCacheCount","50"}, -- Was 20
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Royal","25"},
                                --{"Alien","5"}, -- Alien ships are CRAP, and until HG fixes them, i will not support them in my mod either...
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings",},
                            ["MATH_OPERATION"] 	    = "/",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Shuttle","1"}, -- Greatly decreasing shuttles
                                                 -- If you want normal spawnrate of shuttles, change 4 to 1 -- Don't change to 0, unless you wish to completely disable shuttles.
                            },
                        },
                    }
                }
            }
        }
    }
}