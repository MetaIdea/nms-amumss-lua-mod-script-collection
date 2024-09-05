local FishTrashID = {
"F_TRASH_1",
"F_TRASH_2",
"F_TRASH_3",
"F_TRASH_4",
"F_TRASH_5",
"F_TRASH_6",
"F_TRASH_7",
"F_TRASH_8",
"F_BOTTLE",
"F_JELLYCHILD"
}

local function CreateShopID(NewID)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]] .. NewID .. [[" />
        </Property>
    ]]
end

local ADDFishTrashID = {}
for i=1,#FishTrashID do
    ADDFishTrashID[#ADDFishTrashID + 1] = CreateShopID(FishTrashID[i])
end

local ADDFishTrashID = table.concat(ADDFishTrashID,"\n")

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_AddFishTrashToShop.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.10",
    ["MOD_DESCRIPTION"] = "Add Fish Trash to space station shop.",
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
                            ["ADD"] = ADDFishTrashID
                        },
                    }
                },
            },
        },
    }
}