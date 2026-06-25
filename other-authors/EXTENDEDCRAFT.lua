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
    { ITEM_CODE = "WALKER_PROD", COST = 1, CRAFT_COMPS = { { ID = "TECH_COMP", NUM = "1", CAT = InvTypes.P }, { ID = "SPACEGUNK3", NUM = "200", CAT = InvTypes.S }, { ID = "CAVE1", NUM = "200", CAT = InvTypes.S } } },
    { ITEM_CODE = "SUIT_INV_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "OXYGEN", NUM = "500", CAT = InvTypes.S }, { ID = "GAS3", NUM = "250", CAT = InvTypes.S }, { ID = "GRENFUEL1", NUM = "50", CAT = InvTypes.P } } },
    { ITEM_CODE = "STORM_CRYSTAL", COST = 1, CRAFT_COMPS = { { ID = "ASTEROID3", NUM = "150", CAT = InvTypes.S }, { ID = "GAS2", NUM = "300", CAT = InvTypes.S }, { ID = "JELLY", NUM = "50", CAT = InvTypes.P } } },
    { ITEM_CODE = "QUAD_PROD", COST = 1, CRAFT_COMPS = { { ID = "POWERCELL", NUM = "2", CAT = InvTypes.P }, { ID = "GEODE_SPACE", NUM = "2", CAT = InvTypes.P }, { ID = "FARMPROD3", NUM = "20", CAT = InvTypes.P } } },
    { ITEM_CODE = "SHIPBRAIN_CLEAN", COST = 1, CRAFT_COMPS = { { ID = "ROBOT1", NUM = "500", CAT = InvTypes.S }, { ID = "CREATURE1", NUM = "100", CAT = InvTypes.S }, { ID = "NANOTUBES", NUM = "10", CAT = InvTypes.P } } },
    { ITEM_CODE = "SPIDER_PROD", COST = 1, CRAFT_COMPS = { { ID = "DRONE_SHARD", NUM = "2", CAT = InvTypes.P }, { ID = "ANTIMATTER", NUM = "4", CAT = InvTypes.P }, { ID = "ALLOY5", NUM = "2", CAT = InvTypes.P } } },
    { ITEM_CODE = "ALIEN_INV_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "FOOD_P_GLITCH", NUM = "10", CAT = InvTypes.P }, { ID = "PLANT_CAVE", NUM = "100", CAT = InvTypes.S }, { ID = "FIENDCORE", NUM = "1", CAT = InvTypes.P } } },
    { ITEM_CODE = "ALIEN_TECHBOX", COST = 1, CRAFT_COMPS = { { ID = "FOOD_P_GLITCH", NUM = "10", CAT = InvTypes.P }, { ID = "PLANT_CAVE", NUM = "100", CAT = InvTypes.S }, { ID = "FISHCORE", NUM = "1", CAT = InvTypes.P } } },
    { ITEM_CODE = "BOSS_JUICE", COST = 1, CRAFT_COMPS = { { ID = "EYEBALL", NUM = "1", CAT = InvTypes.P }, { ID = "FOOD_P_DUSTFARM", NUM = "1", CAT = InvTypes.P }, { ID = "TOXIC1", NUM = "200", CAT = InvTypes.S } } },
    { ITEM_CODE = "PORTAL_JUICE", COST = 1, CRAFT_COMPS = { { ID = "CARBON_SEAL", NUM = "5", CAT = InvTypes.P }, { ID = "COLD1", NUM = "200", CAT = InvTypes.S }, { ID = "WATER2", NUM = "200", CAT = InvTypes.S } } },
    { ITEM_CODE = "ARTIFACT_KEY", COST = 1, CRAFT_COMPS = { { ID = "ALLOY1", NUM = "1", CAT = InvTypes.P }, { ID = "TRA_COMMODITY2", NUM = "5", CAT = InvTypes.P }, { ID = "LAND2", NUM = "200", CAT = InvTypes.S } } },
    { ITEM_CODE = "TRIDENT_KEY", COST = 1, CRAFT_COMPS = { { ID = "ALLOY3", NUM = "1", CAT = InvTypes.P }, { ID = "TRA_COMMODITY2", NUM = "5", CAT = InvTypes.P }, { ID = "PLANT_WATER", NUM = "20", CAT = InvTypes.S } } },
    { ITEM_CODE = "TECH_COMP", COST = 1, CRAFT_COMPS = { { ID = "ASTEROID2", NUM = "300", CAT = InvTypes.S }, { ID = "CAVE2", NUM = "300", CAT = InvTypes.S }, { ID = "COMPUTER", NUM = "3", CAT = InvTypes.P } } },
    { ITEM_CODE = "ABAND_LOCATOR", COST = 1, CRAFT_COMPS = { { ID = "ASTEROID1", NUM = "500", CAT = InvTypes.S }, { ID = "COLD1", NUM = "500", CAT = InvTypes.S }, { ID = "HYPERFUEL1", NUM = "5", CAT = InvTypes.P } } },
    { ITEM_CODE = "BIGGS_POI_LOC", COST = 1, CRAFT_COMPS = { { ID = "SHIPCHARGE", NUM = "1", CAT = InvTypes.P }, { ID = "MICROCHIP", NUM = "4", CAT = InvTypes.P }, { ID = "RADIO1", NUM = "120", CAT = InvTypes.S } } },
    { ITEM_CODE = "CHART_BUILDER", COST = 1, CRAFT_COMPS = { { ID = "NAV_DATA", NUM = "5", CAT = InvTypes.P }, { ID = "ROBOT2", NUM = "500", CAT = InvTypes.S }, { ID = "FARMPROD9", NUM = "1", CAT = InvTypes.P } } },
    { ITEM_CODE = "S19_TP", COST = 1, CRAFT_COMPS = { { ID = "DUSTY1", NUM = "150", CAT = InvTypes.S }, { ID = "ALLOY4", NUM = "5", CAT = InvTypes.P }, { ID = "TRA_COMMODITY5", NUM = "5", CAT = InvTypes.P } } },
    { ITEM_CODE = "REP_TOKEN", COST = 1, CRAFT_COMPS = { { ID = "ILLEGAL_PROD2", NUM = "1", CAT = InvTypes.P }, { ID = "COMPOUND1", NUM = "1", CAT = InvTypes.P }, { ID = "AM_HOUSING", NUM = "3", CAT = InvTypes.P } } },
    { ITEM_CODE = "MECH_PROD", COST = 1, CRAFT_COMPS = { { ID = "CASING", NUM = "50", CAT = InvTypes.P }, { ID = "ALLOY2", NUM = "10", CAT = InvTypes.P }, { ID = "STELLAR2", NUM = "500", CAT = InvTypes.S } } },
    { ITEM_CODE = "TECHBOX", COST = 1, CRAFT_COMPS = { { ID = "CREATURE1", NUM = "250", CAT = InvTypes.S }, { ID = "ROBOT1", NUM = "250", CAT = InvTypes.S }, { ID = "BIO", NUM = "5", CAT = InvTypes.P } } }
}

local TreeGrid = {
    { "JELLY", "NANOTUBES", "HYDRALIC", "MICROCHIP" },
    { "COMPUTER", "CARBON_SEAL", "BIO", "CASING" },
    { "MAGNET", "MIRROR", "POWERCELL", "SHIPCHARGE" },
    { "LAUNCHFUEL", "SUBFUEL", "GRENFUEL1", "HYPERFUEL1" },
    { "ACCESS1", "ACCESS2", "HYPERFUEL2", "ACCESS3" },
    
    { "BP_SALVAGE", "SENTINEL_LOOT", "FACT_TOKEN", "POI_LOCATOR" },
    { "CHART_ROBOT", "SENTFREI_PROD", "FRIG_TOKEN", "SHIP_INV_TOKEN" },
    { "FREI_INV_TOKEN", "WEAP_INV_TOKEN", "SCRAP_TECH", "QUAD_PROD" },
    { "SCRAP_WEAP", "WALKER_PROD", "STORM_CRYSTAL", "SUIT_INV_TOKEN" },
    
    { "SPIDER_PROD", "SHIPBRAIN_CLEAN", "ALIEN_INV_TOKEN", "ALIEN_TECHBOX" },
    { "BOSS_JUICE", "PORTAL_JUICE", "ARTIFACT_KEY", "TRIDENT_KEY" },
    { "TECH_COMP", "ABAND_LOCATOR", "BIGGS_POI_LOC", "CHART_BUILDER" },
    { "TECHBOX", "MECH_PROD", "REP_TOKEN", "S19_TP" }
}

local function GenerateTreeXML(grid)
    local xml = ""
    for _, branch in ipairs(grid) do
        local branchXML = ""
        for i = #branch, 1, -1 do
            local item = branch[i]
            if i == #branch then
                branchXML = [[
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="]] .. item .. [[" />
                                <Property name="Children" />
                            </Property>]]
            else
                branchXML = [[
                            <Property value="GcUnlockableItemTreeNode.xml">
                                <Property name="Unlockable" value="]] .. item .. [[" />
                                <Property name="Children">
]] .. branchXML .. [[

                                </Property>
                            </Property>]]
            end
        end
        xml = xml .. branchXML .. "\n"
    end
    return xml
end

local ModTreeXML = GenerateTreeXML(TreeGrid)

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "EXTENDEDCRAFT",
    ["MOD_DESCRIPTION"] = "Rewritten 13x4 product tree",
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
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "PRODFUEL2"},
                            ["ADD"] = [[
                        <Property name="Children">
]] .. ModTreeXML .. [[
                        </Property>
]]
                        }
                    }
                }
            }
        }
    }
}

local OpsTableProduct = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

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

        table.insert(OpsTableProduct, {
            ["SPECIAL_KEY_WORDS"]  = {"ID", def.ITEM_CODE, "Name", "IGNORE"},
            ["VALUE_CHANGE_TABLE"] = {
                {"CraftAmountMultiplier", "1"},
                {"IsCraftable", "True"},
                {"RecipeCost", tostring(def.COST)}
            }
        })

        table.insert(OpsTableProduct, {
            ["SPECIAL_KEY_WORDS"] = {"ID", def.ITEM_CODE, "Name", "IGNORE"},
            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
            ["CREATE_HOS"] = "TRUE",
            ["REMOVE"] = "SECTION"
        })

        table.insert(OpsTableProduct, {
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