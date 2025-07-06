local ModName = "EqualsPlantTimerAndProduction"
local Author = "Jackty89"
local English_Path = 'LANGUAGE/NMS_LOC8_ENGLISH.MBIN'
-- local CustomLanguageTag = "CuPlant"

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
    LA = "LatinAmeraicanSpanish", --this is not a typo
    BR = "BrazilianPortuguese",
    Z1 = "SimplifiedChinese",
    ZH = "TraditionalChinese",
    Z2 = "TencentChinese",
    KO = "Korean",
    JA = "Japanese",
    US = "USEnglish"
}


local PlantList =
{
    "FARMALBUMEN",
    "FARMBARREN",
    "FARMDEADCREATURE",
    "FARMGRAVITINO",
    "FARMLUSH",
    "FARMNIP",
    "FARMPOOP",
    "FARMRADIOACTIVE",
    "FARMSCORCHED",
    "FARMSNOW",
    "FARMTOXIC",
    "FARMVENOMSAC"
}

local PlantRewardIds =
{
    "PLANT_BARREN",
    "PLANT_LUSH",
    "PLANT_CREATURE",
    "PLANT_POOP",
    "PLANT_RADIO",
    "PLANT_SCORCHED",
    "PLANT_SNOW",
    "PLANT_TOXIC",
}

local ProductIds =
{
    "PEARLPLANT",
    "BARRENPLANT",
    "CREATUREPLANT",
    "GRAVPLANT",
    "LUSHPLANT",
    "NIPPLANT",
    "POOPPLANT",
    "RADIOPLANT",
    "SCORCHEDPLANT",
    "SNOWPLANT",
    "TOXICPLANT",
    "SACVENOMPLANT"
}

local Time = 3600
local HarvestAmount = 50;

local Language_Data =
{
    [Languages.EN] =
    {
        CUI_PLANT =
        {
            NAME = '',
            DESCRIPTION = [[A medium-sized, farmable plant that yields an occasional harvest of valuable resources.&#xA;&#xA;Suitable for hydroponic indoor planting. Ensure the correct climate before planting outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;]]..Time..[[ seconds&lt;&gt;]],
            SUBTITLE = ''
        }
    }
}


local InputTime =
{
    Time,
    [[
        How long should it take for the plants to grow (in seconds)?
        Default = 3600 | Current = >> ]] .. (Time) .. [[ <<
    ]]
}

Time = GUIF(InputTime, 10)

local InputHarvestAmount =
{
    HarvestAmount,
    [[
        How much should plants yield?
        Default = 50 | Current = >> ]] .. (HarvestAmount) .. [[ <<
    ]]
}

HarvestAmount = GUIF(InputHarvestAmount, 10)

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModName,
    MOD_DESCRIPTION = ModName,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
                    MXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    MXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = English_Path,
                    MXML_CHANGE_TABLE = {}
                }
            }
        }
    }
}


local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].MXML_CHANGE_TABLE

for j = 1, #ProductIds do
    
    local productId = ProductIds[j]
    
    ChangesToProductTable[#ChangesToProductTable +1] =
    {
        SPECIAL_KEY_WORDS = {"ID", productId},
        VALUE_CHANGE_TABLE =
        {
            {"Description", "CUI_PLANT_DESC"}
        }
    }
end

local ChangesToRewardTable = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2].MXML_CHANGE_TABLE
for k = 1, #PlantRewardIds do
    local rewardId = PlantRewardIds[k]
    ChangesToRewardTable[#ChangesToRewardTable +1] =
    {
        SPECIAL_KEY_WORDS = {"Id", rewardId, "List", "GcRewardTableItemList"},
        VALUE_CHANGE_TABLE =
        {
            {"AmountMin", HarvestAmount},
            {"AmountMax", HarvestAmount}
        }
    }

end

----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
local Changes_To_Mbin_Change_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
local Changes_To_Language = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[3].MXML_CHANGE_TABLE

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
        local Langauge_file = "LANGUAGE/NMS_LOC8_"..string.upper(Language)..".MBIN"
        New_Empty_Langauge_Entries(Language)
        Fill_Custom_Language_File(Language, Language_Values)

        Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
        {
            MBIN_FILE_SOURCE = Langauge_file,
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
----------------------------------------------------------------------------------------------
-------------------------------------     Plant Edits     ------------------------------------
----------------------------------------------------------------------------------------------
local ChangesToPlant = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
function Plant_Edits()
    for i = 1, #PlantList do
        local plantName = PlantList[i]
        local source = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/"..plantName.."/ENTITIES/PLANTINTERACTION.ENTITY.MBIN"

        ChangesToPlant[#ChangesToPlant + 1] =
        {
            MBIN_FILE_SOURCE = source,
            MXML_CHANGE_TABLE =
            {
                {
                    SPECIAL_KEY_WORDS = {"TriggerAction","STEP1_ENTER"},
                    REPLACE_TYPE = "ALL",
                    VALUE_CHANGE_TABLE =
                    {
                        {"Time", Time},
                    }
                },
                {
                    SPECIAL_KEY_WORDS = {"TriggerAction","STEP1"},
                    REPLACE_TYPE = "ALL",
                    VALUE_CHANGE_TABLE =
                    {
                        {"Time", Time},
                    }
                },
                {
                    SPECIAL_KEY_WORDS = {"TriggerAction","STEP2_ENTER"},
                    REPLACE_TYPE = "ALL",
                    VALUE_CHANGE_TABLE=
                    {
                        {"Time", Time},
                    }
                },
                {
                    SPECIAL_KEY_WORDS = {"TriggerAction","STEP2"},
                    REPLACE_TYPE = "ALL",
                    VALUE_CHANGE_TABLE =
                    {
                        {"Time", Time},
                    }
                }
            }
        }
    end
end

Plant_Edits()
Add_Custom_Language_String()
