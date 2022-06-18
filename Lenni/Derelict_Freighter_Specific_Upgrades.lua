POSSIBLE_UPGRADES =
{
"FreighterTechHyp",
"FreighterTechFuel",
-- "FreighterTechSpeed",
-- "FreighterTechTrade",
-- "FreighterTechCombat",
-- "FreighterTechMine",
-- "FreighterTechExp",
}

OVERWRITE_LOOT =
{
    "R_ABAND_CRATE",
    "R_ABAND_CASE",
    "R_ABAND_CAPS",
    "R_ABAND_LOCK",
    "R_ABAND_AMMO",
    "R_ABAND_GIFT",
    "R_FREI_TECH"
}

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]		= "Derelict_Freighter_Specific_Upgrades.pak",
    ["MOD_DESCRIPTION"]		= "Limits derelict freighter loot to hyperdrive and fuel modules",
    ["MOD_AUTHOR"]			= "Lenni",
    ["NMS_VERSION"]			= "3.91", 
    ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                    }
                }
            }
        }
    }
}

-- This function will create a single Rewartable item, the name is provide through parameter
function GetUpgrade(Upgrade)
    return [[
        <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="Reward" value="GcRewardProceduralProduct.xml">
            <Property name="Type" value="GcProceduralProductCategory.xml">
            <Property name="ProceduralProductCategory" value="]]..Upgrade..[[" />
            </Property>
            <Property name="OSDMessage" value="" />
            <Property name="SubIfPlayerAlreadyHasOne" value="False" />
            <Property name="OverrideRarity" value="False" />
            <Property name="Rarity" value="GcRarity.xml">
            <Property name="Rarity" value="Common" />
            </Property>
        </Property>
        <Property name="LabelID" value="" />
        </Property>
    ]]
end

--in this function we're looping all the POSSIBLE_UPGRADES list
function GetUpgrades()
    UPGRADES_ADDING_ALL = {}
    for i=1,#POSSIBLE_UPGRADES,1 do
        -- in this loop we're filling UPGRADES_ADDING_ALL with a single rewartable item
        table.insert(UPGRADES_ADDING_ALL,GetUpgrade(POSSIBLE_UPGRADES[i]))
    end

    --As for return we're crearting string of a list property
    --The content of said list is the list we just made we're using table.concat to quickly turn the list we made into a giant string, this will be used a the "body"
    return [[<Property name="List">
        ]]..table.concat(UPGRADES_ADDING_ALL)..[[
        </Property>]]
end

-- this variable ==
-- NMS_MOD_DEFINITION_CONTAINER = 
-- {
--     ["MOD_FILENAME"]		= "Derelict_Freighter_Specific_Upgrades.pak",
--     ["MOD_DESCRIPTION"]		= "Limits derelict freighter loot to hyperdrive and fuel modules",
--     ["MOD_AUTHOR"]			= "Lenni",
--     ["NMS_VERSION"]			= "3.91", 
--     ["MODIFICATIONS"]		=
--     {
--         {
--             ["MBIN_CHANGE_TABLE"] = 
--             { 
--                 {
--                     ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
--                     ["EXML_CHANGE_TABLE"] = 
--                     {
--                     }...
local ChangesToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
-- now we're looping OVERWRITE_LOOT
for i=1,#OVERWRITE_LOOT,1 do
    -- Each id in said list we're going to contain in a var (not necissariy but makes it readable)
    Loot = OVERWRITE_LOOT[i]
    
    --for each change we want to do we are creating adding a new item to the ChangesToRewardTable
    ChangesToRewardTable[#ChangesToRewardTable + 1] = 
    {
        ["SPECIAL_KEY_WORDS"]   = {"Id", Loot, "List","GcRewardTableItemList.xml",},
        ["PRECEDING_KEY_WORDS"] = {"List",},
        ["REMOVE"] = "SECTION"
    }
    
    ChangesToRewardTable[#ChangesToRewardTable + 1] = 
    {
        ["SPECIAL_KEY_WORDS"]   = {"Id", Loot},
        ["VALUE_CHANGE_TABLE"]	=
        {
            {"RewardChoice", "SelectAlways"},
        }
    }
    ChangesToRewardTable[#ChangesToRewardTable + 1] = 
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", Loot ,"UseInventoryChoiceOverride","IGNORE",},
        ["ADD_OPTION"]        = "ADDafterLINE",
        ["ADD"]               = GetUpgrades(),
    }
end