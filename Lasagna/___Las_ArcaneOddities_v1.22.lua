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
function AddDistantProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, destroyableByShip, destroyableByTerrEdit, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

maxRaise = 0
maxLower = 0

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
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
        <Property name="MaxYRotation" value="180" />
        <Property name="MaxRaise" value="0" />
        <Property name="MaxLower" value="-2" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="True" />
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


function AddLandmarkProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, destroyableByShip, destroyableByTerrEdit, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

maxRaise = 0
maxLower = 0

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
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
        <Property name="MaxYRotation" value="180" />
        <Property name="MaxRaise" value="0" />
        <Property name="MaxLower" value="-2" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="True" />
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


function AddObjectProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, destroyableByShip, destroyableByTerrEdit, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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
        <Property name="MaxYRotation" value="180" />
        <Property name="MaxRaise" value="0" />
        <Property name="MaxLower" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="False" />
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


function AddGrassProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, destroyableByShip, destroyableByTerrEdit, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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
        <Property name="MaxYRotation" value="180" />
        <Property name="MaxRaise" value="0" />
        <Property name="MaxLower" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="False" />
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


function AddRockProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, destroyableByShip, destroyableByTerrEdit, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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
        <Property name="MaxYRotation" value="180" />
        <Property name="MaxRaise" value="0" />
        <Property name="MaxLower" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="False" />
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


NMS_MOD_DEFINITION_CONTAINER = --## 2_body
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "___Las_ArcaneOddities_v1.22.pak",
["MOD_AUTHOR"]				= "goosetehmoose",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				--Copy vanilla files to custombiomes folder
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10A.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SUMMERSPIKE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALDRONE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE63.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\HQ\TREES\CACTUSLRG.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_10Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FROZENUMBRELLA.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.62, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\SNOW\WRECKS\GIANTWRECKEDSHIP.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LAMPSHAPE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_11Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.62, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\WOODLAND\LARGEPLANT\MEDIUMOAK1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\HQ\TREES\CACTUSLRG.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREEFLAMING.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_12Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FROZENUMBRELLA.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE17.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.63, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.63, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_13Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE63.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.98, 3.3, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_14Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.63, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("CUSTOMMODELS\NEWSHROOMS\MUSHROOM1_TALL.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("CUSTOMMODELS\NEWSHROOMS\MUSHROOM2_TALL.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE17.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.62, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_15Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\HQLUSH\LARGEPROPS\MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.32, 1.485, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.64, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 3.96, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\MEDIUMPLANT\MEDGLOWINGBUSH1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREEBARE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_16Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREEBARE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\VINETREELARGE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.62, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYSHELLSAND.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\ROTATINGDETAIL.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.64, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYTWIST.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\HQ\TREES\CACTUSLRG.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.62, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_17Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RELIC\RELIC.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.62, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 2.31, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 3.63, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\SKINNEDTREES.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_CAVE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RELIC\RELIC.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALDRONESMALL.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG03.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\HQ\TREES\CACTUSLRG.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\ANENOMESHAPE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.63, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_18W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\VINETREELARGE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LAMPSHAPE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\WOODLAND\LARGEPLANT\MEDIUMOAK1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\CUCUMBERSHAPE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FROZENUMBRELLA.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.3, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_19Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\VINETREELARGE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\SMALLGLOWINGTREE1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\HQ\TREES\CACTUSLRG.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 1.98, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.63, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 4.29, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 1.98, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\CUCUMBERSHAPE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREEBARE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.63, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.825, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYSHELLSAND.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 1.32, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_1Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.33, 0.66, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALSMALL.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 2.31, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.66, 0.99, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\PLANTS\THINBUSHTREE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.62, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 3.3, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.66, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.66, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.66, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE2.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.33, 0.66, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.66, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.66, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALDRONE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.33, 0.66, 3, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.32, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LAMPSHAPE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\VINETREELARGE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\FROZEN\LARGEPROPS\LARGETREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYTWIST.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVESINGLE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.32, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SINGLEJOINT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.32, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\GASBAGS.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.32, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_20Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\EXPLODEPLANT.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\EXPLODEPLANT.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.65, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.99, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\MEDIUMPLANT\MEDGLOWINGBUSH1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.32, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FROZENUMBRELLA.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\SMALLGLOWINGTREE1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_CAVE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.32, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.32, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.32, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.95, 6.6, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 5.28, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_21Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.99, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREEFLAMING.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\PLANTS\THINBUSHTREE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2V.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2V.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2W.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\LAVA\SMALLPROPS\SMALLCOMET01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2W.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.96, 5.94, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\BARREN\PLANTS\TRUNK.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 2.31, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_2Z.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3A.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3A.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3B.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQFROZEN/TREES/TALLPINE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 6.93, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3B.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3C.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.66, 0.825, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3C.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3D.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.63, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3D.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3E.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.62, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3E.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3F.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESWIRLPLANT.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3F.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3G.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATEMAIN.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 1.65, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3G.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3H.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGEFIR01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 4.29, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3H.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3I.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGESPRUCE01.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.96, 5.61, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3I.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3J.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMDEADTREE01.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 3.3, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3J.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3K.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMSPRUCE01.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 1.65, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3K.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3L.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLSPRUCE01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.32, 2.64, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3L.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3M.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3M.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3N.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGERINGTREE.SCENE.MBIN", "RARE1", -1, 128, 0, 30, 0.99, 2.31, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3N.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3O.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.99, 1.65, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3O.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3P.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGERINGTREE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.66, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3P.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3Q.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TENTACLEPLANT.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 4.95, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.053, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3Q.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3R.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/LARGETREE1.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 3.63, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3R.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3S.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 4.29, 6.27, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3S.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3T.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/MONUMENTS/STARGATESMALL.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 1.32, 1.65, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3T.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3U.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGEFIR01.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 0.66, 1.98, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3U.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3X.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MYRTLEBUSH.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.98, 2.97, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3X.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3Y.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/CUCUMBERSHAPE.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 1.65, 4.62, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.057, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.025, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3Y.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3Z.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "RARE_BONES", -1, 128, 0, 30, 3.3, 7.26, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.027, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.018, 0.03, 3), }, --## 3e_biome_detail
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "SMALLCLUMP", -1, 128, 0, 40, 0.8, 1.0, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/ARCANE_ODDITIES/AO_OBJECTS_3Z.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "CRYSTAL3", -1, 128, 0, 30, 0.66, 1.98, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 3, 0.055, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE