Author = "Exosolar & Babscoole"
LuaAuthor = "Gumsk"
ModName = "_Exosolars Painless Rain"
--ModNameSub = ""
BaseDescription = "Makes lush storms harmless"
GameVersion = "5.01.1"
--ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]    = ModName..".pak",
["MOD_DESCRIPTION"] = BaseDescription,
["MOD_AUTHOR"]      = Author,
["LUA_AUTHOR"]      = LuaAuthor,
["NMS_VERSION"]     = GameVersion,
["MODIFICATIONS"]   = {{
    ["MBIN_CHANGE_TABLE"] = {{
        ["MBIN_FILE_SOURCE"] = FileSource1,
        ["EXML_CHANGE_TABLE"] = {
            {
                ["VALUE_CHANGE_TABLE"] = {
                    {"OverrideTemperature", "False"},
                },
            },
        }
}}}}}