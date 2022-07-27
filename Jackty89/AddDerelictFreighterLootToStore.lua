ModName = "AddDerelictFreighterLootToStore"
Author = "Jackty89"

DefaultRealityPath = "METADATA\\REALITY\\DEFAULTREALITY.MBIN"

ListOfIds =
{
    "MEDTUBE",
    "HEATER",
    "FOORLIGHT",
    "PLANTTUBE",
    "LOCKER2",
    "ABAND_SHELF",
    "ABAND_CRATE_M",
    "ABAND_CRATE_L",
    "ABAND_CRATE_XL",
    "ABAND_CASE",
    "FOOTLOCKER",
    "ABAND_BENCH",
    "PALLET",
    "ABAND_BARREL"
}

function CreateMapShopEntry(NewId)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..NewId..[[" />
        </Property>
    ]]
end

StarMapShopEntry = ""

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName .. ".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = DefaultRealityPath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Scrap"},
                            ["MATH_OPERATION"] = "+",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", #ListOfIds},
                                {"MaxItemsForSale", #ListOfIds}
                            }
                        }
                    }
                }
            }
        }
    }
}

local ChangesToDefaultReality =
    NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ListOfIds do
    StarMapShopEntry = StarMapShopEntry .. CreateMapShopEntry(ListOfIds[i])
    ChangesToDefaultReality[#ChangesToDefaultReality + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Value", ListOfIds[i]},
        ["REMOVE"] = "SECTION"
    }
    if i == #ListOfIds then
        ChangesToDefaultReality[#ChangesToDefaultReality + 1] =
        {
            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Scrap", "AlwaysPresentProducts"},
            ["ADD"] = StarMapShopEntry
        }
    end
end
