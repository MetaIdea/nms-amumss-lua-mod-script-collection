local modfilename = "Biomes.DarkerSpaceAndNebulae"
local lua_author  = "Silent"
local lua_version = "v1.2"
local mod_author  = "Silent369"
local nms_version = "4.13"
local maintenance = mod_author
local description = [[
Makes Space Much Darker and Nebulae more subtle visually.
]]

--=====================================================================================================--
local _space_sky_colour                 = 0.1
local _night_sky_colour                 = 0.1
local _space_clouds_colour              = 0.1
local _star_light_colour                = 1
local _nebula_colour                    = 0.4
local _nebua_alpha_strength             = 0.2
local _space_fog_colour                 = 0.4
local _space_fog_alpha_strength         = 0.2
--=====================================================================================================--

COLOR_TABLE =
{
    {   _space_sky_colour,
        {
            "TopColour",
            "MidColour",
            "BottomColour"
        }
    },
    {   _night_sky_colour,
        {
            "TopColourPlanet",
            "MidColourPlanet",
            "BottomColourPlanet"
        }
    },
    {   _space_clouds_colour,
        {
            "CloudColour"
        }
    },
    {   _star_light_colour,
        {
            "LightColour"
        }
    },
    {   _nebula_colour,
        {
            "NebulaColour1",
            "NebulaColour2",
            "NebulaColour3"
        }
    },
    {   _space_fog_colour,
        {
            "FogColour",
            "FogColour2"
        }
    }
}

ALPHA_TABLE =
{
    {   _nebua_alpha_strength,
        {
            "NebulaColour1",
            "NebulaColour2",
            "NebulaColour3"
        }
    },
    {   _space_fog_alpha_strength,
        {
            "FogColour",
            "FogColour2"
        }
    }
}

--=====================================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]          = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]            = lua_author,
    ["MOD_AUTHOR"]            = mod_author,
    ["NMS_VERSION"]           = nms_version,
    ["MOD_MAINTENANCE"]       = maintenance,
    ["MOD_DESCRIPTION"]       = description,
    ["MODIFICATIONS"]         =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        --PlaceHolder
                    },
                },
            },
        },
    },
}

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #COLOR_TABLE do
    for j = 1, #COLOR_TABLE[i][2] do
        local temp_table =
        {
            ["PRECEDING_KEY_WORDS"] = {COLOR_TABLE[i][2][j]},
            ["MATH_OPERATION"]      = "*",
            ["REPLACE_TYPE"]        = "ALL",
            ["INTEGER_TO_FLOAT"]    = "FORCE",
            ["VALUE_CHANGE_TABLE"]  =
            {
                {"R",COLOR_TABLE[i][1]},
                {"G",COLOR_TABLE[i][1]},
                {"B",COLOR_TABLE[i][1]},
            },
        }
        Change_Table_Array[#Change_Table_Array + 1] = temp_table
    end
end

for i = 1, #ALPHA_TABLE do
    for j = 1, #ALPHA_TABLE[i][2] do
        local temp_table =
        {
            ["PRECEDING_KEY_WORDS"] = {ALPHA_TABLE[i][2][j]},
            ["MATH_OPERATION"]      = "*",
            ["REPLACE_TYPE"]        = "ALL",
            ["INTEGER_TO_FLOAT"]    = "FORCE",
            ["VALUE_CHANGE_TABLE"]  =
            {
                {"A",ALPHA_TABLE[i][1]},
            },
        }
        Change_Table_Array[#Change_Table_Array + 1] = temp_table
    end
end