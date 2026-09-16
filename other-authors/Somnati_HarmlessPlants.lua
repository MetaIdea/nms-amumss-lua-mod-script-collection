--======================================================================================--
--  SOMNATI - HARMLESS HOSTILE PLANTS
--
--  2026-09-13. His words: "the thing that annoys me about them isn't the damage I take
--  but the effect from the damage - a hard screenshake, my screen turns red, annoying
--  sound effect... if only there was a way to make them not attack."
--
--  There is. Each hostile plant is a state machine: GcPlayerNearbyEvent (5 m) ->
--  attack animation -> GcAnimFrameEvent -> GcPainAction, and GcPainAction is the
--  ONE thing that hurts you AND fires the whole pain presentation (red flash,
--  shake, sound). Flip its AffectsPlayer to false and the plants keep snapping and
--  spitting exactly as before - they just never connect. Placement is untouched
--  (same universe as everyone else) and they are still harvestable for oxygen.
--
--  Covered: venus flytrap (2 actions), tentacle plant (3 variants), spore vent.
--
--  THE SPIKY CONTACT PLANTS (HAZARDPLANT*, 2026-09-13 "spiky ones too"): their hurt
--  is not a GcPainAction in the entity - it resolves through the damage table id
--  PLANTDMG (GASPLANT for the gas ones). So those entries are defanged in
--  METADATA/REALITY/TABLES/DAMAGETABLE: damage 0, no push, no camera turn, no
--  shake, no tech breakage. Touching them now does nothing.
--======================================================================================--
NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = "Somnati_HarmlessPlants",
    MOD_AUTHOR      = "Somnati",
    NMS_VERSION     = "7.01",
    MOD_DESCRIPTION = "Trap plants, tentacle plants and spore vents still attack, but can no longer hit the player.",
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = {
                        "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/VENUSFLYTRAP/ENTITIES/VENUSFLYTRAP.ENTITY.MBIN",
                        "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TENTACLEPLANT/ENTITIES/TENTACLEPLANT.ENTITY.MBIN",
                        "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TENTACLEPLANT/ENTITIES/TENTACLEPLANTFLAT.ENTITY.MBIN",
                        "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TENTACLEPLANT/ENTITIES/TENTACLEPLANTSIDE.ENTITY.MBIN",
                        "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT/ENTITIES/SPOREVENT.ENTITY.MBIN",
                    },
                    MXML_CT =
                    {
                        {
                            -- REPLACE_TYPE "ALL", no section: the flytrap has TWO GcPainActions
                            -- (states CLOSE and COMPLETE) and an SKW section only caught the first.
                            -- AffectsPlayer exists on nothing but GcPainAction in these files, so
                            -- "every AffectsPlayer in the file" is exactly the right scope.
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"AffectsPlayer", "false"},   --Original "true"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = {"METADATA/REALITY/TABLES/DAMAGETABLE.MBIN"},
                    MXML_CT =
                    {
                        {
                            SKW = {
                                {"Id", "PLANTDMG"},
                                {"Id", "GASPLANT"},
                            },
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"Damage",              0},    --Original "20"
                                {"PushForce",           0},    --Original "2"
                                {"CameraTurn",          0},    --Original "2"
                                {"CameraShakeShield",   ""},   --Original "SMALLPAINSHAKE"
                                {"CameraShakeNoShield", ""},   --Original "BIGPAINSHAKE"
                                {"TechDamageChance",    0},    --Original "1"
                                {"ShowTrackIcon",       "false"},
                            }
                        },
                    }
                },
            }
        },
    }
}