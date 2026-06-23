local ModTreeXML = [[
    <Property value="GcUnlockableItemTreeNode.xml">
        <Property name="Unlockable" value="BP_SALVAGE" />
        <Property name="Children">

            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SENTINEL_LOOT" />
                <Property name="Children">
                    <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FACT_TOKEN" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="POI_LOCATOR" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>

            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CHART_ROBOT" />
                <Property name="Children">
                    <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SENTFREI_PROD" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="FRIG_TOKEN" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>

            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SHIP_INV_TOKEN" />
                <Property name="Children">
                    <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FREI_INV_TOKEN" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="WEAP_INV_TOKEN" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>

            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SCRAP_TECH" />
                <Property name="Children">
                    <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="DRONE_SALVAGE" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="SCRAP_WEAP" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>

            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CLAMPEARL" />
                <Property name="Children">
                    <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="STORM_CRYSTAL" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="SUIT_INV_TOKEN" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>

        </Property>
    </Property>
]]

local InvTypes = { P = "Product", S = "Substance" }

local ModBlueprintsData = {
    { ITEM_CODE = "SCRAP_TECH", COST = 1, CRAFT_COMPS = { { ID = "ALBUMENPEARL", NUM = "2", CAT = InvTypes.P }, { ID = "ALLOY7", NUM = "1", CAT = InvTypes.P }, { ID = "PIRATE_PROD", NUM = "1", CAT = InvTypes.P } } },
    { ITEM_CODE = "SCRAP_WEAP", COST = 1, CRAFT_COMPS = { { ID = "SPECIAL_POOP", NUM = "10", CAT = InvTypes.S }, { ID = "ALLOY8", NUM = "1", CAT = InvTypes.P }, { ID = "PIRATE_PROD", NUM = "1", CAT = InvTypes.P } } },
    { ITEM_CODE = "SENTINEL_LOOT", COST = 1, CRAFT_COMPS = { { ID = "SPIDER_PROD", NUM = "1", CAT = InvTypes.P }, { ID = "ROBOT1", NUM = "50", CAT = InvTypes.S }, { ID = "FARMPROD3", NUM = "5", CAT = InvTypes.P } } },
    { ITEM_CODE = "BP_SALVAGE", COST = 1, CRAFT_COMPS = { { ID = "LAUNCHSUB2", NUM = "50", CAT = InvTypes.S }, { ID = "EX_YELLOW", NUM = "200", CAT = InvTypes.S }, { ID = "ASTEROID3", NUM = "100", CAT = InvTypes.S } } },
    { ITEM_CODE = "CHART_ROBOT", COST = 1, CRAFT_COMPS = { { ID = "DRONE_SALVAGE", NUM = "1", CAT = InvTypes.P }, { ID = "STORM_CRYSTAL", NUM = "1", CAT = InvTypes.P }, { ID = "DRONE_SHARD", NUM = "2", CAT = InvTypes.P } } },
    { ITEM_CODE = "FREI_INV_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "EX_BLUE", NUM = "200", CAT = InvTypes.S }, { ID = "GRAVBALL", NUM = "10", CAT = InvTypes.P }, { ID = "LAVA1", NUM = "400", CAT = InvTypes.S } } },
    { ITEM_CODE = "SHIP_INV_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "QUAD_PROD", NUM = "1", CAT = InvTypes.P }, { ID = "CARBON_SEAL", NUM = "15", CAT = InvTypes.P }, { ID = "EX_GREEN", NUM = "300", CAT = InvTypes.S } } },
    { ITEM_CODE = "FRIG_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "SALVAGE_TECH6", NUM = "20", CAT = InvTypes.P }, { ID = "TECH_COMP", NUM = "1", CAT = InvTypes.P }, { ID = "ANTIMATTER", NUM = "5", CAT = InvTypes.P } } },
    { ITEM_CODE = "POI_LOCATOR", COST = 1, CRAFT_COMPS = { { ID = "RED2", NUM = "500", CAT = InvTypes.S }, { ID = "GREEN2", NUM = "500", CAT = InvTypes.S }, { ID = "BLUE2", NUM = "500", CAT = InvTypes.S } } },
    { ITEM_CODE = "WEAP_INV_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "WALKER_PROD", NUM = "1", CAT = InvTypes.P }, { ID = "EX_RED", NUM = "250", CAT = InvTypes.S }, { ID = "BIO", NUM = "3", CAT = InvTypes.P } } },
    { ITEM_CODE = "SENTFREI_PROD", COST = 1, CRAFT_COMPS = { { ID = "POI_LOCATOR", NUM = "1", CAT = InvTypes.P }, { ID = "CHART_ROBOT", NUM = "1", CAT = InvTypes.P }, { ID = "FACT_TOKEN", NUM = "1", CAT = InvTypes.P } } },
    { ITEM_CODE = "FACT_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "NAV_DATA", NUM = "2", CAT = InvTypes.P }, { ID = "GEODE_ASTEROID", NUM = "1", CAT = InvTypes.P }, { ID = "ROBOT2", NUM = "200", CAT = InvTypes.S } } },
    { ITEM_CODE = "CLAMPEARL", COST = 1, CRAFT_COMPS = { { ID = "PLANT_SNOW", NUM = "50", CAT = InvTypes.S }, { ID = "DUSTY1", NUM = "100", CAT = InvTypes.S }, { ID = "WATERPLANT", NUM = "100", CAT = InvTypes.S } } },
    { ITEM_CODE = "SUIT_INV_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "OXYGEN", NUM = "500", CAT = InvTypes.S }, { ID = "GAS3", NUM = "250", CAT = InvTypes.S }, { ID = "GRENFUEL1", NUM = "50", CAT = InvTypes.P } } },
    { ITEM_CODE = "STORM_CRYSTAL", COST = 1, CRAFT_COMPS = { { ID = "ASTEROID3", NUM = "150", CAT = InvTypes.S }, { ID = "GAS2", NUM = "300", CAT = InvTypes.S }, { ID = "JELLY", NUM = "50", CAT = InvTypes.P } } },
    { ITEM_CODE = "DRONE_SALVAGE", COST = 1, CRAFT_COMPS = { { ID = "ROBOT2", NUM = "500", CAT = InvTypes.S }, { ID = "RADIO1", NUM = "500", CAT = InvTypes.S }, { ID = "SPACEGUNK2", NUM = "500", CAT = InvTypes.S } } }
}

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "EXTENDEDCRAFT",
    ["MOD_DESCRIPTION"] = "You can craft a lot of rare useful things",
    ["LUA_AUTHOR"] = "Exterra Project",
    ["MOD_AUTHOR"] = "Exterra Project",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "PRODFUEL2"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD"] = ModTreeXML,
                        }
                    }
                }
            }
        }
    }
}

local OpsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

local function BuildIngredientXML(id, amount, invType)
    return [[
        <Property value="GcTechnologyRequirement.xml">
            <Property name="ID" value="]] .. id .. [[" />
            <Property name="Type" value="GcInventoryType.xml">
                <Property name="InventoryType" value="]] .. invType .. [[" />
            </Property>
            <Property name="Amount" value="]] .. amount .. [[" />
        </Property>
    ]]
end

local function InjectFormulasToProducts()
    for _, def in ipairs(ModBlueprintsData) do
        local ingredientsList = {}
        for _, comp in ipairs(def.CRAFT_COMPS) do
            table.insert(ingredientsList, BuildIngredientXML(comp.ID, comp.NUM, comp.CAT))
        end
        local payloadXML = table.concat(ingredientsList)

        table.insert(OpsTable, {
            ["SPECIAL_KEY_WORDS"]  = {"ID", def.ITEM_CODE, "Name", "IGNORE"},
            ["VALUE_CHANGE_TABLE"] = {
                {"CraftAmountMultiplier", "1"},
                {"IsCraftable", "True"},
                {"RecipeCost", tostring(def.COST)}
            }
        })

        table.insert(OpsTable, {
            ["SPECIAL_KEY_WORDS"] = {"ID", def.ITEM_CODE, "Name", "IGNORE"},
            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
            ["CREATE_HOS"] = "TRUE",
            ["REMOVE"] = "SECTION"
        })

        table.insert(OpsTable, {
            ["SPECIAL_KEY_WORDS"] = {"ID", def.ITEM_CODE, "Name", "IGNORE"},
            ["PRECEDING_KEY_WORDS"] = {"RecipeCost"},
            ["ADD"] = [[
        <Property name="Requirements">
]] .. payloadXML .. [[
        </Property>
]]
        })
    end
end

InjectFormulasToProducts()