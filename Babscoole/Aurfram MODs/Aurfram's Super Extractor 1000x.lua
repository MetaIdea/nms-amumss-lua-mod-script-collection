--[[
-- 这是一个1000倍的Lua脚本，您可以更改MULTI的值以将其转换为不同的放大倍数。
-- This is a 1000x Lua script where you can change the value of MULTI to convert it to different magnifications.
-- 
--]]

-- MULTI = 3
-- MULTI = 5
-- MULTI = 10
-- MULTI = 100
MULTI = 1000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Aurfram's Super Extractor "..MULTI.."x.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "U_EXTRACTOR_S"},
                                {"ID", "U_GASEXTRACTOR"},
                            },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rate",    MULTI},
                                {"Storage", MULTI},
                            }
                        },
                    }
                },
            }
        }
    }
}