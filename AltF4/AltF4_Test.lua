NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "_AltF4_Test.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.11",
    ["MOD_DESCRIPTION"] = "Test",
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM\ENTITIES\FISHINGPLATFORM.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Mass",9999},                      -- 500
                                {"Friction",5},                     -- 0.9
                                {"RollingFriction",5},              -- 0.9
                                {"AngularDamping",5},               -- 0.2
                                {"LinearDamping",5},                -- 0.1
                                {"SelfRightingStrength",9999},      -- 200
                                {"MinimumForce",9999},              -- 400
                                {"MaximumForce",9999},              -- 1500
                                {"UpwardRotationFactor",0},         -- 0.1
                                {"WaveRotationFactor",0},           -- 0
                                {"AnchorArrivalTime",0.1},          -- 5
                                {"MaximumAnchorForce",9999},        -- 100
                            }
                        },
                    }
                },
            },
        },
    }
}