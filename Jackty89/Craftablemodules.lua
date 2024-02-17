UNLOCK =
[[
    <Property value="GcUnlockableItemTreeNode.xml">
        <Property name="Unlockable" value="REPAIRKIT" />
        <Property name="Children">

            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="NAV_DATA" />
                <Property name="Children">
                    <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BP_SALVAGE" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="FACT_TOKEN" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>

            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WEAP_INV_TOKEN" />
                <Property name="Children">
                    <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUIT_INV_TOKEN" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="FRIG_TOKEN" />
                                <Property name="Children" />
                            </Property>
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="SHIP_INV_TOKEN" />
                                <Property name="Children" />
                            </Property>
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="FREI_INV_TOKEN" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>

        </Property>
    </Property>
]]

Types =
{
    ["PRODUCT"] = "Product",
    ["SUBSTANCE"] = "Substance"
}

NewRequirementsArray =
{
    {
        ["PRODUCTID"] = "BP_SALVAGE",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "COMPUTER" , ["REQUIREDAMOUNT"] = "16", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "250", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "NAV_DATA" , ["REQUIREDAMOUNT"] = "5", ["REQUIREDTYPE"] = Types["PRODUCT"]}
        }
    },
    {
        ["PRODUCTID"] = "NAV_DATA",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "COMPUTER" , ["REQUIREDAMOUNT"] = "10", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "250", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "HYPERFUEL1" , ["REQUIREDAMOUNT"] = "5", ["REQUIREDTYPE"] = Types["PRODUCT"]}
        }
    },
    {
        ["PRODUCTID"] = "FREI_INV_TOKEN",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "FARMPROD9" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "150", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "ASTEROID3" , ["REQUIREDAMOUNT"] = "250", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        }
    },
    {
        ["PRODUCTID"] = "SHIP_INV_TOKEN",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "FARMPROD9" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "150", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "ASTEROID2" , ["REQUIREDAMOUNT"] = "250", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        }
    },
    {
        ["PRODUCTID"] = "FRIG_TOKEN",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "FARMPROD9" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "150", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "ASTEROID1" , ["REQUIREDAMOUNT"] = "250", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        }
    },
    {
        ["PRODUCTID"] = "REPAIRKIT",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "MICROCHIP" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "100", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "FUEL2" , ["REQUIREDAMOUNT"] = "500", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        }
    },
    {
        ["PRODUCTID"] = "WEAP_INV_TOKEN",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "COMPUTER" , ["REQUIREDAMOUNT"] = "15", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "150", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "CATALYST2" , ["REQUIREDAMOUNT"] = "150", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        }
    },
    {
        ["PRODUCTID"] = "SUIT_INV_TOKEN",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "FARMPROD9" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "150", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "CAVE2" , ["REQUIREDAMOUNT"] = "250", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        }
    },
    {
        ["PRODUCTID"] = "FACT_TOKEN",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "COMPUTER" , ["REQUIREDAMOUNT"] = "15", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "AF_METAL" , ["REQUIREDAMOUNT"] = "150", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "SPIDER_PROD" , ["REQUIREDAMOUNT"] = "5", ["REQUIREDTYPE"] = Types["PRODUCT"]}
        }
    }
}

----------------------------------------------------------------------------------------------
-------------------------------  Customlanguage file data/val  -------------------------------
-----------------------  This should increase lua compile performance  -----------------------
----------------------------------------------------------------------------------------------
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
CraftableModulesLanguageString =
{
    {
        ["ID"] = "FRIG_TOKEN",
        ["NewDescriptionID"] = "CUI_FRIG_TOKEN_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a large interstellar starship. May be collected from &lt;STELLAR&gt;freighter crashsites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Useless in its current form, a &lt;TECHNOLOGY&gt;Research Station&lt;&gt; aboard your freighter may be able to convert it into useable technology."},
            {Languages["US"], "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a large interstellar starship. May be collected from &lt;STELLAR&gt;freighter crashsites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Useless in its current form, a &lt;TECHNOLOGY&gt;Research Station&lt;&gt; aboard your freighter may be able to convert it into useable technology."},
            {Languages["FR"], "Module technologique récupéré sur les vestiges d'un gros vaisseau interstellaire. Peut être obtenu sur les &lt;STELLAR&gt;sites de crash de cargos&lt;&gt; ou au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;Bien qu'inutile sous sa forme actuelle, une &lt;TECHNOLOGY&gt;station de recherches&lt;&gt; à bord de votre cargo pourrait la convertir en technologie utilisable."}
        }
    },
    {
        ["ID"] = "SHIP_INV_TOKEN",
        ["NewDescriptionID"] = "CUI_SHIP_INV_TOKEN_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a &lt;STELLAR&gt;salvaged starship&lt;&gt;. May also be collected from &lt;STELLAR&gt;freighter crash sites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Can be used to expand starship storage capacity at the Space Station's &lt;TECHNOLOGY&gt;Starship Outfitter&lt;&gt;."},
            {Languages["US"], "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a &lt;STELLAR&gt;salvaged starship&lt;&gt;. May also be collected from &lt;STELLAR&gt;freighter crash sites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Can be used to expand starship storage capacity at the Space Station's &lt;TECHNOLOGY&gt;Starship Outfitter&lt;&gt;."},
            {Languages["FR"], "Module technologique récolté dans les vestiges d'un &lt;STELLAR&gt;vaisseau récupéré&lt;&gt;. Peut être obtenu sur les &lt;STELLAR&gt;sites de crash de cargos&lt;&gt; ou au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;&#xA;&#xA;Peut être utilisé pour améliorer la capacité de stockage du vaisseau auprès de l'&lt;TECHNOLOGY&gt;unité d'améliorations de vaisseau&lt;&gt; dans une station spatiale."}
        }
    },
    {
        ["ID"] = "FREI_INV_TOKEN",
        ["NewDescriptionID"] = "CUI_FREIGHT_INV_TOKEN_DESC",
        ["Languages"] =
        {
            {Languages["EN"], "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;."},
            {Languages["US"], "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;."},
            {Languages["FR"], "Module technologique fabriqué à partir du &lt;STELLAR&gt;plan adéquat&lt;&gt;, ou récupéré sur un &lt;STELLAR&gt;cargo abandonné&lt;&gt; qui dérivait dans l'espace. Peut être obtenu au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;&#xA;Cette unité portable est remplie de nano-dispositifs d'expansion pré-emballés qui la greffent à un cargo existant, augmentant sa &lt;STELLAR&gt;capacité d'inventaire&lt;&gt;. Appliquez dans le &lt;TECHNOLOGY&gt;terminal d'améliorations&lt;&gt; de votre cargo."}
        }
    }
}

