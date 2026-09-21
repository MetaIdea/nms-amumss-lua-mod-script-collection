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
--  2026-09-16 "the underground ones that spit toxic gas": RARERESOURCE/GROUND/HAZARDSTEAM's
--  _HAZARD_GAS entity has the usual GcPainAction (GASPLANT, already zeroed below) PLUS a
--  GcHazardAction (ToxicGas, strength 202, radius 15) that drains hazard protection on its
--  own. Both switched off. A sweep of all 2146 planet prop entities found nothing else
--  plant-shaped: the remaining hurters are volcano/steam vents (VENT_HEAT) and a crashed
--  freighter radiation leak, which are left alone. Sea urchin (PLANTDMG) added too, and the
--  damage table now zeroes every plant id, not just the two contact ones.
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
    MOD_VERSION     = "1.1",
    NMS_VERSION     = "7.02",
    MOD_DESCRIPTION = "Trap plants, tentacle plants, spore vents, gas vents and contact plants still attack, but can no longer hurt the player.",
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
                        "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/HAZARDSTEAM/ENTITIES/_HAZARD_GAS.ENTITY.MBIN",
                        "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/UNDERWATER/SEAURCHIN/ENTITIES/_URCHIN_1.ENTITY.MBIN",
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
                    MBIN_FS = {"MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/HAZARDSTEAM/ENTITIES/_HAZARD_GAS.ENTITY.MBIN"},
                    MXML_CT =
                    {
                        {
                            -- the gas vent's second weapon: a ToxicGas hazard field
                            SKW = {{"Action", "GcHazardAction"}},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"Strength", 0},   --Original "202"
                                {"Radius",   0},   --Original "15"
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
                                {"Id", "SPORE_VENT"},     --Original dmg 20 push 5
                                {"Id", "VENUSFLY_DMG"},   --Original dmg 20 push 5
                                {"Id", "TOXICGASDMG"},    --Original dmg 28 (the toxic gas cloud)
                                {"Id", "GRABPLANT_DMG"},  --Original dmg 10 (the underwater grabby plant)
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