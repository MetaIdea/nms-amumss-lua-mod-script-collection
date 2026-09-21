NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_PM_PricesTradeShip.pak",
["MOD_AUTHOR"]    = "Phantom",
["LUA_AUTHOR"]    = "Phantom",
["NMS_VERSION"]   = "7.3",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Freighter","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "8.750000"} --70.000000
							}
						},
						{
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Dropship","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "14.000000"} --70.000000 | cargo
							}
						},
                        {
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Fighter","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "8.750000"} --70.000000
							}
						},
						{
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Scientific","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "38.750000"} --70.000000  |  exp ship
							}
						},
                        {
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "10.000000"} --70.000000 | челнок
							}
						},
						{
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"PlayerFreighter","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "8.750000"} --70.000000
							}
						},
                        {
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Royal","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "8.750000"} --70.000000
							}
						},
						{
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Alien","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "8.750000"} --70.000000
							}
						},
                        {
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Sail","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "10.000000"} --70.000000 | sunny
							}
						},
						{
						    ["PRECEDING_FIRST"] = "TRUE",
						    ["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
                            ["SPECIAL_KEY_WORDS"] = {"Robot","GcInventoryCostDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TradeInMultiplier", "8.750000"} --70.000000
							}
						},						
                    }
                },
            }
        }
    }
}