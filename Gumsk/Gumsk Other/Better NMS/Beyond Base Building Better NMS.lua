-- You can enable/disable mod features here :
---------------------------------------------
---------------------------------------------

-- /!\ WARNING /!\ : true/false parameters must be written in lowercase characters.

-- Terrain edit :

DISABLE_TERRAINEDIT_FOR_TIMBER = false          --Vanilla false // Mod default false // true to disable terrain edit for timber floors
DISABLE_TERRAINEDIT_FOR_ALLOY = false           --Vanilla false // Mod default false // true to disable terrain edit for alloy floors
DISABLE_TERRAINEDIT_FOR_STONE = false           --Vanilla false // Mod default false // true to disable terrain edit for stone floors
DISABLE_TERRAINEDIT_FOR_WOOD = false            --Vanilla false // Mod default false // true to disable terrain edit for legacy wood floors
DISABLE_TERRAINEDIT_FOR_CONCRETE = false        --Vanilla false // Mod default false // true to disable terrain edit for legacy concrete floors
DISABLE_TERRAINEDIT_FOR_METAL = false           --Vanilla false // Mod default false // true to disable terrain edit for legacy metal floors
DISABLE_TERRAINEDIT_FOR_LIGHTFLOOR = false      --Vanilla false // Mod default false // true to disable terrain edit for light floor
DISABLE_TERRAINEDIT_FOR_PAVING = false          --Vanilla false // Mod default false // true to disable terrain edit for paving floors
DISABLE_TERRAINEDIT_FOR_ALL = false             --Vanilla false // Mod default false // true to disable terrain edit for ALL building parts (all floors, geobays, prefab rooms, etc)

-- General limitations :
ALL_PARTS_ABOVE_WATER = true                    --Vanilla false // Mod default true // true to enable all building parts above water
ALL_PARTS_UNDER_WATER = true                    --Vanilla false // Mod default true // true to enable all building parts under water
--*******Please keep in mind that ALL_PARTS_ON_FREIGHTER only changes one property, but post Endurance other changes may be required*******
ALL_PARTS_ON_FREIGHTER = true                   --Vanilla false // Mod default true // true to enable all building parts on freighters
--*******Please keep in mind that ALL_PARTS_ON_PLANETBASE only changes one property, but post Endurance other changes may be required*******
ALL_PARTS_ON_PLANETBASE = true                  --Vanilla false // Mod default true // true to enable all building parts on planet bases (like freighter ones).
--*******Please keep in mind that ALL_PARTS_ON_PLANETBASE only changes one property, but post Endurance other changes may be required*******
NO_BUILDCOUNT_LIMIT = true                     --Vanilla false // Mod Default true // true to remove build-count limits on almost all parts. If false, all parts NOT related to resources farming will be unlimited

-- Specific placements/limits :
MARINESHELTER_ABOVE_WATER = true                --Vanilla false // Mod default true // true to enable marine shelter placement above water, ALL_PARTS_ABOVE_WATER must be true too
EXOMATERIALISER_ON_PLANETBASE = true            --Vanilla false // Mod default true // true to enable the Orbital Exocraft Materialiser on planet bases (decorative purpose only), ALL_PARTS_ON_PLANETBASE must be true too
FREIGHTERROOMS_ON_PLANETBASE = true             --Vanilla false // Mod default true // true to enable freighter tech and bio rooms on planet bases
FARM_IN_ANY_BIOME = true                        --Vanilla false // Mod default true // true to enable planting in any biome
METAL_PARTS_OUTSIDE_BASE = true                 --Vanilla false // Mod default true // true to makes some metal parts buildable outside of bases. Won't snap together outside of bases! Use it at your own risks!
GEOBAYS_ON_FREIGHTER = true                     --Vanilla false // Mod default true // true to enable vehicles geobays on freighters, ALL_PARTS_ON_FREIGHTER must be true too. Can be very glitchy, use it at your own risks!
BASESTORAGE_ON_FREIGHTER = true                 --Vanilla false // Mod default true // true to enable base storage containers on freighters, ALL_PARTS_ON_FREIGHTER must be true too. Can be very glitchy, use it at your own risks!
O2_ATMO_HARVESTERS_ANYWHERE = true              --Vanilla false // Mod default true // true to make Oxygen and Atmosphere harvesters buildable NOT only on bare terrain (also makes them buildable but bugged on dead planets).
CAN_SCALE_PREFAB_PARTS = true                   --Vanilla false // Mod Default true // true to allow all prefab rooms related parts to be scaled (doors attachment points bug out when scaled though)
CAN_SCALE_EXTRACTORS = true                     --Vanilla false // Mod Default true // true to allow gas/mineral extractors to be scaled (when greatly scaled their resources won't be linked to the resources network though)
S9_ON_FREIGHTER = true                          --Vanilla false // Mod default true  // true to enable S9 blueprint stations on freighters, ALL_PARTS_ON_FREIGHTER must be true too.
-------- enable/disable features end --------
---------------------------------------------

