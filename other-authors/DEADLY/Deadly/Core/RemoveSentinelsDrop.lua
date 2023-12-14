NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "RemoveSentinelsDrop.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Removes rewards by killing drones. Dropped barrels aren't touched.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = {
                        [[MODELS/COMMON/ROBOTS/DRONE/ENTITIES/DRONE.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/WALKER/ENTITIES/HEADPHYSICS.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/DRONEARMOURED/ENTITIES/DRONEARMOURED.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/DRONEMEDIC/ENTITIES/MEDICDRONE.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/DRONESUMMONER/ENTITIES/SUMDRONE.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/QUADRUPED/ENTITIES/QUADRUPED_MESH.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/QUADRUPED/ENTITIES/QUADRUPED_PET.ENTITY.MBIN]],
                    },
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Specific", "ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 0 }, -- 16/64
                                { "AmountMax", 0 }, -- 32/128
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {
                        [[MODELS/COMMON/ROBOTS/SPIDER_QUADRUPED/ENTITIES/SPIDERQUAD.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/SPIDER_SMALLQUAD/ENTITIES/SPIDERSMALLQUAD.ENTITY.MBIN]],
                        [[MODELS/COMMON/ROBOTS/CORRUPTEDDRONE/ENTITIES/CORRUPTEDDRONE.ENTITY.MBIN]],
                    },
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Specific", "ROBOT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 0 }, -- 32/12
                                { "AmountMax", 0 }, -- 64/25
                            },
                        },
                    }
                },
            }
        }
    }
}
