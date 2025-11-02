NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Daplokarus.V.2.3",
["MOD_AUTHOR"]    = "JJHookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.12",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS\ENTITIES\DIPLO.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "GcScannableComponentData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseModelNode", "false"},  --Org "true"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData", "Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FrameEnd", "3000"},  --Org "300"
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property name="Table" value="GcCreatureFilename" _id="DIPLO">
      <Property name="ID" value="DIPLO" />
      <Property name="Filename" value="MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN" />
      <Property name="ExtraFilename" value="" />
    </Property>
    <Property name="Table" value="GcCreatureFilename" _id="DIPLOALIEN">
      <Property name="ID" value="DIPLOALIEN" />
      <Property name="Filename" value="MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN" />
      <Property name="ExtraFilename" value="" />
    </Property>
]],
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRAB"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property name="Table" value="GcCreatureData" _id="DIPLO">
      <Property name="Id" value="DIPLO" />
      <Property name="OnlySpawnWhenIdIsForced" value="true" />
      <Property name="ForceType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="RealType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="EcoSystemCreature" value="true" />
      <Property name="CanBeFemale" value="true" />
      <Property name="Tags" />
      <Property name="MoveArea" value="Ground" />
      <Property name="MinScale" value="0.750000" />
      <Property name="MaxScale" value="1.000000" />
      <Property name="FurLengthModifierAtMinScale" value="1.000000" />
      <Property name="FurLengthModifierAtMaxScale" value="1.000000" />
      <Property name="FurChance" value="0.000000" />
      <Property name="Rarity" value="GcCreatureRarity">
        <Property name="CreatureRarity" value="Common" />
      </Property>
      <Property name="PredatorProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="HerbivoreProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="KillStatID" value="" />
      <Property name="KillingBlowMessageID" value="" />
      <Property name="EggType" value="DEFAULT" />
      <Property name="Data">
        <Property name="Data" value="GcCreatureMovementData" _index="0">
          <Property name="GcCreatureMovementData">
            <Property name="Anims">
              <Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
                <Property name="Anim" value="WALK" />
                <Property name="AnimLeft" value="LEFT" />
                <Property name="AnimRight" value="RIGHT" />
                <Property name="AnimSpeed" value="0.500000" />
                <Property name="MinSpeedScale" value="0.300000" />
                <Property name="MaxSpeedScale" value="1.300000" />
                <Property name="MaxPredatorSpeedScale" value="1.800000" />
                <Property name="MinPetSpeedScale" value="1.000000" />
                <Property name="MaxPetSpeedScale" value="1.000000" />
                <Property name="AnimMoveSpeed" value="0.000000" />
                <Property name="AnimMoveSpeedCached" value="false" />
              </Property>
            </Property>
            <Property name="MoveRange" value="100.000000" />
            <Property name="MoveSpeedScale" value="1.000000" />
            <Property name="TurnRadiusScale" value="1.000000" />
            <Property name="HeightMin" value="2.000000" />
            <Property name="HeightMax" value="256.000000" />
            <Property name="LimitHeightRange" value="false" />
            <Property name="HeightRangeMin" value="0.000000" />
            <Property name="HeightRangeMax" value="0.000000" />
            <Property name="HeightTime" value="5.000000" />
            <Property name="Herd" value="false" />
            <Property name="IgnoreRotationInPounce" value="false" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Table" value="GcCreatureData" _id="DIPLOALIEN">
      <Property name="Id" value="DIPLOALIEN" />
      <Property name="OnlySpawnWhenIdIsForced" value="true" />
      <Property name="ForceType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="RealType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="EcoSystemCreature" value="true" />
      <Property name="CanBeFemale" value="true" />
      <Property name="Tags" />
      <Property name="MoveArea" value="Ground" />
      <Property name="MinScale" value="0.750000" />
      <Property name="MaxScale" value="1.000000" />
      <Property name="FurLengthModifierAtMinScale" value="1.000000" />
      <Property name="FurLengthModifierAtMaxScale" value="1.000000" />
      <Property name="FurChance" value="0.000000" />
      <Property name="Rarity" value="GcCreatureRarity">
        <Property name="CreatureRarity" value="Common" />
      </Property>
      <Property name="PredatorProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="HerbivoreProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="KillStatID" value="" />
      <Property name="KillingBlowMessageID" value="" />
      <Property name="EggType" value="DEFAULT" />
      <Property name="Data">
        <Property name="Data" value="GcCreatureMovementData" _index="0">
          <Property name="GcCreatureMovementData">
            <Property name="Anims">
              <Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
                <Property name="Anim" value="WALK" />
                <Property name="AnimLeft" value="LEFT" />
                <Property name="AnimRight" value="RIGHT" />
                <Property name="AnimSpeed" value="0.500000" />
                <Property name="MinSpeedScale" value="0.300000" />
                <Property name="MaxSpeedScale" value="1.300000" />
                <Property name="MaxPredatorSpeedScale" value="1.800000" />
                <Property name="MinPetSpeedScale" value="1.000000" />
                <Property name="MaxPetSpeedScale" value="1.000000" />
                <Property name="AnimMoveSpeed" value="0.000000" />
                <Property name="AnimMoveSpeedCached" value="false" />
              </Property>
            </Property>
            <Property name="MoveRange" value="100.000000" />
            <Property name="MoveSpeedScale" value="1.000000" />
            <Property name="TurnRadiusScale" value="1.000000" />
            <Property name="HeightMin" value="2.000000" />
            <Property name="HeightMax" value="256.000000" />
            <Property name="LimitHeightRange" value="false" />
            <Property name="HeightRangeMin" value="0.000000" />
            <Property name="HeightRangeMax" value="0.000000" />
            <Property name="HeightTime" value="5.000000" />
            <Property name="Herd" value="false" />
            <Property name="IgnoreRotationInPounce" value="false" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RoleDescription"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property name="RoleDescription" value="GcCreatureRoleDescription">
      <Property name="Role" value="GcCreatureRoles">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="DIPLO" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="0" />
      <Property name="MaxGroupSize" value="2" />
      <Property name="Density" value="GcCreatureGenerationDensity">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1.000000" />
      <Property name="IncreasedSpawnDistance" value="100.000000" />
      <Property name="Filter" value="" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RoleDescription"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property name="RoleDescription" value="GcCreatureRoleDescription">
      <Property name="Role" value="GcCreatureRoles">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="DIPLOALIEN" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="0" />
      <Property name="MaxGroupSize" value="2" />
      <Property name="Density" value="GcCreatureGenerationDensity">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1.000000" />
      <Property name="IncreasedSpawnDistance" value="100.000000" />
      <Property name="Filter" value="" />
    </Property>
]]
                        },
                    }
                },
            },
        },
    },
}