-------- variable settings begins -----------
---------------------------------------------
Multiplier = 1
SolarRate = Multiplier      --Original 50
SolarStorage = 0            --Original 0
BioRate = Multiplier        --Original 50
BioStorage = 180000         --Original 180000
BatteryRate = 0             --Original 0
BatteryStorage = Multiplier --Original 50000
EMAnywhere = "Power"        --Power, None for EMAnywhere
EMRate = 1                  --Original 1 (C=175, B=220, A=250, S=300
EMLimit = 0                 --0
MineralStorage = Multiplier --360000
MineralRate = Multiplier    --100
MineralLimit = 0            --0
GasStorage = Multiplier     --360000
GasRate = Multiplier        --100
GasLimit = 0                --0
SiloStorage = 1440000       --Original 1440000
SiloLimit = 0               --0
FreighterRate = 999999      --10000
ParagonDistance = 100000    --1000
-------- variable settings end --------------
---------------------------------------------

------------ GUIF section begins ------------
---------------------------------------------

GEOBAYS_ON_FREIGHTER = GUIF({true, [[Do you want GeoBays on Freighters?  Default = Y.  Press ENTER for default value.]]},10)
print("GEOBAYS_ON_FREIGHTER = "..tostring(GEOBAYS_ON_FREIGHTER))

FARM_IN_ANY_BIOME = GUIF({true, [[Do you want to farm in any biome?  Default = Y.  Press ENTER for default value.]]},10)
print("FARM_IN_ANY_BIOME = "..tostring(FARM_IN_ANY_BIOME))

BASESTORAGE_ON_FREIGHTER = GUIF({true, [[Do you want to place Base Storage Containers on Freighters?  Default = Y.  Press ENTER for default value.]]},10)
print("BASESTORAGE_ON_FREIGHTER = "..tostring(BASESTORAGE_ON_FREIGHTER))

FREIGHTERROOMS_ON_PLANETBASE = GUIF({true, [[Do you want to place Freighter Tech and Bio rooms on Planet Bases?  Default = Y.  Press ENTER for default value.]]},10)
print("FREIGHTERROOMS_ON_PLANETBASE = "..tostring(FREIGHTERROOMS_ON_PLANETBASE))

InputMultiplier = {Multiplier,
[[
    Choose a multiplier for Storage and Rates and EMAnywhere status:
    1 - Vanilla multiplier no EMAnywhere
    2 - Vanilla multiplier with EMAnywhere
    3 - 2x multiplier no EMAnywhere    WARNING: Bases built with these changes cannot be uploaded for multiplayer.
    4 - 2x multiplier with EMAnywhere  WARNING: Bases built with these changes cannot be uploaded for multiplayer.
    5 - 5x multiplier no EMAnywhere    WARNING: Bases built with these changes cannot be uploaded for multiplayer.
    6 - 5x multiplier with EMAnywhere  WARNING: Bases built with these changes cannot be uploaded for multiplayer.
    7 - 10x multiplier no EMAnywhere   WARNING: Bases built with these changes cannot be uploaded for multiplayer.
    8 - 10x multiplier with EMAnywhere  WARNING: Bases built with these changes cannot be uploaded for multiplayer.
    Default = 1 | Current = >> ]] .. (Multiplier) .. [[ <<
]]}

while Multiplier do
  Multiplier = GUIF(InputMultiplier,20)

  local minChoice = 1
  local maxChoice = 8

  if Multiplier < minChoice or Multiplier > maxChoice then
    print("         >>> ["..Multiplier.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

if Multiplier == 1 then
  Multiplier = 1
  EMRate = 1
  SiloStorage = 1440000
  EMAnywhere = "Power" 
elseif Multiplier == 2 then
  Multiplier = 1
  EMRate = 250
  SiloStorage = 1440000
  EMAnywhere = "None" 
elseif Multiplier == 3 then
  Multiplier = 2
  EMRate = 1
  SiloStorage = 2880000
  EMAnywhere = "Power" 
elseif Multiplier == 4 then
  Multiplier = 2
  EMRate = 500
  SiloStorage = 2880000
  EMAnywhere = "None" 
elseif Multiplier == 5 then
  Multiplier = 5
  EMRate = 1
  SiloStorage = 7200000
  EMAnywhere = "Power" 
elseif Multiplier == 6 then
  Multiplier = 5
  EMRate = 1000
  SiloStorage = 7200000
  EMAnywhere = "None" 
elseif Multiplier == 7 then
  Multiplier = 10
  EMRate = 1
  SiloStorage = 9999999
  EMAnywhere = "Power" 
elseif Multiplier == 8 then
  Multiplier = 10
  EMRate = 2500
  SiloStorage = 9999999
  EMAnywhere = "None" 
end
------------- GUIF section ends -------------
---------------------------------------------


---------- Settings related tables ----------
---------------------------------------------

-- Timber, alloy, stone, wood, concrete, metal, light floor, paving floors tables.
TIMBER_FLOOR_KEYWORD_TABLE = {"T_FLOORS"}                       -- Timber floors
ALLOY_FLOOR_KEYWORD_TABLE = {"F_FLOORS"}                        -- Alloy floors
STONE_FLOOR_KEYWORD_TABLE = {"S_FLOORS"}                        -- Stone floors
WOOD_FLOOR_KEYWORD_TABLE = {"BASICWOOD"}                        -- Wood floors (legacy)
CONC_FLOOR_KEYWORD_TABLE = {"BASICCONCRETE"}                    -- Concrete floors (legacy)
METAL_FLOOR_KEYWORD_TABLE = {"BASICMETAL"}                      -- Metal floors (legacy)

LIGHT_FLOOR_ID_TABLE = {"L_FLOOR_Q"}                            -- Light floor
PAVING_FLOOR_ID_TABLE = {"BUILDPAVING", "BUILDPAVING_BIG"}      -- Paving (small and big floor ones)

DISABLE_TERRAINEDIT_ID_TABLE = {} --define new empty parent table for parts (by ID)
DISABLE_TERRAINEDIT_KEYWORD_TABLE = {} --define new empty parent table for parts (by subgroup keywords)

if DISABLE_TERRAINEDIT_FOR_ALL == false    then

    n = 0
    if DISABLE_TERRAINEDIT_FOR_TIMBER then
        for _,v in ipairs(TIMBER_FLOOR_KEYWORD_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
        end
    end
    if DISABLE_TERRAINEDIT_FOR_ALLOY then
        for _,v in ipairs(ALLOY_FLOOR_KEYWORD_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
        end
    end
    if DISABLE_TERRAINEDIT_FOR_STONE then
        for _,v in ipairs(STONE_FLOOR_KEYWORD_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
        end
    end
    if DISABLE_TERRAINEDIT_FOR_WOOD then
        for _,v in ipairs(WOOD_FLOOR_KEYWORD_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
        end
    end
    if DISABLE_TERRAINEDIT_FOR_CONCRETE then
        for _,v in ipairs(CONC_FLOOR_KEYWORD_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
        end
    end
    if DISABLE_TERRAINEDIT_FOR_METAL then
        for _,v in ipairs(METAL_FLOOR_KEYWORD_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
        end
    end

    n = 0
    if DISABLE_TERRAINEDIT_FOR_LIGHTFLOOR then
        for _,v in ipairs(LIGHT_FLOOR_ID_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_ID_TABLE[n]=v
        end
    end
    if DISABLE_TERRAINEDIT_FOR_PAVING then
        for _,v in ipairs(PAVING_FLOOR_ID_TABLE) do n=n+1;
        DISABLE_TERRAINEDIT_ID_TABLE[n]=v
        end
    end
end


-- Exceptions if ALL_PARTS_ABOVE_WATER is true
NOT_ABOVE_WATER_BUILDPART_ID_TABLE = {"GARAGE_SUB"}


-- Exceptions if ALL_PARTS_ON_FREIGHTER is true
NOT_FREIGHTER_BUILDPART_ID_TABLE = {"BASE_FLAG", "BASECAPSULE", "MESSAGE", "BUILDLANDINGPAD", "S_LANDINGZONE", "BUILDSIGNAL", "BUILDBEACON", "U_EXTRACTOR_S", "U_GASEXTRACTOR", "U_SILO_S", "U_GENERATOR_S", "U_PIPELINE", "CREATURE_FEED", "CREATURE_FARM", "BUILDHARVESTER", "BUILDGASHARVEST", "TELEPORTER", "O2_HARVESTER"}
-- Notes : BASECAPSULE (Base Salvage Capsule) originally buildable but bugged on freighters.
-- Vehicles parts are excluded in the dedicated part at the bottom of the script (Geobays, Race Initiator...)


-- Exceptions if ALL_PARTS_ON_PLANETBASE is true
NOT_PLANETBASE_BUILDPART_ID_TABLE = {"TELEPORTER_F"}


-- Keywords to match prefab parts if CAN_SCALE_PREFAB_PARTS is false
PREFAB_KEYWORDS_TABLE = {"ROOMS", "FREIGHTER"}


-- Freighter's storage containers list (don't match "FREIGHTER" keyword to apply scaling rules)
FREIGHTER_CONTAINERS_ID_TABLE = {"S_CONTAINER0", "S_CONTAINER1", "S_CONTAINER2", "S_CONTAINER3", "S_CONTAINER4", "S_CONTAINER5", "S_CONTAINER6", "S_CONTAINER7", "S_CONTAINER8", "S_CONTAINER9"}


-- Base storage containers list (don't match "FREIGHTER" keyword to apply scaling rules)
BASE_CONTAINERID_TABLE = {"CONTAINER0", "CONTAINER1", "CONTAINER2", "CONTAINER3", "CONTAINER4", "CONTAINER5", "CONTAINER6", "CONTAINER7", "CONTAINER8", "CONTAINER9"}


-- Metal parts buildable outside of bases if METAL_PARTS_OUTSIDE_BASE is true
METAL_OUTSIDE_BASE_ID_TABLE = {"M_WALL", "M_DOOR", "M_FLOOR", "M_RAMP", "M_ROOF", "M_ARCH"}

-- Freighter tech and bio rooms list
FREIGHTERROOMS_ON_PLANETBASE_ID_TABLE = {"FRE_ROOM_FLEET", "FRE_ROOM_SCAN", "FRE_ROOM_TELEPO", "FRE_ROOM_DRESS", "FRE_ROOM_NPCSCI", "FRE_ROOM_NPCBUI", "FRE_ROOM_SHOP", "FRE_ROOM_TECH", "FRE_ROOM_PLANT1", "FRE_ROOM_PLANT0", "FRE_ROOM_COOK", "FRE_ROOM_NPCFAR", "FRE_ROOM_BIO", "FRE_ROOM_NPCWEA"}

-- Geobays buildable on freighters if GEOBAYS_ON_FREIGHTER is true
GEOBAYS_ON_FREIGHTER_ID_TABLE = {"SUMMON_GARAGE", "GARAGE_B", "GARAGE_S", "GARAGE_M", "GARAGE_L", "GARAGE_MECH"}

-- S9 blueprint stations buildable on freighters if S9_ON_FREIGHTER is true
S9_ON_FREIGHTER_ID_TABLE = {"S9_SUITTREE", "S9_WEAPONTREE", "S9_EXOCRAFTTREE", "S9_SHIPTREE", "S9_BUILDERTREE"}

-- Parts that can be built anywhere (not only on bare terrain)
ANYTERRAIN_BUILDPART_ID_TABLE = {"FOUNDATION", "BUILDPAVING", "BUILDPAVING_BIG", "BUILDPAVINGTALL", "MESSAGE"}
-- Notes : Atmosphere and Oxygen harvesters are not included by default, cause changing their "BaseBuildingDecorationType" property also makes them buildable on dead planets (incoherent, and bugged on them)

O2_ATMO_HARVESTERS_ID_TABLE = {"O2_HARVESTER", "BUILDGASHARVEST"}

-- If O2_ATMO_HARVESTERS_ANYWHERE = true, adds Oxygen and Atmosphere harvesters to the list of parts buildable anywhere (not only on bare terrain)
if O2_ATMO_HARVESTERS_ANYWHERE then
    for _,v in ipairs(O2_ATMO_HARVESTERS_ID_TABLE) do table.insert(ANYTERRAIN_BUILDPART_ID_TABLE, v)
    end
end

-- Re-add planters and Pots after Endurance update
PLANTERS_ON_FREIGHTER_ID_TABLE = {"PLANTERMEGA", "PLANTER", "PLANTPOT", "PLANTPOT1", "PLANTPOT2", "PLANTPOT3", "PLANTPOT4"}

-- Re-add Misc on freighters after Endurance update
MISC_ON_FREIGHTER_ID_TABLE = {"POWERLINE_HIDER", "NOISEBOX", "SPAWNER_BALL", "BYTEBEATSWITCH", "RACE_START", "RACE_RAMP", "RACE_BOOSTER", "BUILD_REFINER2", "BUILD_REFINER3", "DRESSING_TABLE", "BUILDTERMINAL", "TELEPORTER", "BUILDSIGNAL", "O2_HARVESTER", "BUILDGASHARVEST", "BUILDHARVESTER", "BUILDANTIMATTER", "BASECAPSULE", "CREATURE_FARM", "CREATURE_FEED", "U_GENERATOR_S", "U_PIPELINE", "U_EXTRACTOR_S", "U_SILO_S", "U_GASEXTRACTOR", "MESSAGEMODULE", "BUILDLANDINGPAD", "S_LANDINGZONE"}

-- Plant in any biome
FARM_IN_ANY_BIOME_ID_TABLE = {"RADIOPLANT", "TOXICPLANT", "SNOWPLANT", "SACVENOMPLANT", "SCORCHEDPLANT", "POOPPLANT", "GRAVPLANT", "CREATUREPLANT", "BARRENPLANT", "LUSHPLANT", "PEARLPLANT", "NIPPLANT"}

-- Exceptions to {"CanScale", "True"}
NOT_SCALEABLE_BUILDPART_ID_TABLE = {"BASE_FLAG"}
-- Notes : vehicles and prefab parts are excluded in the dedicated part at the bottom of the script.

EXTRACTORS_ID_TABLE = {"U_EXTRACTOR_S", "U_GASEXTRACTOR"}

-- If CAN_SCALE_EXTRACTORS = false, adds gas/mineral extractors to the list of not-scaleable parts.
if CAN_SCALE_EXTRACTORS == false then
    for _,v in ipairs(EXTRACTORS_ID_TABLE) do table.insert(NOT_SCALEABLE_BUILDPART_ID_TABLE, v)
    end
end

-------- Settings related tables end --------
---------------------------------------------



-------- NOT settings related tables --------
---------------------------------------------

-- Vehicles parts which can be scaled
SCALEABLE_VEHICLESPART_ID_TABLE = {"RACE_RAMP", "RACE_BOOSTER"}

-- Parts which are unlimited by the mod even if NO_BUILDCOUNT_LIMIT is false.
-- Removed "GARAGE_FREIGHT" due to warning for 3.97 Endurance
UNLIMITED_BUILPART_ID_TABLE = {"BASE_TERRARIUM", "BASE_AQUARIUM", "BASE_TOYSPHERE", "BASE_TOYCORE", "DRESSING_TABLE", "SPAWNER_BALL", "U_SWITCHBUTTON", "BYTEBEAT", "MESSAGEMODULE", "BUILDTERMINAL", "RACE_RAMP", "RACE_BOOSTER", "BASE_ROBOTOY", "BASE_TOYCUBE", "BUILDLANDINGPAD", "S_LANDINGZONE", "TELEPORTER", "TELEPORTER_F", "RACE_START", "CHECKPOINT", "WATERBUBBLE", "BUILD_REFINER2", "BUILD_REFINER3", "BASE_TOYJELLY", "BLD_PLANET_HOLO"}
-- Decals are included in the "general modifications". Storage containers are included in the dedicated part at the bottom of the script.

-- Custom build-count limits
CUSTOM_BUILDCOUNT_LIMITS =
{
--      {"ID",                PlanetLimit,      RegionLimit,      PlanetBaseLimit,      FreighterBaseLimit}
        {"POWERLINE_HIDER",   0,                0,                1,                    1},        -- Electrical Cloaking Unit
        {"NPCFRIGTERM",       0,                0,                10,                   10},       -- Fleet Command Room
        {"NPCBUILDERTERM",    0,                0,                1,                    1},        -- Construction Terminal
        {"NPCVEHICLETERM",    0,                0,                1,                    1},        -- Exocraft Terminal
        {"NPCWEAPONTERM",     0,                0,                1,                    1},        -- Weapons Terminal
        {"NPCSCIENCETERM",    0,                0,                1,                    1},        -- Science Terminal
        {"NPCFARMTERM",       0,                0,                1,                    1},        -- Agricultural Terminal
        {"BASECAPSULE",       0,                1,                0,                    0},        -- Base Salvage Capsule
        {"SUMMON_GARAGE",     0,                9,                0,                    0},        -- Exocraft Summoning Station
        {"GARAGE_B",          0,                9,                0,                    0},        -- Pilgrim Geobay
        {"GARAGE_S",          0,                9,                0,                    0},        -- Nomad Geobay
        {"GARAGE_M",          0,                9,                0,                    0},        -- Roamer Geobay
        {"GARAGE_L",          0,                9,                0,                    0},        -- Colossus Geobay
        {"GARAGE_SUB",        0,                9,                0,                    0},        -- Nautilon Geobay
        {"GARAGE_MECH",       0,                9,                0,                    0},        -- Minotaur Geobay
        {"BUILDSIGNAL",       0,                6,                0,                    0},        -- Signal Booster
        {"BUILDBEACON",       0,                6,                0,                    0},        -- Save Beacon
        {"BUILDSAVE",         0,                6,                0,                    0},        -- Save Point
        {"MESSAGE",           0,                2,                0,                    0},        -- Communications Station
        {"MESSAGEMODULE",     0,                1,                0,                    0},        -- Message Module
        {"BLD_DATASIGN",      0,                0,                0,                    0},        -- Data Display Unit
        {"BLD_FIREPIT",       0,                6,                0,                    0},        -- Flaming Barrel
        {"SPAWNER_BALL",      0,                0,                0,                    0},        -- Sphere Creator
        --{"DECALPATH",        0,                0,                0,                    0}        -- ?

}

------ NOT settings related tables end ------
---------------------------------------------



NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "_Beyond Base Building.pak",
    ["MOD_AUTHOR"]      = "NeptuneX3 after Sparky after Exosolar",
    ["MOD_MAINTENANCE"] = "Babscoole",
    ["MOD_DESCRIPTION"] =
    [[ An extreme degree of freedom added to the vanilla base-building options.

    —Mod Introduction and Features:
    This mod is fully compatible with multiplayer, co-op building, uploading, etc, because it does not add any parts, which would cause issues in multiplayer.

    ★ Beyond Basebuilding is fully Lua scripted, with script provided for easy updating and merging ★ and carries over all of the official updates and improvements offered by Hello Games plus:

        All parts can be Rotated along all 3 axes (not working until HG adds back the missing rotation axes)
        All parts can be Scaled except prefab building parts, Exocraft Geobays and Base Computer (Door attachment points bug out when scaled, and issues persist with scaled base computers and geobays)
        All parts can be built in a Freighter except the Base Computer, Industrial Mining parts, Vehicle Summoners and planet-based teleporter
        All parts can be built at a Planetary Base except the freighter teleporter and the Orbital Exocraft Materialiser
        All parts can be built above and below water
        All parts can change color and material
        All parts can be deleted without also deleting attached objects except Decals and Posters
        No build-count limits except for parts related to resources farming, certain terminals, beacons and message capsules
        Unlimited Storage Containers—*This does not increase actual storage amounts: Each numbered container acts as an index to the store rather than a physical box
        Foundation, Pavings and Communications Station can be placed anywhere (not only on bare terrain)

    -Credits and Special Thanks!
    Hello Games for making the wonderful, vast, and fun game, No Man's Sky!
    monkeyman192 for the MBINCompiler and his continued efforts to keep it up-to-date
    Mjjstral & Wbertro for the AMUMSS script-based auto modbuilder/updater,
    Tub0Crisco for the No Man's Sky Mod Station A.K.A. NMSMS
    And, of course, thanks to all of the other modders who make mods too, as we often inspect the work of other modders to learn how things are done: RangerDulann, Redmas, WoodyMontana, jasondude, Gumsk, Mjjstral, moddinaccount, Devilin Pixy, saa044, and others

    —For latest versions and more visit:-
    https://www.nexusmods.com/nomanssky/mods/1096
    ]],
    ["NMS_VERSION"]   = "4.73",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- General modifications
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanRotate3D",       "True"},
                                {"CanScale",          "True"},
                                {"CanChangeColour",   "True"},
                                {"CanChangeMaterial", "True"},
                                {"IsPlaceable",       "True"},
                            },
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "True",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsDecoration",              "False"},
                                {"CheckPlaceholderCollision", "False"},
                                {"RemovesAttachedDecoration", "False"},
                            },
                        },
                        -- Reverts decals : must be destroyed when parent (wall, etc) is destroyed. Unlimited placement.
                        -- Decals are matched by their "SubGroupName" keyword : if any new one is added by the devs it should trigger this.
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SubGroupName", "WALLDECALS"},
                            ["SECTION_UP"] = 2,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsDecoration",       "True"},
                                {"PlanetBaseLimit",    0},
                                {"FreighterBaseLimit", 0},
                            },
                        },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = 0,
                            -- ["VALUE_MATCH_OPTIONS"] = "~=", --does NOT match value above
                            -- ["VALUE_CHANGE_TABLE"] = 
                            -- {
                                -- {"GhostsCountOverride", 0},
                            -- },
                        -- },
                        -- Reverts posters : must be destroyed when parent (wall, etc) is destroyed.
                        -- Posters are matched by their "SubGroupName" keyword : if any new one is added by the devs it should trigger this.
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SubGroupName", "WALLPOSTERS"},
                            ["SECTION_UP"] = 2,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsDecoration", "True"},
                            },
                        },
                        {--Needed to avoid tutorial softlock
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "T_WALL"},
                                {"ID", "T_FLOOR"},
                                {"ID", "T_ROOF6"},
                                {"ID", "T_DOOR1"},
                                {"ID", "T_ARCH"},
                                {"ID", "T_ROOF_C"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildableOnPlanet", "False"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_SOLAR_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rate",                         "@*"..SolarRate},
                                {"Storage",                      SolarStorage},
                                {"DependsOnEnvironment",         "DayNight"},
                                {"BuildableOnPlanet",            "False"},
                                {"BuildableOnPlanetWithProduct", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_BIOGENERATOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DependentRate",                "@*"..BioRate},
                                {"Storage",                      BioStorage},
                                {"BuildableOnSpaceBase",         "False"},
                                {"BuildableOnFreighter",         "False"},
                                {"BuildableOnPlanet",            "False"},
                                {"BuildableOnPlanetWithProduct", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_BATTERY_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildableOnPlanet",            "False"},
                                {"BuildableOnPlanetWithProduct", "False"},
                                {"Rate",                         BatteryRate},
                                {"Storage",                      "@*"..BatteryStorage},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_GENERATOR_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DependsOnHotspots",            EMAnywhere},
                                {"Rate",                         EMRate},
                                {"BuildableOnPlanet",            "False"},
                                {"BuildableOnPlanetWithProduct", "False"},
                                {"RegionLimit",                  EMLimit},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXTRACTOR_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage",                      "@*"..MineralStorage},
                                {"Rate",                         "@*"..MineralRate},
                                {"BuildableOnPlanet",            "False"},
                                {"BuildableOnPlanetWithProduct", "False"},
                                {"RegionLimit",                  MineralLimit},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_GASEXTRACTOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage",                      "@*"..GasStorage},
                                {"Rate",                         "@*"..GasRate},
                                {"BuildableOnPlanet",            "False"},
                                {"BuildableOnPlanetWithProduct", "False"},
                                {"RegionLimit",                  GasLimit},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_SILO_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage",                      SiloStorage},
                                {"BuildableOnPlanet",            "False"},
                                {"BuildableOnPlanetWithProduct", "False"},
                                {"PlanetBaseLimit",              SiloLimit},
                            }
                        },
                        {--Increase paragon device distance
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_PARAGON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ConnectionDistance",ParagonDistance},
                            }
                        },
                        {--Increase power provided by freighter
                            ["SPECIAL_KEY_WORDS"] = {"ID","AIRLCKCONNECTOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rate", FreighterRate},
                            }
                        },
                        {--Fix bug with bulkhead doors
                            ["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_DOOR_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsPlaceable", "False"},
                            }
                        },
                        {--Fix bug with interior freighter walls
                            ["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_WALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"IsPlaceable", "False"},
                            }
                        },
                    },
                },
            },
        },
    },
}



