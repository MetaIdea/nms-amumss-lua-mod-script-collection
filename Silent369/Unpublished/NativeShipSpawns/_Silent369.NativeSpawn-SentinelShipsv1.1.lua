local modfilename = "NativeSpawn-SentinelShips"
local lua_author  = "Silent"
local lua_version = "1.1"
local mod_author  = "Silent369"
local nms_version = "5.26"
local maintenance = mod_author
local description = [[

Make it so Non-Native Ships can spawn natively, anywhere.

Currrently:
    Alien (Living Ship)
    Sentinel (Robot Ship)
    Spook (Boundary Herald)
    VRSpeeder (Utopia Speeder)
    WRacer (Starborn Runner)

Except for Fighters (Spook Ship), they all use the
same probability as Royal (Exotic) Ships, so don't
expect them to show up very often at all.

You can alter the <Class>SpawnWeighting values below
to greatly increase their spawn chance. (Max: 100).

]]

--Modifies:
--GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
--METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN

------------------------------------------------------------------------------------------------------
local AlienSpawnWeighting = 0  --Original "0" (alien (living ship)
local RobotSpawnWeighting = 1  --Original "0" sentinel (robot), fighters spawn regularly
local SpawnFrequencyValue = 5  --Spawn Frequencies within T1-T3 and Pirate economies.
------------------------------------------------------------------------------------------------------
local mbin_file_source = [[GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN]]
------------------------------------------------------------------------------------------------------

local ShipSpawnerData = {
    {"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN", "Robot"},
    --{"MODELS/COMMON/SPACECRAFT/FIGHTERS/SPOOKSHIP.SCENE.MBIN", "Fighter"},
    --{"MODELS/COMMON/SPACECRAFT/FIGHTERS/VRSPEEDER.SCENE.MBIN", "Fighter"},
    --{"MODELS/COMMON/SPACECRAFT/FIGHTERS/WRACER.SCENE.MBIN", "Fighter"}
}

function AddShipModelData(Model, Class)
    local result = [[
        <Property value="GcAISpaceshipModelData.xml">
          <Property name="Filename" value="]]..Model..[[" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="]]..Class..[[" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>]]
    return result
end

function GcAISpaceshipModelDataArray()
    local change_table = {}
    local sources = {"Civilian"} --Civilian, Pirate, Player

    for _, shipEntry in ipairs(ShipSpawnerData) do
        local model, class = table.unpack(shipEntry)
        for _, source in ipairs(sources) do
            local change_entry = {
                SKW = {source, "GcAISpaceshipModelDataArray.xml"},
                PKW = {"Spaceships"},
                ADD_OPTION = "ADDendSECTION",
                ADD = AddShipModelData(model, class),
            }
            table.insert(change_table, change_entry)
        end
    end
    return {{MBIN_FS = [[METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN]], EXML_CT = change_table}}
end

------------------------------------------------------------------------------------------------------

function SpaceshipSpawnFreqMultipliers()
    return {{
            MBIN_FS = {mbin_file_source},
            EXML_CT = {{
                    PKW = {"SpaceshipSpawnFreqMultipliers"},
                    ITF = "PRESERVE",
                    REPLACE_TYPE = "ALLINSECTION",
                    VCT = {{"IGNORE", SpawnFrequencyValue},}
            },}
        },
    }
end

function CivilianClassWeightings()
    return {{
            MBIN_FS = {mbin_file_source},
            EXML_CT = {{
                    PKW = {"CivilianClassWeightings"},
                    ITF = "PRESERVE",
                    REPLACE_TYPE = "ALL",
                    VCT = {{"Alien", AlienSpawnWeighting},{"Robot", RobotSpawnWeighting},}
            },}
        },
    }
end

------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    MODIFICATIONS   =
    {
        {MBIN_CT = GcAISpaceshipModelDataArray()},
        {MBIN_CT = SpaceshipSpawnFreqMultipliers()},
        {MBIN_CT = CivilianClassWeightings()}
    },
}
