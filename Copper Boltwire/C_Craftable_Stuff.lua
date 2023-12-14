
--[[ Summery Description:

Allows you to make the following in your inventory:
            Cost                Result
4x CHROMATIC METAL + 1x CARBON NANOTUBES = Salvaged Data
4x CHROMATIC METAL + 1x CARBON NANOTUBES = Cargo Bulkhead
4x CHROMATIC METAL + 1x CARBON NANOTUBES = Navigation Data
4x CHROMATIC METAL + 1x CARBON NANOTUBES = Storage Augmentation
4x CHROMATIC METAL + 1x CARBON NANOTUBES = Drop Pod Coordinate Data
4x CHROMATIC METAL + 1x CARBON NANOTUBES = Multi-Tool Expansion Slot
4x CHROMATIC METAL + 1x CARBON NANOTUBES = Exosuit Inventory Extension module

    "This is cheaty! - So? This is Bountiful Easy Mode mod..."
]]--

CraftyAdd1 =
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="STELLAR2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="4" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="NANOTUBES" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
]]

SALVAGED_DATA1 =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="BP_SALVAGE" />
      </Property>
]]
NAVIGATION_DATA1 =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="NAV_DATA" />
      </Property>
]]
EXOSUIT_BACKPACK2 =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="SUIT_INV_TOKEN" />
      </Property>
]]
DROP_POD_COORDINATE_DATA1 =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="NAV_DATA_DROP" />
      </Property>
]]
CARGO_BULKHEAD1 =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="FREI_INV_TOKEN" />
      </Property>
]]
MULTITOOL_EXPANSION_SLOT1 =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="WEAP_INV_TOKEN" />
      </Property>
]]
STORAGE_AUGMENTATION1 =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="SHIP_INV_TOKEN" />
      </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "C_Craftable_Stuff.pak",
    ["MOD_AUTHOR"]      = "Makto", -- Copper Boltwire had the idea, Makto made it real. "Thank you Makto!!!"
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","BP_SALVAGE"}, --SALVAGED DATA -- I hate running around trying to find these blasted things...
                            ["REPLACE_TYPE"]        = "RAW",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { [[<Property name="Requirements" />]], CraftyAdd1 }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","BP_SALVAGE"}, --SALVAGED DATA
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","NAV_DATA"}, --NAVIGATION DATA -- You should know what these devices do already...
                            ["REPLACE_TYPE"]        = "RAW",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { [[<Property name="Requirements" />]], CraftyAdd1 }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","NAV_DATA"}, --NAVIGATION DATA
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","NAV_DATA_DROP"}, --DROP POD COORDINATE DATA -- In case above turns out to be a bust, this allows you to located drop pods so you can easily expand inventory slots.
                            ["REPLACE_TYPE"]        = "RAW",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { [[<Property name="Requirements" />]], CraftyAdd1 }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","NAV_DATA_DROP"}, --DROP POD COORDINATE DATA
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","FREI_INV_TOKEN"}, --CARGO BULKHEAD -- Used to unlock Freighter's Inventory slots...
                            ["REPLACE_TYPE"]        = "RAW",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { [[<Property name="Requirements" />]], CraftyAdd1 }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","FREI_INV_TOKEN"}, --CARGO BULKHEAD
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","WEAP_INV_TOKEN"}, --MULTI-TOOL EXPANSION SLOT -- Name gives it away, no?
                            ["REPLACE_TYPE"]        = "RAW",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { [[<Property name="Requirements" />]], CraftyAdd1 }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","WEAP_INV_TOKEN"}, --MULTI-TOOL EXPANSION SLOT
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","SHIP_INV_TOKEN"}, --STORAGE AUGMENTATION -- Before this addition, i have only ever found ONE of these devices... Allows you to unlock ships storage slots free at space stations...
                            ["REPLACE_TYPE"]        = "RAW",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { [[<Property name="Requirements" />]], CraftyAdd1 }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","SHIP_INV_TOKEN"}, --STORAGE AUGMENTATION
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","SUIT_INV_TOKEN"}, --Suit Storage 2 -- Before this addition, i have only ever found ONE of these devices... Allows you to unlock ships storage slots free at space stations...
                            ["REPLACE_TYPE"]        = "RAW",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { [[<Property name="Requirements" />]], CraftyAdd1 }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","SUIT_INV_TOKEN"}, --Suit Storage 2
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"IsCraftable","True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
                            ["ADD"] = SALVAGED_DATA1,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
                            ["ADD"] = NAVIGATION_DATA1,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
                            ["ADD"] = DROP_POD_COORDINATE_DATA1,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
                            ["ADD"] = CARGO_BULKHEAD1,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
                            ["ADD"] = MULTITOOL_EXPANSION_SLOT1,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
                            ["ADD"] = STORAGE_AUGMENTATION1,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
                            ["ADD"] = EXOSUIT_BACKPACK2,
                        },
                    }
                }
            }
        },
    }
}
--[[ Notes for this file

https://docs.google.com/spreadsheets/d/1J8WdrubKgo8A9hPY-hbQLq4eVrb3n3lZAgiI2J7ncAU/edit#gid=66931870

            CARBON NANOTUBES    NANOTUBES

SALVAGED DATA                   BP_SALVAGE
NAVIGATION DATA                 NAV_DATA
EXOSUIT BACKPACK                NEW_BACKPACK
DROP POD COORDINATE DATA        NAV_DATA_DROP
CARGO BULKHEAD                  FREI_INV_TOKEN
EMERGENCY BROADCAST RECEIVER    ABAND_LOCATOR
MULTI-TOOL EXPANSION SLOT       WEAP_INV_TOKEN
STORAGE AUGMENTATION            SHIP_INV_TOKEN
]]--


