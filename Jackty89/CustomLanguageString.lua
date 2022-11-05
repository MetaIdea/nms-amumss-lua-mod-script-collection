ModName = "CustomLanguageString"
Author = "jackty89" --IE GameMaster-BE on the discord
Description = "This mod allows you to add new custom languages strings to any product/substance"

CustomLanguageTag = "CustomStrings"
SubstanceOrProduct = { ["Substance"] = "Substance", ["Product"] =  "Product"}

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

-- Product Id's can be found really easy with ModdingStation (see nexus)
-- Product ID, customDescriptionID, Language, languagefile location, custom description
--ChangeDescIDandDescriptionForProductsArray Structure
-- {
--     {
--         ItemID,
--      SubstanceOrProduct["Product"],
--         LanguageArray
--         {
                               --CustomName, CustomSubtitle, Customdescript  leave empty if you don't want to edit them, the first entry will decide which string will be changed
--             {Language[language], CustomName, CustomSubtitle, Customdescript},
--             {Language[language], CustomName, CustomSubtitle, Customdescript},
--             ...
--         }
--     },...
-- }
--End Strcture
ChangeDescIDandDescriptionForProductsArray =
{
    {
        ["ItemID"]       = "CASING",
        ["ItemType"]     = SubstanceOrProduct["Product"],
        ["LanguageData"] =
        {
            {Languages["EN"], "", "", "Weeeeeeeeeeeee custom text"},
            {Languages["FR"], "", "",  "C'est une text en francais"}
        }
    },
    {
        ["ItemID"]       = "CATALYST1",
        ["ItemType"]     = SubstanceOrProduct["Substance"],
        ["LanguageData"] =
        {
            {Languages["EN"], "Cream", "some cream sub", "Bone cream... BONE cream... What bone, from where, so many questions such few awnsers and how do you even 'creamefy' bones. Yet another question with no awnser."},
            {Languages["IT"], "italian cream", "italian cream sub", "ITALIAN Bone cream... BONE cream... What bone, from where, so many questions such few awnsers and how do you even 'creamefy' bones. Yet another question with no awnser."},
            {Languages["US"], "Cream", "\'merica", "some desription in said language"}
        }
    }
}

---------------------------------------------------------------------------------
----------START OF CODE MAGIC, NO NEED TO DO ANYTHING ANYMORE--------------------
---------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_DESCRIPTION"] = Description,
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
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

--language file creation
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
    for i = 1, #ChangeDescIDandDescriptionForProductsArray do
        local ProductID = string.upper(ChangeDescIDandDescriptionForProductsArray[i]["ItemID"])
        local DescriptionEntries = {}
        local SubtitleEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}

        local Languages = ChangeDescIDandDescriptionForProductsArray[i]["LanguageData"]

        local NameID = ProductID.."_NAME"
        local NameLCID = ProductID.."_NAME_L"
        local SubID = ProductID.."_SUB"
        local DescID = ProductID.."_DESC"

        local NameLC = ""
        local Name = ""
        local NewSubTitle = ""
        local NewDescription = ""

        for j = 1, #Languages do
            local Language = Languages[j][1]

            NameLC = Languages[j][2]
            Name = string.upper(NameLC)
            NewSubTitle = Languages[j][3]
            NewDescription = Languages[j][4]

            if NameLC ~= "" then
                table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))
                table.insert(NameEntries, NewLanguageEntry(Language, Name))
            end

            if NewSubTitle ~= "" then
                table.insert(SubtitleEntries, NewLanguageEntry(Language, NewSubTitle))

            end

            if NewDescription ~= "" then
                table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))
            end
        end

        if NameLC ~= "" then
            table.insert(NewProductLangEntries, NewDescriptionText(NameLCID, table.concat(NameLCEntries)))
            table.insert(NewProductLangEntries, NewDescriptionText(NameID, table.concat(NameEntries)))
        end

        if NewSubTitle ~= "" then
            table.insert(NewProductLangEntries, NewDescriptionText(SubID, table.concat(SubtitleEntries)))

        end

        if NewDescription ~= "" then
            table.insert(NewProductLangEntries, NewDescriptionText(DescID, table.concat(DescriptionEntries)))
        end
    end
    return NewLanguagueFile(table.concat(NewProductLangEntries))
end

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for _, Language in pairs(Languages) do
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"]     =    "LANGUAGE/NMS_"..CustomLanguageTag.."_"..Language..".EXML",
        ["FILE_CONTENT"]         =    FillCustomlangFile()
    }
end

local ActiveEditTable = {}
for i = 1, #ChangeDescIDandDescriptionForProductsArray do
    local ItemID = ChangeDescIDandDescriptionForProductsArray[i]["ItemID"]
    local ItemType = ChangeDescIDandDescriptionForProductsArray[i]["ItemType"]
    local LanguageData = ChangeDescIDandDescriptionForProductsArray[i]["LanguageData"]

    local LanguageName = LanguageData[1][2]
    local LanguageSubtitle = LanguageData[1][3]
    local LanguageDescription = LanguageData[1][4]

    local id = ""

    if(ItemType == SubstanceOrProduct["Product"])
    then
        id = "Id"
        ActiveEditTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
    else
        id = "ID"
        ActiveEditTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
    end

    if LanguageDescription ~= "" then
        ActiveEditTable[#ActiveEditTable + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {id, ItemID },
            ["PRECEDING_KEY_WORDS"] = {"Subtitle", "Description"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Value", LanguageDescription}
            }
        }
    end
    if LanguageName ~= "" then
        ActiveEditTable[#ActiveEditTable + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {id, ItemID },
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Name", string.upper(LanguageName)},
                {"NameLower", LanguageName}
            }
        }
    end

    if LanguageSubtitle ~= "" then
        ActiveEditTable[#ActiveEditTable + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {id, ItemID },
            ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Value", LanguageSubtitle}
            }
        }
    end
end