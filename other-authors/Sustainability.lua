NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "Sustainability.pak",
["MOD_DESCRIPTION"]         = "Allows the collect of dihydrogen, oxygen and sodium in a non-destructive way",
["MOD_AUTHOR"]              = "Methatronc",
["MODIFICATIONS"]           = 
    {
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.514F1D3.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RECIPE_LAND1"},
                            ["PRECEDING_KEY_WORDS"] = "Ingredients",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Amount", 2},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RECIPE_LAND3"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Id", "LAND1"},
                                {"Amount", 4},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RECIPE_PLANT_DUST"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Id", "LAUNCHSUB"},
                                {"Amount", 5},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RECIPE_PLANT_HOT"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Id", "CATALYST1"},
                                {"Amount", 5},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RECIPE_PLANT_LUSH"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Id", "OXYGEN"},
                                {"Amount", 5},
                            }
                        },
                    }
                },
            },
        },
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.86055253.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_LAND1"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Requested Operation: Ferrite aggregation"},
                            }
                        },                        
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_LAND3"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Requested Operation: Demagnetise and Extract Metal"},
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_DUST"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Requested Operation: Dihydrogen Vaporisation"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_HOT"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Requested Operation: Sodium electrolysis"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_LUSH"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Requested Operation: Floral Deoxygenation"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC4_FRENCH.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_LAND1"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Opération Requise : Agrégation de ferrite"},
                            }
                        },                        
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_LAND3"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Opération requise : Démagnétisation et extraction métallique"},
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_DUST"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Opération Requise : Vaporisation du Dihydrogène"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_HOT"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Opération Requise : Électrolyse Florale"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_LUSH"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Opération Requise : Désoxygénation Florale"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC4_RUSSIAN.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_DUST"},
                            ["PRECEDING_KEY_WORDS"] = "Russian",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Запрошенная процедура: выпаривание Дигидрогена"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_HOT"},
                            ["PRECEDING_KEY_WORDS"] = "Russian",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Запрошенная процедура: электролиз Натрия"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_PLANT_LUSH"},
                            ["PRECEDING_KEY_WORDS"] = "Russian",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Запрошенная процедура: деоксинизация растения"},
                            }
                        },
                    },
                },
            },
        },
    }   
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE