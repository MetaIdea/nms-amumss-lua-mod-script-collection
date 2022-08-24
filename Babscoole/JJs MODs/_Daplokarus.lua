NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Daplokarus.V.1.2.pak",
["MOD_AUTHOR"]    = "JJHookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.53",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS\ENTITIES\DIPLO.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_MATCH"] = "300", 					
							["VALUE_CHANGE_TABLE"] = 							
							{
								{"FrameEnd", "3000"},  --Org "300"					
							}
						},
					},
				},			
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"AirArchetypes",},
							["LINE_OFFSET"]         = "-2",						
							["ADD"] = 
[[
    <Property value="GcCreatureGenerationDomainTable.xml">
      <Property name="Id" value="DIPLO" />
      <Property name="Tables">
        <Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="Sparse" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEDIPLO.MBIN" />
        </Property>
        <Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="Normal" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/DIPLOHERBIVOREMED.MBIN" />
        </Property>
        <Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="Normal" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/DIPLOHERBIVOREMED.MBIN" />
        </Property>
        <Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="Sparse" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/DIPLOHERBIVOREMED.MBIN" />
        </Property>
      </Property>
      <Property name="ChanceOfHemisphereLimit" value="0" />
      <Property name="MaxToHemisphereLimit" value="1" />
    </Property>
]],	  
							
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Air",},
							["LINE_OFFSET"]         = "-2",						
							["ADD"] = 
[[
      <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
        <Property name="Weight" value="1.5" />
        <Property name="Archetype" value="DIPLO" />
      </Property>
]],	  
							
						},						
					},
				},				
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FISHFLOCK"},
							["ADD_OPTION"]        = "ADDafterSECTION",							
							["ADD"] = 
[[
    <Property value="GcCreatureFilename.xml">
      <Property name="ID" value="DIPLO" />
      <Property name="Filename" value="MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN" />
      <Property name="ExtraFilename" value="" />
    </Property>
    <Property value="GcCreatureFilename.xml">
      <Property name="ID" value="DIPLOALIEN" />
      <Property name="Filename" value="MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN" />
      <Property name="ExtraFilename" value="" />
    </Property>
]],	
						},				
					}, 
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SEASNAKE"},
							["LINE_OFFSET"]        = "-2",							
							["ADD"] = 
