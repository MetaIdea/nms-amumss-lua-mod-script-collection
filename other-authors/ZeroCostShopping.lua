NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "ZeroCostShopping.pak",
    ["MOD_AUTHOR"]      = "SeuNome",
    ["NMS_VERSION"]     = "4.72", -- Versão atual do NMS em 21/03/2025
    ["MOD_DESCRIPTION"] = "Makes all shop items and substances cost 0 units and always available in unlimited quantities.",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                -- Modifica os preços dos produtos para 0
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BaseValue", "0"} -- Define o valor base de todos os produtos como 0
                            }
                        }
                    }
                },
                -- Modifica os preços das substâncias para 0
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BaseValue", "0"} -- Define o valor base de todas as substâncias como 0
                            }
                        }
                    }
                },
                -- Configura as lojas para itens sempre disponíveis
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTRADERSETTINGS.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        -- SpaceStation
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MinAmountOfProductAvailable.Poor", "99999"},
                                {"MinAmountOfProductAvailable.Average", "99999"},
                                {"MinAmountOfProductAvailable.Wealthy", "99999"},
                                {"MinAmountOfProductAvailable.Pirate", "99999"},
                                {"MaxAmountOfProductAvailable.Poor", "99999"},
                                {"MaxAmountOfProductAvailable.Average", "99999"},
                                {"MaxAmountOfProductAvailable.Wealthy", "99999"},
                                {"MaxAmountOfProductAvailable.Pirate", "99999"},
                                {"MinAmountOfSubstanceAvailable.Poor", "99999"},
                                {"MinAmountOfSubstanceAvailable.Average", "99999"},
                                {"MinAmountOfSubstanceAvailable.Wealthy", "99999"},
                                {"MinAmountOfSubstanceAvailable.Pirate", "99999"},
                                {"MaxAmountOfSubstanceAvailable.Poor", "99999"},
                                {"MaxAmountOfSubstanceAvailable.Average", "99999"},
                                {"MaxAmountOfSubstanceAvailable.Wealthy", "99999"},
                                {"MaxAmountOfSubstanceAvailable.Pirate", "99999"}
                            }
                        },
                        -- Adiciona produtos e substâncias específicos à SpaceStation
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData"},
                            ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentProducts"},
                            ["ADD"] = [[
                                <Property value="NMSString0x10.xml">
                                    <Property name="Value" value="TRA_COMMODITY1" />
                                </Property>
                                <Property value="NMSString0x10.xml">
                                    <Property name="Value" value="U_HYPER1" />
                                </Property>
                                <!-- Adicione mais produtos conforme desejado -->
                            ]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData"},
                            ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentSubstances"},
                            ["ADD"] = [[
                                <Property value="NMSString0x10.xml">
                                    <Property name="Value" value="FUEL1" />
                                </Property>
                                <Property value="NMSString0x10.xml">
                                    <Property name="Value" value="OXYGEN" />
                                </Property>
                                <!-- Adicione mais substâncias conforme desejado -->
                            ]]
                        }
                        -- Repita para outras lojas (Shop, ShipTechSpecialist, etc.) se desejar
                    }
                }
            }
        }
    }
}