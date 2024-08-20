-- This plugin needs to be used together with the mod ontology to take effect, and you can also merge them directly.
-- If you also want other all custom parts, you can merge "Add Ship Custom Parts To Space Station Shop"(https://www.nexusmods.com/nomanssky/mods/3009)

local ShipPartID = {
    "DROPS_WINGCDD"
}

local function CreateShopID(NewID)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]] .. NewID .. [[" />
        </Property>
    ]]
end

local ADDShipPartID = {}
for i=1,#ShipPartID do
    ADDShipPartID[#ADDShipPartID + 1] = CreateShopID(ShipPartID[i])
end

local ADDShipPartID = table.concat(ADDShipPartID,"\n")

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_FixHaulerCustomPart_ShopPlugin.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.05",
    ["MOD_DESCRIPTION"] = "Add fixed Hauler custom parts to space station shop.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
                            ["ADD"] = ADDShipPartID
                        },
                    }
                },
            },
        },
    }
}