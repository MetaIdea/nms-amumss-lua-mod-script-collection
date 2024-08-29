----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "AugmentedStarSeed"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "505"
METADATA_MOD_DESC       = "This mod adds the discovery mechanic from Mark of the Denier to Star Seed suit technology and allows players to collect some rewards from it. Modifies NMS_LOC1_ENGLISH language file and files in METADATA\\REALITY\\TABLES."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_LANGUAGE_LOC1 =            "LANGUAGE\\NMS_LOC1_ENGLISH.MBIN"
FILE_METADATA_TECHNOLOGY =      "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
FILE_METADATA_CONSUMABLE =      "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"

--------------------------------------------------
-- new text elements
--------------------------------------------------

TEXT_STARSEED_BUTTON = "ACTIVATE"
TEXT_STARSEED_SUB = "Synthesise special rewards"

TEXT_STARSEED_DESC = 
[[
The smallest of sparks, housed within a containment field of unknown origins.&#xA;&#xA;
The seed glows with life, desperate to escape and fulfill its potential.&#xA;&#xA;
&lt;FUEL&gt;Empower&lt;&gt; the seed as you &lt;TECHNOLOGY&gt;discover&lt;&gt; systems, planets and objects across the universe.
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- langauge file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_LANGUAGE_LOC1,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- change description of Star Seed module, get template for new text entries
                        {   ["SKW"] = {"Id","STARBIRTH_ITEM_DESC",},    ["VCT"] = {{"English",TEXT_STARSEED_DESC},},    },
                        {   ["SKW"] = {"Id","SCAN_NO_TECH",},           ["SEC_SAVE_TO"] = "SEC_TEXT",                   },

                        -- add interaction button label
                        {   ["SEC_EDIT"] = "SEC_TEXT",  ["VCT"] = {{"Id","TEXT_STARSEED_BUTTON",},{"English",TEXT_STARSEED_BUTTON,},},  },
                        {   ["PKW"] = "Table",  ["SEC_ADD_NAMED"] = "SEC_TEXT",                                                         },

                        -- add interaction button subtitle
                        {   ["SEC_EDIT"] = "SEC_TEXT",  ["VCT"] = {{"Id","TEXT_STARSEED_SUB",},{"English",TEXT_STARSEED_SUB,},},    },
                        {   ["PKW"] = "Table",  ["SEC_ADD_NAMED"] = "SEC_TEXT",                                                     },
                    },
                },

                {
                    --------------------------------------------------
                    -- technology table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_TECHNOLOGY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- copy the charging mechanism from Mark of Denier
                            ["SKW"] = {"ID","DENYSUIT","Value","TECHFRAG",},
                            ["SEC_SAVE_TO"] = "SEC_CHARGE",
                        },

                        {
                            -- add the charging mechanism to Star Seed
                            ["SKW"] = {"ID","STARSUIT",},
                            ["PKW"] = "ChargeBy",
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "SEC_CHARGE",
                        },

                        {
                            -- copy the functionality toggle from Mark of Denier
                            ["SKW"] = {"ID","DENYSUIT",},
                            ["PKW"] = "GcStatsBonus.xml",
                            ["SEC_SAVE_TO"] = "SEC_STATS",
                        },

                        {
                            -- add the toggle to Star Seed
                            ["SKW"] = {"ID","STARSUIT",},
                            ["PKW"] = "StatBonuses",
                            ["SEC_ADD_NAMED"] = "SEC_STATS",
                        },

                        {
                            -- change various parameters of Star Seed
                            ["SKW"] = {"ID","STARSUIT",},
                            ["VCT"] = 
                            {
                                -- apply dark background colour
                                {"R",0.101960786,},
                                {"G",0.15294118,},
                                {"B",0.2,},
                                
                                -- enable charging, set charging icon to red
                                {"Chargeable","True",},
                                {"SubstanceCategory","Fuel",},

                                -- no initial charge after crafting
                                {"BuildFullyCharged","False",},
                                {"PrimaryItem","True",},
                            },
                        },

                        {
                            -- change various parameters of Mark of Denier
                            ["SKW"] = {"ID","DENYSUIT",},
                            ["VCT"] = 
                            {
                                -- apply dark background colour
                                {"R",0.101960786,},
                                {"G",0.15294118,},
                                {"B",0.2,},
                                
                                -- set charging icon to purple
                                {"SubstanceCategory","Exotic",},
                            },
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- consumable table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CONSUMABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- copy the template for tech interaction
                            ["SKW"] = {"ID","UT_BUI_SCAN2",},
                            ["SEC_SAVE_TO"] = "SEC_INTER",
                        },

                        {
                            -- edit the template
                            ["SEC_EDIT"] = "SEC_INTER",
                            ["VCT"] = 
                            {
                                {"ID","STARSUIT",},
                                {"RewardID","DE_POI_CRYSTAL",},
                                {"ButtonLocID","TEXT_STARSEED_BUTTON",},
                                {"ButtonSubLocID","TEXT_STARSEED_SUB",},
                                {"AkEvent","ATLAS_CORE_ACTIVATE",},
                                {"RewardFailedLocID","INTRCT_NOROOM_L",},
                                {"RequiresMissionActive","ATLAS_LOOP_STAR",},
                            },
                        },

                        {
                            -- add the modified template
                            ["PKW"] = "Table",
                            ["SEC_ADD_NAMED"] = "SEC_INTER",
                        },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------