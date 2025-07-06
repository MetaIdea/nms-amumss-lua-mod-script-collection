ChanceMultiplier = "1.5"

Author          = "Babscoole & Gumsk"
ModName         = "IncreaseSpaceEncounterChance"
ModNameSub      = ChanceMultiplier.."x"
BaseDescription = "Makes space pulse encounters more likely"
GameVersion     = "5.73"
--ModVersion      = "a"

--[[ Files Modified:
GCGAMEPLAYGLOBALS.GLOBAL.MBIN
METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN
--]]

ENCOUNTER_DATA_TABLE =
    {
       --=============================================================================
       --All entries are same as vanilla NMS settings by default
       --If you wish to increase the chances of a special encounter occuring, change
       --the SpawnChance AND change StandardEncounter from false to true
       --Data fields:
       --Id,          StandardEncounter,SpawnChance
       --=============================================================================
        {"SPACE_EGG",       "true",      7},
        {"BLACK_HOLE",      "false",     1},
        {"DERELICT_1",      "true",      2},
        {"DERELICT_2",      "true",      1},
        {"DERELICT_3",      "true",      1},
        {"ATLAS_BEACON1",   "false",     1},
        {"ATLAS_BEACON2",   "false",     1},
        {"RADIO_PILLAR",    "false",     1},
        {"WEIRD_METAL",     "false",     1},
        {"NEURON",          "false",     1},
        {"RELIC_GATE",      "false",     1},
        {"GAS_BRAIN",       "false",     1},
        {"SPINNER",         "false",     1},
        {"GYRO_BALL",       "false",     1},
        {"GEK_HEAD",        "false",     1},
        {"HORROR",          "false",     1},
        {"JELLYFISH",       "false",     1},
        {"RELAY_BEACON",    "false",     1},
        {"CRYSTAL",         "false",     1},
        {"CUBE_STATION",    "false",     1},
        {"ASTEROID_BEACON", "false",     1},
        {"LINE_GEO",        "false",     1},
        {"SPACE_CLOCK",     "false",     1},
        {"BONES",           "false",     1},
        {"EYE",             "false",     1},
        {"PRISON",          "false",     1},
        {"SILOS",           "false",     1},
        {"TRADER_HAIL",     "true",      12},
        {"RELIC_HAIL",      "true",      2},
        {"REPAIR_HAIL",     "true",      4},
        {"ALIEN_SHIP1",     "false",     900},
        {"ALIEN_SHIP2",     "false",     900},
        {"ALIEN_SHIP3",     "false",     900},
        {"ALIEN_SHIP4",     "false",     900},
        {"ALIEN_SHIP5",     "false",     900},
        {"BIOSHIP3_POI",    "false",     1000},
        {"MOTHERSHIP",      "false",     0},
        {"ABAND_FREIGHTER", "false",     0.25},
        {"ALIEN_SHIP_LOOP", "false",     9000},
        {"PIRATECLUE_HAIL", "false",     10000},
        {"PIRATE_BETRAY",   "false",     0},
        {"PIRATE_ATLAS",    "false",     0},
        {"FREIGHTER_PODS",  "false",     0},
        {"BIO_FRIG",        "false",     1},
        {"BIO_FRIG_FIRST",  "false",     0},
        {"ALIEN_PIRATES",   "false",     0},
        {"S8_POD_POI",      "false",     0},
        {"S9_PIRATE",       "false",     0},
        {"SENT_SHIP",       "false",     12},
        {"ROBOM_BOAT",      "false",     0},
    }

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]            = ModName..ModNameSub..,
    ["MOD_DESCRIPTION"]         = BaseDescription,
    ["MOD_AUTHOR"]              = Author,
    ["NMS_VERSION"]             = GameVersion,
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    ["MODIFICATIONS"]           = {
        {
            ["MBIN_CHANGE_TABLE"] = {
            --=============================================================================
            --Modified overall pulse encounter chance
            --=============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PulseEncounterChanceStandard", ChanceMultiplier}, --0.0066
                                {"PulseEncounterChanceRed",      ChanceMultiplier}, --0.001
                                {"PulseEncounterChanceGreen",    ChanceMultiplier}, --0.002
                                {"PulseEncounterChanceBlue",     ChanceMultiplier}, --0.003
                            },
                        },
                    },
                },
            --=============================================================================
            --Tweak individual encounter chances
            --=============================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {

                    },
                },
            }
        }
    }
}

local ChangesToEncounters = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

for i = 1, #ENCOUNTER_DATA_TABLE do
    local Id = ENCOUNTER_DATA_TABLE[i][1]
    local SE = ENCOUNTER_DATA_TABLE[i][2]
    local SC = ENCOUNTER_DATA_TABLE[i][3]


            ChangesToEncounters[#ChangesToEncounters+1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"Id", Id},
                ["VALUE_CHANGE_TABLE"] = {
                    {"StandardEncounter", SE},
                    {"SpawnChance", SC},
                },
            }
end