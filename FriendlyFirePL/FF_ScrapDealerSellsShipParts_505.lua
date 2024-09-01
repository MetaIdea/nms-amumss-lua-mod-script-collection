----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ScrapDealerSellsShipParts"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "505"
METADATA_MOD_DESC       = "This mod reworks the scrap dealers shop inventory, allowing them to sell starship components for Tainted Metal. Modifies files METADATA\\REALITY\\DEFAULTREALITY.MBIN and METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_METADATA_DEFAULTREALITY = "METADATA\\REALITY\\DEFAULTREALITY.MBIN"
FILE_METADATA_PRODUCT_TABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"

--------------------------------------------------
-- parameters
--------------------------------------------------

-- number of items to be sold (includes both standard items and ship parts)
ITEMS_LIMIT = 12

-- SKW for scrap dealer shop
SKW_SCRAP_DEALER = {"Scrap","GcTradeData.xml",}

-- VCT for modifying prices of the ship parts
VCT_PRICE = {{"BaseValue","@/200",},}

--------------------------------------------------
-- lists of items displayed in scrap dealer shop
--------------------------------------------------

-- list of regular items to keep
LIST_SCRAP_ITEMS = {"REPAIRKIT","SCRAP_GOODS","SCRAP_TECH","SCRAP_WEAP"}

-- all the standard starship components (no reactors and Iron Vulture parts)
LIST_SHIP_PARTS =
{
    -- fighter parts
    "FIGHT_COCKAA","FIGHT_COCKAB","FIGHT_COCKAC","FIGHT_COCKAD","FIGHT_COCKAE","FIGHT_COCKB","FIGHT_COCKD","FIGHT_COCKE","FIGHT_COCKF","FIGHT_ENGIB","FIGHT_ENGIC","FIGHT_ENGID",
    "FIGHT_WINGA","FIGHT_WINGA_FI","FIGHT_WINGB","FIGHT_WINGB_FI","FIGHT_WINGBA","FIGHT_WINGBA_FI","FIGHT_WINGBB","FIGHT_WINGBB_FI","FIGHT_WINGBC","FIGHT_WINGBC_FI","FIGHT_WINGBD","FIGHT_WINGBD_FI",
    "FIGHT_WINGD","FIGHT_WINGEA","FIGHT_WINGEA_FI","FIGHT_WINGEB","FIGHT_WINGEB_FI","FIGHT_WINGEC","FIGHT_WINGEC_FI","FIGHT_WINGED","FIGHT_WINGED_FI","FIGHT_WINGEE","FIGHT_WINGEE_FI","FIGHT_WINGEF",
    "FIGHT_WINGEF_FI","FIGHT_WINGFC","FIGHT_WINGFC_FI","FIGHT_WINGFD","FIGHT_WINGFD_FI","FIGHT_WINGFE","FIGHT_WINGFE_FI","FIGHT_WINGG","FIGHT_WINGG_FI","FIGHT_WINGH","FIGHT_WINGH_FI","FIGHT_WINGHA",
    "FIGHT_WINGHA_FI","FIGHT_WINGHB","FIGHT_WINGHB_FI","FIGHT_WINGHC","FIGHT_WINGHC_FI","FIGHT_WINGHD","FIGHT_WINGHD_FI","FIGHT_WINGI","FIGHT_WINGI_FI","FIGHT_WINGJLOW","FIGHT_WINGJMID","FIGHT_WINGJFULL",
    "FIGHT_WINGKA","FIGHT_WINGKAA","FIGHT_WINGKBA","FIGHT_WINGKBB","FIGHT_WINGKBC",

    -- explorer parts
    "SCIEN_COCKAA","SCIEN_COCKAAA","SCIEN_COCKABA","SCIEN_COCKACA","SCIEN_COCKAB","SCIEN_COCKAAB","SCIEN_COCKABB","SCIEN_COCKACB","SCIEN_COCKDA","SCIEN_COCKDB",
    "SCIEN_WINGEMP","SCIEN_WINGA","SCIEN_WINGBA","SCIEN_WINGBB","SCIEN_WINGBC","SCIEN_WINGBD","SCIEN_WINGC","SCIEN_WINGDA","SCIEN_WINGDB","SCIEN_WINGDC","SCIEN_WINGDD",
    "SCIEN_WINGE","SCIEN_WINGF","SCIEN_WINGFA","SCIEN_WINGG","SCIEN_WINGGA","SCIEN_WINGHA","SCIEN_WINGHB","SCIEN_WINGHC","SCIEN_WINGHD","SCIEN_WINGI","SCIEN_WINGKA",
    "SCIEN_WINGKB","SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL","SCIEN_WINGT_A","SCIEN_WINGT_C","SCIEN_WINGT_F","SCIEN_WINGT_G","SCIEN_WINGT_I",

    -- hauler parts
    "DROPS_COCKA","DROPS_COCKB","DROPS_COCKC","DROPS_COCKD","DROPS_COCKE","DROPS_COCKF","DROPS_COCKG","DROPS_COCKH",
    "DROPS_ENGIA","DROPS_ENGIAA","DROPS_ENGIAB","DROPS_ENGIB","DROPS_ENGIBA","DROPS_ENGIBB","DROPS_ENGIC",
    "DROPS_WINGAA","DROPS_WINGAAA","DROPS_WINGAAB","DROPS_WINGAAC","DROPS_WINGAAD","DROPS_WINGAAE","DROPS_WINGAAF","DROPS_WINGAAG","DROPS_WINGAAH","DROPS_WINGAAI",
    "DROPS_WINGAB","DROPS_WINGABA","DROPS_WINGABB","DROPS_WINGABC","DROPS_WINGABD","DROPS_WINGABE","DROPS_WINGABF","DROPS_WINGABG","DROPS_WINGABH","DROPS_WINGABI",
    "DROPS_WINGAC","DROPS_WINGACA","DROPS_WINGACB","DROPS_WINGACC","DROPS_WINGACD","DROPS_WINGACE","DROPS_WINGACF","DROPS_WINGACG","DROPS_WINGACH","DROPS_WINGACI",
    "DROPS_WINGBA","DROPS_WINGBAA","DROPS_WINGBAB","DROPS_WINGBAC","DROPS_WINGBAD","DROPS_WINGBAE","DROPS_WINGBAF","DROPS_WINGBAG","DROPS_WINGBAH","DROPS_WINGBAI",
    "DROPS_WINGBB","DROPS_WINGBBA","DROPS_WINGBBB","DROPS_WINGBBC","DROPS_WINGBBD","DROPS_WINGBBE","DROPS_WINGBBF","DROPS_WINGBBG","DROPS_WINGBBH","DROPS_WINGBBI",
    "DROPS_WINGBC","DROPS_WINGBCA","DROPS_WINGBCB","DROPS_WINGBCC","DROPS_WINGBCD","DROPS_WINGBCE","DROPS_WINGBCF","DROPS_WINGBCG","DROPS_WINGBCH","DROPS_WINGBCI",
    "DROPS_WINGCA","DROPS_WINGCAA","DROPS_WINGCAB","DROPS_WINGCAC","DROPS_WINGCAD","DROPS_WINGCAE","DROPS_WINGCAF","DROPS_WINGCAG","DROPS_WINGCAH","DROPS_WINGCAI",
    "DROPS_WINGCB","DROPS_WINGCBA","DROPS_WINGCBB","DROPS_WINGCBC","DROPS_WINGCBD","DROPS_WINGCBE","DROPS_WINGCBF","DROPS_WINGCBG","DROPS_WINGCBH","DROPS_WINGCBI",
    "DROPS_WINGCC","DROPS_WINGCCA","DROPS_WINGCCB","DROPS_WINGCCC","DROPS_WINGCCD","DROPS_WINGCCE","DROPS_WINGCCF","DROPS_WINGCCG","DROPS_WINGCCH","DROPS_WINGCCI",
    "DROPS_WINGCD","DROPS_WINGCDA","DROPS_WINGCDB","DROPS_WINGCDE","DROPS_WINGCDF","DROPS_WINGCDG","DROPS_WINGCDH","DROPS_WINGCDI","DROPS_WINGDA","DROPS_WINGDAX",
    "DROPS_WINGDAA","DROPS_WINGDAB","DROPS_WINGDAH","DROPS_WINGDAI","DROPS_WINGDB","DROPS_WINGDBA","DROPS_WINGDBB","DROPS_WINGDBH","DROPS_WINGDBI","DROPS_WINGDBX",
    "DROPS_WINGDBAX","DROPS_WINGDBBX","DROPS_WINGDBHX","DROPS_WINGDBIX","DROPS_WING1","DROPS_WING2","DROPS_WINGEMP",

    -- solar parts
    "SAIL_BODYA","SAIL_BODYB","SAIL_BODYC","SAIL_BODYD","SAIL_BODYE","SAIL_BODYF","SAIL_SAILA","SAIL_SAILB","SAIL_SAILC",
    "SAIL_WINGAA","SAIL_WINGAB","SAIL_WINGAC","SAIL_WINGAD","SAIL_WINGAE","SAIL_WINGBA","SAIL_WINGBB","SAIL_WINGBC","SAIL_WINGBD","SAIL_WINGBE",
    "SAIL_WINGCA","SAIL_WINGCB","SAIL_WINGCC","SAIL_WINGCD","SAIL_WINGCE","SAIL_WINGDA","SAIL_WINGDB","SAIL_WINGDC","SAIL_WINGDD","SAIL_WINGDE",
    "SAIL_WINGEA","SAIL_WINGEB","SAIL_WINGEC","SAIL_WINGED","SAIL_WINGEE","SAIL_WINGFA","SAIL_WINGFB","SAIL_WINGFC","SAIL_WINGFD","SAIL_WINGFE",
}

