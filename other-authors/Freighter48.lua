-- Taking a page out of Gumsk's book here.  Eventually I want to make this more robust and programatic, but it looks
-- like I have to go entry by entry to avoid going back to undo changes. That normally wouldn't be too bad (and would)
-- result in a shorter script, but I'm trying to modularize these particular scripts so we can mix and match the effects

local AuthorName = "Bladehawke"
local ModName = "bFreighter48"
local GameVersion = "3.53"
local ModVersion = "a"
local ModDesc = "Makes Freighters spawn with 48 inventory/tech slots"
local ModBatch = "bInventoryTweaks"
local BatchVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = ModName .. " " .. GameVersion .. ModVersion .. ".pak",
--	["MOD_BATCHNAME"] = ModBatch .. " " .. GameVersion .. BatchVersion .. ".pak",
    ["MOD_DESCRIPTION"] = ModDesc,
    ["MOD_AUTHOR"] = AuthorName,
    ["NMS_VERSION"] = GameVersion,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FreighterSmall"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSlots", "48"},
                                {"MaxSlots", "48"},
                                {"MinExtraTech", "48"},
                                {"MaxExtraTech", "48"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FreighterMedium"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSlots", "48"},
                                {"MaxSlots", "48"},
                                {"MinExtraTech", "48"},
                                {"MaxExtraTech", "48"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FreighterLarge"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSlots", "48"},
                                {"MaxSlots", "48"},
                                {"MinExtraTech", "48"},
                                {"MaxExtraTech", "48"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_SMALL"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSize", "48"},
                                {"MaxSize", "48"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_MEDIUM"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSize", "48"},
                                {"MaxSize", "48"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_LARGE"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSize", "48"},
                                {"MaxSize", "48"}
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
