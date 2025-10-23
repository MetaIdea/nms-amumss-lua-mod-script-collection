NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Deadzone III",
["MOD_AUTHOR"]    = "Exosolar & Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIOME.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AllowLimiting", "false"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Features"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Crater", "2.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FilterOptions"},
                            ["ADD_OPTION"] = "ADDendSECTION",  
                            ["ADD"] =
[[
    <Property name="FilterOptions" value="GcScreenFilterOption">
      <Property name="Filter" value="GcScreenFilters">
        <Property name="ScreenFilter" value="DefaultStorm" />
      </Property>
      <Property name="Weight" value="0.100000" />
    </Property>
    <Property name="FilterOptions" value="GcScreenFilterOption">
      <Property name="Filter" value="GcScreenFilters">
        <Property name="ScreenFilter" value="BarrenStorm" />
      </Property>
      <Property name="Weight" value="0.010000" />
    </Property>
    <Property name="FilterOptions" value="GcScreenFilterOption">
      <Property name="Filter" value="GcScreenFilters">
        <Property name="ScreenFilter" value="FrozenStorm" />
      </Property>
      <Property name="Weight" value="0.010000" />
    </Property>
    <Property name="FilterOptions" value="GcScreenFilterOption">
      <Property name="Filter" value="GcScreenFilters">
        <Property name="ScreenFilter" value="ScorchedStorm" />
      </Property>
      <Property name="Weight" value="0.020000" />
    </Property>
    <Property name="FilterOptions" value="GcScreenFilterOption">
      <Property name="Filter" value="GcScreenFilters">
        <Property name="ScreenFilter" value="ToxicStorm" />
      </Property>
      <Property name="Weight" value="0.010000" />
    </Property>
    <Property name="FilterOptions" value="GcScreenFilterOption">
      <Property name="Filter" value="GcScreenFilters">
        <Property name="ScreenFilter" value="RadioactiveStorm" />
      </Property>
      <Property name="Weight" value="0.020000" />
    </Property>
]],
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Objects", "GcEnvironmentSpawnData"},
                            ["PRECEDING_KEY_WORDS"] = {"DistantObjects"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
      <Property name="DistantObjects" value="GcObjectSpawnData">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN" />
          <Property name="Seed" value="0" />
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="SPARSECLUMP" />
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceAnywhereNear" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="true" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="60" />
        <Property name="MatchGroundColour" value="false" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="false" />
        <Property name="SwapPrimaryForRandomColour" value="false" />
        <Property name="AlignToNormal" value="true" />
        <Property name="MinScale" value="2" />
        <Property name="MaxScale" value="8" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="10" />
        <Property name="AutoCollision" value="false" />
        <Property name="CollideWithPlayer" value="true" />
        <Property name="CollideWithPlayerVehicle" value="true" />
        <Property name="DestroyedByPlayerVehicle" value="false" />
        <Property name="DestroyedByPlayerShip" value="true" />
        <Property name="DestroyedByTerrainEdit" value="true" />
        <Property name="InvisibleToCamera" value="true" />
        <Property name="CreaturesCanEat" value="false" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="9999" />
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
          <Property value="GcObjectSpawnDataVariant">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.2" />
            <Property name="FlatDensity" value="0.055" />
            <Property name="SlopeDensity" value="0.055" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="9999" />
            <Property name="MaxImposterRadius" value="9999" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="300" />
              <Property value="900" />
              <Property value="1500" />
              <Property value="2400" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property value="GcObjectSpawnData">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGESPIKEROCK.SCENE.MBIN" />
          <Property name="Seed" value="0" />
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceAnywhereNear" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="true" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="60" />
        <Property name="MatchGroundColour" value="false" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="false" />
        <Property name="SwapPrimaryForRandomColour" value="false" />
        <Property name="AlignToNormal" value="true" />
        <Property name="MinScale" value="10" />
        <Property name="MaxScale" value="20" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="false" />
        <Property name="CollideWithPlayer" value="true" />
        <Property name="CollideWithPlayerVehicle" value="true" />
        <Property name="DestroyedByPlayerVehicle" value="false" />
        <Property name="DestroyedByPlayerShip" value="false" />
        <Property name="DestroyedByTerrainEdit" value="true" />
        <Property name="InvisibleToCamera" value="true" />
        <Property name="CreaturesCanEat" value="false" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="6" />
          <Property name="MaxImposterRadius" value="9999" />
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
          <Property value="GcObjectSpawnDataVariant">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.15" />
            <Property name="FlatDensity" value="0.005" />
            <Property name="SlopeDensity" value="0.005" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="6" />
            <Property name="MaxImposterRadius" value="9999" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="300" />
              <Property value="900" />
              <Property value="1500" />
              <Property value="2400" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Objects", "GcEnvironmentSpawnData"},
                            ["PRECEDING_KEY_WORDS"] = {"Objects"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
      <Property name="Objects" value="GcObjectSpawnData">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN" />
          <Property name="Seed" value="0" />
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption">
                    <Property name="Layer" value="SNOW" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture">
                      <Property name="Palette" value="Snow" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="false" />
                    <Property name="Colour" value="Colour">
                      <Property name="R" value="0.509" />
                      <Property name="G" value="0.685" />
                      <Property name="B" value="0.7" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption">
                    <Property name="Layer" value="MOSS" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="false" />
                    <Property name="Colour" value="Colour">
                      <Property name="R" value="0.278" />
                      <Property name="G" value="0.581" />
                      <Property name="B" value="0.653" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture">
                      <Property name="Palette" value="Rock" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="false" />
                    <Property name="Colour" value="Colour">
                      <Property name="R" value="0.334" />
                      <Property name="G" value="0.33" />
                      <Property name="B" value="0.327" />
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
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="true" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="40" />
        <Property name="MatchGroundColour" value="false" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="false" />
        <Property name="SwapPrimaryForRandomColour" value="false" />
        <Property name="AlignToNormal" value="true" />
        <Property name="MinScale" value="1" />
        <Property name="MaxScale" value="1.8" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.2" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="false" />
        <Property name="CollideWithPlayer" value="true" />
        <Property name="CollideWithPlayerVehicle" value="false" />
        <Property name="DestroyedByPlayerVehicle" value="true" />
        <Property name="DestroyedByPlayerShip" value="true" />
        <Property name="DestroyedByTerrainEdit" value="true" />
        <Property name="InvisibleToCamera" value="true" />
        <Property name="CreaturesCanEat" value="false" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.18" />
          <Property name="FlatDensity" value="0.008" />
          <Property name="SlopeDensity" value="0.008" />
          <Property name="SlopeMultiplier" value="1" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="99" />
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
          <Property value="GcObjectSpawnDataVariant">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.18" />
            <Property name="FlatDensity" value="0.008" />
            <Property name="SlopeDensity" value="0.008" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
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
        </Property>
      </Property>
]],
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Objects", "GcEnvironmentSpawnData"},
                            ["PRECEDING_KEY_WORDS"] = {"DetailObjects"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
      <Property name="DetailObjects" value="GcObjectSpawnData">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN" />
          <Property name="Seed" value="1" />
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="true" />
                    <Property name="Colour" value="Colour">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="6" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASS" />
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="true" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="48" />
        <Property name="MatchGroundColour" value="true" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="false" />
        <Property name="SwapPrimaryForRandomColour" value="false" />
        <Property name="AlignToNormal" value="true" />
        <Property name="MinScale" value="1.44" />
        <Property name="MaxScale" value="1.5" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.5" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="false" />
        <Property name="CollideWithPlayer" value="false" />
        <Property name="CollideWithPlayerVehicle" value="false" />
        <Property name="DestroyedByPlayerVehicle" value="true" />
        <Property name="DestroyedByPlayerShip" value="true" />
        <Property name="DestroyedByTerrainEdit" value="true" />
        <Property name="InvisibleToCamera" value="true" />
        <Property name="CreaturesCanEat" value="false" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.6" />
          <Property name="SlopeDensity" value="0.6" />
          <Property name="SlopeMultiplier" value="1.8" />
          <Property name="MaxRegionRadius" value="5" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="57" />
          <Property name="FadeOutEndDistance" value="65" />
          <Property name="FadeOutOffsetDistance" value="5" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.6" />
            <Property name="SlopeDensity" value="0.6" />
            <Property name="SlopeMultiplier" value="1.8" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="57" />
            <Property name="FadeOutEndDistance" value="65" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="500" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.6" />
            <Property name="SlopeDensity" value="0.6" />
            <Property name="SlopeMultiplier" value="1.8" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="57" />
            <Property name="FadeOutEndDistance" value="65" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="10" />
              <Property value="20" />
              <Property value="35" />
              <Property value="180" />
            </Property>
          </Property>
        </Property>
      </Property>
]],
                        },
                    }
                },
            }
        },
    }
}