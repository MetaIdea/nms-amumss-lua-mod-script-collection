NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_XSS_Creature_Behavior_Natural.pak",
["MOD_AUTHOR"]    = "Xodarap777",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.29",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxEcosystemCreaturesNormal",       "999"},
                                {"PatrolMinDist",                     "15"},
                                {"PatrolMaxDist",                     "60"},
                                {"FishSwimMaxAcceleration",           "0.4"},
                                {"CircleSpeed",                       "6"},
                                {"ApproachBaitSpeed",                 "40"},
                                {"AscendDescendSpeed",                "18"},
                                {"HearingRange",                      "70"},
                                {"SightRange",                        "70"},
                                {"FleeRange",                         "20"},
                                {"HearingRange",                      "25"},
                                {"SightRange",                        "25"},
                                {"CreatureHugeWalkMaxShakeDist",      "5"},
                                {"CreatureHugeRunMaxShakeDist",       "5"},
                                {"PredatorPerceptionDistance",        "60"},
                                {"PassiveFleePlayerDistance",         "15"},
                                {"PredatorApproachTime",              "3"},
                                {"PredatorNoticePauseTime",           "1"},
                                {"PredatorChargeDist",                "17"},
                                {"PredatorChargeDistScale",           "0.5"},
                                {"FishPredatorChargeDist",            "15"},
                                {"PredatorRoarProbAfterMiss",         "0.9"},
                                {"FollowLeaderCohereWeight",          "0.5"},
                                {"DefaultRunMoveSpeed",               "6"},
                                {"PredatorRunMoveSpeed",              "9"},
                                {"FadeDistance",                      "100"},
                                {"MinFade",                           "90"},
                                {"SearchItemDistance",                "10"},
                                {"SearchItemFrequency",               "45"},
                                {"SearchItemGiveUpDistance",          "20"},
                                {"SearchItemGiveUpTime",              "70"},
                                {"SearchItemNotifyTime",              "20"},
                                {"SearchSpawnRandomItemProbability",  "10"},
                                {"MiningRandomProbability",           "0.5"},
                                {"FriendlyCreatureLimit",             "0"},
                                {"FeedingTaskAmount",                 "4"},
                                {"FeedingFollowTime",                 "5"},
                                {"FeedingNoticeTime",                 "20"},
                                {"FeedingNoticeDistance",             "20"},
                                {"AnimChangeCoolDown",                "30"},
                                {"GroupRunProbability",               "0.25"},
                                {"GroupRunStormProbability",          "0.8"},
                                {"GroupLookAtProbability",            "0.95"},
                                {"GroupLookAtDurationMin",            "0.1"},
                                {"GroupLookAtDurationMax",            "1"},
                                {"GroupRunDurationMin",               "2"},
                                {"GroupRunDurationMax",               "7"},
                                {"GroupFemaleProportion",             "10"},
                                {"GroupBabyProportion",               "0.6"},
                                {"GroupBabyScale",                    "0.3"},
                                {"GroupBabyHealthMultiplier",         "0.5"},
                                {"MaxBirdsProportion",                "0.8"},
                                {"HerdGroupSizeMultiplier",           "0.15"},
                                {"AdultCorrelationValue",             "0"},
                                {"GrassPushRadius",                   "0.7"},
                                {"GrassPushMaxSize",                  "1"},
                                {"CreatureSpeedMultiplier",           "0"},
                                {"PredatorSpeedMultiplier",           "1.3"},
                                {"PauseBetweenCreatureSpawnRequests", "1"},
                            }
                        },
                    }
                },
            }
        }
    }
}