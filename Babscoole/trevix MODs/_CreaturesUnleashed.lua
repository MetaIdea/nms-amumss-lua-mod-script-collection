NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_CreaturesUnleashed.pak",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.01.1",
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
                                {"MaxEcosystemCreaturesNormal",                 "20"},
                                {"MaxEcosystemCreaturesLow",                    "10"},
                                {"MaxAdditionalEcosystemCreaturesForDiscovery", "5"},
                                {"TurnInPlaceIdleTime",                         "4"},
                                {"TurnInPlaceMaxAngle",                         "45"},
                                {"TurnInPlaceMinTime",                          "1"},
                                {"TurnInPlaceMaxSpeed",                         "2"},
                                {"CreatureMinAlignSpeed",                       "1"},
                                {"PatrolMinDist",                               "30"},
                                {"PatrolMaxDist",                               "100"},
                                {"PatrolGradientFactor",                        "0.25"},
                                {"CreatureWaryTime",                            "1"},
                                {"CreatureMoveIdle",                            "0"},
                                {"PatrolSwitchMinTime",                         "10"},
                                {"FishBobFrequency",                            "0"},
                                {"FishBobAmplitude",                            "0"},
                                {"SwarmMoveYFactor",                            "0.05"},
                                {"FishSpeedMin",                                "0.15"},
                                {"FishSpeedMax",                                "2"},
                                {"RepelAmount",                                 "0.5"},
                                {"FishTurn",                                    "1.5"},
                                {"TargetReachedDistance",                       "5"},
                                {"PredatorPerceptionDistance",                  "100"},
                                {"PassiveFleePlayerDistance",                   "2"},
                                {"PercentagePlayerPredators",                   "40"},
                                {"PlayerPredatorHealthModifier",                "2"},
                                {"RoutineSpeed",                                "0.25"},
                                {"MaxTurnRadius",                               "50"},
                                {"BadTurnPercent",                              "0"},
                                {"FollowLeaderCohereWeight",                    "1"},
                                {"DefaultSwimSpeed",                            "0.5"},
                                {"DefaultWalkMoveSpeed",                        "0.5"},
                                {"DefaultTrotMoveSpeed",                        "1.5"},
                                {"PredatorWalkMoveSpeed",                       "0.5"},
                                {"HeightDiffPenalty",                           "6"},
                                {"SpawnMinDistPercentage",                      "0.5"},
                                {"SpawnDistAtMinSize",                          "60"},
                                {"DespawnDistFactor",                           "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TurnRadiusScale",     "20"},
                                {"SwarmMovementSpeed",  "0.5"},
                                {"SwarmMovementRadius", "200"},
                                {"Range",               "120"},
                                {"MaxPitchAmount",      "0"},
                                {"WalkSpeed",           "1"},
                                {"AlignTime",           "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGBEETLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WalkSpeed", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKINGBUILDING"},
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRidingData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "55"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LAND_JELLYFISH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WalkSpeed", "0.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"File", "METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREMED.MBIN"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GroundArchetypes"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"File", "METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDFULLLIFE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeSpecific", "Ground"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="DEFAULT" />
          </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeSpecific", "All", "Archetypes", "Ground"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="DEFAULT" />
          </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeSpecific", "All", "Archetypes", "Air"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDFLOAT" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDBUTTERFLY" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="FLYINGSNAKE" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="ONLYSNAKE" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="FLYINGLIZARD" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="ONLYLIZARD" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="ONLYAIR" />
          </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeSpecific", "All", "Archetypes", "Cave"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDROLLPRED" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDROLL" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDCRYSTALPRED" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDCRYSTAL" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDFLOAT" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDBUTTERFLY" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="ROBOT" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="BUTTERFLY" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="ALIEN" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="DANGEROUS" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="HERD" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="SPARSE" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="BUSY" />
          </Property>
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="CRABS" />
          </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"SubBiomeSpecific", "None",        "Ground"},
                                {"SubBiomeSpecific", "Standard",    "Ground"},
                                {"SubBiomeSpecific", "HighQuality", "Ground"},
                                {"SubBiomeSpecific", "HugePlant",   "Ground"},
                                {"SubBiomeSpecific", "HugeLush",    "Ground"},
                                {"SubBiomeSpecific", "HugeRing",    "Ground"},
                                {"SubBiomeSpecific", "HugeRock",    "Ground"},
                                {"SubBiomeSpecific", "HugeScorch",  "Ground"},
                                {"SubBiomeSpecific", "HugeToxic",   "Ground"},
                                {"SubBiomeSpecific", "Variant_A",   "Ground"},
                                {"SubBiomeSpecific", "Variant_B",   "Ground"},
                                {"SubBiomeSpecific", "Variant_C",   "Ground"},
                                {"SubBiomeSpecific", "Variant_D",   "Ground"},
                                {"SubBiomeSpecific", "Infested",    "Ground"},
                                {"SubBiomeSpecific", "Swamp",       "Ground"},
                                {"SubBiomeSpecific", "Lava",        "Ground"},
                                {"SubBiomeSpecific", "Worlds",      "Ground"},
                                {"AbandonedSystemSpecific",         "Ground"},
                            },
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="DEFAULT" />
          </Property>
]]
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
	{
		{
			["FILE_DESTINATION"] = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDFULLLIFE.EXML",
			["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="GcCreatureRoleDescriptionTable">
  <Property name="RoleDescription">
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="2" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="MostlyNight" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Butterfly" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="Butterfly" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="ARTHROPOD" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="ARTHROPOD" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="4" />
      <Property name="MaxGroupSize" value="4" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="ARTHROPOD" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="2" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Predator" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="ARTHROPOD" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="BONECAT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Dense" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="BONECAT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Dense" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Butterfly" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="Butterfly" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="OnlyDay" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="4" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="3" />
      <Property name="MaxGroupSize" value="5" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Dense" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="MostlyDay" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2.25" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="4" />
      <Property name="MaxGroupSize" value="8" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="6" />
      <Property name="MaxGroupSize" value="10" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Butterfly" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="Butterfly" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="PLANTCAT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="PLANTCAT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="4" />
      <Property name="MaxGroupSize" value="4" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="PLANTCAT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="2" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Predator" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="PLANTCAT" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="PlayerPredator" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="PlayerPredator" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Predator" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Predator" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="2" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="ROBOTANTELOPE" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Dense" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="ROBOTANTELOPE" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Dense" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="WALKINGBUILDING" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="1" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Prey" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="WALKINGBUILDING" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Large" />
      </Property>
      <Property name="MinGroupSize" value="2" />
      <Property name="MaxGroupSize" value="4" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.035" />
      <Property name="IncreasedSpawnDistance" value="2" />
      <Property name="Filter" value="" />
    </Property>
  </Property>
  <Property name="MinScaleVariance" value="0" />
  <Property name="MaxScaleVariance" value="0" />
  <Property name="TileType" value="GcTerrainTileType.xml">
    <Property name="TileType" value="Base" />
  </Property>
  <Property name="LifeLevel" value="GcPlanetLife.xml">
    <Property name="LifeSetting" value="Mid" />
  </Property>
</Data>
]]
		}
	}
}