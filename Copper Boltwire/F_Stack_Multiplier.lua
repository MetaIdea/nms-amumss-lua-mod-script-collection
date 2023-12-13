
--[[ Summery Description:
Increases Nearly every items stack size by 10 times. MORE then enough.
For instance, Salvage Data Devices stack to 150 instead of the annoying 15.
Soooo lovely!
]]--

--STACK = 1 --can be a number (like 5) (will be converted to a string) or a string (like "5") of the right type if appropriate as a replacement
--STACK_MULTIPLIER = STACK * 10 --a script user operation on the variable value prior to it being replacment inside NMS_MOD_DEFINITION_CONTAINER by the tool

--This has taken over the two above. Anything that can have 2 or more in a stack should now get upgraded to be able to stack to:
Stack_Sizze1 = 99990
Stack_Sizze2 = 100 -- Please do not alter this one...

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "F_Stack_Multiplier.pak",   -- for adaptive modname use: "StackMultiplierX" .. STACK_MULTIPLIER .. ".pak", 
    ["MOD_AUTHOR"]      = "Mjjstral",               -- mod author, only mentioned for documentaion
    ["NMS_VERSION"]     = "4.46",                   -- NMS version on first mod release, only mentioned for documentaion
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "1",
                            ["VALUE_MATCH_OPTIONS"] = ">",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"StackMultiplier", Stack_Sizze1}
                            }
                        },
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"StackMultiplier", Stack_Sizze2}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "1",
                            ["VALUE_MATCH_OPTIONS"] = ">",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"StackMultiplier", Stack_Sizze1}
                            }
                        },
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"StackMultiplier",    Stack_Sizze2}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    =  {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
                                                "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"DefaultSubstanceMaxAmount", Stack_Sizze1},
                                {"SubstanceMaxAmountLimit", Stack_Sizze1},
                                {"ProductMaxAmountLimit", Stack_Sizze1},
                            }
                        }
                    }
                },
            }
        }
    }
}