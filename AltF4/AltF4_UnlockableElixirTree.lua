local ELIXIR = [[
                <Property name="Trees" value="GcUnlockableItemTree">
                    <Property name="Title" value="Elixir" />
                    <Property name="CostTypeID" value="NANITES" />
                    <Property name="Root" value="GcUnlockableItemTreeNode">
                        <Property name="Unlockable" value="PORTAL_JUICE" />
                        <Property name="Children">
                            <Property name="Children" value="GcUnlockableItemTreeNode">
                                <Property name="Unlockable" value="BOSS_JUICE" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_UnlockableElixirTree",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.51",
    ["MOD_DESCRIPTION"] = "Add Elixir to Synthesis Laboratory unlockable item tree.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CraftProducts","Trees"},
                            ["ADD"] = ELIXIR,
                        },
                    }
                },
            },
        },
-- Edit the value of "RecipeCost" to change the unlocking cost.
--[[
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                              {"ID","PORTAL_JUICE"},
                              {"ID","BOSS_JUICE"},
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                              {"RecipeCost","4"},
                            }
                        },
                    }
                },
            },
        },
]]
    }
}