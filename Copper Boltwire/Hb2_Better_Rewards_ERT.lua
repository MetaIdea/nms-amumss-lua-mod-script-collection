
--[[ Summery Description:
In as few words as i can explain what this monstrosity of a mod does...
It increases the gain with mining drill on plants, the rewards from completing missions, or opening boxes/containers
It increases how much salvage data devices you get when you find one.
The majority of this mod increases said gain/bounty/rewards by 10 times!

However, this WAS made for a slightly older version of NMS, so some plants, rocks and other items aren't effected.
Toxic biomes/worlds are the least effected. Not much i can do with my current skills. -Copper B.

Copper B. - Decreasing grinding since 1997 -- Seriously, i started to seriously mod games back then too :D
]]--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Hb2_Better_Rewards_ERT.pak",
    ["MOD_AUTHOR"]      = "MrTrack and Copper B.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            { 
                {
                    --["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
---------------------------------------------------------------------------------------------------------------
---------------------------- Resources -- 58 different kinds --------------------------------------------------
---------------------------------------------------------------------------------------------------------------
                        --[[ These aren't in the ERT file...
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "AF_METAL"},  -- TAINTED METAL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ASTEROID1"},  -- SILVER
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ASTEROID2"},  -- GOLD
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ASTEROID3"},  -- PLATINUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        ]]--
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "BLUE2"},  -- INDIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        --[[ not in ERT either
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "CATALYST1"},  -- SODIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "CATALYST2"},  -- SODIUM NITRATE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "CAVE1"},  -- COBALT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "CAVE2"},  -- IONISED COBALT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "COLD1"},  -- DIOXITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "CREATURE1"},  -- MORDITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "DUSTY1"},  -- PYRITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        ]]--
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "EX_BLUE"},  -- ACTIVATED INDIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "EX_GREEN"},  -- ACTIVATED EMERIL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "EX_RED"},  -- ACTIVATED CADMIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "EX_YELLOW"},  -- ACTIVATED COPPER
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        --[[ These are just "ghosts" now... Not in ERT file
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FUEL1"},  -- CARBON
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FUEL2"},  -- CONDENSED CARBON
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GAS1"},  -- SULPHURINE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GAS2"},  -- RADON
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GAS3"},  -- PYNITROGENRITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GREEN2"},  -- EMERIL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "HOT1"},  -- PHOSPHORUS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LAND1"},  -- FERRITE DUST
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LAND2"},  -- PURE FERRITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        ]]--
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LAND3"},  -- MAGNETISED FERRITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        --[[ All these are also not in the ERT file... that's a lot of resources...
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LAUNCHSUB"},  -- DI-HYDROGEN
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LAUNCHSUB2"},  -- DEUTERIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LAVA1"},  -- BASALT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LUSH1"},  -- PARAFFINIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "OXYGEN"}, -- OXYGEN -- hardest one to to find, it's so transparent it's easy to miss.
                            ["MATH_OPERATION"]      = "*",              --   heck, it took me an hour to find the name of the item ID OXYGEN,
                            ["REPLACE_TYPE"]        = "ALL",            --   so that should give you a nice idea of how hard it is to find...
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_CAVE"},  -- MARROW BULB
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_DUST"},  -- CACTUS FLESH
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_HOT"},  -- SOLANIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_LUSH"},  -- STAR BULB
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_POOP"},  -- FAECIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_RADIO"},  -- GAMMA ROOT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_SNOW"},  -- FROST CRYSTAL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_TOXIC"},  -- FUNGAL MOULD
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PLANT_WATER"},  -- KELP SAC
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "RADIO1"},  -- URANIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "RED2"},  -- CADMIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ROBOT1"},  -- PUGNEUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ROCKETSUB"},  -- TRITIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        { -- This one does not get as high a boost as most of the other resources, as you can literally find this on ANY planet... just DIG...
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SAND1"},  -- SILICATE POWDER
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    2},
                                {"AmountMax",    5}
                            }
                        },
                        { -- Never seen this item before... but added here, but commented out, just in case someone mentions this item... 
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SOULFRAG"},  -- FRAGMENTED QUALIA
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Amount",    10}
                                --{"AmountMin",    10}, -- There is no min/max for this item, so leave these two as comments...
                                --{"AmountMax",    13} -- You never know with HG, maybe they change their mind on this in another update...
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SPACEGUNK1"},  -- RESIDUAL GOOP
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SPACEGUNK2"},  -- RUNAWAY MOULD
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SPACEGUNK3"},  -- RUSTED METAL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SPACEGUNK4"},  -- LIVING SLIME
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SPACEGUNK5"},  -- VISCOUS FLUIDS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {              -- Sometimes, you gotta wonder what goes though the head of a HG dev when they make things like this....... :D
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SPECIAL_POOP"},  -- HEXITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        ]]--
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "STELLAR2"},  -- CHROMATIC METAL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        --[[ These also don't exists in ERT... 
                        { -- Isn't that technically just lava/magma stuff?????
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SUNGOLD"},  -- LIQUID SUN
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "TOXIC1"},  -- AMMONIA
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "WATER1"},  -- SALT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "WATER2"},  -- CHLORINE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "WATERPLANT"},  -- CYTO-PHOSPHATE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "YELLOW2"},  -- COPPER
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        ]]--
---------------------------------------------------------------------------------------------------------------
---------------------------- Other Resources ------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
                        --[[
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GEODE_ASTEROID"},  -- GOLD NUGGET
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GEODE_CAVE"},  -- GEODE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GEODE_CRYSTAL"},  -- CRYSTAL FRAGMENT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GEODE_LAND"},  -- GEODE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GEODE_RARE"},  -- GLOWING MINERAL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GEODE_SPACE"},  -- TRITIUM HYPERCLUSTER
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        }, ]]--
                        
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "EXP_CURIO1"},  -- KORVAX CASING
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "EXP_CURIO2"},  -- KORVAX CONVERGENCE CUBE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "TRA_CURIO1"},  -- GEK RELIC
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "TRA_CURIO2"},  -- GEKNIP
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "NIPNIPBUDS"},  -- NIPNIP BUDS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "WAR_CURIO1"},  -- VY'KEEN EFFIGY
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "WAR_CURIO2"},  -- VY'KEEN DAGGER
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },          --[[
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "WAR_CURIO3"},  -- VY'KEEN TABLET
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        }, ]]--
                        
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY1"},  -- ARONIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY2"},  -- DIRTY BRONZE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY3"},  -- HEROX
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY4"},  -- LEMMIUM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY5"},  -- MAGNO-GOLD
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY6"},  -- GRANTINE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY7"},  -- GEODESITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALLOY8"},  -- IRIDESITE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "REACTION1"},  -- THERMIC CONDENSATE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "REACTION2"},  -- ENRICHED CARBON
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "REACTION3"},  -- NITROGEN SALT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "COMPOUND1"},  -- ORGANIC CATALYST
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "COMPOUND2"},  -- SEMICONDUCTOR
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "COMPOUND3"},  -- HOT ICE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "COMPOUND4"},  -- FUSION ACCELERANT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "COMPOUND5"},  -- SUPERCONDUCTOR
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "COMPOUND6"},  -- CRYO-PUMP
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "VENTGEM"},  -- CRYSTAL SULPHIDE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },          --[[
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "STORM_CRYSTAL"},  -- STORM CRYSTAL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "OXYPROD3"},  -- SUPEROXIDE CRYSTAL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        }, ]]--
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "ALBUMENPEARL"},  -- ALBUMEN PEARL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "GRAVBALL"},  -- GRAVITINO BALL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },          --[[
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FISHCORE"},  -- HADAL CORE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "EYEBALL"},  -- HYPNOTIC EYE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        }, ]]--
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "CLAMPEARL"},  -- LIVING PEARL
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "SACVENOM"},  -- SAC VENOM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },          --[[
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "WALKER_PROD"},  -- WALKER BRAIN
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "HEXCORE"},  -- HEX CORE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_ALL1"},  -- HEPTAPLOID WHEAT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_ALL2"},  -- SWEETROOT
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_ALL3"},  -- PULPY ROOTS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_CAVE"},  -- MARROW FLESH
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_COLDFARM"},  -- GLASS GRAINS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_COLDWILD"},  -- FROZEN TUBERS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_DEATH"},  -- MEAT FLAKES
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_DUSTFARM"},  -- CACTUS NECTAR
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_DUSTWILD"},  -- ALOE FLESH
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_GLITCH"},  -- HEXABERRY
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_HOTFARM"},  -- SOLARTILLO
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_HOTWILD"},  -- FIREBERRY
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_LUSHFARM"},  -- PILGRIMBERRY
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_LUSHWILD"},  -- IMPULSE BEANS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_POOP"},  -- WILD YEAST
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_RADFARM"},  -- SIEVERT BEANS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_RADWILD"},  -- GRAHBERRY
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_STELLAR"},  -- SILICON EGG
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_TOXFARM"},  -- NON-TOXIC MUSHROOM
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_TOXWILD"},  -- JADE PEAS
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "FOOD_P_WATER"},  -- KELP RICE
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        }, ]]--
                        
---------------------------------------------------------------------------------------------------------------
---------------------------- Miscellaneous -----------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
                        --[[ Template for quick Add-in to the table above...
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "xxxxxxxxxxxxxxxxxxxxxxxxxx"},  -- xxxxxxxxxxxxxxxxxxxxxxxxxxxx
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        
                        
                        id -- name

                        QUICKSILVER -- QUICKSILVER
                        TECHFRAG -- NANITE CLUSTER
                        TECHFRAG_R -- NANITES
                        UNITS -- UNITS ?? Money??
                        
                        ]]--
                        
                    }
                }
            }
        }
    }
}








-- BOO!