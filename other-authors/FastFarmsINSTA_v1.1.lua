NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "FastFarmsINSTA_v1.1.pak",
    ["MOD_DESCRIPTION"]    = "Who wants to farm? Just give me my stuff already",
    ["MOD_AUTHOR"]        = "courtykat.aka.MusicAndSilence",
    ["LUA_AUTHOR"]        = "DeathWrench+RealGenuineHuman",
    ["NMS_VERSION"]        = "3.8",
    ["MODIFICATIONS"]    = {
{
    ["MBIN_CHANGE_TABLE"] =
    {    {
        ["MBIN_FILE_SOURCE"]     =
        {
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMALBUMEN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMBARREN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMDEADCREATURE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMLUSH\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMNIP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMPOOP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMRADIOACTIVE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSCORCHED\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMTOXIC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMVENOMSAC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
        },
        ["EXML_CHANGE_TABLE"] = {
            {
                ["SPECIAL_KEY_WORDS"]          = {"TriggerAction", "STEP1_ENTER"},
                ["VALUE_CHANGE_TABLE"]         =
                {
                    {"Time",    "1"},
                }
            },
            {
                ["SPECIAL_KEY_WORDS"]          = {"TriggerAction", "STEP1"},
                ["VALUE_CHANGE_TABLE"]         =
                {
                    {"Time",    "2"},
                }
            },
            {
                ["SPECIAL_KEY_WORDS"]          = {"TriggerAction", "STEP2_ENTER"},
                ["VALUE_CHANGE_TABLE"]         =
                {
                    {"Time",    "2"},
                }
            },
            {
                ["SPECIAL_KEY_WORDS"]       = {"TriggerAction", "STEP2"},
                ["VALUE_CHANGE_TABLE"]         =
                {
                    {"Time",    "3"},
                }
            },
        }
}}}}}