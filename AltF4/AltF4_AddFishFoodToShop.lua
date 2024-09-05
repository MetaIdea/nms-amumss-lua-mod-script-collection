local FishFoodID = {
"FOOD_F_EGGS",
"FOOD_F_SMALL1",
"FOOD_F_SMALL2",
"FOOD_F_SMALL3",
"FOOD_F_MED1",
"FOOD_F_MED2",
"FOOD_F_MED3",
"FOOD_F_LARGE1",
"FOOD_F_LARGE2",
"FOOD_F_LARGE3",
"FOOD_F_XL1",
"FOOD_F_XL2",
"FOOD_F_XL3",
"FOOD_F_MIX",
"FOOD_F_CLAM",
"FOOD_F_JELLY",
"FOOD_F_TURTLE",
"FOOD_F_WORM",
"FOOD_F_PRAWN",
"FOOD_F_SQUID",
"FOOD_F_OCTOPUS",
"FOOD_F_STARFISH",
"FOOD_F_EEL",
"FOOD_F_CRAB",
"FOOD_F_SNAIL",
"FOOD_F_STEW",
"FOOD_F_STEW2",
"FOOD_F_PIE",
"FOOD_F_RICE",
"FOOD_F_CHIPS",
"FOOD_F_JEELS",
"FOOD_F_S15"
}

local function CreateShopID(NewID)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]] .. NewID .. [[" />
        </Property>
    ]]
end

local ADDFishFoodID = {}
for i=1,#FishFoodID do
    ADDFishFoodID[#ADDFishFoodID + 1] = CreateShopID(FishFoodID[i])
end

local ADDFishFoodID = table.concat(ADDFishFoodID,"\n")

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_AddFishFoodToShop.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.10",
    ["MOD_DESCRIPTION"] = "Add Fish Food to space station shop.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
                            ["ADD"] = ADDFishFoodID
                        },
                    }
                },
            },
        },
    }
}