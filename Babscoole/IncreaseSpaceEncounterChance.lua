ChanceMultiplier = "1.5"

Author          = "Babscoole & Gumsk"
ModName         = "IncreaseSpaceEncounterChance"
ModNameSub      = ChanceMultiplier.."x"
BaseDescription = "Makes space pulse encounters more likely"
GameVersion     = "4.52"
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
       --the SpawnChance AND change StandardEncounter from False to True
       --Data fields:
       --Id,          StandardEncounter,SpawnChance
       --=============================================================================
        {"SPACE_EGG",       "True",      7},
        {"BLACK_HOLE",      "False",     1},
        {"DERELICT_1",      "True",      2},
        {"DERELICT_2",      "True",      1},
        {"DERELICT_3",      "True",      1},
        {"ATLAS_BEACON1",   "False",     1},
        {"ATLAS_BEACON2",   "False",     1},
        {"RADIO_PILLAR",    "False",     1},
        {"WEIRD_METAL",     "False",     1},
        {"NEURON",          "False",     1},
        {"RELIC_GATE",      "False",     1},
        {"GAS_BRAIN",       "False",     1},
        {"SPINNER",         "False",     1},
        {"GYRO_BALL",       "False",     1},
        {"GEK_HEAD",        "False",     1},
        {"HORROR",          "False",     1},
        {"JELLYFISH",       "False",     1},
        {"RELAY_BEACON",    "False",     1},
        {"CRYSTAL",         "False",     1},
        {"CUBE_STATION",    "False",     1},
        {"ASTEROID_BEACON", "False",     1},
        {"LINE_GEO",        "False",     1},
        {"SPACE_CLOCK",     "False",     1},
        {"BONES",           "False",     1},
        {"EYE",             "False",     1},
        {"PRISON",          "False",     1},
        {"SILOS",           "False",     1},
        {"TRADER_HAIL",     "True",      12},
        {"RELIC_HAIL",      "True",      2},
        {"REPAIR_HAIL",     "True",      4},
        {"ALIEN_SHIP1",     "False",     900},
        {"ALIEN_SHIP2",     "False",     900},
        {"ALIEN_SHIP3",     "False",     900},
        {"ALIEN_SHIP4",     "False",     900},
        {"ALIEN_SHIP5",     "False",     900},
        {"BIOSHIP3_POI",    "False",     1000},
        {"MOTHERSHIP",      "False",     0},
        {"ABAND_FREIGHTER", "False",     0.25},
        {"ALIEN_SHIP_LOOP", "False",     9000},
        {"PIRATECLUE_HAIL", "False",     10000},
        {"PIRATE_BETRAY",   "False",     0},
        {"PIRATE_ATLAS",    "False",     0},
        {"FREIGHTER_PODS",  "False",     0},
        {"BIO_FRIG",        "False",     1},
        {"BIO_FRIG_FIRST",  "False",     0},
        {"ALIEN_PIRATES",   "False",     0},
        {"S8_POD_POI",      "False",     0},
        {"S9_PIRATE",       "False",     0},
        {"SENT_SHIP",       "False",     12},
        {"ROBOM_BOAT",      "False",     0},
    }

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]            = ModName..ModNameSub..".pak",
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
                    ["EXML_CHANGE_TABLE"] = {
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
                    ["EXML_CHANGE_TABLE"] = {

                    },
                },
            }
        }
    }
}

local ChangesToEncounters = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

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