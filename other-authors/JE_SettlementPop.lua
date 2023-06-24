Author = "Jaggid Edje"
ModName = "SettlementPop"
ModNameSub = "JE"
BaseDescription = "Increases population gain from Settlement events"
GameVersion = "4.36"
-- ModVersion = "v4.36"
FileSource1 = "GCSETTLEMENTGLOBALS.MBIN"




NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveWide"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 5}, -- 1
								{"AmountMax", 12} -- 5
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveLarge"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 10}, -- 3
								{"AmountMax", 12}  -- 5
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveMedium"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 8}, -- 2
								{"AmountMax", 9} -- 3
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveSmall"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 5}, -- 1
								{"AmountMax", 5}  -- 1
                            }
                        }
						
                    }
                }
            }
        }
    }
}