--Create a shortcut to the EXML_CHANGE_TABLE table that is inside NMS_MOD_DEFINITION_CONTAINER
local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]


-- Disable terrain edit for the designated parts
if DISABLE_TERRAINEDIT_FOR_ALL then

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_MATCH"] = "True",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"EditsTerrain", "False"},
        },
    }

else

    if #DISABLE_TERRAINEDIT_ID_TABLE > 0 then
        for i = 1, #DISABLE_TERRAINEDIT_ID_TABLE do
            Change_Table_Array[#Change_Table_Array + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", DISABLE_TERRAINEDIT_ID_TABLE[i]},
                ["VALUE_MATCH"] = "True",
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"EditsTerrain", "False"},
                },
            }
        end
    end

    if #DISABLE_TERRAINEDIT_KEYWORD_TABLE > 0 then
        for i = 1, #DISABLE_TERRAINEDIT_KEYWORD_TABLE do
            Change_Table_Array[#Change_Table_Array + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"SubGroupName", DISABLE_TERRAINEDIT_KEYWORD_TABLE[i]},
                ["SECTION_UP"] = 2,
                ["REPLACE_TYPE"] = "ALL",
                ["VALUE_MATCH"] = "True",
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"EditsTerrain", "False"},
                },
            }
        end
    end
end


------ All parts buildable above water ------
---------------------------------------------
if ALL_PARTS_ABOVE_WATER then

    -- Makes all parts buildable above water
    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_MATCH"] = "False",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildableAboveWater", "True"},
        },
    }

    -- Reverts Marine Shelter so it can't be built above water to avoid dangers
    if MARINESHELTER_ABOVE_WATER == false then

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", "WATERBUBBLE"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"BuildableAboveWater", "False"},
            },
        }
    end

    -- Specific exceptions list for parts not buildable above water
    for i = 1,#NOT_ABOVE_WATER_BUILDPART_ID_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", NOT_ABOVE_WATER_BUILDPART_ID_TABLE[i]},
            ["VALUE_MATCH"] = "True",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"BuildableAboveWater", "False"},
            },
        }
    end
end
---- All parts buildable above water end ----
---------------------------------------------


-- All parts buildable under water
if ALL_PARTS_UNDER_WATER then

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_MATCH"] = "False",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildableUnderwater", "True"},
        },
    }
end


------- All parts on freighters rules -------
---------------------------------------------
if ALL_PARTS_ON_FREIGHTER then

    -- Makes all parts buildable on freighters
    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_MATCH"] = "False",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildableOnFreighter", "True"},
        },
    }

    -- Reverts "BuildableOnFreighter" to "False" for vehicles
    -- Vehicles parts are matched by their "SubGroupName" keyword : if any new one is added by the devs it should trigger this.
    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SubGroupName", "PLANETEXOCRAFT"},
        ["SECTION_UP"] = 2,
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildableOnFreighter", "False"},
        },
    }

    -- Reverts "BuildableOnFreighter" to "True" for geobays if GEOBAYS_ON_FREIGHTER is true
    if GEOBAYS_ON_FREIGHTER then

        for i = 1,#GEOBAYS_ON_FREIGHTER_ID_TABLE do

            Change_Table_Array[#Change_Table_Array + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", GEOBAYS_ON_FREIGHTER_ID_TABLE[i]},
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"BuildableOnFreighter", "True"},
                },
            }
        end

        for i = 1,#GEOBAYS_ON_FREIGHTER_ID_TABLE do

            Change_Table_Array[#Change_Table_Array + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", GEOBAYS_ON_FREIGHTER_ID_TABLE[i]},
                ["PRECEDING_KEY_WORDS"] = {"Groups"},
                ["ADD_OPTION"] = "ADDafterLINE",
                ["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_TECH" />
          <Property name="SubGroupName" value="FRE_TECH_OTHER" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
            }
        end
    end
    
    -- S9 blueprint stations if S9_ON_FREIGHTER is true
    if S9_ON_FREIGHTER then

        for i = 1,#S9_ON_FREIGHTER_ID_TABLE do

            Change_Table_Array[#Change_Table_Array + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", GEOBAYS_ON_FREIGHTER_ID_TABLE[i]},
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"BuildableOnFreighter", "True"},
                },
            }
        end

        for i = 1,#S9_ON_FREIGHTER_ID_TABLE do

            Change_Table_Array[#Change_Table_Array + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", GEOBAYS_ON_FREIGHTER_ID_TABLE[i]},
                ["PRECEDING_KEY_WORDS"] = {"Groups"},
                ["ADD_OPTION"] = "ADDafterLINE",
                ["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_TECH" />
          <Property name="SubGroupName" value="FRE_TECH_OTHER" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
            }
        end
    end

    -- Sets Group assignment for Base Storage Containers if BASESTORAGE_ON_FREIGHTER is true
    if BASESTORAGE_ON_FREIGHTER then

        for i = 1,#BASE_CONTAINERID_TABLE do

            Change_Table_Array[#Change_Table_Array + 1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", BASE_CONTAINERID_TABLE[i]},
                ["PRECEDING_KEY_WORDS"] = {"Groups"},
                ["ADD_OPTION"] = "ADDafterLINE",
                ["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHT_LEGACY" />
          <Property name="SubGroupName" value="FREIGHTERLEGACY" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
            }
        end
    end

    -- Specific exceptions list for parts not buildable on freighters
    for i = 1,#NOT_FREIGHTER_BUILDPART_ID_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", NOT_FREIGHTER_BUILDPART_ID_TABLE[i]},
            ["VALUE_MATCH"] = "True",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"BuildableOnFreighter", "False"},
            },
        }
    end
end
----- All parts on freighters rules end -----
---------------------------------------------


------ All parts on planet bases rules ------
---------------------------------------------
if ALL_PARTS_ON_PLANETBASE then

    -- Makes all parts buildable on planet bases
    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_MATCH"] = "False",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildableOnPlanetBase", "True"},
        },
    }

    -- Reverts the Orbital Exocraft Materialiser if EXOMATERIALISER_ON_PLANETBASE is false
    -- if built on planet, it won't work to summon vehicles in the system, decorative purpose only
    if EXOMATERIALISER_ON_PLANETBASE == false then

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_FREIGHT"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"BuildableOnPlanetBase", "False"},
            },
        }
    end

    -- Reverts "BuildableOnPlanetBase" to "False" for the exceptions list
    for i = 1,#NOT_PLANETBASE_BUILDPART_ID_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", NOT_PLANETBASE_BUILDPART_ID_TABLE[i]},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"BuildableOnPlanetBase", "False"},
            },
        }
    end
end
---- All parts on planet bases rules end ----
---------------------------------------------


-------------- CanScale rules ---------------
---------------------------------------------
if CAN_SCALE_PREFAB_PARTS == false then

    -- Reverts "CanScale" to "False" for prefab parts
    for i = 1,#PREFAB_KEYWORDS_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Group", PREFAB_KEYWORDS_TABLE[i]},
            ["SECTION_UP"] = 2,
            ["VALUE_MATCH"] = "True",
            ["REPLACE_TYPE"] = "ALL",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"CanScale", "False"},
            },
        }
    end

    -- Reverts "CanScale" to "False" for freighter storage containers
    for i = 1,#FREIGHTER_CONTAINERS_ID_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"]    = {"ID", FREIGHTER_CONTAINERS_ID_TABLE[i]},
            -- ["VALUE_MATCH"] = "True",
            ["REPLACE_TYPE"] = "ALL",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"CanScale", "False"},
            },
        }
    end
