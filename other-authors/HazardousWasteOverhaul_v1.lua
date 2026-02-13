-- =============================================================================
-- HazardousWasteOverhaul v1
-- Hazardous waste (toxic, radioactive, explosive) x3 more fragile + x3 nanites
-- HP: Large 800->267, Medium 600->200, Small 400->133
-- Nanites: Large 25->75, Medium 20->60, Small 15->45
-- =============================================================================

TOXIC_LARGE     = "MODELS/PLANETS/COMMON/PHYSICSPROPS/TOXIC_LARGE_CRATE/ENTITIES/TOXICLARGECRATE.ENTITY.MBIN"
TOXIC_MEDIUM    = "MODELS/PLANETS/COMMON/PHYSICSPROPS/TOXIC_MEDIUM_BARREL/ENTITIES/TOXICMEDIUMBARREL.ENTITY.MBIN"
TOXIC_SMALL     = "MODELS/PLANETS/COMMON/PHYSICSPROPS/TOXIC_SMALL_CANISTER/ENTITIES/TOXICSMALLCANISTER.ENTITY.MBIN"
RAD_LARGE       = "MODELS/PLANETS/COMMON/PHYSICSPROPS/RADIOACTIVE_LARGE_CRATE/ENTITIES/RADIOACTIVELARGECRATE.ENTITY.MBIN"
RAD_MEDIUM      = "MODELS/PLANETS/COMMON/PHYSICSPROPS/RADIOACTIVE_MEDIUM_CRATE/ENTITIES/RADIOACTIVECRATEMEDIUMCRATE.ENTITY.MBIN"
RAD_SMALL       = "MODELS/PLANETS/COMMON/PHYSICSPROPS/RADIOACTIVE_SMALL_CANISTER/ENTITIES/RADIOACTIVESMALLCANISTER.ENTITY.MBIN"
EXP_LARGE       = "MODELS/PLANETS/COMMON/PHYSICSPROPS/EXPLOSIVE_LARGE_CRATE/ENTITIES/EXPLOSIVELARGECRATE.ENTITY.MBIN"
EXP_MEDIUM      = "MODELS/PLANETS/COMMON/PHYSICSPROPS/EXPLOSIVE_MEDIUM_BARREL/ENTITIES/EXPLOSIVEMEDIUMBARREL.ENTITY.MBIN"
EXP_SMALL       = "MODELS/PLANETS/COMMON/PHYSICSPROPS/EXPLOSIVE_SMALL_CANISTER/ENTITIES/EXPLOSIVESMALLCANISTER.ENTITY.MBIN"

-- Helper: change HP in entity file (GcShootableComponentData -> Health)
function ChangeHP(mbin_path, new_hp)
    return
    {
        ["MBIN_FILE_SOURCE"] = mbin_path,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] = {"GcShootableComponentData"},
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Health", new_hp},
                }
            },
        },
    }
end

-- Helper: change nanite Value for a specific reward ID
-- GcRewardRecycleSpecificObject -> Value
function ChangeNaniteReward(reward_id, new_value)
    return
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", reward_id},
        ["PRECEDING_KEY_WORDS"] = {"GcRewardRecycleSpecificObject"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", new_value},
        }
    }
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "HazardousWasteOverhaul",
    ["MOD_DESCRIPTION"] = "Makes hazardous waste (toxic, radioactive, explosive) 3x more fragile (1/3 HP) and 3x more rewarding (nanites)",
    ["MOD_AUTHOR"]      = "Carbonster",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- =====================================================
                -- PART 1: Reduce HP by 3x for all hazardous cargo
                -- Large: 800 -> 267, Medium: 600 -> 200, Small: 400 -> 133
                -- =====================================================
                ChangeHP(TOXIC_LARGE,  "267"),
                ChangeHP(TOXIC_MEDIUM, "200"),
                ChangeHP(TOXIC_SMALL,  "133"),

                ChangeHP(RAD_LARGE,  "267"),
                ChangeHP(RAD_MEDIUM, "200"),
                ChangeHP(RAD_SMALL,  "133"),

                ChangeHP(EXP_LARGE,  "267"),
                ChangeHP(EXP_MEDIUM, "200"),
                ChangeHP(EXP_SMALL,  "133"),

                -- =====================================================
                -- PART 2: Increase nanite reward by 3x
                -- Large: 25 -> 75, Medium: 20 -> 60, Small: 15 -> 45
                -- =====================================================
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- Toxic rewards
                        ChangeNaniteReward("R_CARGO_TOX_L", "75"),
                        ChangeNaniteReward("R_CARGO_TOX_M", "60"),
                        ChangeNaniteReward("R_CARGO_TOX_S", "45"),

                        -- Radioactive rewards
                        ChangeNaniteReward("R_CARGO_RAD_L", "75"),
                        ChangeNaniteReward("R_CARGO_RAD_M", "60"),
                        ChangeNaniteReward("R_CARGO_RAD_S", "45"),

                        -- Explosive rewards
                        ChangeNaniteReward("R_CARGO_EXP_L", "75"),
                        ChangeNaniteReward("R_CARGO_EXP_M", "60"),
                        ChangeNaniteReward("R_CARGO_EXP_S", "45"),
                    },
                },
            },
        },
    },
}