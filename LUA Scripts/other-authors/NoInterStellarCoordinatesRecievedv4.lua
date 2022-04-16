NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]	= "NOInterStellarCoordinatesReceivedv4.pak",
    ["MOD_DESCRIPTION"]	= "Removes Interstellar Coordinates prompt",
    ["MOD_AUTHOR"]		= "DeathWrench",
    ["LUA_AUTHOR"]		= "DeathWrench",
    ["NMS_VERSION"]		= "3.8",
    ["MODIFICATIONS"]    = {{
    ["MBIN_CHANGE_TABLE"] = {{
        ["MBIN_FILE_SOURCE"]     =
        {
            "METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN",
        },
        ["EXML_CHANGE_TABLE"] = {
        {
						["REPLACE_TYPE"] 	= "ALL",
						["VALUE_MATCH"] 	= "UI_HAIL_ALIEN_NAV_OSD",
						["VALUE_CHANGE_TABLE"] 	= 
						{
							{"InterstellarOSDMessage",	""},
						},
        }
}}}}}}

