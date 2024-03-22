CREATURE_INTERACT_DISTANCE = 100 --Original 5
CREATURE_INTERACT_RANGE    = 150
CREATURE_INTERACT_BOOST    = 2
CREATURE_INCUBATE_TIME     = 0
EGG_INTERACT_DISTANCE      = 25
EGG_TIMERS                 = true

EGG_TIMERS = GUIF({true, [[Do you want pet egg times to be reduced?  Default = Y.  Press ENTER for default value.]]},10)
print("EGG_TIMERS = "..tostring(EGG_TIMERS))

CREATURE_JOINT_DATA_TABLE =
    {
        {"FISH",           "joint1"},
        {"FISHFLOCK",      "RootJNT"},
        {"SWIMCOW",        "RootJNT"},
        {"SWIMRODENT",     "GlobalJNT"},
        {"JELLYFISH",      "centre"},
        {"SEASNAKE",       "RootJNT"},
        {"SHARK",          "Root"},
        {"BIRD",           "Root"},
        -- {"FLYINGSNAKE",    "RootJNT"},
        -- {"FLYINGLIZARD",   "Back2JNT"},
        {"BUTTERFLY",      "Root"},
        {"SMALLBIRD",      "Root"},
        {"BUTTERFLOCK",    "RootJNT"},
        {"MOLE",           "DiggerROOT"},
        {"PROTOROLLER",    "RootJNT"},
        {"PROTODIGGER",    "EyeStalkROOT"},
        {"PLOUGH",         "RootJNT"},
        {"DRILL",          "DiggerROOT"},
        {"WEIRDROLL",      "RootJNT"},
        {"WEIRDFLOAT",     "RootJNT"},
        {"WEIRDCRYSTAL",   "RootJNT"},
        {"WEIRDBUTTERFLY", "shellfly_ROOTSHJnt"},
        -- {"FIEND",          "RootJNT"},
        {"SCUTTLER",       "RootJNT"},
        {"SLUG",           "RootJNT"},
        {"MINIFIEND",      "RootJNT"},
        {"FIENDFISHSMALL", "joint1"},
        {"FLOATER",        "FrontJNT"},
        {"MINIDRONE",      "RootJNT"},
        {"FIENDFISHBIG",   "joint1"},
        {"ROCKCREATURE",   "RootJNT"},
    }

