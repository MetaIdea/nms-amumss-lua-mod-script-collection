local modfilename = "UsefulWaypoints"
local lua_author  = "Silent"
local lua_version = "1.6"
local mod_author  = "Silent369"
local nms_version = "6.34"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Adds waypoints to various planet buildings making landing
at these locations easier and more accessible.

]]

--------------------------------------------------------------------------------------------
-- Files
--------------------------------------------------------------------------------------------

local cfgFiles = {
    [[METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MXML]]
}

--------------------------------------------------------------------------------------------
-- Configuration
-- Removed LargeBuilding and Outpost as it was causing offset issues with Planetary Archives
-- Since an Archive is seen as an Outpost, removing Outposts also stops the offset error
-- Until I find a resolution to this they will remain commented out for now!
--------------------------------------------------------------------------------------------

local cfgSettings = {
    Abandoned         = "Abandoned",
    --LargeBuilding     = "LargeBuilding",
    MissionTower      = "MissionTower",
    Monolith          = "Monolith",
    NPCDistressSignal = "NPCDistressSignal",
    NPCDebris         = "NPCDebris",
    Observatory       = "Observatory",
    --Outpost           = "Outpost",
    Plaque            = "Plaque",
    RadioTower        = "RadioTower",
    Ruin              = "Ruin",
    StoryGlitch       = "StoryGlitch",
    Terminal          = "Terminal",
    TreasureRuins     = "TreasureRuins"
}

--------------------------------------------------------------------------------------------
-- Override Radius
--------------------------------------------------------------------------------------------

local cfgRadius = {
  --Outpost       = 110,
  Plaque        = 30,
  Terminal      = 30,
  --LargeBuilding = 120
}

--------------------------------------------------------------------------------------------

local allmodifications = {}

--------------------------------------------------------------------------------------------
-- Insert Entries
--------------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgFiles) do
    local modifications = {}
    for building in pairs(cfgSettings) do
        local vct_entries = {
            {"ClusterLayout", "LAND_WAYPOINT"},
            {"NumModelsToGenerate", "1"}
        }
        local radius = cfgRadius[building]
        if radius then
          table.insert(vct_entries, {"OverrideRadius ", radius})
        end
        table.insert(modifications, {
            SKW = {building, "GcBuildingDefinitionData"},
            REPLACE_TYPE = "ALL",
            VCT = vct_entries
        })
    end
    table.insert(allmodifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = modifications
            }
        }
    })
end

--------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = allmodifications,
}