--------------------------------------------------
-- functions
--------------------------------------------------

-- function to build list of parts for the shop
function BuildItemList(list)

    local ListEntries = {}
    local EntryStart = [[<Property value="NMSString0x10.xml"><Property name="Value" value="]]
    local EntryEnd = [[" /></Property>]]
    
    for i=1,#list do
        ListEntries[#ListEntries+1] = EntryStart .. list[i] .. EntryEnd
    end

    return table.concat(ListEntries)

end

-- function to build SKW table for all parts
function BuildSKWList(list)

    local SKWTable = {}

    for i=1,#list do
        SKWTable[#SKWTable+1] = {"ID",list[i],}
    end

    return SKWTable

end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- default reality MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_DEFAULTREALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- remove all always present products
                            ["SKW"] = SKW_SCRAP_DEALER,
                            ["PKW"] = "AlwaysPresentProducts",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- open always present products, add some scrap items back
                            ["SKW"] = SKW_SCRAP_DEALER,
                            ["PKW"] = "AlwaysPresentProducts",
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = BuildItemList(LIST_SCRAP_ITEMS),
                        },

                        {
                            --  remove all optional products
                            ["SKW"] = SKW_SCRAP_DEALER,
                            ["PKW"] = "OptionalProducts",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            --  open optional products, add ship parts
                            ["SKW"] = SKW_SCRAP_DEALER,
                            ["PKW"] = "OptionalProducts",
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = BuildItemList(LIST_SHIP_PARTS),
                        },

                        {
                            -- set the limits on number of items to be sold
                            ["SKW"] = SKW_SCRAP_DEALER,
                            ["VCT"] = 
                            {
                                {"MinItemsForSale",ITEMS_LIMIT,},
                                {"MaxItemsForSale",ITEMS_LIMIT,},
                            },
                        },

                        {
                            -- limit purchases to 1 of each item
                            ["SKW"] = SKW_SCRAP_DEALER,
                            ["PKW"] = "MinAmountOfProductAvailable",
                            ["VCT"] = 
                            {
                                {"Poor",1,},
                                {"Average",1,},
                                {"Wealthy",1,},
                                {"Pirate",1,},
                            },
                        },

                        {
                            -- limit purchases to 1 of each item
                            ["SKW"] = SKW_SCRAP_DEALER,
                            ["PKW"] = "MaxAmountOfProductAvailable",
                            ["VCT"] = 
                            {
                                {"Poor",1,},
                                {"Average",1,},
                                {"Wealthy",1,},
                                {"Pirate",1,},
                            },
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- product table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_PRODUCT_TABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get the price value from DROPS_WINGS1
                            ["SKW"] = {"ID","DROPS_WING1",},
                            ["VCT"] = {{"BaseValue","IGNORE","PRICE_WING1"},},
                        },

                        {
                            -- apply the same price to DROPS_WING2
                            ["SKW"] = {"ID","DROPS_WING2",},
                            ["VCT"] = {{"BaseValue","IGNORE","{:}PRICE_WING1",},},
                        },
                        
                        {
                            -- modify the base value of all ship parts
                            ["SKW"] = BuildSKWList(LIST_SHIP_PARTS),
                            ["VCT"] = VCT_PRICE,
                        },
                    }
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------