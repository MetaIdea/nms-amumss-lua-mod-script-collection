ModName = "BuySentinelMap"
Author = "Jackty89"

DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"

HiveMapId = "CHART_HIVE"

function CreateMapShopEntry(NewId)
    return
    [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..NewId..[[" />
        </Property>
    ]]
end

StarMapShopEntry = CreateMapShopEntry(HiveMapId)

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
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
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "6"},
                                {"MaxItemsForSale", "6"}
                            }
                        },
                        {
                            -- , "AlwaysPresentProducts"
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop"},
                            ["LINE_OFFSET"] = "+1",
                            ["ADD"] = StarMapShopEntry
                        }
                    }
                }
            }
        }
    }
}