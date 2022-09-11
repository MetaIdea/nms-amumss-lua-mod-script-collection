ModName         =   "CraftableWiringLoom"
ModAuthor       =   "Soopytwist"
LuaAuthor       =   "Hypn0tick"
BaseDescription =   "Adds an unlockable Wiring Loom blueprint which can then be crafted like any other product."
GameVersion     =   "3.99"

WLoomIngredient1            =   "MICROCHIP" -- COMPUTER = Quantum Computer
WLoomIngredient1Quantity    =   "5"
WLoomIngredient2            =   "FARMPROD6" -- FARMPROD6 = Unstable Gel
WLoomIngredient2Quantity    =   "1"
WLoomIngredient3            =   "EX_YELLOW" -- EX_YELLOW = Activated Copper
WLoomIngredient3Quantity    =   "50"


UNLOCKABLEITEMTREES_TEXT    =   [[
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="TECH_COMP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
]]

GCPRODUCTTABLE_TEXT =   [[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="COMPUTER" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD6" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="EX_YELLOW" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
      </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]        = "_"..ModAuthor.."."..ModName.."-"..GameVersion..".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"]          = ModAuthor,
    ["LUA_AUTHOR"]          = LuaAuthor,
    ["NMS_VERSION"]         = GameVersion,
    ["MODIFICATIONS"]       = {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"]   = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable","COMPUTER"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["VALUE_CHANGE_TABLE"]  = {
                                {"IGNORE",  "IGNORE"},
                            },
                            ["REMOVE"]  =   "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable",  "COMPUTER"},
                            --["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["VALUE_CHANGE_TABLE"]  = {
                                {"IGNORE",  "IGNORE"},
                            },
                            ["ADD"] =   UNLOCKABLEITEMTREES_TEXT,
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",    "UI_TECHMOD_NAME"},
                            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
                            ["ADD"] =   GCPRODUCTTABLE_TEXT,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",    "UI_TECHMOD_NAME"},
                            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
                            ["LINE_OFFSET"] =   "-1",
                            ["REMOVE"]  =   "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",    "UI_TECHMOD_NAME"},
                            ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"ID",  WLoomIngredient1},
                                {"Amount",  WLoomIngredient1Quantity},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",    "UI_TECHMOD_NAME"},
                            ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"ID",  WLoomIngredient2},
                                {"Amount",  WLoomIngredient2Quantity},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",    "UI_TECHMOD_NAME"},
                            ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
                            ["SECTION_ACTIVE"]  =   3,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"ID",  WLoomIngredient3},
                                {"Amount",  WLoomIngredient3Quantity},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",    "UI_TECHMOD_NAME"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable", "True"},
                            },
                        },
                    }
                },
            }
        }
    }   
}
