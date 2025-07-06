local function Create_PunctuationListEntry(VALUE, DELAY, INDEX)
    return [[
<Property name="PunctuationList" value="GcPunctuationDelay" _index="]] .. INDEX .. [[">
    <Property name="Punctuation" value="]] .. VALUE .. [[" />
    <Property name="Delay" value="]] .. DELAY .. [[" />
</Property>
]]
end

local alphabet = ' ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz'
local a = {}
for i = 1, #alphabet, 1 do
    local c = string.sub(alphabet, i, i)
    table.insert(a, Create_PunctuationListEntry(c, 0.003, i + 10))
end
local WHOLE_ALPHABIT = table.concat(a, "\n")


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]     = "Instant Text Display",
    ["MOD_AUTHOR"]       = "NooBzPoWaH",
    ["LUA_AUTHOR"]       = "Makto, gh0stwizard",
    ["MOD_DESCRIPTION"]  = "This mod displays the text pretty instantly when interacting with objects or aliens (NPCs).",
    ["NMS_VERSION"]      = "5.72+",
    ["EXML_CREATE"]      = "false",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/UI/SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Delay",        "0.003", }, -- set exisiting delay values to 0.003
                                { "DefaultDelay", "0.003", }  -- set exisiting DefaultDelay values to 0.003
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PunctuationList" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["ADD"]                 = WHOLE_ALPHABIT --Add New letters to section the 5 sections
                        }
                    }
                }
            }
        }
    }
}