CustomLanguageTag = "CraModLang"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "CraftableModules.pak",
    ["MOD_DESCRIPTION"] = "Allows you to craft Rapair Kits, the Salvaged Frigate Module, the Cargo Bulkhead and the Storage Augmentation",
    ["LUA_AUTHOR"] = "Jackty89",
    ["MOD_AUTHOR"] = "Methatronc/Maintained and edited by Jackty89",
    ["ADD_FILES"] =
    {
    },
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
                                    <Property name="Value" value="NMS_]]..CustomLanguageTag..[[" />
                                </Property>
                            ]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"ID", "REPAIRKIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RecipeCost", "1"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "PRODFUEL2"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD"] = UNLOCK,
                        }
                    }
                }
            }
        }
    }
}

local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
function Create_Requirement(Requirement)
    local RequirementID = Requirement["REQUIREMENTID"]
    local RequirementAmount = Requirement["REQUIREDAMOUNT"]
    local RequirementInventoryType = Requirement["REQUIREDTYPE"]

    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "CASING"},
        ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
        ["SEC_SAVE_TO"] = "SINGLE_REQ"
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "SINGLE_REQ",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", RequirementID},
            {"InventoryType", RequirementInventoryType},
            {"Amount", RequirementAmount}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_REQ_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SINGLE_REQ"
    }
end

function Create_Requirement_Sections(Requirements)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EMPTY"] = "PRODUCT_REQ_MASTER"
    }

    for i = 1, #Requirements do
        Create_Requirement(Requirements[i])
    end
end

function Change_Product_Requirement_And_Set_Craftable()
    for i = 1, #NewRequirementsArray do
        local ProductId = NewRequirementsArray[i]["PRODUCTID"]
        local Requirements = NewRequirementsArray[i]["REQUIREMENTS"]
        Create_Requirement_Sections(Requirements)
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] = {
            ["SPECIAL_KEY_WORDS"]  = {"ID", ProductId},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"CraftAmountMultiplier", "1"},
                {"IsCraftable", "True"}
            }
        }

        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", ProductId, "CraftAmountMultiplier","1"},
            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
            ["CREATE_HOS"] = "TRUE",
            ["SEC_ADD_NAMED"] = "PRODUCT_REQ_MASTER"
        }
    end
end

function ChangeProductDescriptionID()
    for i = 1, #CraftableModulesLanguageString do
        local NewDescriptionID = CraftableModulesLanguageString[i]["NewDescriptionID"]
        if not(NewDescriptionID == "")
        then
            local ProductID = CraftableModulesLanguageString[i]["ID"]
            Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", ProductID },
                ["PRECEDING_KEY_WORDS"] = {"Subtitle", "Description"},
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Value", NewDescriptionID}
                }
            }
        end
    end
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
    local DescriptionEntries = {}
    for i = 1, #CraftableModulesLanguageString do
        local NewDescriptionID = CraftableModulesLanguageString[i]["NewDescriptionID"]
        local LanguageEntries = {}

        if not(NewDescriptionID == "")
        then
            local LanguagesData = CraftableModulesLanguageString[i]["Languages"]
            for j = 1, #LanguagesData do

                local Language = LanguagesData[j][1]
                local NewDescription = LanguagesData[j][2]
                table.insert(LanguageEntries, NewLanguageEntry(Language, NewDescription))
            end
            table.insert(DescriptionEntries, NewDescriptionText(NewDescriptionID, table.concat(LanguageEntries)))
        end
    end
    return NewLanguagueFile(table.concat(DescriptionEntries))
end

function AddCustomLanguageString()
    local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
    for _Key , Language in pairs(Languages) do
        AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
        {
            ["FILE_DESTINATION"] = "LANGUAGE/NMS_"..CustomLanguageTag.."_"..Language..".EXML",
            ["FILE_CONTENT"] = FillCustomlangFile()
        }
    end
end

Change_Product_Requirement_And_Set_Craftable()
AddCustomLanguageString()
ChangeProductDescriptionID()