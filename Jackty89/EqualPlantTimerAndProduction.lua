ModName = "EqualsPlantTimerAndProduction"
Author = "Jackty89"

CustomLanguageTag = "CuPlant"

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
    ["LA"] = "LatinAmeraicanSpanish", --this is not a typo
    ["BR"] = "BrazilianPortuguese",
    ["Z1"] = "SimplifiedChinese",
    ["ZH"] = "TraditionalChinese",
    ["Z2"] = "TencentChinese",
    ["KO"] = "Korean",
    ["JA"] = "Japanese",
    ["US"] = "USEnglish"
}


PlantList =
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

PlantRewardIds =
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

ProductIds =
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

Time = 3600
HarvestAmount = 50;

Custom_Language_Desccription_Strings =
{
    {
        ["ID"] = "CUI_PLANT",
        ["LANGUAGES"] =
        {
            {
                ["LANGUAGE"] = Languages["EN"],
                ["DESCRIPTION"] = [[A medium-sized, farmable plant that yields an occasional harvest of valuable resrouces.&#xA;&#xA;Suitable for hydroponic indoor planting. Ensure the correct climate before planting outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;]]..Time..[[ seconds&lt;&gt;]]}
        }
    }
}


InputTime =
{
    Time,
    [[
        How long should it take for the plants to grow (in seconds)?
        Default = 3600 | Current = >> ]] .. (Time) .. [[ <<
    ]]
}

Time = GUIF(InputTime, 10)

InputHarvestAmount =
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
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["ADD_FILES"] =
    {
    },
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] =
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..CustomLanguageTag..[[" />
                                </Property>
                            ]]
                        }
                    }
                }
            }
        }
    }
}


local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for j = 1, #ProductIds do
    
    local productId = ProductIds[j]
    
    ChangesToProductTable[#ChangesToProductTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", productId, "Description", "VariableSizeString.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", "CUI_PLANT_DESC"}
        }
    }
end

local ChangesToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
for k = 1, #PlantRewardIds do
    
    local rewardId = PlantRewardIds[k]
    ChangesToRewardTable[#ChangesToRewardTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", rewardId, "List", "GcRewardTableItemList.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"AmountMin", HarvestAmount},
            {"AmountMax", HarvestAmount}
        }
    }

end

----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
function NewLanguagueFile(DescriptionEntries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkLocalisationTable">
            <Property name="Table">]]
            ..DescriptionEntries..
            [[
            </Property>
        </Data>
    ]]
end

function NewLanguageEntry(Language, NewDescription)
    return
    [[
        <Property name="]]..Language..[[" value="VariableSizeString.xml">
            <Property name="Value" value="]]..NewDescription..[[" />
        </Property>
    ]]
end

function NewDescriptionText(newDescId, LanguageEntries)
    return
    [[
        <Property value="TkLocalisationEntry.xml">
            <Property name="Id" value="]]..newDescId..[[" />
            ]]..LanguageEntries..[[
        </Property>
    ]]
end

function FillCustomlangFile()
    local NewProductLangEntries = {}

    for i = 1, #Custom_Language_Desccription_Strings do
        local ProductID = string.upper(Custom_Language_Desccription_Strings[i]["ID"])
        local DescriptionEntries = {}
        local LanguagesData = Custom_Language_Desccription_Strings[i]["LANGUAGES"]

        local DescID = ProductID.."_DESC"
        for j = 1, #LanguagesData do
            local Language = LanguagesData[j]["LANGUAGE"]

            local NewDescription = LanguagesData[j]["DESCRIPTION"]
            table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))
        end

        table.insert(NewProductLangEntries, NewDescriptionText(DescID, table.concat(DescriptionEntries)))

    end
    return NewLanguagueFile(table.concat(NewProductLangEntries))
end

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for _Key , Language in pairs(Languages) do
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"] = "LANGUAGE/NMS_"..CustomLanguageTag.."_"..Language..".EXML",
        ["FILE_CONTENT"] = FillCustomlangFile()
    }
end

----------------------------------------------------------------------------------------------
-------------------------------------     Plant Edits     ------------------------------------
----------------------------------------------------------------------------------------------
local ChangesToPlant = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #PlantList do
    local plantName = PlantList[i]
    local source = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/"..plantName.."/ENTITIES/PLANTINTERACTION.ENTITY.MBIN"

    ChangesToPlant[#ChangesToPlant + 1] =
    {
        ["MBIN_FILE_SOURCE"] = source,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP1_ENTER"},
                ["REPLACE_TYPE"] = "ALL",
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Time", Time},
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP1"},
                ["REPLACE_TYPE"] = "ALL",
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Time", Time}, 
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP2_ENTER"},
                ["REPLACE_TYPE"] = "ALL",
                ["VALUE_CHANGE_TABLE"]=
                {
                    {"Time", Time},
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP2"},
                ["REPLACE_TYPE"] = "ALL",
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Time", Time},
                }
            }
        }
    }
end