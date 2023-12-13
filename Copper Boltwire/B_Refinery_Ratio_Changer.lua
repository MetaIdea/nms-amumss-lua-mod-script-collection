
--[[ Summery Description:
For the sake of "Semi-Creative Mode" mod, i have found a few recipes to be... a bit to "heavy" for lack of better words.
So this mod change the Ratios of certain recipes in the refineries to be a little more in the spirit of "Semi-Creative Mode".

Here i will list the "recipes" that got altered.

Residual Goop  -> Viscous Fluids == 1:2 - Was 1:1
Viscous Fluids -> Living Slime == 1:2 - Was 1:1
Living Slime   -> Runaway Mould == 1:2 - Was 1:1
Runway Mould   -> Clustered Nanites == 1:2 - Was 5:1

Copper -> Chromatic Metal == 1:1 - Was 2:1
Silicate Powder -> Glass == 1:1 - was 40:1

Sodium <-> Sodium Nitrate == 1:1 both ways now
Cobalt <-> Ionized Cobalt == 1:1 Both Ways
Pure Ferrite <-> Magnetized Ferrite == 1:1 Both ways

Added a new Recipe:
1x Carbon + 1x Silicate Powder + 1x Pure Ferrite == 6x Residual Goop

ACTIVATED CADMIUM, ACTIVATED COPPER, ACTIVATED EMERIL and ACTIVATED INDIUM
will be done at a later point. You see i'm playing through the game the long way around.
so i don't have access to all materials from the get go... Meaning you'll just have to have patience.
]]--

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Refinery_Ratio_Changer.pak",
    ["MOD_AUTHOR"]      = "Gumsk",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_23","Id","CAVE1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Cobalt to Ionized Cobalt
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_24","Id","CAVE1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Ionized Cobalt to Cobalt
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_25","Id","FUEL1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Condensed Carbon to Carbon
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_26","Id","FUEL1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Carbon to Condensed Carbon
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_27","Id","CATALYST1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Sodium to Sodium Nitrate
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_28","Id","CATALYST1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Sodium Nitrate to Sodium
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_30","Id","LAND2"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Pure Ferriet to Magnetised Ferrite
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_31","Id","LAND2"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Magnetised Ferrite to Pure Ferrite
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_35","Id","YELLOW2"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Copper to Chromatic Metal
                                {"Amount", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_51","Id","SPACEGUNK5"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Residual Goop to Viscous Fluids
                                {"Amount", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_52","Id","SPACEGUNK2"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {  -- Runaway Mould to Nanite Cluster 5:1
                                {"Amount", 1},          -- This part targets the Cost, not the result, unlike the others...
                            },                          -- The result is already 2...
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_52","Id","TECHFRAG"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {  -- Runaway Mould to Nanite Cluster 1:2
                                {"Amount", 2},          -- This targets the result to be 2, just to be safe :D
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_54","Id","SPACEGUNK2"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Living Slime to Runaway Mould
                                {"Amount", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_55","Id","SPACEGUNK4"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Viscous Fluids to Living Slime
                                {"Amount", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_323","Id","SAND1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            { -- Silicate Powder to Glass
                                {"Amount", 1},
                            },
                        },
                    }
                }
            }
        }
    }
}