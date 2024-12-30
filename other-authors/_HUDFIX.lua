NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_HUDFIX.pak",
["MOD_AUTHOR"]              = "Wbertro based on cerryl2013 nexus mod",
["LUA_AUTHOR"]              = "Wbertro",
["MOD_CONTRIBUTORS"]        = "cerryl2013 nexus mod",
["NMS_VERSION"]             = "5.29",
["MOD_DESCRIPTION"]         = [[Fixes the offset HUD, Scanner, Inventory, ESC menu and Starting menu to work with NVSurround
based on https://www.nexusmods.com/nomanssky/mods/1636?tab=description&BH=0]],
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "UI\BOOT\WARNINGDLG.MBIN",
                        "UI\BOOTSCREEN.MBIN",
                        "UI\ROOT.MBIN",
                        "UI\SAFE.MBIN",
                        "UI\HUD\HUD.MBIN",
                        "UI\HUD\HUDBARS.MBIN",
                        "UI\HUD\HUDLINES.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            SKW = {"ID",""},
                            VCT =
                            {
                              {"PositionX","50"},
                              {"PositionY","50"},
                              {"Width","1920"},
                              {"WidthPercentage","False"},
                              {"Height","1080"},
                              {"HeightPercentage","False"},
                              {"AnchorPercent","True"},
                              {"Vertical","Middle"},
                              {"Horizontal","Center"},
                            },
                        },
                    },
                },
                
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "UI\BOOT\USERTITLESCREEN.MBIN",
                        "UI\BOOT\ROOTMENU.MBIN",
                        "UI\BOOT\ROOTMENU2.MBIN",
                        "UI\HUD\HUDBINOCULARS.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            SKW = {"ID",""},
                            VCT =
                            {
                              {"Width","1920"},
                              {"WidthPercentage","False"},
                              {"Height","1080"},
                              {"HeightPercentage","False"},
                            },
                        },
                    },
                },
                
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "UI\COMPONENTS\INTERACTION\CINEMATICBARS.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            SKW = {"ID","BARS"},
                            VCT =
                            {
                              {"PositionX","50"},
                              {"PositionY","50"},
                              {"Width","1920"},
                              {"WidthPercentage","False"},
                              {"Height","1080"},
                              {"HeightPercentage","False"},
                              {"AnchorPercent","True"},
                              {"Vertical","Middle"},
                              {"Horizontal","Center"},
                            },
                        },
                    },
                },
                
            },
        },
    },
}
