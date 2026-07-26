local DescriptorFlameBodies = {
    [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY2.SCENE.MBIN]],
    [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY3.SCENE.MBIN]],
    [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY4.SCENE.MBIN]],
    [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY5.SCENE.MBIN]],
    [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY6.SCENE.MBIN]],
    [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY7.SCENE.MBIN]],
}

local SceneFlameBodies = {
    [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY2.SCENE.MBIN]],
    [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY3.SCENE.MBIN]],
    [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY4.SCENE.MBIN]],
    [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY5.SCENE.MBIN]],
    [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY6.SCENE.MBIN]],
    [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY7.SCENE.MBIN]],
}

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Full Engine Flames for Sentinel Ships",
    ["MOD_AUTHOR"] = "beihaixingchen",
    ["NMS_VERSION"] = "6.45",
    ["MOD_DESCRIPTION"] = "This mod makes all engine flames visible for sentinel ships.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.DESCRIPTOR.MBIN]],
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = DescriptorFlameBodies,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ReferencePaths", [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY1.SCENE.MBIN]]},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.SCENE.MBIN]],
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = SceneFlameBodies,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN]]},
                            },
                        },
                    },
                },
            },
        },
    },
}