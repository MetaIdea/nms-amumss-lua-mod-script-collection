local modfilename = "NoCostPortals"
local lua_author  = "Silent"
local lua_version = "3.8"
local mod_author  = "Silent369"
local nms_version = "6.34"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Portals Cost Nothing to Charge Up

]]

-- Define file sources
----------------------------------------------------------------------------------------

local cfgFiles = {
    [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN]]
}

local cfgSettings = {
    MaxCapacity = {0},
    CompletionRequirement = {"NoRequirement"}
}

-- Initialise modifications
----------------------------------------------------------------------------------------

local all_modifications = {}

----------------------------------------------------------------------------------------

for _, filepath in ipairs({cfgFiles}) do
    local modifications = {}

    for property, value in pairs(cfgSettings) do
        table.insert(modifications, {
            SKW = {"PreInstalledTech", "GcMaintenanceElement"},
            PKW = {"PreInstalledTech"},
            REPLACE_TYPE = "ALL",
            SECTION_UP = 1,
            VCT = {{property, value[1]},}
        })
    end

    table.insert(all_modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = modifications
            }
        }
    })
end

-- Mod definition container
----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_MAINTENANCE = maintenance,
    MOD_DESCRIPTION = description,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = all_modifications,
}
