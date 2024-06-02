Languages =
{
    ["EN"] = "English",
    ["FR"] = "French",
    ["IT"] = "Italian",
    ["DE"] = "German",
    ["ES"] = "Spanish",
    ["RU"] = "Russian",
    ["PL"] = "Polish",
    ["NL"] = "Dutch",
    ["PT"] = "Portuguese",
    ["LA"] = "LatinAmericanSpanish",
    ["BR"] = "BrazilianPortuguese",
    ["Z1"] = "SimplifiedChinese",
    ["ZH"] = "TraditionalChinese",
    ["Z2"] = "TencentChinese",
    ["KO"] = "Korean",
    ["JA"] = "Japanese",
    ["US"] = "USEnglish"
}

Sustainability_Custom_Language_Strings =
{
    {
        ["ID"] = "REFINERECIPE_29",
        ["New_Description_ID"] = "CL_SUS_RECIPE_LAND1_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "Requested Operation: Ferrite aggregation."},
            {Languages["FR"], "Opération Requise : Agrégation de ferrite."},
            {Languages["RU"], "Запрошенная процедура: выпаривание Дигидрогена."}
        }
    },
    {
        ["ID"] = "REFINERECIPE_31",
        ["New_Description_ID"] = "CL_SUS_RECIPE_LAND3_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "Requested Operation: Demagnetise and Extract Metal"},
            {Languages["FR"], "Opération requise : Démagnétisation et extraction métallique"},
            {Languages["RU"], "Запрашиваемая операция: Размагничивание и извлечение металла"}
        }
    },
    {
        ["ID"] = "REFINERECIPE_61",
        ["New_Description_ID"] = "CL_SUS_RECIPE_PLANT_DUST_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "Requested Operation: Dihydrogen Vaporisation"},
            {Languages["FR"], "Opération Requise : Vaporisation du Dihydrogène"},
            {Languages["RU"], "Запрашиваемая операция: Испарение дигидрогена"}
        }
    },
    {
        ["ID"] = "REFINERECIPE_62",
        ["New_Description_ID"] = "CL_SUS_RECIPE_PLANT_HOT_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "Requested Operation: Sodium electrolysis"},
            {Languages["FR"], "Opération Requise : Électrolyse Florale"},
            {Languages["RU"], "Запрошенная процедура: электролиз Натрия"}
        }
    },
    {
        ["ID"] = "REFINERECIPE_63",
        ["New_Description_ID"] = "CL_SUS_RECIPE_PLANT_LUSH_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "Requested Operation: Floral Deoxygenation"},
            {Languages["FR"], "Opération Requise : Désoxygénation Florale"},
            {Languages["RU"], "Запрошенная процедура: деоксинизация растения"}
        }
    }
}

Custom_Language_Tag = "SusLang"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "Sustainability.pak",
    ["MOD_DESCRIPTION"] = "Allows the collect of dihydrogen, oxygen and sodium in a non-destructive way",
    ["MOD_AUTHOR"] = "Methatronc/Maintained and edited by Jackty89",
    ["ADD_FILES"] = {},
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] =
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..Custom_Language_Tag..[[" />
                                </Property>
                            ]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RecipeType", "RECIPE_LAND1"},
                            ["PRECEDING_KEY_WORDS"] = "Ingredients",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Amount", 2}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RecipeType", "RECIPE_LAND3"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Id", "LAND1"},
                                {"Amount", 4}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RecipeType", "RECIPE_PLANT_DUST"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Id", "LAUNCHSUB"},
                                {"Amount", 5}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RecipeType", "RECIPE_PLANT_HOT"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Id", "CATALYST1"},
                                {"Amount", 5}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RecipeType", "RECIPE_PLANT_LUSH"},
                            ["PRECEDING_KEY_WORDS"] = "Result",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Id", "OXYGEN"},
                                {"Amount", 5}
                            }
                        }
                    }
                }
            }
        }
    }
}

local Changes_To_Recipe_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
-- RecipeType is the description for a recipe (Seriously HG can you stay consistent for once)
function Change_Recipe_Type()
    for i = 1, #Sustainability_Custom_Language_Strings do
        local New_Description_ID = Sustainability_Custom_Language_Strings[i]["New_Description_ID"]
        if not(New_Description_ID == "")
        then
            local Recipe_Id = Sustainability_Custom_Language_Strings[i]["ID"]
            Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"Id", Recipe_Id },
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"RecipeType", New_Description_ID}
                }
            }
        end
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
function New_Languague_File(Description_Entries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkLocalisationTable">
            <Property name="Table">]]
            ..Description_Entries..
            [[
            </Property>
        </Data>
    ]]
end

function New_Language_Entry(Language, NewDescription)
    return [[<Property name="]]..Language..[[" value="]]..NewDescription..[[" />]]
end

function New_Description_Text(newDescId, Language_Entries)
    return
    [[
        <Property value="TkLocalisationEntry.xml">
            <Property name="Id" value="]]..newDescId..[[" />
            ]]..Language_Entries..[[
        </Property>
    ]]
end

function Fill_Custom_Language_File()
    local Description_Entries = {}
    for i = 1, #Sustainability_Custom_Language_Strings do
        local New_Description_ID = Sustainability_Custom_Language_Strings[i]["New_Description_ID"]
        local Language_Entries = {}

        if not(New_Description_ID == "")
        then
            local Languages_Data = Sustainability_Custom_Language_Strings[i]["Languages"]
            for j = 1, #Languages_Data do

                local Language = Languages_Data[j][1]
                local NewDescription = Languages_Data[j][2]
                table.insert(Language_Entries, New_Language_Entry(Language, NewDescription))
            end
            table.insert(Description_Entries, New_Description_Text(New_Description_ID, table.concat(Language_Entries)))
        end
    end
    return New_Languague_File(table.concat(Description_Entries))
end

function Add_Custom_Language_String()
    local Add_Custom_Language_Files = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
    for _Key , Language in pairs(Languages) do
        Add_Custom_Language_Files[#Add_Custom_Language_Files +1] =
        {
            ["FILE_DESTINATION"] = "LANGUAGE/NMS_"..Custom_Language_Tag.."_"..Language..".EXML",
            ["FILE_CONTENT"] = Fill_Custom_Language_File()
        }
    end
end

Change_Recipe_Type()
Add_Custom_Language_String()