ROBOT_JOINT_DATA_TABLE =
    {
        {"WALKER", "Root"},
    }

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "CompanionPetUnlocker.pak",
["MOD_AUTHOR"]              = "Mjjstral & Babscoole",
["CONTRIBUTORS"]            = "Silent369 and Corvus",
["NMS_VERSION"]             = "4.52",
["DESCRIPTION"]             = "Enables more creatures to become companion pets",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\CREATURES\FLYINGLIZARDRIG\FLYINGLIZARD\ENTITIES\BODY_LIZARD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE\ENTITIES\KITECREATURE.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InteractionAction", "PressButton"},
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_SKINNY.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcInteractionComponentData.xml"},
                            ["SEC_SAVE_TO"] = "ADD_PET",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PET",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InteractDistance", CREATURE_INTERACT_DISTANCE},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_ALIEN.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_DEER.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_WEIRD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\BUTTERFLYRIG\BUTTERFLY\ENTITIES\BUTTERFLY.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\BUTTERFLYRIG\BUTTERFLY\ENTITIES\JELLYFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\BUTTERFLYRIG\BUTTERFLYFLOCK\ENTITIES\BUTTERFLYFLOCK.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\COWRIG\COWSWIM\ENTITIES\_COW_SWIM.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\ASTEROIDJELLYFISH\ENTITIES\ASTEROIDJELLYFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\FISHFIEND\ENTITIES\FISHFIEND.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\FISHFLOCK\ENTITIES\FISHFLOCK.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\FREIGHTERJELLYFISH\ENTITIES\FREIGHTERJELLYFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\JELLYFISH\ENTITIES\JELLYFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\PROC_JELLYFISH\ENTITIES\PROCJELLYFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\SMALLFISH\ENTITIES\BIGFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\SMALLFISH\ENTITIES\SMALLFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FLYINGLIZARDRIG\FLYINGLIZARD\ENTITIES\BODY_LIZARD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE\ENTITIES\_BODY_WORM.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE\ENTITIES\KITECREATURE.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\RODENTRIG\RODENTSWIM\ENTITIES\RODENTSWIM.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SANDWORM\SANDWORM\ENTITIES\SANDWORM.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SEASNAKE\SEASNAKE\ENTITIES\SEASNAKE.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SHARKRIG\SHARK\ENTITIES\SHARK1.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SLUG\SLUG\ENTITIES\DATA.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SMALLBIRD\BIRD\ENTITIES\BIRD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SMALLBIRD\BIRD\ENTITIES\SMALLBIRD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SMALLBIRD\BIRD\ENTITIES\_BODY_BIRD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SMALLBIRD\BIRDFLOCK\ENTITIES\BIRDFLOCK.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\FREIGHTERFIEND\ENTITIES\FREIGHTERFIEND.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\ROCKCREATURE\ENTITIES\ROCKCREATURE.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\ROCKSPIDER\ENTITIES\ROCKSPIDER.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\SPIDER\ENTITIES\_ACC1_BULBTOP.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\DIGGER\ENTITIES\DIGGER.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\DRILL\ENTITIES\DRILL.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\GROUNDCREATURE\ENTITIES\_GROUND_RODENT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\GROUNDCREATURE\ENTITIES\WEIRDDIGGER.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\GROUNDCREATURE\ENTITIES\DRILL.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\PLOW\ENTITIES\PLOW.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\WEIRDBUTTERFLY\ENTITIES\WEIRDBUTTERFLY.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDCRYSTAL.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\WEIRDFLOCK\ENTITIES\WEIRDFLOCK.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\CAVE\SMALLCREATURE\SUNBEETLE\SUNBEETLE\ENTITIES\SUNBEETLE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS\ENTITIES\DIPLO.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\FLYINGLIZARD\FLYINGLIZARD\ENTITIES\FLYINGLIZARD.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\FLYINGLIZARD\FLYINGLIZARDPATH\ENTITIES\FLYINGLIZARD.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO02\ENTITIES\_BODY_RHINO.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO\ENTITIES\_BODY_RHINO.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINOSTANDARD\ENTITIES\_BODY_RHINOSTANDARD.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\TRICERATOPS\QUADREPTILE\ENTITIES\_BODY_TRI.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\TRICERATOPS\TRICERATOPS\ENTITIES\_BODY_TRI.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\TRICERATOPS\TRICERATOPSTWOHEADS\ENTITIES\_BODY_TRI.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE\ENTITIES\ANTELOPE3.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPEFAKE\ENTITIES\ANTELOPEFAKE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\SMALLCREATURE\BUTTERFLY\BUTTERFLY\ENTITIES\BUTTERFLY.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\SMALLCREATURE\BUTTERFLY\GLOWBUG\ENTITIES\GLOWBUG.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\RAINFOREST\SMALLCREATURE\RODENT\RODENT\ENTITIES\_BODY_RODENT.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\FREIGHTERDRONE\ENTITIES\FREIGHTERDRONE.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\SENTINELMECH\ENTITIES\MECHARMOUR.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\WALKER\ENTITIES\WALKER.ENTITY.MBIN",

                        -- Note: These don't have a GcCreatureComponentData so we don't risk to enable them.  This list is not all inclusive.
                        -- -- "MODELS\COMMON\ROBOTS\DRONE\ENTITIES\DRONE.ENTITY.MBIN",
                        -- -- "MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\ENTITIES\CORRUPTEDDRONE.ENTITY.MBIN",
                        -- -- "MODELS\COMMON\ROBOTS\DRONEARMOURED\ENTITIES\DRONEARMOURED.ENTITY.MBIN",
                        -- -- "MODELS\PLANETS\CREATURES\WEIRD\CRYSTALCREATURE\ENTITIES\CRYSTALCREATURE.ENTITY.MBIN",
                        -- -- "MODELS\PLANETS\CREATURES\WEIRD\CRYSTALCREATURE\ENTITIES\CRYSTALCREATUREB.ENTITY.MBIN",
                        -- -- "MODELS\PLANETS\CREATURES\WEIRD\GEMCREATURE\ENTITIES\GEMCREATURE.ENTITY.MBIN",
                        -- -- "MODELS\PLANETS\CREATURES\WEIRD\GROUNDCREATURE\ENTITIES\_GROUND_RODENT.ENTITY.MBIN",
                        -- -- "MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\_FLOAT_BUBBLE.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["SEC_ADD_NAMED"] = "ADD_PET",
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\CREATURES\BEETLERIG\BEETLE\ENTITIES\BEETLEDATA.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\BUTTERFLYRIG\LARGEBUTTERFLY\ENTITIES\LARGEBUTTERFLYDATA.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\ROLLERCREATURE\ENTITIES\_STRANGE_ROLL.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDFLOAT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDROLL.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RepeatInteraction", "False"}, -- Original "True"
                                {"UseInteractCamera", "False"}, -- Original "True"
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEBUTTERFLY"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRidingData.xml"},
                            ["SEC_SAVE_TO"] = "ADD_RIDE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_RIDE",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x",                        "0"},
                                {"y",                        "0"},
                                {"z",                        "0"},
                                {"UprightStrength",          "1"},
                                {"ScaleForNeutralLegSpread", "1.25"},
                                {"ScaleForMinLegSpread",     "0.5"},
                                {"ScaleForMaxLegSpread",     "4.75"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_RIDE",
                            ["SPECIAL_KEY_WORDS"] = {"Offset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0.25"},
                                {"z", "-0.125"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\ROBOTDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "QUAD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LegSpread",                "True"},
                                {"ScaleForNeutralLegSpread", "1.25"},
                                {"ScaleForMinLegSpread",     "0.5"},
                                {"ScaleForMaxLegSpread",     "4.75"},
                                {"IdleRidingAnim",           "RIDE_ANT_IDLE"},
                                {"DefaultRidingAnim",        "RIDE_ANT_WALK"},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "*",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureInteractBaseRange",              CREATURE_INTERACT_RANGE},
                                {"PetInteractBaseRange",                   CREATURE_INTERACT_RANGE},
                                {"CreatureInteractionRangeBoostHuge",      CREATURE_INTERACT_BOOST}, --Original "1.5"
                                {"CreatureInteractionRangeBoostLarge",     CREATURE_INTERACT_BOOST}, --Original "1.2"
                                {"CreatureInteractionRangeBoostMedium",    CREATURE_INTERACT_BOOST}, --Original "1.1"
                                {"CreatureInteractionRangeBoostSmall",     CREATURE_INTERACT_BOOST}, --Original "1"
                                {"CreatureInteractionRangeBoostRun",       CREATURE_INTERACT_BOOST}, --Original "2"
                                {"CreatureInteractionRangeBoostSprint",    CREATURE_INTERACT_BOOST}, --Original "3.5"
                                {"CreatureInteractionRangeReducePredator", CREATURE_INTERACT_BOOST}, --Original "0.3"
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRideSize",      "0.1"},   --Smallest Viable
                                {"AllowSleeping",    "True"},  --Original "False"
                                {"AggressiveSharks", "False"}, --Original "False"
                                {"PiedPiper",        "False"}, --Original "False"
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {  --Note: These are already unlocked as companions/have the pet code block.
                        "MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\QUADRUPED_MESH.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\QUADRUPED_PET.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\SPHEREDRONE\ENTITIES\DRONEJNT.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUAD.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\ENTITIES\SPIDERSMALLQUAD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_CYBER1.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_SKINNY.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\BEETLERIG\BEETLE\ENTITIES\BEETLEDATA.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPEROBOT\ENTITIES\ANTELOPEROBOT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPETWOLEGS\ENTITIES\_BODY_TWOLEGDEER1.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\BLOBRIG\BLOB\ENTITIES\_BODY_BLOB.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\BUTTERFLYRIG\LARGEBUTTERFLY\ENTITIES\LARGEBUTTERFLYDATA.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\CATRIG\BONECAT\ENTITIES\BONECATBODY.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\CATRIG\CAT\ENTITIES\CATHINDLEGS.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\CATRIG\CAT\ENTITIES\CAT_BODY.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\CATRIG\SIXLEGCAT\ENTITIES\_BODY_SIXLEGCAT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\COWRIG\COWFLOATING\ENTITIES\_BODY_ROCK.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\COWRIG\COW\ENTITIES\_BODY_COW.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\COWRIG\COWHINDLEGS\ENTITIES\_BODY_ROCK.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\COWRIG\SIXLEGGEDCOW\ENTITIES\_BODY_6LEGCOW.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\LANDJELLYFISH\ENTITIES\LANDJELLYFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FLYINGLIZARDRIG\FLYINGLIZARD\ENTITIES\BODY_LIZARD.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE\ENTITIES\KITECREATURE.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\GRUNTRIG\GRUNT\ENTITIES\_BODY_GRUNTFLOAT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\GRUNTRIG\GRUNT\ENTITIES\_BODY_GRUNT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\RODENTRIG\RODENT\ENTITIES\_BODY_RODENT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\FIEND\ENTITIES\_FIEND_BODY.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\SPIDER\ENTITIES\SPIDERFLOAT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\SPIDER\ENTITIES\SPIDER.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\STRIDERRIG\STRIDER\ENTITIES\STRIDERMESH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\TREXRIG\TREX\ENTITIES\_BODY_TREX.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\TRICERATOPSRIG\TRICERATOPS\ENTITIES\_BODY_TRI.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\FLOATERCREATURE\ENTITIES\_STRANGE_FLOAT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\ROLLERCREATURE\ENTITIES\_STRANGE_ROLL.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDFLOAT.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDROLL.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InteractDistance", CREATURE_INTERACT_DISTANCE},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVE\PET_EGG\ENTITIES\PET_EGG.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_PETEGGLOOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InteractDistance", EGG_INTERACT_DISTANCE}, --Original "0"
                            }
                        }
                    }
                },
            }
        }
    }
}

