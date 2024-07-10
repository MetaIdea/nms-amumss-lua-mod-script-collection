NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Laylaps_horde_v1.pak",
    ["MOD_AUTHOR"]      = "Mr_Negative",
    ["MOD_MAINTENANCE"] = "Mr_Negative",
    ["NMS_VERSION"]     = "4.38",
    ["DESCRIPTION"]     = "Modify FRIENDLYDRONE.SCENE to use data from CORRUPTEDDRONE.SCENE",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    -- Step 1: Replace FRIENDLYDRONE.SCENE with CORRUPTEDDRONE.SCENE
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS/COMMON/ROBOTS/FRIENDLYDRONE.SCENE.MBIN",
                            "MODELS/COMMON/ROBOTS/CORRUPTEDDRONE.SCENE.MBIN",
                            "REMOVE"
                        },
                    },
                },
                {
                    -- Step 2: Rename the scene file back to FRIENDLYDRONE.SCENE
                    ["MBIN_FILE_SOURCE"]  = { "MODELS/COMMON/ROBOTS/CORRUPTEDDRONE.SCENE.MBIN" },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name", "FRIENDLYDRONE.SCENE"},
                            }
                        }
                    }
                },
                {
                    -- Step 3: Modify entity path inside the scene file
                    ["MBIN_FILE_SOURCE"]  = { "MODELS/COMMON/ROBOTS/FRIENDLYDRONE.SCENE.MBIN" },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- Replace entity paths here as needed
                                -- Example: Replace path for Friendly Drone entity
                                {"MODELS/COMMON/ROBOTS/FRIENDLYDRONE/ENTITIES/FRIENDLYDRONE.ENTITY.MBIN", "MODELS/COMMON/ROBOTS/CORRUPTEDDRONE/ENTITIES/FRIENDLYDRONE.ENTITY.MBIN"},
                                -- Add more entity path replacements as required
                            }
                        }
                    }
                },
            }
        },
    }
}