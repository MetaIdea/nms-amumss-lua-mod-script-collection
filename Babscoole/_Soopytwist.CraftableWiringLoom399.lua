NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Soopytwist.CraftableWiringLoom399.pak",
["MOD_AUTHOR"]      = "Soopytwist",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.99",
["MOD_DESCRIPTION"] = "Adds an unlockable Wiring Loom blueprint which can then be crafted like any other product",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TECH_COMP"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsCraftable", "True"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TECH_COMP"},
                            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
                            ["SECTION_ACTIVE"] = {1},
                            ["ADD"] =
[[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="COMPUTER" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD6" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_YELLOW" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TECH_COMP"},
                            ["SECTION_ACTIVE"] = {1},
                            ["REPLACE_TYPE"] = "RAW",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    [[      <Property name="Requirements" />]],
                                    [[      <Property name="Requirements">]]
                                },
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "COMPUTER"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "COMPUTER"},
                            ["ADD"] =
[[
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="TECH_COMP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
]]
                        },
                    }
                }
            }
        }
    }
}