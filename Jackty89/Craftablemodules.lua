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
                        <Property name="Children" />
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

AlteredProductPrices =
{
    {
        ["PRODUCTID"] = "FREI_INV_TOKEN",
        ["BASEVALUE"] = "1042042"
    },
    {
        ["PRODUCTID"] = "SHIP_INV_TOKEN",
        ["BASEVALUE"] = "1042042"
    },
    {
        ["PRODUCTID"] = "FRIG_TOKEN",
        ["BASEVALUE"] = "1042042"
    }
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
    }
}


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "CraftableModules.pak",
    ["MOD_DESCRIPTION"]         = "Allows you to craft Rapair Kits, the Salvaged Frigate Module, the Cargo Bulkhead and the Storage Augmentation",
    ["MOD_AUTHOR"]              = "Methatronc/Maintained and edited by Jackty89",
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\\NMS_LOC5_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FRIG_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a large interstellar starship. May be collected from &lt;STELLAR&gt;freighter crashsites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Useless in its current form, a &lt;TECHNOLOGY&gt;Research Station&lt;&gt; aboard your freighter may be able to convert it into useable technology."},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIP_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a &lt;STELLAR&gt;salvaged starship&lt;&gt;. May also be collected from &lt;STELLAR&gt;freighter crash sites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Can be used to expand starship storage capacity at the Space Station's &lt;TECHNOLOGY&gt;Starship Outfitter&lt;&gt;."},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\\NMS_LOC6_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FREIGHT_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;."},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\\NMS_LOC5_FRENCH.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FRIG_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "Module technologique récupéré sur les vestiges d'un gros vaisseau interstellaire. Peut être obtenu sur les &lt;STELLAR&gt;sites de crash de cargos&lt;&gt; ou au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;Bien qu'inutile sous sa forme actuelle, une &lt;TECHNOLOGY&gt;station de recherches&lt;&gt; à bord de votre cargo pourrait la convertir en technologie utilisable."},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIP_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "Module technologique récolté dans les vestiges d'un &lt;STELLAR&gt;vaisseau récupéré&lt;&gt;. Peut être obtenu sur les &lt;STELLAR&gt;sites de crash de cargos&lt;&gt; ou au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;&#xA;&#xA;Peut être utilisé pour améliorer la capacité de stockage du vaisseau auprès de l'&lt;TECHNOLOGY&gt;unité d'améliorations de vaisseau&lt;&gt; dans une station spatiale."},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\\NMS_LOC6_FRENCH.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FREIGHT_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "Module technologique fabriqué à partir du &lt;STELLAR&gt;plan adéquat&lt;&gt;, ou récupéré sur un &lt;STELLAR&gt;cargo abandonné&lt;&gt; qui dérivait dans l'espace. Peut être obtenu au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;&#xA;Cette unité portable est remplie de nano-dispositifs d'expansion pré-emballés qui la greffent à un cargo existant, augmentant sa &lt;STELLAR&gt;capacité d'inventaire&lt;&gt;. Appliquez dans le &lt;TECHNOLOGY&gt;terminal d'améliorations&lt;&gt; de votre cargo."},
                            }
                        },
                    }
                }
            }
        },
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                }
            }
        },
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Unlockable", "PRODFUEL2"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD"]                 = UNLOCK,
                        }
                    }
                }
            }
        }
    }
}

function CreateRequirement(Requirement)

    local RequirementID = Requirement["REQUIREMENTID"]
    local RequirementAmount = Requirement["REQUIREDAMOUNT"]
    local RequirementInventoryType = Requirement["REQUIREDTYPE"]

    return
    [[
        <Property value="GcTechnologyRequirement.xml">
            <Property name="ID" value="]]..RequirementID..[[" />
            <Property name="InventoryType" value="GcInventoryType.xml">
                <Property name="InventoryType" value="]]..RequirementInventoryType..[[" />
            </Property>
            <Property name="Amount" value="]]..RequirementAmount..[[" />
        </Property>
    ]]
end

function CreateRequirementsString(Requirements)
    local RequirementsString = ""

    for i = 1, #Requirements do
        RequirementsString = RequirementsString..CreateRequirement(Requirements[i])
    end

    return
    [[
        <Property name="Requirements">
        ]]..RequirementsString..[[
        </Property>
    ]]
end


local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][2]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #NewRequirementsArray do
    local ProductId = NewRequirementsArray[i]["PRODUCTID"]
    local Requirements = NewRequirementsArray[i]["REQUIREMENTS"]

    local RequirementsString = CreateRequirementsString(Requirements)

    ChangesToProductTable[#ChangesToProductTable + 1] = {
        ["SPECIAL_KEY_WORDS"]  = {"Id", ProductId},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"IsCraftable", "True"}
        }
    }

    ChangesToProductTable[#ChangesToProductTable + 1] = {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProductId,"CraftAmountMultiplier","1"},
        ["LINE_OFFSET"]         = "+1",
        ["REMOVE"] = "LINE",
    }

    ChangesToProductTable[#ChangesToProductTable + 1] = {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProductId,"CraftAmountMultiplier","1"},
        ["ADD"]               = RequirementsString,
    }

    for j = 1, #AlteredProductPrices do
        local AltProductId = AlteredProductPrices[j]["PRODUCTID"]
        local BaseValue = AlteredProductPrices[j]["BASEVALUE"]

        if ProductId==AltProductId then
            ChangesToProductTable[#ChangesToProductTable + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"Id", "FREI_INV_TOKEN"},
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"BaseValue", BaseValue},
                }
            }
        end
    end
end