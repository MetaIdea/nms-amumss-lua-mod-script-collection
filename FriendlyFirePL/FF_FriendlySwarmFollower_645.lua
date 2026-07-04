----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "FriendlySwarmFollower"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "645"
METADATA_MOD_DESC       = "This mod reskins the Laylaps / The Sentry companion drone into a Swarm planetary drone."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files modified by this mod
--------------------------------------------------

-- modified files
FILE_GLOBALS_ROBOTGLOBALS =             "GCROBOTGLOBALS.MBIN"
FILE_METADATA_DEFAULT_REALITY =         "METADATA\REALITY\DEFAULTREALITY.MBIN"
FILE_METADATA_REWARD_TABLE =            "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"
FILE_METADATA_ALIENPUZZLETABLE =        "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
FILE_METADATA_SCANEVENTPLANET =         "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN"
FILE_METADATA_STATUS_MESSAGES =         "METADATA\GAMESTATE\MESSAGES\STATUSMESSAGEDEFINITIONS.MBIN"
FILE_METADATA_PROJECTILE_TABLE =        "METADATA\PROJECTILES\PROJECTILETABLE.MBIN"

-- new files
FILE_MODELS_SWARMFOLLOWER_SCENE =       "MODELS\COMMON\SPACECRAFT\SWARM\SWARMFOLLOWER.SCENE.MBIN"
FILE_MODELS_SWARMFOLLOWER_ENTITY =      "MODELS\COMMON\SPACECRAFT\SWARM\SWARMFOLLOWER\ENTITIES\SWARMFOLLOWER.ENTITY.MBIN"
FILE_MODELS_SWARMFOLLOWER_MATERIAL =    "MODELS\COMMON\SPACECRAFT\SWARM\SWARMFOLLOWER\SWARMDRONEMAT.MATERIAL.MBIN"

