--see also scripts in Advanced folder

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]          = "_ZZZsome.pak",      --the name of the pak created (if not combined) - REQUIRED - "_ZZZ" to make it load ~last
  ["MOD_AUTHOR"]                = "ItIsMe",           --optional, for reference only
  ["MOD_DESCRIPTION"]       = "anything goes",    --optional, for reference only
  ["NMS_VERSION"]               = "1.77",             --optional, for reference only
  ["MODIFICATIONS"]         =                     --REQUIRED SECTION
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
        -- NOTE: all ".." can also be [[..]]
                    ["MBIN_FILE_SOURCE"]    = { [[?\?.MBIN]], }  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
                        ["REGEXBEFORE"]       =
                        {
                            {"",""},
                        },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"", "",},  --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
                            ["PRECEDING_KEY_WORDS"] = "",         --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
                            ["WHERE"]   =   --NOT YET IMPLEMENTED
                            {
                                {"",    ""},
                            },
                            ["MATH_OPERATION"]        = "",       --see commented math operation example, see Script_Rules.txt
                            ["REPLACE_TYPE"]            = "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
                            ["VALUE_MATCH"]             = "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
                            ["VALUE_MATCH_TYPE"]      = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
                            ["LINE_OFFSET"]             = "",         --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"",    ""},        -- Original   --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
                            },
                            ["ADD"]                 = [[NEW TEXT TO ADD HERE]]    --adds the text inserted between the double-brackets or a simple string inside double-quotes

              --PLEASE, note BETTER to NOT use ADD and REMOVE in the same EXML_CHANGE_TABLE sub-table
              --the TEXT will be "ADDed" first AND then the "REMOVE" (the LINE or the SECTION) is done
              ["REMOVE"]            = ""                --removes the section pointed to by the keywords
                        },
                    }
          ["REGEXAFTER"]        =
                        {
                            {"",""},
                        },
                },
            }
        }, --other MBIN_CHANGE_TABLE sections can be added here, see Multi_PAK_Multi_MBIN_Example_Mod.lua in Advanced folder
    },
  ["ADD_FILES"]             =
    {
        {
            ["FILE_DESTINATION"]        = "\.EXML",

      --NOTE: Only ONE of the next three fields per FILE_DESTINATION sub-table
      ["INTERNAL_FILE_SOURCE"]  = "TEXTURES\\PLANETS\\CREATURES/FISH/CLAM_01.DDS", --or [[TEXTURES\PLANETS\CREATURES\FISH\CLAM_01.DDS]] or [[TEXTURES/PLANETS/CREATURES/FISH/CLAM_01.DDS]]
            ["EXTERNAL_FILE_SOURCE"]    = "D:\\something\\myfile.ddd", --or [[D:\something\myfile.ddd]] or [[.\something\myfile.ddd]]
            ["FILE_CONTENT"]    =
[[
NEW TEXT TO ADD HERE
]],
        },
    },
}
--NOTE: ANYTHING NOT referenced in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