local ChangesToCDTJoints = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]

for i = 1, #CREATURE_JOINT_DATA_TABLE do
    local Id = CREATURE_JOINT_DATA_TABLE[i][1]
    local JointName = CREATURE_JOINT_DATA_TABLE[i][2]


            ChangesToCDTJoints[#ChangesToCDTJoints+1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"Id", Id},
                ["PRECEDING_KEY_WORDS"] = {"Data"},
                ["SEC_ADD_NAMED"] = "ADD_RIDE",
            }

            ChangesToCDTJoints[#ChangesToCDTJoints+1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"Id", Id},
                ["PRECEDING_KEY_WORDS"] = {"GcCreatureRidingData.xml"},
                ["VALUE_CHANGE_TABLE"] =
                {
                   {"JointName", JointName},
                }
            }
end

local ChangesToRDTJoints = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]

for i = 1, #ROBOT_JOINT_DATA_TABLE do
    local Id = ROBOT_JOINT_DATA_TABLE[i][1]
    local JointName = ROBOT_JOINT_DATA_TABLE[i][2]


            ChangesToRDTJoints[#ChangesToRDTJoints+1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"Id", Id},
                ["PRECEDING_KEY_WORDS"] = {"Data"},
                ["SEC_ADD_NAMED"] = "ADD_RIDE",
            }

            ChangesToRDTJoints[#ChangesToRDTJoints+1] =
            {
                ["SPECIAL_KEY_WORDS"] = {"Id", Id},
                ["PRECEDING_KEY_WORDS"] = {"GcCreatureRidingData.xml"},
                ["VALUE_CHANGE_TABLE"] =
                {
                   {"JointName", JointName},
                }
            }
end

if EGG_TIMERS then

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][7]["EXML_CHANGE_TABLE"]

    local temp_table_eggtimers =
    {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"PetGrowthTime",          CREATURE_INCUBATE_TIME}, --Original "1209600"
            {"PetIncubationTime",      CREATURE_INCUBATE_TIME}, --Original "86400"
            {"PetEggLayingDuration",   CREATURE_INCUBATE_TIME}, --Original "0.7"
            {"PetEggLayingInterval",   CREATURE_INCUBATE_TIME}, --Original "86400"
            {"PetEggFirstEggDelay",    CREATURE_INCUBATE_TIME}, --Original "86400"
            {"PetTrustChangeInterval", CREATURE_INCUBATE_TIME}, --Original "86400"
            {"CanAlwaysLayEgg",        "True"},                 --Original "False"
            {"PetTrustOnAdoption",     "1"},                    --Original "0.6"
            {"PetTrustOnHatch",        "1"},                    --Original "0.7"
            {"PetMinTrust",            "1"},                    --Original "0.2"
            {"PetEggModificationTime", "1"},                    --Original "5"
        }
    }
    Change_Table_Array[#Change_Table_Array + 1] = temp_table_eggtimers
end