[[
    <Property value="GcCreatureData.xml">
      <Property name="Id" value="DIPLO" />
      <Property name="OnlySpawnWhenIdIsForced" value="True" />
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="RealType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="EcoSystemCreature" value="True" />
      <Property name="CanBeFemale" value="True" />
      <Property name="Tags" />
      <Property name="MoveArea" value="Ground" />
      <Property name="MinScale" value="1" />
      <Property name="MaxScale" value="1" />
      <Property name="FurLengthModifierAtMinScale" value="1" />
      <Property name="FurLengthModifierAtMaxScale" value="1" />
      <Property name="FurChance" value="0" />
      <Property name="Rarity" value="GcCreatureRarity.xml">
        <Property name="CreatureRarity" value="Common" />
      </Property>
      <Property name="PredatorProbabilityModifier" value="GcCreatureRoleFrequencyModifier.xml">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="HerbivoreProbabilityModifier" value="GcCreatureRoleFrequencyModifier.xml">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="Data">
        <Property value="GcCreatureMovementData.xml">
          <Property name="Anims">
            <Property value="GcCreatureMoveAnimData.xml">
              <Property name="Anim" value="WALK" />
              <Property name="AnimLeft" value="LEFT" />
              <Property name="AnimRight" value="RIGHT" />
              <Property name="AnimSpeed" value="0.5" />
              <Property name="MinSpeedScale" value="0.3" />
              <Property name="MaxSpeedScale" value="1.3" />
              <Property name="MaxPredatorSpeedScale" value="1.8" />
              <Property name="MinPetSpeedScale" value="1" />
              <Property name="MaxPetSpeedScale" value="1" />
              <Property name="AnimMoveSpeed" value="0" />
              <Property name="AnimMoveSpeedCached" value="False" />
            </Property>
          </Property>
          <Property name="MoveRange" value="100" />
          <Property name="MoveSpeedScale" value="1" />
          <Property name="TurnRadiusScale" value="1" />
          <Property name="HeightMin" value="0" />
          <Property name="HeightMax" value="128" />
          <Property name="HeightTime" value="1" />
          <Property name="Herd" value="False" />
        </Property>
      </Property>
    </Property>
    <Property value="GcCreatureData.xml">
      <Property name="Id" value="DIPLOALIEN" />
      <Property name="OnlySpawnWhenIdIsForced" value="True" />
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="RealType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="EcoSystemCreature" value="True" />
      <Property name="CanBeFemale" value="True" />
      <Property name="Tags" />
      <Property name="MoveArea" value="Ground" />
      <Property name="MinScale" value="1" />
      <Property name="MaxScale" value="1" />
      <Property name="FurLengthModifierAtMinScale" value="1" />
      <Property name="FurLengthModifierAtMaxScale" value="1" />
      <Property name="FurChance" value="0" />
      <Property name="Rarity" value="GcCreatureRarity.xml">
        <Property name="CreatureRarity" value="Common" />
      </Property>
      <Property name="PredatorProbabilityModifier" value="GcCreatureRoleFrequencyModifier.xml">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="HerbivoreProbabilityModifier" value="GcCreatureRoleFrequencyModifier.xml">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="Data">
        <Property value="GcCreatureMovementData.xml">
          <Property name="Anims">
            <Property value="GcCreatureMoveAnimData.xml">
              <Property name="Anim" value="WALK" />
              <Property name="AnimLeft" value="LEFT" />
              <Property name="AnimRight" value="RIGHT" />
              <Property name="AnimSpeed" value="0.5" />
              <Property name="MinSpeedScale" value="0.3" />
              <Property name="MaxSpeedScale" value="1.3" />
              <Property name="MaxPredatorSpeedScale" value="1.8" />
              <Property name="MinPetSpeedScale" value="1" />
              <Property name="MaxPetSpeedScale" value="1" />
              <Property name="AnimMoveSpeed" value="0" />
              <Property name="AnimMoveSpeedCached" value="False" />
            </Property>
          </Property>
          <Property name="MoveRange" value="100" />
          <Property name="MoveSpeedScale" value="1" />
          <Property name="TurnRadiusScale" value="1" />
          <Property name="HeightMin" value="0" />
          <Property name="HeightMax" value="128" />
          <Property name="HeightTime" value="1" />
          <Property name="Herd" value="False" />
        </Property>
      </Property>
    </Property>
]]
						},															
					}
				},				
			},
		},
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEDIPLOS.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="GcCreatureRoleDescriptionTable">
  <Property name="RoleDescription">
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
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="OnlyDay" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
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
      <Property name="ForceID" value="DIPLO" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="0" />
      <Property name="MaxGroupSize" value="2" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="5" />
      <Property name="Filter" value="" />
    </Property>
    <Property value="GcCreatureRoleDescription.xml">
      <Property name="Role" value="GcCreatureRoles.xml">
        <Property name="CreatureRole" value="Passive" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="DIPLOALIEN" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Small" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses.xml">
        <Property name="CreatureSizeClass" value="Huge" />
      </Property>
      <Property name="MinGroupSize" value="0" />
      <Property name="MaxGroupSize" value="2" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Sparse" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="0.5" />
      <Property name="IncreasedSpawnDistance" value="5" />
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
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="3" />
      <Property name="Filter" value="" />
    </Property>
  </Property>
  <Property name="MinScaleVariance" value="0" />
  <Property name="MaxScaleVariance" value="0" />
  <Property name="TileType" value="GcTerrainTileType.xml">
    <Property name="TileType" value="Base" />
  </Property>
  <Property name="LifeLevel" value="GcPlanetLife.xml">
    <Property name="LifeSetting" value="Full" />
  </Property>
</Data>
]]			
		},
		{
			["FILE_DESTINATION"] = [[METADATA\SIMULATION\ECOSYSTEM\GROUND\DIPLOHERBIVOREMED.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="GcCreatureRoleDescriptionTable">
  <Property name="RoleDescription">
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
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="3" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="3" />
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
        <Property name="CreatureSizeClass" value="Medium" />
      </Property>
      <Property name="MinGroupSize" value="1" />
      <Property name="MaxGroupSize" value="4" />
      <Property name="Density" value="GcCreatureGenerationDensity.xml">
        <Property name="Density" value="Normal" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime.xml">
        <Property name="CreatureActiveTime" value="AnyTime" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="3" />
      <Property name="Filter" value="" />
    </Property>
  </Property>
  <Property name="MinScaleVariance" value="0" />
  <Property name="MaxScaleVariance" value="0" />
  <Property name="TileType" value="GcTerrainTileType.xml">
    <Property name="TileType" value="Base" />
  </Property>
  <Property name="LifeLevel" value="GcPlanetLife.xml">
    <Property name="LifeSetting" value="Full" />
  </Property>
</Data>
]]			
		}
	}	
}	