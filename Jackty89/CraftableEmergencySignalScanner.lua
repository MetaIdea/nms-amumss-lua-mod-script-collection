UNLOCK =
[[
    <Property value="GcUnlockableItemTreeNode.xml">
        <Property name="Unlockable" value="ABAND_LOCATOR" />
        <Property name="Children" />
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
        ["PRODUCTID"] = "ABAND_LOCATOR",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "STARCHART_A" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "STARCHART_B" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "STARCHART_D" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]}
        }
    }
}


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "CraftableEmergencySignalScanner.pak",
    ["MOD_DESCRIPTION"] = "CraftableEmergencySignalScanner",
    ["MOD_AUTHOR"] = "Jackty89",
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
                }
            }
        },
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
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

function CreateRequirement(Requirement)

    local RequirementID = Requirement["REQUIREMENTID"]
    local RequirementAmount = Requirement["REQUIREDAMOUNT"]
    local RequirementInventoryType = Requirement["REQUIREDTYPE"]

    return
    [[
        <Property value="GcTechnologyRequirement.xml">
            <Property name="ID" value="]]..RequirementID..[[" />
            <Property name="Type" value="GcInventoryType.xml">
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


local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #NewRequirementsArray do
    local ProductId = NewRequirementsArray[i]["PRODUCTID"]
    local Requirements = NewRequirementsArray[i]["REQUIREMENTS"]

    local RequirementsString = CreateRequirementsString(Requirements)

    ChangesToProductTable[#ChangesToProductTable + 1] = {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProductId},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"IsCraftable", "True"}
        }
    }

    ChangesToProductTable[#ChangesToProductTable + 1] = {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProductId,"CraftAmountMultiplier","1"},
        ["LINE_OFFSET"] = "+1",
        ["REMOVE"] = "LINE",
    }

    ChangesToProductTable[#ChangesToProductTable + 1] = {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProductId,"CraftAmountMultiplier","1"},
        ["ADD"] = RequirementsString,
    }
end