--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

CAVE_OBJECTS = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/CAVEDRIPVFX.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="120" />
        <Property name="MaxAngle" value="360" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="1" />
        <Property name="MaxScale" value="1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.2" />
            <Property name="FlatDensity" value="0.03" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="2" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="60" />
            <Property name="FadeOutEndDistance" value="70" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEROCKCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="100" />
        <Property name="MaxAngle" value="230" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="0.5" />
        <Property name="MaxScale" value="1.1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1.4" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="2" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="90" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="40" />
              <Property value="60" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="5" />
          <Property name="UseSeedValue" value="True" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="120" />
        <Property name="MaxAngle" value="240" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="0.5" />
        <Property name="MaxScale" value="0.6" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="2.5" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.5" />
            <Property name="FlatDensity" value="0.03" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="0" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="90" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="40" />
              <Property value="70" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
CAVE_DETAILS = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="140" />
        <Property name="MaxAngle" value="280" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="0.5" />
        <Property name="MaxScale" value="1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="2.5" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.3" />
            <Property name="FlatDensity" value="0.1" />
            <Property name="SlopeDensity" value="0.1" />
            <Property name="SlopeMultiplier" value="0" />
            <Property name="MaxRegionRadius" value="6" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="70" />
            <Property name="FadeOutEndDistance" value="80" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="40" />
              <Property value="60" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="15" />
        <Property name="MaxAngle" value="45" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="0.3" />
        <Property name="MaxScale" value="0.7" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="2.5" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.52" />
            <Property name="FlatDensity" value="0.04" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="6" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="90" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="45" />
              <Property value="70" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="15" />
        <Property name="MaxAngle" value="45" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.6" />
        <Property name="MaxScale" value="0.8" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="15" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.4" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="110" />
            <Property name="FadeOutEndDistance" value="130" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="25" />
              <Property value="35" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="25" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.6" />
        <Property name="MaxScale" value="0.8" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="15" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.26" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="110" />
            <Property name="FadeOutEndDistance" value="130" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="25" />
              <Property value="35" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="145" />
        <Property name="MaxAngle" value="240" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.5" />
        <Property name="MaxScale" value="1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.4" />
            <Property name="FlatDensity" value="0.002" />
            <Property name="SlopeDensity" value="0.002" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="110" />
            <Property name="FadeOutEndDistance" value="130" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="25" />
              <Property value="35" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds cave object lists that look like overworld biomes (but with stalagmites and cave marrow plants)",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists --These are all the DetailObjects and Object files listed in the base biome files except for the Frozen and Weird ones. Weird ones are handled in a different script.
				--Removed any DetailObjects that exceeded 21 objects at the end. https://docs.google.com/spreadsheets/d/1WsAhu_OXA6nXpbtc6ZmQBgle-dQEy0KyJqTw67TAxIw/edit#gid=0
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENCORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENROCKYWEIRDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR1.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR1.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR2.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR2.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR3.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR3.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGERINGOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGEROCKOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGESCORCHOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGEUWPLANTOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LAVA/LAVAOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LAVAOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHBUBBLEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHBUBBLEOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHINFESTEDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHINFESTEDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROCKYWEIRDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROOMAOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROOMBOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/MOUNTAINROCKS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/MOUNTAINROCKSCRUB.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEALIENOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEGLOWOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOBIGPROPSOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOSPIKECRYSTALSOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOSPIKEPOTATOOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHCORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDALIENOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDALIENOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDSHIELDTREEOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SWAMPOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICEGGSMOONOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICEGGSMOONOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICEGGSOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICEGGSOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICINFESTEDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICINFESTEDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICSPORESOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICSPORESOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICTENTACLESOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICTENTACLESOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENCORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENHIVESOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENHIVESOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENHQOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENHQOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENINFESTEDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENINFESTEDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENROCKYWEIRDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/DEAD/DEADBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR1.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR1.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR2.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR2.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR3.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR3.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/DEAD/DEADOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGELUSHOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGERINGOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGEROCKOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGESCORCHOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/HUGEPROPS/HUGETOXIC/HUGETOXICOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGETOXICOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGEUWPLANTOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LAVA/LAVAOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LAVAOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHBUBBLEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHBUBBLEOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHHQOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHHQOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHHQTENTACLEOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHINFESTEDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHINFESTEDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROCKYWEIRDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROOMAOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROOMBOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEALIENOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEGLOWOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOBIGPROPSOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOSPIKECRYSTALSOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOSPIKEPOTATOOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHCORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDALIENOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDALIENOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDSHIELDTREEOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SWAMPOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICEGGSMOONOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICEGGSMOONOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICEGGSOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICEGGSOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICINFESTEDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICINFESTEDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICSPORESOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICSPORESOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICTENTACLESOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICTENTACLESOBJECTS.MBIN"},
					}
				},
				{--Add stalagmites and cave resource plants
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENCORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENROCKYWEIRDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR1.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR2.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR3.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGERINGOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGEROCKOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGESCORCHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGEUWPLANTOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LAVAOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHBUBBLEOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHINFESTEDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROCKYWEIRDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROOMAOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROOMBOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/MOUNTAINROCKS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/MOUNTAINROCKSCRUB.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEALIENOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEGLOWOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOBIGPROPSOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOSPIKECRYSTALSOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOSPIKEPOTATOOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHCORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDALIENOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDSHIELDTREEOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SWAMPOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICEGGSMOONOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICEGGSOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICINFESTEDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICSPORESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICTENTACLESOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = CAVE_DETAILS,
						}
					}
				},
				{--Add stalagmites and cave resource plants
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENCORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENHIVESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENHQOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENINFESTEDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENROCKYWEIRDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR1.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR2.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR3.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGELUSHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGERINGOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGEROCKOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGESCORCHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGETOXICOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGEUWPLANTOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LAVAOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHBUBBLEOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHHQOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHHQTENTACLEOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHINFESTEDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROCKYWEIRDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROOMAOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROOMBOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEALIENOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEGLOWOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOBIGPROPSOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOSPIKECRYSTALSOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOSPIKEPOTATOOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHCORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDALIENOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDSHIELDTREEOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SWAMPOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICEGGSMOONOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICEGGSOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICINFESTEDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICSPORESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICTENTACLESOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["ADD"] = CAVE_OBJECTS,
						}
					}
				},
				{--Add these files to the game
					["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CAVE_DTL"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR1.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR2.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/DEADOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICEGGSMOONOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/CAVE/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CAVE_OBJ"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENHIVESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR1.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR2.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADBIGPROPSOBJECTSVAR3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/DEADOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGELUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGETOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHBUBBLEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/LUSHROOMBOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICEGGSMOONOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/CAVE/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>]]
						},
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE