NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_PU_CREATURES.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.38",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureTurnMin",             "0.5"},
                                {"CreatureTurnMax",             "0.3"},
                                {"SandWormChangeDirectionTime", "2.25"},
                                {"SandWormSteerAdjustTime",     "0.25"},
                                {"SandWormMaxSteer",            "1"},
                                {"SandWormMaxHeightAdjust",     "3"},
                                {"SandWormJumpHeight",          "0.15"},
                                {"SandWormJumpTime",            "0.5"},
                                {"SandWormSubmergeDepth",       "1"},
                                {"SandWormSubmergeTime",        "4"},
                                {"SandWormSurfaceTime",         "6"},
                                {"SandWormMaxJumps",            "15"},
                                {"SandWormDespawnDist",         "3500"},
                                {"PercentagePlayerPredators",   "1.5"},
                                {"PredatorBoredomDistance",     "30"},
                                {"MiniDroneShotMaxAngle",       "5"},
                                {"TurnRadiusMultiplier",        "10"},
                                {"MaxTurnRadius",               "1200"},
                                {"TurnSlowAreaCos",             "1"},
                                {"BadTurnPercent",              "0"},
                                {"GroupBabyScale",              "0.45"},
                                {"CreatureHarvestAmountSmall",  "3"},
                                {"CreatureHarvestAmountMed",    "3"},
                                {"CreatureHarvestAmountLarge",  "6"},
                                {"CreatureHarvestAmountHuge",   "9"},
                                {"HarvestCooldownMax",          "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlyingSnakeData", "GcFlyingSnakeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CircleSpeed",           "6"},
                                {"DefaultCircleDistance", "400"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PredatorProbabilityModifier", "GcCreatureRoleFrequencyModifier.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRoleFrequencyModifier", "High"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HerbivoreProbabilityModifier", "GcCreatureRoleFrequencyModifier.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRoleFrequencyModifier", "Low"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FISH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "400"},
                                {"Spacing",             "4"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFLOCK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwarmMovementRadius",    "10"},
                                {"Spacing",                "4"},
                                {"Range",                  "60"},
                                {"MaxBankingAmount",       "0.15"},
                                {"MaxSpeed",               "2.5"},
                                {"AnimSpeed",              "0.5"},
                                {"MinSpeedScale",          "0.3"},
                                {"MoveRange",              "150"},
                                {"MinFlockMembers",        "3"},
                                {"FlockFollow",            "0.4"},
                                {"FlockCohere",            "2"},
                                {"FlockAlign",             "0.6"},
                                {"FlockMoveSpeed",         "0.07"},
                                {"FlockMoveDirectionTime", "1"},
                                {"MaxBank",                "2"},
                                {"MinFlapSpeed",           "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMCOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "700"},
                                {"Spacing",             "30"},
                                {"Range",               "60"},
                                {"MaxBankingAmount",    "0.1"},
                                {"MaxSpeed",            "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMRODENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "500"},
                                {"Spacing",             "30"},
                                {"Range",               "60"},
                                {"MaxBankingAmount",    "0.1"},
                                {"MaxSpeed",            "1.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYFISH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "4"},
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "400"},
                                {"Spacing",             "60"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRAB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SEASNAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "14"},
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "400"},
                                {"Spacing",             "4"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHARK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "14"},
                                {"MoveRange",           "225"},
                                {"SwarmMovementRadius", "700"},
                                {"Spacing",             "24"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BIRD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "225"},
                                {"SwarmMovementRadius", "1200"},
                                {"Spacing",             "20"},
                                {"Range",               "2"},
                                {"MaxBankingAmount",    "0.15"},
                                {"MaxSpeed",            "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGSNAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "18"},
                                {"GroundHeightOffset",  "-15"},
                                {"MoveRange",           "150"},
                                {"HeightMin",           "15"},
                                {"HeightMax",           "40"},
                                {"MaxCount",            "4"},
                                {"SwarmMovementRadius", "1000"},
                                {"Spacing",             "80"},
                                {"Range",               "2"},
                                {"MaxBankingAmount",    "0.2"},
                                {"MaxSpeed",            "0.4"},
                                {"AlignTime",           "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGLIZARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "30"},
                                {"GroundHeightOffset",  "10"},
                                {"MoveRange",           "550"},
                                {"TurnRadiusScale",     "2"},
                                {"HeightMin",           "10"},
                                {"MinCount",            "1"},
                                {"MaxCount",            "1"},
                                {"SwarmMovementRadius", "2000"},
                                {"SwarmMovementType",   "Random"},
                                {"Alignment",           "0.4"},
                                {"SeparateStrength",    "3"},
                                {"Spacing",             "120"},
                                {"Range",               "100"},
                                {"MaxBankingAmount",    "0.25"},
                                {"MaxSpeed",            "10"},
                                {"FlapTurn",            "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "15"},
                                {"SwarmMovementRadius", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLY"},
                            ["PRECEDING_KEY_WORDS"] ={"GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "40"},
                                {"Range",            "20"},
                                {"MaxBankingAmount", "0.05"},
                                {"MaxSpeed",         "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLY"},
                            ["PRECEDING_KEY_WORDS"] ={"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "40"},
                                {"Range",            "20"},
                                {"MaxBankingAmount", "0.25"},
                                {"MaxSpeed",         "2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLBIRD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",       "0.5"},
                                {"MinSpeedScale",   "0.3"},
                                {"MoveRange",       "200"},
                                {"HeightMin",       "2"},
                                {"MinFlockMembers", "3"},
                                {"MaxBank",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLOCK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwarmMovementRadius", "10"},
                                {"Spacing",             "4"},
                                {"Range",               "60"},
                                {"MaxBankingAmount",    "0.15"},
                                {"MaxSpeed",            "1"},
                                {"AnimSpeed",           "0.5"},
                                {"MinSpeedScale",       "0.3"},
                                {"MoveRange",           "150"},
                                {"FlockFollow",         "0.4"},
                                {"FlockCohere",         "2"},
                                {"FlockMoveSpeed",      "0.01"},
                                {"MaxBank",             "15"},
                                {"MinFlapSpeed",        "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEBUTTERFLY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "5"},
                                {"MoveRange",           "15"},
                                {"SwarmMovementRadius", "100"},
                                {"Spacing",             "16"},
                                {"Range",               "20"},
                                {"MaxBankingAmount",    "0.25"},
                                {"MaxSpeed",            "2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGBEETLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "9"},
                                {"MoveRange",           "15"},
                                {"SwarmMovementRadius", "100"},
                                {"Spacing",             "8"},
                                {"Range",               "20"},
                                {"MaxBankingAmount",    "0.25"},
                                {"MaxSpeed",            "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ANTELOPE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "4"},
                                {"MoveRange", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ANTELOPE", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ANTELOPE", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "4"},
                                {"MoveRange", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRICERATOPS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "16"},
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRICERATOPS", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRICERATOPS", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RODENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RODENT", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RODENT", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MOLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COW", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COW", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CAT", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CAT", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "8"},
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "20"},
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDER", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDER", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TREX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "12"},
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TREX", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TREX", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TREX", "HerbivoreProbabilityModifier", "GcCreatureRoleFrequencyModifier.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRoleFrequencyModifier", "Never"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCOW", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCOW", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCAT", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCAT", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "16"},
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDER", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDER", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATSPIDER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "16"},
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATSPIDER", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATSPIDER", "Anim", "SLOWWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOROLLER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOROLLER", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "0"},
                                {"Range",            "8"},
                                {"MaxBankingAmount", "0.15"},
                                {"MaxSpeed",         "3.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "20"},
                                {"Range",            "8"},
                                {"MaxBankingAmount", "0.25"},
                                {"MaxSpeed",         "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "40"},
                                {"Range",            "8"},
                                {"MaxBankingAmount", "0.25"},
                                {"MaxSpeed",         "1.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "12"},
                                {"Range",            "8"},
                                {"MaxBankingAmount", "0.5"},
                                {"MaxSpeed",         "2.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",  "40"},
                                {"Range",    "8"},
                                {"MaxSpeed", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "30"},
                                {"Range",            "8"},
                                {"MaxBankingAmount", "0.15"},
                                {"MaxSpeed",         "1.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",          "30"},
                                {"Range",            "8"},
                                {"MaxBankingAmount", "0.15"},
                                {"MaxSpeed",         "2.5"},
                            }
                        },
                         {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml", "GcCreatureSwarmDataParams.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Range",    "8"},
                                {"MaxSpeed", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTODIGGER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTODIGGER", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.01"},
                                {"MinSpeedScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PROTODIGGER", "Anim", "RUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.01"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLOUGH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",            "4"},
                                {"FlapSpeedMin",        "0.1"},
                                {"FlapSpeedMax",        "0.1"},
                                {"FlapSpeed",           "1"},
                                {"FlapAccel",           "0"},
                                {"FlapSpeedMinScale",   "0.1"},
                                {"FlapSpeedMaxScale",   "0.1"},
                                {"MoveRange",           "150"},
                                {"MoveSpeedScale",      "20"},
                                {"SwarmMovementRadius", "100"},
                                {"Spacing",             "20"},
                                {"Range",               "8"},
                                {"MaxBankingAmount",    "0.25"},
                                {"MaxSpeed",            "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLOUGH"},
                            ["PRECEDING_KEY_WORDS"] = {"ANIMS"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.01"},
                                {"MaxSpeedScale", "2.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLOUGH"},
                            ["PRECEDING_KEY_WORDS"] = {"TintableEffects"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LightStrength", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRILL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "100"},
                                {"Spacing",             "20"},
                                {"Range",               "8"},
                                {"MaxSpeed",            "4.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDROLL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDFLOAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",      "4"},
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDCRYSTAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",      "4"},
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDBUTTERFLY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "90"},
                                {"SwarmMovementRadius", "100"},
                                {"Spacing",             "40"},
                                {"Range",               "20"},
                                {"MaxBankingAmount",    "0.1"},
                                {"MaxSpeed",            "2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",           "0.5"},
                                {"MinSpeedScale",       "0.3"},
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "10"},
                                {"Spacing",             "4"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SLUG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MINIFIEND"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDFISHSMALL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "400"},
                                {"Spacing",             "60"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "10"},
                                {"Spacing",             "8"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MINIDRONE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",             "0.75"},
                                {"MaxScale",             "1.25"},
                                {"FurChance",            "0"},
                                {"MoveRange",            "30"},
                                {"MoveSpeedScale",       "3"},
                                {"HeightMin",            "0.1"},
                                {"HeightMax",            "0.5"},
                                {"HeightTime",           "1"},
                                {"MinCount",             "1"},
                                {"MaxCount",             "1"},
                                {"SwarmMovementRadius",  "50"},
                                {"Spacing",              "32"},
                                {"Range",                "60"},
                                {"MaxSpeed",             "1"},
                                {"NearDist",             "4"},
                                {"FarDist",              "8"},
                                {"AttackLightIntensity", "1.4"},
                                {"MinFlurryHits",        "2"},
                                {"MaxFlurryHits",        "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDFISHBIG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "225"},
                                {"SwarmMovementRadius", "700"},
                                {"Spacing",             "24"},
                                {"Range",               "60"},
                                {"MaxSpeed",            "2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROCKCREATURE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed",     "0.5"},
                                {"MinSpeedScale", "0.3"},
                                {"MoveRange",     "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MoveRange",           "150"},
                                {"SwarmMovementRadius", "1000"},
                                {"Spacing",             "80"},
                                {"Range",               "2"},
                                {"MaxBankingAmount",    "0.15"},
                                {"MaxSpeed",            "40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\CREATURES\SANDWORMMINIEMERGEDUSTFALL\EMITTERS\DUSTRINGEMITTER.PARTICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"EmissionRate", "TkEmitterFloatProperty.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FixedValue", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourMiddle", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0.01"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\DUST\SANDWORMDUST\EMITTERS\DUSTEMITTER.PARTICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourMiddle", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourEnd", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0.1"},
                            }
                        },
                    }
                },
            }
        }
    }
}