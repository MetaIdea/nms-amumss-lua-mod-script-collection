local Languages =
{
    EN = "English",
    FR = "French",
    IT = "Italian",
    DE = "German",
    ES = "Spanish",
    RU = "Russian",
    PL = "Polish",
    NL = "Dutch",
    PT = "Portuguese",
    LA = "LatinAmericanSpanish",
    BR = "BrazilianPortuguese",
    Z1 = "SimplifiedChinese",
    ZH = "TraditionalChinese",
    Z2 = "TencentChinese",
    KO = "Korean",
    JA = "Japanese",
    US = "USEnglish"
}

local Language_Data =
{
    [Languages.EN] =
    {
        CL_SUS_RECIPE_LAND1 =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Ferrite aggregation.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_LAND3 =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Demagnetise and Extract Metal.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_DUST =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Dihydrogen Vaporisation.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_HOT =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Sodium electrolysis.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_LUSH =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Floral Deoxygenation.]],
            SUBTITLE = ''
        },
    },
    [Languages.US] =
    {
        CL_SUS_RECIPE_LAND1 =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Ferrite aggregation.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_LAND3 =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Demagnetise and Extract Metal.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_DUST =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Dihydrogen Vaporisation.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_HOT =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Sodium electrolysis.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_LUSH =
        {
            NAME = '',
            DESCRIPTION = [[Requested Operation: Floral Deoxygenation.]],
            SUBTITLE = ''
        },
    },
    [Languages.FR] =
    {
        CL_SUS_RECIPE_LAND1 =
        {
            NAME = '',
            DESCRIPTION = [[Opération Requise : Agrégation de ferrite.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_LAND3 =
        {
            NAME = '',
            DESCRIPTION = [[Opération requise : Démagnétisation et extraction métallique.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_DUST =
        {
            NAME = '',
            DESCRIPTION = [[Opération Requise : Vaporisation du Dihydrogène.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_HOT =
        {
            NAME = '',
            DESCRIPTION = [[Opération Requise : Électrolyse Florale.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_LUSH =
        {
            NAME = '',
            DESCRIPTION = [[Opération Requise : Désoxygénation Florale.]],
            SUBTITLE = ''
        },
    },
    [Languages.EN] =
    {
        CL_SUS_RECIPE_LAND1 =
        {
            NAME = '',
            DESCRIPTION = [[Запрошенная процедура: выпаривание Дигидрогена.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_LAND3 =
        {
            NAME = '',
            DESCRIPTION = [[Запрашиваемая операция: Размагничивание и извлечение металла.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_DUST =
        {
            NAME = '',
            DESCRIPTION = [[Запрашиваемая операция: Испарение дигидрогена.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_HOT =
        {
            NAME = '',
            DESCRIPTION = [[Запрошенная процедура: электролиз Натрия.]],
            SUBTITLE = ''
        },
        CL_SUS_RECIPE_PLANT_LUSH =
        {
            NAME = '',
            DESCRIPTION = [[Запрошенная процедура: деоксинизация растения.]],
            SUBTITLE = ''
        },
    }
}

local Sustainability_Custom_Language_Strings =
{
    {
        ID = "REFINERECIPE_29",
        New_Description_ID = "CL_SUS_RECIPE_LAND1_DESC",
    },
    {
        ID = "REFINERECIPE_31",
        New_Description_ID = "CL_SUS_RECIPE_LAND3_DESC",
    },
    {
        ID = "REFINERECIPE_61",
        New_Description_ID = "CL_SUS_RECIPE_PLANT_DUST_DESC",
    },
    {
        ID = "REFINERECIPE_62",
        New_Description_ID = "CL_SUS_RECIPE_PLANT_HOT_DESC",
    },
    {
        ID = "REFINERECIPE_63",
        New_Description_ID = "CL_SUS_RECIPE_PLANT_LUSH_DESC",
    }
}

local Custom_Language_Tag = "SUST"
local Recipe_Table_Path = 'METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN'
local English_Path = 'LANGUAGE/NMS_LOC8_ENGLISH.MBIN'

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = "Sustainability",
    MOD_DESCRIPTION = "Allows the collect of dihydrogen, oxygen and sodium in a non-destructive way",
    MOD_AUTHOR = "Methatronc/Maintained and edited by Jackty89",
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    MXML_CHANGE_TABLE =
                    {
                        {
                            PRECEDING_KEY_WORDS = {"LocTableList"},
                            ADD =
                            [[
                                <Property name="LocTableList" value="NMS_]]..Custom_Language_Tag..[[" />
                            ]]
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE = Recipe_Table_Path,
                    MXML_CHANGE_TABLE =
                    {
                        {
                            SPECIAL_KEY_WORDS = {"RecipeType", "RECIPE_LAND1"},
                            PRECEDING_KEY_WORDS = "Ingredients",
                            VALUE_CHANGE_TABLE  =
                            {
                                {"Amount", 2}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"RecipeType", "RECIPE_LAND3"},
                            PRECEDING_KEY_WORDS = "Result",
                            VALUE_CHANGE_TABLE  =
                            {
                                {"Id", "LAND1"},
                                {"Amount", 4}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"RecipeType", "RECIPE_PLANT_DUST"},
                            PRECEDING_KEY_WORDS = "Result",
                            VALUE_CHANGE_TABLE =
                            {
                                {"Id", "LAUNCHSUB"},
                                {"Amount", 5}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"RecipeType", "RECIPE_PLANT_HOT"},
                            PRECEDING_KEY_WORDS = "Result",
                            VALUE_CHANGE_TABLE =
                            {
                                {"Id", "CATALYST1"},
                                {"Amount", 5}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"RecipeType", "RECIPE_PLANT_LUSH"},
                            PRECEDING_KEY_WORDS = "Result",
                            VALUE_CHANGE_TABLE  =
                            {
                                {"Id", "OXYGEN"},
                                {"Amount", 5}
                            }
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE = English_Path,
                    MXML_CHANGE_TABLE = {}
                }
            }
        }
    }
}

local Changes_To_Recipe_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2].MXML_CHANGE_TABLE
local Changes_To_Language = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[3].MXML_CHANGE_TABLE

-- RecipeType is the description for a recipe (Seriously HG can you stay consistent for once)
function Change_Recipe_Type()
    for i = 1, #Sustainability_Custom_Language_Strings do
        local New_Description_ID = Sustainability_Custom_Language_Strings[i].New_Description_ID
        if not(New_Description_ID == "")
        then
            local Recipe_Id = Sustainability_Custom_Language_Strings[i].ID
            Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
            {
                SPECIAL_KEY_WORDS = {"Id", Recipe_Id },
                VALUE_CHANGE_TABLE =
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
local Changes_To_Mbin_Change_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
function Create_Language_Masters()
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        SPECIAL_KEY_WORDS = {'Table', 'TkLocalisationEntry'},
        SEC_SAVE_TO = 'EMPTY_LOCAL_ENTRY_MASTER'
    }
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
        VALUE_CHANGE_TABLE =
        {
            {'English', ''}
        },
    }
end

function New_Empty_Language_File(New_Language_File_Name)
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        MBIN_FILE_SOURCE =
        {
            {'LANGUAGE/NMS_LOC8_ENGLISH.MBIN', New_Language_File_Name}
        }
    }
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        MBIN_FILE_SOURCE= New_Language_File_Name,
        MXML_CHANGE_TABLE =
        {
            {
                PRECEDING_KEY_WORDS = {'Table'},
                REMOVE = 'SECTION'
            }
        }
    }
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        MBIN_FILE_SOURCE = New_Language_File_Name,
        MXML_CHANGE_TABLE =
        {
            {
                LINE_OFFSET = "3",
                -- needs to be " quotes
                -- 2 spaces == 1 tab in MXML
                ADD = [[  <Property name="Table">]]
            },
            {
                LINE_OFFSET = "4",
                ADD = [[  </Property>]]
            }
        }
    }
end

function New_Empty_Langauge_Entries(Language)
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        SEC_EMPTY = Language..'_ENTRIES'
    }
end

function Fill_Custom_Language_File(Language, Language_Values)
    for Language_Base, Language_Texts in pairs(Language_Values) do
        Language_Name_Lc_Id = Language_Base..'_NAME_LC'
        Language_Name_Id = Language_Base..'_NAME'
        Language_Desc_Id = Language_Base..'_DESC'
        Language_Sub_Id = Language_Base..'_SUB'

        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Name_Lc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Name_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Desc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Sub_Id..'_ENTRY'
        }
        --change data inside empty tkloc
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Name_Lc_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Name_Lc_Id},
                {Language, Language_Texts.NAME}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Name_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Name_Id},
                {Language, string.upper(Language_Texts.NAME)}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Desc_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Desc_Id},
                {Language, Language_Texts.DESCRIPTION}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Sub_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Sub_Id},
                {Language, Language_Texts.SUBTITLE}
            }
        }
        -- Add singular entry to entries
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Name_Lc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Name_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Desc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Sub_Id..'_ENTRY'
        }
    end
end

function Add_Custom_Language_String()
    Create_Language_Masters()
    for Language , Language_Values in pairs(Language_Data) do
        New_Language_File_Name = 'LANGUAGE/NMS_'..string.upper(Custom_Language_Tag)..'_'..string.upper(Language)..'.MBIN'
        New_Empty_Language_File(New_Language_File_Name)
        New_Empty_Langauge_Entries(Language)
        Fill_Custom_Language_File(Language, Language_Values)

        Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
        {
            MBIN_FILE_SOURCE = New_Language_File_Name,
            MXML_CHANGE_TABLE =
            {
                {
                    PRECEDING_KEY_WORDS = {'Table'},
                    SEC_ADD_NAMED = Language..'_ENTRIES'
                }
            }
        }
    end
end
Add_Custom_Language_String()

Change_Recipe_Type()