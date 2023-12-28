NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_CREATURES_BEHAVIOURS-Rework_GIANTS-SANDWORMS-PETS_By-REDMAS.pak",
["MOD_AUTHOR"]              = "Redmas",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.99",
["MOD_DESCRIPTION"]         = "Redmas Sandworm Overhaul Giants and Creatures Rework",
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
                                {"IsHurtingCreaturesACrime",               "True"},
                                {"EnableFlyingSnakeTails",                 "False"},
                                {"RideSpeedFast",                          "3"},
                                {"RideSpeedChangeTime",                    "11.2"},
                                {"RiderLeanTime",                          "1.3"},
                                {"MaxCreatureSize",                        "94"},
                                {"MaxEcosystemCreaturesNormal",            "400"},
                                {"MaxEcosystemCreaturesLow",               "200"},
                                {"SandWormChangeDirectionTime",            "0.001"},
                                {"SandWormSteerAdjustTime",                "0.2"},
                                {"SandWormMaxSteer",                       "10"},
                                {"SandWormMaxHeightAdjust",                "380"},
                                {"SandWormJumpHeight",                     "3"},
                                {"SandWormJumpTime",                       "0.0001"},
                                {"SandWormSubmergeDepth",                  "1"},
                                {"SandWormSubmergeTime",                   "1"},
                                {"SandWormSurfaceTime",                    "3"},
                                {"SandWormMaxJumps",                       "1500"},
                                {"SandWormSpawnTimer",                     "30"},
                                {"MaxSpeed",                               "20"},
                                {"CreatureMedMinSize",                     "5"},
                                {"CreatureLargeMinSize",                   "12"},
                                {"CreatureHugeMinSize",                    "20"},
                                {"CreatureSmallHealth",                    "1400"},
                                {"CreatureMedHealth",                      "4000"},
                                {"CreatureLargeHealth",                    "10000"},
                                {"CreatureHugeHealth",                     "30000"},
                                {"PredatorSmallHealth",                    "1400"},
                                {"PredatorMedHealth",                      "3000"},
                                {"PredatorLargeHealth",                    "10000"},
                                {"PredatorHugeHealth",                     "30000"},
                                {"FiendHealth",                            "60"},
                                {"FiendDespawnDistance",                   "1500"},
                                {"FiendMaxEngaged",                        "16"},
                                {"FiendMaxAttackers",                      "12"},
                                {"MaxFiendsToSpawn",                       "16"},
                                {"AsteroidCreatureRichSystemSpawnPercent", "50"},
                                {"SpaceJellySwimSpeed",                    "20"},
                                {"PetWalkAtHeelChanceDevoted",             "0.0001"},
                                {"PetWalkAtHeelChanceIndependent",         "0.9"},
                                {"PetWalkAtHeelDistMin",                   "0.5"},
                                {"PetWalkAtHeelDistMax",                   "8"},
                                {"PetRunAtHeelDistMin",                    "5"},
                                {"PetRunAtHeelDistMax",                    "10"},
                                {"PetFollowRunPlayerDistance",             "1"},
                                {"PetIncubationTime",                      "7200"},
                                {"PetTrustChangeInterval",                 "7200"},
                                {"PetEggLayingInterval",                   "7200"},
                                {"PetEggFirstEggDelay",                    "7200"},
                                {"PauseBetweenCreatureSpawnRequests",      "500"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPEROBOT\ENTITIES\ANTELOPEROBOT.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLE"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PERFORM02"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PERFORM03"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "EAT"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "POUNCE3"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "POUNCE1"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK2"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK3"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN1"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN2"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN3"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLOWWALK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\CATRIG\BONECAT\ENTITIES\BONECATBODY.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PetLargeUIOverrideOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "3140.9563"},
                                {"y", "1.1765887E+10"},
                                {"z", "3300.081"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLE"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "HAPPY01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SAD01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLOWWALK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\FLYINGLIZARDRIG\FLYINGLIZARD\ENTITIES\BODY_LIZARD.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PetLargeUIOverrideOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "12.520329"},
                                {"y", "2.4858E-41"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE\ENTITIES\_BODY_WORM.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SANDWORM\SANDWORM\ENTITIES\SANDWORM.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PetLargeUIOverrideOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-3.031603E-13"},
                                {"z", "6E-45"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TongueJNT3"},
                            ["LINE_OFFSET"] = "-2",
                            ["ADD"] =
[[
                                    <Property value="TkSceneNodeData.xml">
                                      <Property name="Name" value="PETACC_beetle" />
                                      <Property name="NameHash" value="1885181323" />
                                      <Property name="Type" value="MESH" />
                                      <Property name="Transform" value="TkTransformData.xml">
                                        <Property name="TransX" value="0" />
                                        <Property name="TransY" value="0" />
                                        <Property name="TransZ" value="0" />
                                        <Property name="RotX" value="0" />
                                        <Property name="RotY" value="0" />
                                        <Property name="RotZ" value="0" />
                                        <Property name="ScaleX" value="1" />
                                        <Property name="ScaleY" value="1" />
                                        <Property name="ScaleZ" value="1" />
                                      </Property>
                                      <Property name="Attributes">
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="BATCHSTARTPHYSI" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="33828" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="VERTRSTARTPHYSI" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="6801" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="VERTRENDPHYSICS" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="11198" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="BATCHSTARTGRAPH" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="0" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="BATCHCOUNT" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="18276" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="VERTRSTARTGRAPH" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="0" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="VERTRENDGRAPHIC" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="4397" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="FIRSTSKINMAT" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="14" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="LASTSKINMAT" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="15" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="LODLEVEL" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="0" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="BOUNDHULLST" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="612" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="BOUNDHULLED" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="658" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="AABBMINX" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="-0.507595" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="AABBMINY" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="0.419673" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="AABBMINZ" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="-0.204432" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="AABBMAXX" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="0.519114" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="AABBMAXY" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="0.681301" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="AABBMAXZ" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="0.050041" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="HASH" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="12386349211337679269" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="MATERIAL" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="MODELS\PLANETS\CREATURES\SPIDERRIG\SPIDER\PETHARNESSMAT.MATERIAL.MBIN" />
                                        </Property>
                                        <Property value="TkSceneNodeAttributeData.xml">
                                          <Property name="Name" value="MESHLINK" />
                                          <Property name="AltID" value="" />
                                          <Property name="Value" value="PETACC_beetleShape" />
                                        </Property>
                                      </Property>
                                      <Property name="Children" />
                                    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\SHARKRIG\SHARK\ENTITIES\SHARK1.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PetLargeUIOverrideOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "3140.9563"},
                                {"y", "1.1765887E+10"},
                                {"z", "3300.081"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SWIM"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "LEFT"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "RIGHT"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "FASTSWIM"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "DET_HEADLOOK01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN1"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN2"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\STRIDERRIG\STRIDER\ENTITIES\STRIDERMESH.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLE"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "HAPPY01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SAD01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLEEP"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLOWWALK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "EAT"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN2"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN3"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK1"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK2"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK3"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PetLargeUIOverrideOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "12.520329"},
                                {"y", "2.4858E-41"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\TREXRIG\TREX\ENTITIES\_BODY_TREX.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLE"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "HAPPY01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLOWWALK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "FASTWALK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "WALK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK1"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK2"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ATTACK3"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN1"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN2"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PAIN3"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLEEPSTART"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLEEP"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SLEEPEND"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "TURN_WALK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ROAR"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PERFORM01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PERFORM02"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PERFORM03"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PERFORM04"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "PERFORMATK"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "DEATH01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "DET_BLINK01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "DET_SNIFF01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "DET_BARK01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "EAT"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\TRICERATOPSRIG\TRICERATOPS\ENTITIES\_BODY_TRI.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLE"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SAD03"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SAD02"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "SAD01"},
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.51"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UsePetLargeUIOverride",    "True"},
                                {"PetLargeUIOverrideScaler", "804340.25"},
                            }
                        },
                    }
                },
            }
        }
    }
}