local modfilename = "UnifiedWarps Black"
local lua_author  = "Silent"
local lua_version = "v2.4"
local mod_author  = "Silent369"
local nms_version = "4.45"
local maintenance = mod_author
local description = [[

Unifies Blackhole/Portal/Ship/Teleporter Warps and makes them all black

]]

--|----------------------------------------------------------------------------------------

--MODIFIES:
--GCSIMULATIONGLOBALS.GLOBAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN

--|----------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MOD_MAINTENANCE"]      = maintenance,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        --|----------------------------------------------------------------------------------------
                        --| Remove the sections we don't need. Sorry HG, sometimes less IS more!
                        --|----------------------------------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"]   =
                            {
                                {"Name", "AnimatedLights"},
                                {"Name", "scrollingwave9"},
                                {"Name", "scrollingwaveALT"},
                                {"Name", "scrollingwaveALT1"},
                                {"Name", "stars2"},
                                {"Name", "stars1"},
                                {"Name", "gradientCloud"},
                                {"Name", "gradientCloudAlt"},
                                {"Name", "pointLight5"},
                                {"Name", "EndGlowCaps"},
                                {"Name", "LightStreaks"},
                                {"Name", "LightStreaksSmall"},
                                {"Name", "LightStreaks1"},
                                {"Name", "LightStreaksSmall1"},
                                {"Name", "LightLargeStreaks"},
                            },
                            ["REMOVE"]              = "SECTION",
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Merge All Warp scenes into one (optionally, activate new type b space stations)
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"GCSIMULATIONGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"BlackHoleTunnelFile",     "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MBIN"
                                {"TeleportTunnelFile",      "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"
                                {"PortalTunnelFile",        "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN""
                                {"PortalStoryTunnelFile",   "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN"
                            }
                        }
                    }
                }
            }
        },
    }
}