local FishBaitID = {
"FISHBAIT_1",
"FISHBAIT_2",
"FISHBAIT_3",
"FISHBAIT_DAY",
"FISHBAIT_NIGHT",
"FISHBAIT_STORM"
}

local function CreateShopID(NewID)
    return [[
                <Property name="AlwaysPresentProducts" value="]] .. NewID .. [[" />
    ]]
end

local ADDFishBaitID = {}
for i=1,#FishBaitID do
    ADDFishBaitID[#ADDFishBaitID + 1] = CreateShopID(FishBaitID[i])
end

local ADDFishBaitID = table.concat(ADDFishBaitID,"\n")

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_AddFishBaitToShop",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.51",
    ["MOD_DESCRIPTION"] = "Add Fish Bait to space station shop.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {
                                {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
                                {"TradeSettings", "Shop", "AlwaysPresentProducts"},
                            },
                            ["ADD"] = ADDFishBaitID
                        },
                    }
                },
            },
        },
    }
}