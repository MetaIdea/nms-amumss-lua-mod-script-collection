--[[

LUA script created using PLUMGEN
Script may include unused identifiers
Import EXML back into PLUMGEN for swift and easy editing

--]]

--## 1a_header_reg_draw

--GCGRAPHICSGLOBALS.GLOBAL
local ForceUncachedTerrain = "True"	--fix slow terrain textures loading (default = false)
local ShadowLengthMultiplier = 3	--shadows draw distance multiplier --***needed to work

--GCENVIRONMENTGLOBALS.GLOBAL
local LODAdjustMultiplier = 2		--inconsistent results
local RegionLODRadiusAdd = 3			--increases draw distance hard-limit, value above '3' caused crash
local PlanetLODMultiplier = 3		--planet lod distance multiplier
------------------------------------------------------------------------------------------------------------------------
--Section above originally written by InsaneRuffles, modified by FjordFish ---------------------------------------------
------------------------------------------------------------------------------------------------------------------------

--This adds the exml "context" for each model, i.e. the max scale.
function AddDistantProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale .. [[" />
        <Property name="MaxScale" value="]] .. maxScale .. [[" />
        <Property name="MinScaleY" value="]] .. minScaleY .. [[" />
        <Property name="MaxScaleY" value="]] .. maxScaleY .. [[" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="]] .. patchEdgeSc .. [[" />
        <Property name="MaxXZRotation" value="]] .. maxRotation .. [[" />
        <Property name="MaxYRotation" value="]] .. maxYRotation .. [[" />
        <Property name="MaxRaise" value="]] .. maxRaise .. [[" />
        <Property name="MaxLower" value="]] .. maxLower .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="]] .. creatureCanEat .. [[" />
        <Property name="ShearWindStrength" value="0" />
		<Property name="SupportsScanToReveal" value="False" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
          <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
          <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
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
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
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
]]
end


function AddLandmarkProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale .. [[" />
        <Property name="MaxScale" value="]] .. maxScale .. [[" />
        <Property name="MinScaleY" value="]] .. minScaleY .. [[" />
        <Property name="MaxScaleY" value="]] .. maxScaleY .. [[" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="]] .. patchEdgeSc .. [[" />
        <Property name="MaxXZRotation" value="]] .. maxRotation .. [[" />
        <Property name="MaxYRotation" value="]] .. maxYRotation .. [[" />
        <Property name="MaxRaise" value="]] .. maxRaise .. [[" />
        <Property name="MaxLower" value="]] .. maxLower .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="]] .. creatureCanEat .. [[" />
        <Property name="ShearWindStrength" value="0" />
		<Property name="SupportsScanToReveal" value="False" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
          <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
          <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
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
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
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
]]
end


function AddObjectProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale .. [[" />
        <Property name="MaxScale" value="]] .. maxScale .. [[" />
        <Property name="MinScaleY" value="]] .. minScaleY .. [[" />
        <Property name="MaxScaleY" value="]] .. maxScaleY .. [[" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="]] .. patchEdgeSc .. [[" />
        <Property name="MaxXZRotation" value="]] .. maxRotation .. [[" />
        <Property name="MaxYRotation" value="]] .. maxYRotation .. [[" />
        <Property name="MaxRaise" value="]] .. maxRaise .. [[" />
        <Property name="MaxLower" value="]] .. maxLower .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="]] .. creatureCanEat .. [[" />
        <Property name="ShearWindStrength" value="0" />
		<Property name="SupportsScanToReveal" value="False" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
          <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
          <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
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
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="10" />
              <Property value="30" />
              <Property value="75" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


function AddGrassProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
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
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="]] .. minScale .. [[" />
        <Property name="MaxScale" value="]] .. maxScale .. [[" />
        <Property name="MinScaleY" value="]] .. minScaleY .. [[" />
        <Property name="MaxScaleY" value="]] .. maxScaleY .. [[" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="]] .. patchEdgeSc .. [[" />
        <Property name="MaxXZRotation" value="]] .. maxRotation .. [[" />
        <Property name="MaxYRotation" value="]] .. maxYRotation .. [[" />
        <Property name="MaxRaise" value="]] .. maxRaise .. [[" />
        <Property name="MaxLower" value="]] .. maxLower .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="]] .. creatureCanEat .. [[" />
        <Property name="ShearWindStrength" value="0.75" />
		<Property name="SupportsScanToReveal" value="False" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
          <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
          <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
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
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="35" />
            <Property name="FadeOutEndDistance" value="45" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="500" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="75" />
            <Property name="FadeOutEndDistance" value="85" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


function AddRockProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
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
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="]] .. minScale .. [[" />
        <Property name="MaxScale" value="]] .. maxScale .. [[" />
        <Property name="MinScaleY" value="]] .. minScaleY .. [[" />
        <Property name="MaxScaleY" value="]] .. maxScaleY .. [[" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="]] .. patchEdgeSc .. [[" />
        <Property name="MaxXZRotation" value="]] .. maxRotation .. [[" />
        <Property name="MaxYRotation" value="]] .. maxYRotation .. [[" />
        <Property name="MaxRaise" value="]] .. maxRaise .. [[" />
        <Property name="MaxLower" value="]] .. maxLower .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="]] .. creatureCanEat .. [[" />
        <Property name="ShearWindStrength" value="0" />
		<Property name="SupportsScanToReveal" value="False" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
          <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
          <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
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
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="70" />
            <Property name="FadeOutEndDistance" value="80" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="35" />
              <Property value="45" />
              <Property value="500" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="10" />
            <Property name="MaxImposterRadius" value="10" />
            <Property name="FadeOutStartDistance" value="70" />
            <Property name="FadeOutEndDistance" value="80" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="35" />
              <Property value="45" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


local replaceObjects =
[[
  <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    <Property name="Creatures" />
    <Property name="DistantObjects">
    </Property>
    <Property name="Landmarks">
    </Property>
    <Property name="Objects">
    </Property>
    <Property name="DetailObjects">
	</Property>
    <Property name="SelectableObjects" />
  </Property>
]]

--This adds basic collisions to pre-release models:
local AddBasicCollisions = --scale y&z flipped compared to blender
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.852212" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="4.113077" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddStargateMainCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="33.7089" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="14.7729" />
        <Property name="ScaleY" value="94.0191" />
        <Property name="ScaleZ" value="43.707" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddSailPlantCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="9.01606" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.08925" />
        <Property name="ScaleY" value="1.08925" />
        <Property name="ScaleZ" value="1.08925" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddStargateSmallCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.1063" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.98886" />
        <Property name="ScaleY" value="16.1781" />
        <Property name="ScaleZ" value="7.06369" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddConstruct01Collisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.545434" />
        <Property name="TransY" value="25.3086" />
        <Property name="TransZ" value="0.000005" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="18" />
        <Property name="ScaleY" value="53.1329" />
        <Property name="ScaleZ" value="9.2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddDiploCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="2.71673" />
            <Property name="TransZ" value="0.696974" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="4.12627" />
            <Property name="ScaleY" value="6.65969" />
            <Property name="ScaleZ" value="12.822" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="4.12627" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="6.65969" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="12.822" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="7.99469" />
            <Property name="TransZ" value="-6.20225" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="17.5435" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="17.5435" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddLargePyramidCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-1.18213" />
            <Property name="TransZ" value="1.81038" />
            <Property name="RotX" value="-0.000003" />
            <Property name="RotY" value="-0.000008" />
            <Property name="RotZ" value="43.2926" />
            <Property name="ScaleX" value="25.036" />
            <Property name="ScaleY" value="17.2584" />
            <Property name="ScaleZ" value="29.1401" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="25.036" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="17.2584" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="29.1401" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.000004" />
            <Property name="TransY" value="-0.000009" />
            <Property name="TransZ" value="-1.97872" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="50.8707" />
            <Property name="ScaleX" value="25.293" />
            <Property name="ScaleY" value="11.5588" />
            <Property name="ScaleZ" value="12.9888" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="25.293" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="11.5588" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="12.9888" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddLargeFir01Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.558016" />
        <Property name="TransY" value="7.22953" />
        <Property name="TransZ" value="0.332784" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-0.000002" />
        <Property name="RotZ" value="8.91439" />
        <Property name="ScaleX" value="1.2" />
        <Property name="ScaleY" value="18.7235" />
        <Property name="ScaleZ" value="1.2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddPanelCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.78808" />
        <Property name="ScaleY" value="0.18821" />
        <Property name="ScaleZ" value="4.25468" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddGiantCubeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="35.2645" />
        <Property name="RotY" value="-0.547245" />
        <Property name="RotZ" value="-22.8467" />
        <Property name="ScaleX" value="18" />
        <Property name="ScaleY" value="18" />
        <Property name="ScaleZ" value="18" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddTinyCubesCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.093606" />
        <Property name="TransY" value="0.299448" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.15984" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddGiantSpikeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.151165" />
        <Property name="TransY" value="2.04694" />
        <Property name="TransZ" value="0.069311" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.91557" />
        <Property name="ScaleY" value="5.63382" />
        <Property name="ScaleZ" value="1.91106" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddPillar1Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.740098" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.722315" />
        <Property name="ScaleY" value="2.51915" />
        <Property name="ScaleZ" value="0.802045" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddSquatPillar1Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.050811" />
        <Property name="TransY" value="1.97316" />
        <Property name="TransZ" value="0.084956" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.3972" />
        <Property name="ScaleY" value="5.03717" />
        <Property name="ScaleZ" value="2.66415" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddAntelopeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.7109" />
        <Property name="TransZ" value="0.302117" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.606732" />
        <Property name="ScaleY" value="1.32638" />
        <Property name="ScaleZ" value="1.808" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddAstronaut01Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.059928" />
        <Property name="TransY" value="0.715976" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.527036" />
        <Property name="ScaleY" value="1.96271" />
        <Property name="ScaleZ" value="1.0" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddWalkerCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.37249" />
        <Property name="TransZ" value="-0.098499" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.754088" />
        <Property name="ScaleY" value="2.84987" />
        <Property name="ScaleZ" value="1.14702" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


local AddSmallTree3Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-4.3351" />
            <Property name="TransY" value="2.62361" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1.4" />
            <Property name="ScaleY" value="5.32182" />
            <Property name="ScaleZ" value="1.4" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.4" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="5.32182" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.4" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.92216" />
            <Property name="TransY" value="2.38741" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1.8" />
            <Property name="ScaleY" value="5.97841" />
            <Property name="ScaleZ" value="1.8" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.8" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="5.97841" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.8" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.175636" />
            <Property name="TransY" value="5.24692" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="7.89745" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="7.89745" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = --## 2_body
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "___Las_Cave.pak",
["MOD_AUTHOR"]				= "goosetehmoose",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				
			--Add collisions
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG02.SCENE.MBIN",
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG01.SCENE.MBIN",
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG03.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\BARREN\LARGEPROPS\LARGEFLAG.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE02.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\BENDYTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE2.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGETREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\TREEVARIANTS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\SMALLGLOWINGTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLSPRUCE01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01\FIRLEAF.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEBUSH1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEBUSH1\LARGEBUSHMAT.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEPLANT03.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03\BUSHLEAFMAT.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLCEDAR01.SCENE.MBIN", -------------
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01\LEAF01.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMUMBRELLA01.SCENE.MBIN", -------------
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01\LEAF01.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMSPRUCE01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01\FIRLEAF.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMDEADTREE01.SCENE.MBIN", --
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01\DEADLEAFMAT.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGESPRUCE01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01\MEDIUMSPRUCE01_FIRLEAF.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddConstruct01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLOPOSE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddDiploCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddLargePyramidCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", --big
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddLargeFir01Collisions,
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL",},
							["VALUE_MATCH"] 		= "MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01\FIRMAT.MATERIAL.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\TRUNKABILLBOARD_NEWLEAFMAT.MATERIAL.MBIN"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddPanelCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddGiantCubeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddTinyCubesCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddGiantSpikeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddPillar1Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSquatPillar1Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddAntelopeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\CHARACTERS\ASTRONAUT\ASTRONAUT01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddAstronaut01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddWalkerCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE3.SCENE.MBIN", --"M"-shaped tree
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSmallTree3Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATEMAIN.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddStargateMainCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATESMALL.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddStargateSmallCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSailPlantCollisions,
						},
					}
				},
				
				--Copy vanilla files to custombiomes folder
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME100.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME100.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME101.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.06, 0.04, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.005, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.06, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.072, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.4, 1.4, 1, 1.2, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.5, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 2, 0.03, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME101.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME43.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1, 2.45, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.02, 0.018, 0.018, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLFRAGMENTS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 4.375, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WEIRDCUBE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 4.025, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0028, 0.0028, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME43.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME44.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.006, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 40, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1118, 0.048, 0.036, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1.4, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.03, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.003, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.625, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.02, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME44.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME45.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.5, 1.225, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.21, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 1.4, 4.375, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.16, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.4, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 40, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0602, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.015, 0.015, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.015, 0.015, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.5, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0645, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.06, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.25, 1.575, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.086, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.129, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.5, 3.15, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0155, 0.0155, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFURRYCACTUS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.5, 2.1875, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.043, 0.18, 0.18, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME45.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME46.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.5, 1.225, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.21, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 1.4, 4.375, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.16, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.4, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 40, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0602, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.015, 0.015, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.015, 0.015, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.5, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0645, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.06, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.25, 1.575, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.086, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.129, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.5, 3.15, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0155, 0.0155, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.2, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.5, 2.1875, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.043, 0.18, 0.18, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME46.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME47.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.4, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.002, 0.002, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.1, 0.35, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.6, 0.001, 0, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.025, 0.025, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0005, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.045, 0.045, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.6, 0.018, 0.018, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0258, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME47.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME48.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 40, 1.5, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.0688, 0.06, 0.06, 1.5), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 40, 1, 3.5, 1, 1.5, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.0215, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.05, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.4, 0.8, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.03, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 40, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1075, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.21, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.75, 0.0005, 0, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 40, 1, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1032, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.21, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 40, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0774, 0.36, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.14, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1.4, 3.85, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0075, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.005, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMX", 1, 128, 0, 180, 0.3, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1.8, 4.375, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.013, 0.013, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.75, 0.0005, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 3.5, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0645, 0.36, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMPX", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0005, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.975, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.06, 0.035, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0344, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.14, 0.14, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.4, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.007, 0.007, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 2, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME48.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME49.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.07, 0.2, 0.2, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.04, 0.014, 0.014, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 40, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0559, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 2, 7, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01, 0.01, 0.1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.09, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.5, 3.5, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0731, 0.42, 0.42, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.13, 0.16, 0.16, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.45, 0.022, 0.022, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0344, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME49.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME50.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 40, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1032, 0.24, 0.24, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.5, 1.225, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.21, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.4, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.3, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.008, 0.008, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 40, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0602, 0.24, 0.24, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.4, 3.5, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0155, 0.0155, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.024, 0.024, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.086, 0.288, 0.288, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0344, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.06, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.16, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "SPARSECUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME50.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME51.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.006, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 40, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1032, 0.036, 0.036, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1.4, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.06, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1.5, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.003, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.625, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME51.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME52.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/EFFECTS/HEAVYAIR/STONEFRAGMENTS/STONEFRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.01, 0.01, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/SMALLSTONE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME52.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME53.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.03, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEBLOBS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1.2, 3.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.05, 0.05, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEFRUIT.SCENE.MBIN", "JAMESPATCHX", 1, 128, 0, 180, 1.6, 3.85, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.012, 0.012, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEBLOBS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.05, 0.05, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.09, 0.09, 8), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME53.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME54.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 40, 0.8, 2.275, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.0048, 0.0024, 2.8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURDETAIL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.12, 0.12, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURDETAIL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.12, 0.12, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME54.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME55.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 40, 0.8, 2.275, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.0048, 0.0024, 2.8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DEADBUBBLE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.2, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.035, 0.034, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME55.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME56.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 40, 0.8, 2.275, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.0048, 0.0024, 2.8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPEB.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.125, 0.04, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.6, 0.3, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "FLORACLUMPX", 1, 128, 0, 180, 1.5, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.1, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/CYLINDER.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.5, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.04, 0.04, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/FLAP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 3, 8.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.02, 0.02, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME56.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME57.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.2, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005, 0.005, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.2, 1.4, 0.8, 1.3, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005, 0.005, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.8, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.129, 0.0048, 0.0036, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "JAMESPATCHX", 1, 128, 0, 40, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1032, 0.036, 0.036, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSNOWBLEND.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1.4, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.05, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 2.1, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME57.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME58.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCKCLUMPS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.008, 0.008, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0602, 0.36, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1032, 0.042, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0005, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCKCLUMPS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0.0125, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.086, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLSNOWCLUMPS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.05, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0344, 0.36, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/ROCKSCREE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.7, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.012, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME58.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME59.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.002, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0005, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.7, 1.575, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0055, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.45, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.06, 0.04, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0172, 0.3, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME59.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME60.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 40, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1075, 0.594, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.25, 0.01, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.002, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0602, 0.39, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.14, 0.01, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 40, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0774, 0.42, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.8, 2.45, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0045, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0055, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.225, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0075, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0005, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.7, 1.575, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0055, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.007, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0645, 0.468, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.05, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0344, 0.42, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME60.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME61.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.129, 0.012, 0.012, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 40, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1032, 0.06, 0.036, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSNOWBLEND.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 3, 7, 1, 1.4, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.06, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.5, 2.1, 1, 1.5, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.129, 0.06, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.625, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.03, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME61.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME62.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.5, 1.575, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.6, 0.18, 0, 7.84), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.182, 0.008, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.016, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.04, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.17, 0.03, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME62.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME63.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.3, 0.3, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.8, 2.275, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.0048, 0.0024, 2.8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.5, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.21, 0.21, 1.4), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME63.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME64.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.8, 2.8, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.1, 0.1, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.03, 0.018, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLCRYSTALSLICES.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 2.45, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.06, 0.06, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME64.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME65.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 40, 1.1, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0946, 0.42, 0.42, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.033, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0731, 0.468, 0.468, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.025, 0.025, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.015, 0.015, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME65.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME66.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1.5, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.1, 0.1, 1.5), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1, 1.75, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1, 1.75, 1.4, 1.8, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.24, 0.24, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 1, 1.5, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1, 2.8, 1, 1.3, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.002, 0.002, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.01, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.018, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.45, 1.2, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.05, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1.3, 2.625, 1.5, 1.7, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.75, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.42, 0.42, 7.84), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.009, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.02, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.062, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 0.7, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.17, 0.054, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME66.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME67.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1.2, 2.275, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.4, 0.4, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.1, 2.275, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.02, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.1, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.1, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.1, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.1, 2.275, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.018, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.02, 0.03, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME67.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME68.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1.5, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 1.5), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.5, 2.625, 0.8, 1.5, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 1.2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1, 1.75, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1, 1.75, 1.4, 1.8, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 1, 1.5, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1, 2.8, 1, 1.3, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.45, 1.2, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1.3, 2.625, 1.5, 1.7, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.8, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.48, 0.48, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.02, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.018, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.03, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME68.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME69.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.0645, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.8, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.42, 0.42, 7.84), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.018, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.3, 3.15, 0.8, 1.25, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1.5, 5.25, 0.8, 1.25, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.03, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 0.8, 1.25, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.03, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.05, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.05, 0.03, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME69.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME70.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.002, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.1, 0.35, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.6, 0.001, 0.001, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0005, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.7, 1.575, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0055, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.05, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.45, 0.02, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.7, 1.75, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.02, 0, 4), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.06, 0.04, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0172, 0.3, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME70.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME71.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.8, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.42, 0, 7.84), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.182, 0.008, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.02, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.06, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 3.15, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.06, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.4, 3.15, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME71.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME72.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1.1, 2.8, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.9, 0.36, 0.24, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1.5, 4.375, 1, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.172, 0.03, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1.2, 3.15, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.5, 4.375, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.4, 0.01, 0.008, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME72.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME73.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1.1, 2.8, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.9, 0.36, 0.24, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1.5, 4.375, 1, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.172, 0.03, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 1.2, 3.15, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.5, 4.375, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.4, 0.01, 0.008, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME73.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME74.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.129, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.6, 1.575, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.35, 0.35, 7.84), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.15, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.15, 0, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.018, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1.5, 5.25, 0.8, 1.25, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1.5, 5.25, 0.8, 1.25, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.03, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.1, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 2.5, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0.06, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME74.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME75.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.6, 1.575, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.35, 0.35, 7.84), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.018, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1.5, 5.25, 0.8, 1.25, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1.5, 5.25, 0.8, 1.25, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.05, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 2, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.05, 0.03, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME75.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME76.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.8, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.3, 0, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.5, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.5, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME76.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME77.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 40, 0.8, 2.275, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.0048, 0.0024, 2.8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/SMALLJOINT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.25, 3.85, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.12, 0.12, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME77.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME78.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.2, 0.2, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.002, 0.002, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.8, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME78.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME79.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.3, 0.25, 0.25, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.002, 0.002, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.07, 0.07, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.4, 0.07, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME79.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME80.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMX", 1, 128, 0, 180, 0.4, 3.675, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.42, 0.015, 0.015, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMX", 1, 128, 0, 180, 0.3, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMX", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMX", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.2, 0.7, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.09, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMX", 1, 128, 0, 180, 1.1, 2.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.21, 0.5, 0.5, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMX", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMX", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMX", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMX", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME80.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME81.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.03, 0.018, 4.2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1, 2.625, 0.8, 1.2, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.05, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.4, 3.675, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.42, 0.015, 0.015, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.3, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.2, 0.7, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1.1, 2.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.5, 0.5, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME81.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME82.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.4, 0.4, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.3, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.013, 0.013, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.4, 0.4, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.2, 0.7, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.4, 0.4, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.22, 0.34, 0.34, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.09, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.4, 0.4, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME82.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME83.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.19, 0.18, 0.18, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.25, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.3, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.008, 0.008, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.18, 0.18, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.225, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0075, 0.0075, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.6, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME83.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME84.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.04, 0.025, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.005, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/CRYSTALTINY.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.5, 5.25, 0.9, 1.1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.05, 0.05, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.1, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.06, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.06, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.5, 1.4, 1, 1.2, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.05, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.5, 0.1, 0.05, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME84.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME85.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.04, 0.025, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.005, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMPX", 1, 128, 0, 180, 1.5, 5.25, 0.9, 1.1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.05, 0.05, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.042, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.042, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.4, 1.4, 1, 1.2, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.9, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME85.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME86.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.5, 1.575, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.6, 0.18, 0, 7.84), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.182, 0.008, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.016, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.04, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.17, 0.03, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME86.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME87.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.2, 0.2, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.002, 0.002, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 0.8, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.6, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.4, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME87.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME88.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.033, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.043, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.17, 0.025, 0.025, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0172, 0.21, 0.21, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.05, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME88.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME89.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.06, 0.03, 4.2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.625, 0.8, 1.2, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.02, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.3, 1.4, 1, 1.5, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 40, 1.1, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0946, 0.42, 0.42, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.033, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1075, 0.468, 0.468, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.025, 0.025, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME89.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME90.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 40, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.086, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.45, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.17, 0.1, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.033, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.06, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.8, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0645, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0005, 0.03, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.05, 0.03, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0344, 0.3, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.2, 0.2, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME90.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME91.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 40, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0989, 0.24, 0.24, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.25, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", 1, 128, 0, 40, 1, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0172, 0.24, 0.24, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.14, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 40, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0344, 0.24, 0.24, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0.01, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.225, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0075, 0.0075, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.1, 0.35, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 1.2, 2.975, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.7, 1.575, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0055, 0.0055, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.6, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0645, 0.24, 0.24, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.05, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.0301, 0.18, 0.18, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME91.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME92.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0, 0), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 40, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.129, 0.36, 0.36, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.2, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.033, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1075, 0.42, 0.42, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.025, 0.025, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME92.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME93.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 40, 0.8, 2.275, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.086, 0.0048, 0.0024, 2.8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPEB.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.125, 0.04, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.6, 0.3, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "FLORACLUMPX", 1, 128, 0, 180, 1.5, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.1, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DEADBUBBLE.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 0.2, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.035, 0.035, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/FLAP.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 3, 8.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.01, 0.01, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME93.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME94.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", 1, 128, 0, 180, 0.8, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.03, 0.12, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "FLORACLUMPX", 1, 128, 0, 180, 1.2, 2.625, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.02, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.07, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.018, 0, 2), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 2.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.05, 0.03, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME94.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME95.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENGRASSCLUM", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.06, 0.04, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENGRASSCLUM", 1, 128, 0, 180, 0.8, 2.625, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.2, 1.4, 0.8, 1.3, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005, 0.005, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1.2, 3.15, 1, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLTOXICEGG.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1.3, 2.975, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.025, 0.025, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 40, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1032, 0.036, 0.036, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.975, 1, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.12, 0.1, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 3.15, 1, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.24, 0.06, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLTOXICEGG.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.3, 2.975, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.025, 0.025, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME95.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME96.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.04, 0.025, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.005, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLERODEPLANT.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 3.5, 0.9, 1.1, 0, 360, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.03, 0.02, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLERODEPLANT.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 3.5, 0.9, 1.1, 0, 360, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.03, 0.02, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.08, 0.06, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.042, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.042, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.6, 1.75, 1, 1.2, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.045, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.5, 0.08, 0.05, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.055, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME96.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME97.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1, 1.75, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.1, 1, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.35, 0.025, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.034, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.35, 0.16, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.035, 0.035, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.8, 2.45, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.018, 0.018, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.3, 0.5, 0.3, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.09, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.5, 0.16, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.14, 0.12, 0.12, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.16, 0.16, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.16, 0.16, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME97.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME98.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.275, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.034, 0.034, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.16, 0.5, 0.5, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.3, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.14, 0.015, 0.015, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.08, 0.08, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.19, 0.78, 0.78, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.4, 0.4, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.4, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.2, 0.2, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.4, 0.4, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.4, 0.4, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME98.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME99.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.14, 0.14, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.5, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.3, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.008, 0.008, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.14, 0.14, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.225, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0075, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.1, 0.35, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.03, 0.03, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.5, 1.05, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 1.2, 2.975, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0005, 0.01, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.7, 1.575, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0055, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.024, 0.024, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.4, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.09, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.15, 0.15, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.5, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.65, 0.02, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.08, 0.16, 0.16, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVE_BIOME99.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEGRAVELPATCH.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 2.5, 8.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0, 0, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.04, 0.025, 8), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPOREBARNACLE.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 2, 5.25, 0.9, 1.1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.03, 0.02, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1.3, 3.15, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.12, 0.07, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.042, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.3, 1.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1075, 0.042, 0.021, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.6, 1.75, 1, 1.2, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.045, 0.02, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.3, 3.15, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.5, 0.12, 0.07, 1), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.055, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE