Author = "Exosolar"
LuaAuthor = "Gumsk"
Maintainer = "Babscoole"
ModName = "_Exosolars Painless Rain"
--ModNameSub = ""
BaseDescription = "Makes lush storms harmless"
GameVersion = "4.52"
--ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]    = ModName..".pak",
["MOD_DESCRIPTION"] = BaseDescription,
["MOD_AUTHOR"]      = Author,
["LUA_AUTHOR"]      = LuaAuthor,
["MOD_MAINTENANCE"] = Maintainer,
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