-- vanilla templates (not modified)
FILE_MODELS_SWARMDRONEPLANET_SCENE =    "MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET.SCENE.MBIN"
FILE_MODELS_SWARMDRONEPLANET_ENTITY =   "MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\ENTITIES\SWARMDRONEPLANETDATA.ENTITY.MBIN"
FILE_MODELS_SENTINELSCROLL_MATERIAL =   "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\LIGHTSCROLLBMAT.MATERIAL.MBIN"
FILE_MODELS_FRIENDLYDRONE_ENTITY =      "MODELS\COMMON\ROBOTS\FRIENDLYDRONE\ENTITIES\FRIENDLYDRONE.ENTITY.MBIN"
FILE_METADATA_SCANEVENTVEHICLE =        "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEVEHICLE.MBIN"



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
["NMS_VERSION"]		    = METADATA_NMS_VERSION,
["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

["MODIFICATIONS"] =
{
    {
        ["MBIN_CHANGE_TABLE"]   =
        {
            {
                -- create new files
                ["MBIN_FILE_SOURCE"] = 
                {
                    {  FILE_MODELS_SWARMDRONEPLANET_SCENE,          FILE_MODELS_SWARMFOLLOWER_SCENE,        },
                    {  FILE_MODELS_FRIENDLYDRONE_ENTITY,            FILE_MODELS_SWARMFOLLOWER_ENTITY,       },
                    {  FILE_MODELS_SENTINELSCROLL_MATERIAL,         FILE_MODELS_SWARMFOLLOWER_MATERIAL,     },
                },
            },

            {
                --------------------------------------------------
                -- swarm follower scene MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_SWARMFOLLOWER_SCENE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- link new entity file
                        ["SKW"] = {"Name","ATTACHMENT",},
                        ["VCT"] = {{"Value",FILE_MODELS_SWARMFOLLOWER_ENTITY,},},
                    },

                    {
                        -- change material for blue eye
                        ["SKW"] = {"Name","Lens_2","Name","MATERIAL",},
                        ["VCT"] = {{"Value",FILE_MODELS_SWARMFOLLOWER_MATERIAL,},},
                    },

                    {
                        -- remove the red attack effect
                        ["SKW"] = {{"Name","Attack",},{"Name","Patrol",},},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- change scanning effect from red to blue
                        ["SKW"] = {"Name","Identify","Name","MATERIAL",},
                        ["VCT"] = {{"Value","MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\DRONESCAN_TUNNELMAT2.MATERIAL.MBIN",},},
                    },
                },
            },

            {
                --------------------------------------------------
                -- swarm follower material MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_SWARMFOLLOWER_MATERIAL,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- link new texture file for blue eyes
                        ["SKW"] = {"Name","gDiffuseMap",},
                        ["VCT"] = {{"Map","TEXTURES/SWARMDRONE_EYEANIM.DDS",},},
                    },

                    {
                        -- reduce scrolling effect speed
                        ["SKW"] = {"Name","gUVScrollStepVec4",},
                        ["VCT"] = {{"X",0.1,},},
                    },

                    {
                        -- change material class
                        ["SKW"] = {"Class","TkMaterialClass",},
                        ["VCT"] = {{"MaterialClass","Glow",},},
                    },
                },
            },

            {
                --------------------------------------------------
                -- swarm drone entity MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_SWARMDRONEPLANET_ENTITY,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get template for tail joint
                        ["SKW"] = {"Components","GcSpringComponentData",},
                        ["SEC_SAVE_TO"] = "SEC_SPRING",
                    },
                },
            },

            {
                --------------------------------------------------
                -- swarm follower entity MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_SWARMFOLLOWER_ENTITY,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- increase marker range
                        ["SKW"] = {"Components","GcScannableComponentData",},
                        ["VCT"] = {{"ScanRange",1000,},},
                    },

                    {
                        -- change fired projectile
                        ["SKW"] = {"Components","GcDroneComponentData",},
                        ["PKW"] = "ProjectileChoices",
                        ["REPLACE_TYPE"] = "onceINSIDE",
                        ["VCT"] = {{"ProjectileChoices","SWARMFOLLOWER",},},
                    },

                    {
                        -- add tail joint
                        ["PKW"] = "Components",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_SPRING",
                    },

                    {
                        -- change animations
                         ["SKW"] = {"Idle","TkAnimationData",},
                         ["VCT"] = {{"Anim","IDLE",},{"Filename","MODELS/COMMON/ROBOTS/SWARMDRONE_PLANET.ANIM.MBIN",},},
                    },

                    {
                        -- change animations
                         ["SKW"] = {"Anim","SHOOT_LEFT",},
                         ["VCT"] = {{"Filename","MODELS/COMMON/ROBOTS/ANIMS/DRONESWARMP_SHOOTLEFT.ANIM.MBIN",},},
                    },
                
                    {
                        -- change animations
                         ["SKW"] = {"Anim","SHOOT_RIGHT",},
                         ["VCT"] = {{"Filename","MODELS/COMMON/ROBOTS/ANIMS/DRONESWARMP_SHOOTRIGHT.ANIM.MBIN",},},
                    },
                },
            },

            {
                --------------------------------------------------
                -- robot globals MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_GLOBALS_ROBOTGLOBALS,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- replace the scene for friendly drone
                        ["SKW"] = {"FriendlyDrone","GcSentinelResource",},
                        ["VCT"] = {{"Resource",FILE_MODELS_SWARMFOLLOWER_SCENE,},{"Scale",0.5,},},
                    },

                    {
                        -- adjust the frequency of messages, no random beeps,
                        -- not talkative in general but reacting to combat scenarios
                        ["VCT"] =
                        {   
                            {"FriendlyDroneChatCooldown",20,},
                            {"FriendlyDroneChatChanceSummoned",0.5,},
                            {"FriendlyDroneChatChanceUnsummoned",0.5,},
                            {"FriendlyDroneChatChanceBecomeWanted",0.9,},
                            {"FriendlyDroneChatChanceLoseWanted",0.9,},
                            {"FriendlyDroneChatChanceIdle",0.3,},
                            {"FriendlyDroneBeepReplaceChatChance",0,},
                        },
                    },
                    
                    {
                        -- get template of drone weapon data
                        ["SKW"] = {"Id","MINIDRONESMG"},
                        ["SEC_SAVE_TO"] = "SEC_DRONE_WEAPON",
                    },

                    {
                        -- edit template: change projectile model and fire rate
                        ["SEC_EDIT"] = "SEC_DRONE_WEAPON",
                        ["VCT"] =
                        {   
                            {"Id","SWARMFOLLOWER",},
                            {"Projectile","SWARMFOLLOWER",},
                            {"FireRate",0.1,},
                            {"NumShotsMin",6,},
                            {"NumShotsMax",8,},
                            {"MoveDistanceMin",6,},
                            {"MoveDistanceMax",8,},
                        },
                    },

                    {
                        -- add new drone weapon data
                        ["PKW"] = "DroneWeapons",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_DRONE_WEAPON",
                    },
                },
            },

            {
                --------------------------------------------------
                -- default reality MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_DEFAULT_REALITY,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change image in visor info panel
                        ["SKW"] = {"FriendlyDrone","TkTextureResource",},
                        ["VCT"] = {{"Filename","TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.FRIENDLYSWARM.DDS",},},
                    },
                },
            },

            {
                --------------------------------------------------
                -- status messages MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_STATUS_MESSAGES,
                ["MXML_CHANGE_TABLE"] =
                {
                    -- replace text entries for chat
                    {
                        ["SKW"] = {"Summoned","GcFriendlyDroneVocabularyEntry",},
                        ["VCT"] = {{"GenericFallback","SWARM_FOLLOWER_SUMMONED_",},},
                    },

                    {
                        ["SKW"] = {"Unsummoned","GcFriendlyDroneVocabularyEntry",},
                        ["VCT"] = {{"GenericFallback","SWARM_FOLLOWER_UNSUMMONED_",},},
                    },

                    {
                        ["SKW"] = {"BecomeWanted","GcFriendlyDroneVocabularyEntry",},
                        ["VCT"] = {{"GenericFallback","SWARM_FOLLOWER_WANTED_",},},
                    },

                    {
                        ["SKW"] = {"LoseWanted","GcFriendlyDroneVocabularyEntry",},
                        ["VCT"] = {{"GenericFallback","SWARM_FOLLOWER_NOT_WANTED_",},},
                    },

                    {
                        ["SKW"] = {"Idle","GcFriendlyDroneVocabularyEntry",},
                        ["VCT"] = {{"GenericFallback","SWARM_FOLLOWER_IDLE_",},},
                    },
                },
            },

            {
                --------------------------------------------------
                -- alien puzzle table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_ALIENPUZZLETABLE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get template for Leave option
                        ["SKW"] = {"Name","ALL_REQUEST_LEAVE",},
                        ["SEC_SAVE_TO"] = "SEC_DIALOGUE_LEAVE",
                    },

                    {
                        -- get template for dialogue option with reward
                        ["SKW"] = {"Name","UI_SCRAP_SHOP_OPT",},
                        ["SEC_SAVE_TO"] = "SEC_DIALOGUE_SCAN",
                    },

                    {
                        -- edit template: change text, make the dialogue close after selecting
                        ["SEC_EDIT"] = "SEC_DIALOGUE_SCAN",
                        ["VCT"] =
                        {
                            {"Name","UI_SWARM_FOLLOWER_OPTA",},
                            {"KeepOpen","false",},
                            {"MarkInteractionComplete","true",},
                        },
                    },

                    {
                        -- edit template: change reward
                        ["SEC_EDIT"] = "SEC_DIALOGUE_SCAN",
                        ["PKW"] = "Rewards",
                        ["REPLACE_TYPE"] = "onceINSIDE",
                        ["VCT"] = {{"Rewards","R_SWARMCRASH",},},
                    },

                    {
                        -- main dialogue: change text
                        ["SKW"] = {"Id","DRONE_FRIEND_DEFAULT",},
                        ["SECTION_ACTIVE"] = 1;
                        ["VCT"] = {{"TextAlien","UI_SWARM_FOLLOWER_MAIN",},},
                    },

                    {
                        -- main dialogue: clear options list
                        ["SKW"] = {"Id","DRONE_FRIEND_DEFAULT",},
                        ["SECTION_ACTIVE"] = 1;
                        ["PKW"] = "Options",
                        ["CREATE_HOES"] = "TRUE",
                    },

                    {
                        -- main dialogue: clear options list
                        ["SKW"] = {"Id","DRONE_FRIEND_DEFAULT",},
                        ["SECTION_ACTIVE"] = 1;
                        ["PKW"] = "Options",
                        ["CREATE_HOS"] = "TRUE",
                    },

                    {
                        -- main dialogue: add scan option
                        ["SKW"] = {"Id","DRONE_FRIEND_DEFAULT",},
                        ["SECTION_ACTIVE"] = 1;
                        ["PKW"] = "Options",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_DIALOGUE_SCAN",
                    },

                    {
                        -- main dialogue: add leave option
                        ["SKW"] = {"Id","DRONE_FRIEND_DEFAULT",},
                        ["SECTION_ACTIVE"] = 1;
                        ["PKW"] = "Options",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_DIALOGUE_LEAVE",
                    },
                },
            },

            {
                --------------------------------------------------
                -- reward table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_REWARD_TABLE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get template for scan event reward
                        ["SKW"] = {"Id","R_CHART_ROBOT",},
                        ["SEC_SAVE_TO"] = "SEC_REWARD_SCAN",
                    },

                    {
                        -- edit template: change text
                        ["SEC_EDIT"] = "SEC_REWARD_SCAN",
                        ["VCT"] =
                        {
                            {"Id","R_SWARMCRASH",},
                            {"Event","SCAN_SWARMCRASH",},
                            {"ScanEventTable","Planet",},
                            {"DoAerialScan","false",},
                            {"StartDelay",0,},
                            {"FailureOSD","UI_SCAN_SWARM_FAILED_OSD",},
                        },
                    },

                    {
                        -- add new reward object
                        ["PKW"] = "SpecialRewardTable",
                        ["SEC_ADD_NAMED"] = "SEC_REWARD_SCAN",
                    },
                },
            },

            {
                --------------------------------------------------
                -- scan event vehicle table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_SCANEVENTVEHICLE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get template for swarm crash site scan event
                        ["SKW"] = {"Name","CRASHED_SWARM",},
                        ["SEC_SAVE_TO"] = "SEC_EVENT_SWARM",
                    },

                    {
                        -- edit template: change ID
                        ["SEC_EDIT"] = "SEC_EVENT_SWARM",
                        ["VCT"] = {{"Name","SCAN_SWARMCRASH",},},
                    },

                    {
                        -- edit template: change marker
                        ["SEC_EDIT"] = "SEC_EVENT_SWARM",
                        ["SKW"] = {"MarkerIcon","TkTextureResource",},
                        ["VCT"] = {{"Filename","TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SWARM.DDS",},},
                    },
                },
            },

            {
                --------------------------------------------------
                -- scan event planet table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_SCANEVENTPLANET,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- add new scan event for Swarm crashsite
                        ["PKW"] = "Events",
                        ["SEC_ADD_NAMED"] = "SEC_EVENT_SWARM",
                    },
                },
            },

            {
                --------------------------------------------------
                -- projectile table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_PROJECTILE_TABLE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get template for swarm drone projectile
                        ["SKW"] = {"Id","MINIDRONESMG",},
                        ["SEC_SAVE_TO"] = "SEC_PROJECTILE",
                    },

                    {
                        -- edit template: borrow Boltcaster projectile, scale it down
                        -- increase impact radius and damage
                        ["SEC_EDIT"] = "SEC_PROJECTILE",
                        ["VCT"] =
                        {
                            {"Id","SWARMFOLLOWER",},
                            {"Filename","MODELS/COMMON/PROJECTILES/MULTITOOL_BOLTGUN.SCENE.MBIN",},
                            {"Scale",0.5,},
                            {"Radius",100,},
                            {"DefaultDamage",100,},
                            {"DefaultImpact","BOLTHIT",},
                        },
                    },

                    {
                        -- add new projectile
                        ["PKW"] = "Table",
                        ["SEC_ADD_NAMED"] = "SEC_PROJECTILE",
                    },
                },
            },

        }
    }
},
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------