end

-- Reverts "CanScale" to "False" for vehicles parts (scaling them can cause important issues)
-- Vehicles parts are matched by their "Groups" keyword : if any new one is added by the devs it should trigger this.
-- Change_Table_Array[#Change_Table_Array + 1] =
-- {
    -- ["SPECIAL_KEY_WORDS"] = {"SubGroupName", "PLANETEXOCRAFT"},
    -- ["SECTION_UP"] = 2,
    -- ["REPLACE_TYPE"] = "ALL",
    -- ["VALUE_CHANGE_TABLE"] =
    -- {
        -- {"CanScale", "False"},
    -- },
-- }

-- Reverts "CanScale" to "True" for vehicles parts that should be scaleable
for i = 1,#SCALEABLE_VEHICLESPART_ID_TABLE do

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", SCALEABLE_VEHICLESPART_ID_TABLE[i]},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"CanScale", "True"},
        },
    }
end

-- Specific exceptions list for building parts not scaleable
for i = 1,#NOT_SCALEABLE_BUILDPART_ID_TABLE do

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", NOT_SCALEABLE_BUILDPART_ID_TABLE[i]},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"CanScale", "False"},
        },
    }
end
------------ CanScale rules end -------------
---------------------------------------------


------------ Build-count limits -------------
---------------------------------------------
if NO_BUILDCOUNT_LIMIT then

    -- No build-count limit
    Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["REPLACE_TYPE"] = "ALL",
            ["VALUE_MATCH"] = 0,
            ["VALUE_MATCH_OPTIONS"] = "~=", --does NOT match value above
            ["VALUE_CHANGE_TABLE"] =
            {
                {"PlanetLimit",        0},
                {"RegionLimit",        0},
                {"PlanetBaseLimit",    0},
                {"FreighterBaseLimit", 0},
            },
        }

else

    -- no build-count limit for storage type parts
    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SubGroupName", "TECHSTORAGE"},
        ["SECTION_UP"] = 2,
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_MATCH"] = 0,
        ["VALUE_MATCH_OPTIONS"] = "~=", --does NOT match value above
        ["VALUE_CHANGE_TABLE"] =
        {
                {"PlanetBaseLimit",    0},
                {"FreighterBaseLimit", 0},
        },
    }

    -- Removes build-count limit on all parts NOT related to resources farming
    for i = 1,#UNLIMITED_BUILPART_ID_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", UNLIMITED_BUILPART_ID_TABLE[i]},
            -- ["VALUE_MATCH"] = 0,
            -- ["VALUE_MATCH_OPTIONS"] = "~=", --does NOT match value above
            ["NOTICE_OFF"] = "True",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"PlanetLimit",        0},
                {"RegionLimit",        0},
                {"PlanetBaseLimit",    0},
                {"FreighterBaseLimit", 0},
            },
        }
    end
end

-- Applies custom build-count limits for specific parts
for i = 1,#CUSTOM_BUILDCOUNT_LIMITS do

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", CUSTOM_BUILDCOUNT_LIMITS[i][1]},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"PlanetLimit",        tostring(CUSTOM_BUILDCOUNT_LIMITS[i][2])},
            {"RegionLimit",        tostring(CUSTOM_BUILDCOUNT_LIMITS[i][3])},
            {"PlanetBaseLimit",    tostring(CUSTOM_BUILDCOUNT_LIMITS[i][4])},
            {"FreighterBaseLimit", tostring(CUSTOM_BUILDCOUNT_LIMITS[i][5])},
        },
    }
end
---------- Build-count limits end -----------
---------------------------------------------


-- Makes planting in any biome possible
if FARM_IN_ANY_BIOME then

    for i = 1,#FARM_IN_ANY_BIOME_ID_TABLE do

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", FARM_IN_ANY_BIOME_ID_TABLE[i]},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BaseBuildingDecorationType", "Normal"},
            {"BuildableOnPlanet",          "False"},
        },
    }
    Change_Table_Array[#Change_Table_Array + 1] =

    {
        ["SPECIAL_KEY_WORDS"] = {"ID", FARM_IN_ANY_BIOME_ID_TABLE[i], "Biome", "GcBiomeType.xml"},
        ["REPLACE_TYPE"] = "ONCEINSIDE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Biome", "All"}
        }
    }
    Change_Table_Array[#Change_Table_Array + 1] =

    {
        ["SPECIAL_KEY_WORDS"] = {"ID", FARM_IN_ANY_BIOME_ID_TABLE[i]},
        ["PRECEDING_KEY_WORDS"] = {"DependentConnections"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ConnectionDistance", 100}
        }
    }
    end
end


-- Allows to build some metal parts outside of bases
if METAL_PARTS_OUTSIDE_BASE then

    for i = 1,#METAL_OUTSIDE_BASE_ID_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", METAL_OUTSIDE_BASE_ID_TABLE[i]},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"BuildableOnPlanet", "True"}
            }
        }
    end
end


-- Allows to build some parts (Foundation, Pavings (x3), Communications Station) not only on bare terrains
for i = 1,#ANYTERRAIN_BUILDPART_ID_TABLE do

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", ANYTERRAIN_BUILDPART_ID_TABLE[i]},
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_MATCH"] = "Terrain",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BaseBuildingDecorationType", "Normal"},
        },
    }
end

-- Re-add planters on freighters after Endurance update
for i = 1,#PLANTERS_ON_FREIGHTER_ID_TABLE do

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", PLANTERS_ON_FREIGHTER_ID_TABLE[i]},
        ["PRECEDING_KEY_WORDS"] = {"Groups"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_BIO" />
          <Property name="SubGroupName" value="FRE_PLANTS" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
    }
    Change_Table_Array[#Change_Table_Array + 1] =

    {
        ["SPECIAL_KEY_WORDS"] = {"ID", PLANTERS_ON_FREIGHTER_ID_TABLE[i]},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"IsPlaceable", "True"},
        },
    }
end

 -- Re-add misc on freighters after Endurance update
for i = 1,#MISC_ON_FREIGHTER_ID_TABLE do

    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", MISC_ON_FREIGHTER_ID_TABLE[i]},
        ["PRECEDING_KEY_WORDS"] = {"Groups"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_TECH" />
          <Property name="SubGroupName" value="FRE_TECH_OTHER" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
    }
    Change_Table_Array[#Change_Table_Array + 1] =

    {
        ["SPECIAL_KEY_WORDS"] = {"ID", MISC_ON_FREIGHTER_ID_TABLE[i]},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildableOnSpaceBase", "True"},
            {"BuildableOnFreighter", "True"},
        },
    }
end

 -- Tech and Bio freighter rooms on planetbases after Endurance update
if FREIGHTERROOMS_ON_PLANETBASE then
    for i = 1,#FREIGHTERROOMS_ON_PLANETBASE_ID_TABLE do

        Change_Table_Array[#Change_Table_Array + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", FREIGHTERROOMS_ON_PLANETBASE_ID_TABLE[i]},
            ["PRECEDING_KEY_WORDS"] = {"Groups"},
            ["ADD_OPTION"] = "ADDafterLINE",
            ["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_IND" />
          <Property name="SubGroupName" value="BBB_PB_ADD" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
        }
    end
    Change_Table_Array[#Change_Table_Array + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "FRE_IND_SUB"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["ADD"] =
[[
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="BBB_PB_ADD" />
          <Property name="Name" value="BBB PlanetBase Add" />
        </Property>
]]
    }
end