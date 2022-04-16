--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

LANDMARKS_DENSITY_MULTIPLIER = 0.5
OBJECTS_DENSITY_MULTIPLIER = 0.5

INFESTED_LANDMARKS = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Leaf" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.923" />
                      <Property name="G" value="0.484" />
                      <Property name="B" value="0.046" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Rock" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.377" />
                      <Property name="G" value="0.321" />
                      <Property name="B" value="0.261" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="4" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
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
        <Property name="MaxAngle" value="50" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="3" />
        <Property name="MaxScale" value="4" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.3" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="50" />
              <Property value="100" />
              <Property value="150" />
              <Property value="300" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN" />
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
        <Property name="Placement" value="JAMESPATCH" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="SameSeed" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="35" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="1" />
        <Property name="MaxScale" value="3" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.2" />
            <Property name="FlatDensity" value="0.01" />
            <Property name="SlopeDensity" value="0.01" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="50" />
              <Property value="100" />
              <Property value="150" />
              <Property value="1000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
INFESTED_OBJECTS = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="SNOW" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MOSS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.278" />
                      <Property name="G" value="0.581" />
                      <Property name="B" value="0.653" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Wood" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.294" />
                      <Property name="G" value="0.253" />
                      <Property name="B" value="0.203" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MARKINGS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="SNOW" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Leaf" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.611" />
                      <Property name="G" value="0.168" />
                      <Property name="B" value="0.128" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="SameSeed" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="5" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="2" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.4" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="1" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="30" />
              <Property value="60" />
              <Property value="180" />
              <Property value="400" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTROCKLIFTED.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="SNOW" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MOSS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.278" />
                      <Property name="G" value="0.581" />
                      <Property name="B" value="0.653" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Wood" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.294" />
                      <Property name="G" value="0.253" />
                      <Property name="B" value="0.203" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MARKINGS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Leaf" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.611" />
                      <Property name="G" value="0.168" />
                      <Property name="B" value="0.128" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
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
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="40" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.2" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="8" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.5" />
            <Property name="FlatDensity" value="0.007" />
            <Property name="SlopeDensity" value="0.007" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="1" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="80" />
              <Property value="120" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTROCK.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.35" />
                      <Property name="G" value="0.318" />
                      <Property name="B" value="0.243" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="40" />
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
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="0" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.007" />
            <Property name="SlopeDensity" value="0.007" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="1" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="30" />
              <Property value="60" />
              <Property value="90" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/CURLYTENDRILS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="SNOW" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MOSS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.278" />
                      <Property name="G" value="0.581" />
                      <Property name="B" value="0.653" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Wood" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.294" />
                      <Property name="G" value="0.253" />
                      <Property name="B" value="0.203" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MARKINGS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="SNOW" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Leaf" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.611" />
                      <Property name="G" value="0.168" />
                      <Property name="B" value="0.128" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
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
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="45" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.5" />
        <Property name="MaxScale" value="0.8" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="8" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.3" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="70" />
              <Property value="120" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/ARRAYSHELL.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="SNOW" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MOSS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.278" />
                      <Property name="G" value="0.581" />
                      <Property name="B" value="0.653" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Wood" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.294" />
                      <Property name="G" value="0.253" />
                      <Property name="B" value="0.203" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="MARKINGS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Leaf" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.611" />
                      <Property name="G" value="0.168" />
                      <Property name="B" value="0.128" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="40" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.2" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="8" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.2" />
            <Property name="FlatDensity" value="0.002" />
            <Property name="SlopeDensity" value="0.002" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="130" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="80" />
              <Property value="45" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
INFESTED_DETAILS = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.35" />
                      <Property name="G" value="0.318" />
                      <Property name="B" value="0.243" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="40" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="2" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="True" />
        <Property name="ShearWindStrength" value="0.2" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.12" />
            <Property name="FlatDensity" value="0.3" />
            <Property name="SlopeDensity" value="0.3" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="70" />
            <Property name="FadeOutEndDistance" value="80" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="500" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.12" />
            <Property name="FlatDensity" value="0.3" />
            <Property name="SlopeDensity" value="0.3" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="200" />
            <Property name="FadeOutEndDistance" value="210" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.35" />
                      <Property name="G" value="0.318" />
                      <Property name="B" value="0.243" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="JAMESPATCH" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="50" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.6" />
        <Property name="MaxScale" value="1.2" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="True" />
        <Property name="ShearWindStrength" value="0.2" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.4" />
            <Property name="FlatDensity" value="0.05" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="70" />
            <Property name="FadeOutEndDistance" value="80" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="80" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.4" />
            <Property name="FlatDensity" value="0.05" />
            <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="200" />
            <Property name="FadeOutEndDistance" value="210" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="80" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.35" />
                      <Property name="G" value="0.318" />
                      <Property name="B" value="0.243" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="50" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="2" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="True" />
        <Property name="ShearWindStrength" value="0.2" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.1" />
            <Property name="FlatDensity" value="0.3" />
            <Property name="SlopeDensity" value="0.3" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="70" />
            <Property name="FadeOutEndDistance" value="80" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="80" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.1" />
            <Property name="FlatDensity" value="0.3" />
            <Property name="SlopeDensity" value="0.3" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="200" />
            <Property name="FadeOutEndDistance" value="210" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="80" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.287" />
                      <Property name="G" value="0.287" />
                      <Property name="B" value="0.287" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="BARRENROCKCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="50" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.5" />
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
        <Property name="ShearWindStrength" value="0.2" />
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
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.24" />
            <Property name="FlatDensity" value="0.1" />
            <Property name="SlopeDensity" value="0.1" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="70" />
            <Property name="FadeOutEndDistance" value="80" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="80" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.24" />
            <Property name="FlatDensity" value="0.1" />
            <Property name="SlopeDensity" value="0.1" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="200" />
            <Property name="FadeOutEndDistance" value="210" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="30" />
              <Property value="45" />
              <Property value="80" />
            </Property>
          </Property>
        </Property>
      </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds more variety to the Scorch Infested biome subtype",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				--{--For testing, force the Scorch infested biome to spawn
				--	["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"},
				--	["EXML_CHANGE_TABLE"]  ={
				--		{
				--			["PRECEDING_KEY_WORDS"] = {"BiomeFiles"},
				--			["REPLACE_TYPE"] = "ALL",
				--			["VALUE_CHANGE_TABLE"] = {
				--				{"FileName","OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHINFESTEDBIOME.MXML"}
				--			}
				--		}
				--	}
				--},
				{--Copy all the Scorch Landmarks and Objects object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN"},
					},
				},
				{--Add the Infested-specific objects to Landmarks
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["ADD"] = INFESTED_LANDMARKS
						},
						{--Adjust the density since we're adding a lot of objects
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",LANDMARKS_DENSITY_MULTIPLIER},
								{"SlopeDensity",LANDMARKS_DENSITY_MULTIPLIER},
							}
						},
					}
				},
				{--Add the Infested-specific objects to Objects
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["ADD"] = INFESTED_OBJECTS
						},
						{--Adjust the density since we're adding a lot of objects
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",OBJECTS_DENSITY_MULTIPLIER},
								{"SlopeDensity",OBJECTS_DENSITY_MULTIPLIER},
							}
						},
					}
				},
				{--Add the Infested-specific objects to DetailObjects
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = INFESTED_DETAILS
						},
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHINFESTEDBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SCORCHED/SCORCHINFESTEDSHIELDTREEOBJECTS.MBIN" />
        </Property>]]
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE