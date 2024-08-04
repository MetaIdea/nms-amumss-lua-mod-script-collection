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

-- Check if flatDensity is greater than 0.05
if flatDensity > 0.05 then
    -- reduce flatDensity by 50%
    flatDensity = flatDensity * 0.66
end

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

-- Check if flatDensity is greater than 0.05
if flatDensity > 0.05 then
    -- reduce flatDensity by 50%
    flatDensity = flatDensity * 0.66
end

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


NMS_MOD_DEFINITION_CONTAINER = --## 2_body
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "___Las_Aether_Lands_v1.22.pak",
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
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_100_WEIRD.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_100_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_101_LUSH_DEAD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 4, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0944, 0.0059, 0.00295, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.08, 1, 1, 0.1, 4, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.032, 0.05, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/JADEPEAS.SCENE.MBIN", "WILDPLANTS", -1, 128, 0, 60, 0.9, 4.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/NOXIOUSTALLGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 0.3, 0.8, 1, 1.5, 0.5, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "TRUE", 0, 0.05, 0.05, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_101_LUSH_DEAD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_102_HUGE_NOXIOUS_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 70, 0.9, 1.1, 0.75, 8, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.16225, 0.00708, 0.00708, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREEFLAMING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2.5, 11, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0944, 0.00059, 0.00059, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 180, 1, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.008, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/ROCKSCREE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.7, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.012, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_102_HUGE_NOXIOUS_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_103_HUGE_IRRADIATED_LIVINGSHIP_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 4, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0944, 0.0059, 0.00295, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/STARJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.9, 2.3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.004, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEBLOBS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 120, 3, 3.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.09, 0.09, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_103_HUGE_IRRADIATED_LIVINGSHIP_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_104_BARREN_DEAD_LAVA_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/IRRADIATED/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGESUMMEREGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 0.8, 3, 0.9, 1.1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.0066, 0.0066, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/HYDROPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.35, 3.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0009, 0.0009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_104_BARREN_DEAD_LAVA_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_105_LUSH_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREEFLAMING.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 3.2, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.00064, 0.001, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_105_LUSH_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_106_LUSH_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 9, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.4, 0.03125, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.08, 0.9, 1.1, 0.5, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.0096, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "FLORACLUMP", -128, -5, 0, 80, 0.8, 1.85, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.295, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 125, 0.7, 0.9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_106_LUSH_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_107_WEIRD_TOXIC_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.6, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0064, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8.8, 0.8, 1.2, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.066, 0.0033, 0.00132, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREESINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3, 45, 1, 1, 0, 10, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00462, 0.00264, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_107_WEIRD_TOXIC_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_108_TOXIC_HUGE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 4, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0944, 0.0059, 0.00295, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGGSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 4, 70, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.066, 0.00528, 0.00528, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMVOLCANICROCKS.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0, 0.0002, 0.0002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/NOXIOUSTALLGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_108_TOXIC_HUGE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_109_WEIRD_SCORCHED_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGEFUNGUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 10, 70, 1, 1, 0.75, 10, 180, 55, -2, "FALSE", "TRUE", "TRUE", "FALSE", 0.132, 0.0198, 0.0198, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 8.8, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3224, 0.03828, 6.6E-05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.5, 70, 1, 1, 0.75, 20, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00472, 0.00177, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/ROTATINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_109_WEIRD_SCORCHED_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_10_HUGE_ROCKY_LUSH_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMPX", 1, 128, 0, 180, 1.5, 5.25, 0.9, 1.1, 0, 20, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.05, 0.05, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.05, 0.01088, 0.017, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 360, 1.2, 2.1, 1, 1, 0, 360, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0072, 0.0036, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEBLOBS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.8, 1.2, 1, 1, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_10_HUGE_ROCKY_LUSH_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_110_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0, 0.04, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 70, 0.9, 1.1, 0.75, 8, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.059, 0.0059, 0.0059, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 2.4, 3.9, 0.9, 1.1, 0.5, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0165, 0.0165, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/IRRADIATED/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_110_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_111_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.44, 1, 1, 0, 10, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.11, 0.0512, 0.08, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1, 8, 1, 1, 0.74, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.066, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 38, 0.9, 1.4, 1.2, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 180, 1.5, 3, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.009, 0.009, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_111_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_112_HUGE_ROCKY_LIVINGSHIP_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1, 19, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0767, 0.0099, 0.00945, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3.5, 70, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00118, 0.00118, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEFRUIT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.28, 1.92, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01125, 0.02, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_112_HUGE_ROCKY_LIVINGSHIP_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_113_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLESUMMER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 0.6, 2.2, 0.85, 1.15, 0.5, 15, 180, 55, 0, "TRUE", "TRUE", "TRUE", "TRUE", 0.198, 0.0033, 0.00462, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.56, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/BLOBFRAGMENTS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_113_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_114_IRRADIATED_LAVA_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 15, 1.2, 2.1, 1, 1, 0.2, 25, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.06, 0.0042, 0, 5), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 3, 5.25, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.15, 0.033, 0.033, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/CRYSTALSSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1, 54, 1, 1, 0, 15, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0013, 0.0013, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "GRASS", -1, 128, 0, 37, 1.1, 1.7, 1, 1.3, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_114_IRRADIATED_LAVA_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_115_LAVA_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/IRRADIATED/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/SMALLCOMET01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 0.45, 1.05, 1, 1, 0.5, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.0033, 0.0033, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/SHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0196875, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/UNDERWATER/METALSPHERE.SCENE.MBIN", "FLORACLUMP", -128, -5, 0, 60, 0.8, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "FALSE", "FALSE", "FALSE", 0, 0.001, 0.001, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_115_LAVA_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_116_HUGE_BURNT_WEIRD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 2.25, 4.5, 0.8, 1.2, 0, 45, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.0585, 0.036, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMVOLCANICROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.6, 1.2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.4, 0.000128, 0.0002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGESUMMEREGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.2, 3, 0.9, 1.1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.009, 0.009, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSVARIATION01.SCENE.MBIN", "SPARSECLUMPX", -1, 128, 0, 85, 0.9, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_116_HUGE_BURNT_WEIRD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_117_NOXIOUS_SCORCHED_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BURNT/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.15, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTAL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3.5, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1475, 0.0059, 0.00295, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0192, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0.5, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_117_NOXIOUS_SCORCHED_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_118_LIVINGSHIP_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.5, 0.0005, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1.5, 1.5, 0.9, 1.1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.011, 0.011, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.5, 2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.02, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_118_LIVINGSHIP_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_119_HUGE_DESOLATE_WEIRD_DEAD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGGHOLDER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3, 8.8, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.198, 0.0033, 0.0033, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.4, 0.025, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 0.6, 8, 1, 1, 0.74, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0045, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1, 8, 1, 1, 0.74, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_119_HUGE_DESOLATE_WEIRD_DEAD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_11_LIVINGSHIP_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/DESOLATE/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 2, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0885, 0.0198, 0.0189, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.9, 11, 1, 1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02006, 0.02006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/IRRADIATED/DETAIL/IRRADIATEDTALLGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "TRUE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_11_LIVINGSHIP_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_120_LIVINGSHIP_BARREN_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 5.5, 1, 1, 0.2, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.0198, 0.0132, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 360, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.5, 0.00512, 0.004, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.12, 1.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 3, 4, 1, 1.4, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.06, 0.04, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_120_LIVINGSHIP_BARREN_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_121_BARREN_TOXIC_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGESUMMEREGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.6, 0.9, 1.1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0064, 0.01, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 2.4, 3, 1, 1, 0.3, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.23, 0.009, 0.009, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1.5, 2.1, 1, 1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0077, 0.0033, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPEB.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 0.8, 4.375, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.04, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_121_BARREN_TOXIC_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_122_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 3.5, 6, 1, 1, 0.8, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.005, 0.005, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.165, 0.063, 0.063, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 360, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00512, 0.004, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 55, 0.8, 1.5, 1, 1.7, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.7, 0.7, 2.8), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_122_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_123_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2.6, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0472, 0.0066, 0.0063, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0128, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BEAMSTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.35, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0045, 0.0045, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.015, 0.015, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_123_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_124_TOXIC_WEIRD_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 4, 5, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.006, 0.006, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_124_TOXIC_WEIRD_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_125_IRRADIATED_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.16, 0.8, 1, 1, 0.1, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.09, 0.0225, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 3.6, 1, 1, 0.5, 15, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0192, 0.03, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTROCKLIFTED.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 40, 0.5, 3, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.003, 0.003, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_125_IRRADIATED_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_126_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/IRRADIATED/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVESINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 70, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.04425, 0.00118, 0.00118, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 1.5, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.45, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 70, 1.2, 1.9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0015, 0.0015, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_126_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_127_FROZEN_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 3.75, 4.5, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.0011, 0.0022, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/CRYSTALSSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1, 54, 1, 1, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.156, 0.0013, 0.0013, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT.SCENE.MBIN", "BIGHAZCROP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.25, 0.25, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_127_FROZEN_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_128_LUSH_BARREN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.05, 2.7, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.115, 0.143, 0.143, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.00192, 0.001, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 4, 70, 1, 1, 0.75, 15, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0059, 0.00295, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2.5, 1, 1.2, 0.4, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.01, 0.008, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_128_LUSH_BARREN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_129_LIVINGSHIP_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.6, 4.8, 0.9, 1.1, 0, 8, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.0064, 0.01, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/BARRENPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2.5, 70, 1, 1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00295, 0.00295, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_129_LIVINGSHIP_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_12_BARREN_WEIRD_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.00192, 0.001, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 2.55, 4.05, 1, 1, 0, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.033, 0.033, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 20, 270, 1, 1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0132, 0.0132, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 1, 4.375, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_12_BARREN_WEIRD_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_130_BARREN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.23, 0.01, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 4, 6.4, 1, 1, 0, 10, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.00192, 0.003, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0192, 0.01, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_130_BARREN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_131_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.6, 2.3, 1, 1, 0.7, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1357, 0.0066, 0.0059, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.4, 1, 1, 0.5, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.02, 0.01, 0.5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/ARRAYSHELL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 0.8, 8, 1, 1, 0.74, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 5.25, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_131_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_132_BARREN_LAVA_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGESUMMEREGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.2, 3, 0.9, 1.1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.009, 0.009, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 7.5, 12, 1, 1, 0.5, 30, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0028, 0.0028, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/JADEPEAS.SCENE.MBIN", "WILDPLANTS", -1, 128, 0, 60, 0.9, 4.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 1.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.06, 0.06, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_132_BARREN_LAVA_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_133_WEIRD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/SMALLCOMET01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.24, 0.56, 1, 1, 0.5, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.00192, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.5, 1, 1, 0, 15, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00225, 0.0009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DEADBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.2, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.035, 0.034, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_133_WEIRD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_134_TOXIC_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.6, 1, 1, 0, 3, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.12, 0.0096, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 70, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.118, 0.0059, 0.0059, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.8, 70, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01475, 0.01475, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLTOXICEGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.3, 1.7, 1, 1, 0.1, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.025, 0.025, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_134_TOXIC_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_135_LIVINGSHIP_FROZEN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 0.9, 1.1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0128, 0.01, 1.5), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 4.5, 7.5, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0027, 0.0009, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 0.1, 8, 1, 1, 0.74, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.08, 0.08, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/SMALLCAVEBUSH.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_135_LIVINGSHIP_FROZEN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_136_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLESUMMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 0.85, 1.15, 0.5, 15, 180, 55, 0, "TRUE", "TRUE", "TRUE", "TRUE", 0.3, 0.0028125, 0.007, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.12, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.09, 0.00448, 0.004, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 1, 8, 1, 1, 0.74, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.007, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_136_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_137_RADIOACTIVE_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "JAMESPATCHX", -1, 128, 0, 60, 2.4, 5.5, 1, 1, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.00132, 0.00066, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/TESTS/FREQTEST/RARE3.SCENE.MBIN", "RARE3X", -1, 128, 0, 50, 1, 1, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 1, 0.5, 0.5, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.3, 0.4, 1, 1, 0.2, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.06, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0005, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_137_RADIOACTIVE_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_138_HUGE_DEAD_LAVA_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 45, 5.25, 6.75, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0018, 0.0018, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GASBAGS.SCENE.MBIN", "FLORACLUMP", -128, -32, 0, 180, 4, 8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.004, 0.004, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SNOWFRAGMENTS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_138_HUGE_DEAD_LAVA_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_139_HUGE_WEIRD_IRRADIATED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 20, 1, 1, 0, 3, 180, 55, -2, "FALSE", "TRUE", "TRUE", "FALSE", 0.15, 0.00625, 0.005, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.9, 11, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.118, 0.02006, 0.02006, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0055, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_139_HUGE_WEIRD_IRRADIATED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_13_RADIOACTIVE_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGERINGTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 9, 1, 1, 0, 3, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.06875, 0.055, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/IRRADIATED/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1, 1, 1, 0.2, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.04, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLSNOWCLUMPS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.8, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_13_RADIOACTIVE_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_140_NOXIOUS_LIVINGSHIP_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 60, 1.8, 70, 1, 1, 0.75, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0708, 0.01357, 0.01357, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 11, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00177, 0.00177, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSNOW.SCENE.MBIN", "BIOMEPLANTX", -1, 128, 0, 60, 2, 8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DEADBUBBLE.SCENE.MBIN", "BLANKETCLUMPX", 1, 128, 0, 180, 0.2, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.035, 0.035, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_140_NOXIOUS_LIVINGSHIP_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_141_WEIRD_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.28, 0.009, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 4.5, 6, 1, 1, 0.2, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.009, 0.018, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01088, 0.017, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0048, 0.024, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_141_WEIRD_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_142_SCORCHED_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1.2, 2.25, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.033, 0.011, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 70, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00354, 0.00354, 1.5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.8, 19, 1, 1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0198, 0.0063, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.2, 0.9, 1.2, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00225, 0.004, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_142_SCORCHED_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_143_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 1.6, 0.9, 1.1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0032, 0.005, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1, 3.3, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.00198, 0.00066, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLSMALLBUSH.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 3, 4.5, 1, 1, 0, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.009, 0.009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.008, 0.03, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_143_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_144_NOXIOUS_BARREN_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 8.8, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0676, 0.01254, 0.01254, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 3.2, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.065, 0.0416, 0.065, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 1.3, 1.8, 1, 1, 0.5, 45, 180, 1, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.03, 0.01, 0.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 0.8, 8, 1, 1, 0.74, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0135, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_144_NOXIOUS_BARREN_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_145_WEIRD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.001, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/NOXIOUSGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1.2, 1, 1, 0.1, 20, 180, 0, 0, "FALSE", "TRUE", "FALSE", "TRUE", 0, 0.78, 0.78, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_145_WEIRD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_146_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 70, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0885, 0.00413, 0.00413, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "TRUE", 0.09, 0.063, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_146_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_147_LIVINGSHIP_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 4, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0128, 0.01, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTURE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.2, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.4, 0.0256, 0, 5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.001125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLSNOWCLUMPS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_147_LIVINGSHIP_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_148_FROZEN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 2.1, 1, 1, 0, 360, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.33, 0.00528, 0.00264, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SINGLESUMMER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.25, 1, 1, 0, 7, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 2, 0.009, 0.0036, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 2.1, 3.3, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0054, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/CAVEGROUNDLEAVES.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_148_FROZEN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_149_RADIOACTIVE_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.12, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.09, 0.00448, 0.004, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 0.8, 1.2, 0, 40, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.07, 0, 5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 150, 1.5, 2.25, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0009, 0.0009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.3, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_149_RADIOACTIVE_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_14_WEIRD_LUSH_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 60, 0.8, 70, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.059, 0.00354, 0.00354, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "FLORACLUMP", -128, -6, 0, 180, 2, 4, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.05, 0.05, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.35, 3.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00225, 0.00225, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_14_WEIRD_LUSH_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_150_SCORCHED_NOXIOUS_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 16, 24, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.0128, 0.02, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/LUSHPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/FROZENTUBERS.SCENE.MBIN", "WILDPLANTS", -1, 128, 0, 60, 0.85, 3.3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 2.45, 1.2, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_150_SCORCHED_NOXIOUS_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_151_TOXIC_BARREN_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREESINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 4, 0.9, 1.1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.00064, 0.002, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 1, 1.6, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.035, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.35, 4.5, 0.9, 1.1, 0, 8, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0132, 0.0132, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.4, 1.4, 1, 1.2, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_151_TOXIC_BARREN_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_152_ROCKY_BURNT_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREESINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3, 45, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.00462, 0.00264, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.2, 1, 1, 0.3, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.016, 0.025, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.5, 70, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00472, 0.00472, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_152_ROCKY_BURNT_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_153_HUGE_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.4, 0.09, 0, 5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 0.7, 2.2, 0.9, 1.1, 0.8, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.033, 0.0198, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1, 1, 0.8, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.08, 0.08, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_153_HUGE_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_154_NOXIOUS_TOXIC_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESWIRLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 20, 1, 1, 0, 3, 180, 55, -2, "FALSE", "TRUE", "TRUE", "FALSE", 0.15, 0.0275, 0.022, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.8, 0.9, 1.1, 0.8, 8, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.028125, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/PULPYROOTS.SCENE.MBIN", "WILDPLANTS", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_154_NOXIOUS_TOXIC_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_155_SUBZERO_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.6, 1, 1, 0.3, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.22, 0.032, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.72, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.35, 0.00192, 0.001, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN", "DEBRIS", -1, 128, 0, 45, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "FALSE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, -5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_155_SUBZERO_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_156_TOXIC_WEIRD_HUGE_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 3, 0.8, 1.2, 0, 40, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.065, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.6, 1, 1, 0.3, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.22, 0.032, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/SINGLEJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.875, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0045, 0.0045, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/SMALLCAVEBUSH.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_156_TOXIC_WEIRD_HUGE_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_157_ROCKY_FROZEN_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.5, 3.9, 1, 1, 0.3, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.007, 0.007, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1.2, 2.25, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.033, 0.011, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.2, 1.95, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0135, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SUBZERO/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_157_ROCKY_FROZEN_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_158_WEIRD_DEAD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.96, 1, 1, 0, 10, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.505, 0.01216, 0.0001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGESHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0, 0.01088, 0.017, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 1, 2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.07, 0.05, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_158_WEIRD_DEAD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_159_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 19, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1122, 0.0138, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.52, 1.84, 1, 1, 0.1, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.02176, 0.034, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 3, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.036, 0.018, 0.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 0.9, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.15, 0.15, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_159_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_15_LIVINGSHIP_TOXIC_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2, 1, 1, 0.5, 45, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.02625, 0.007, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/CRYSTALALTAR.SCENE.MBIN", "RARE1", -1, 128, 0, 50, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLSNOWCLUMPS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_15_LIVINGSHIP_TOXIC_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_160_TOXIC_HUGE_DEAD_SWAMP_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.5, 2.1, 0.9, 1.1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.0108, 0.0108, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.08, 1, 1, 0.3, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.005625, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BURST.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01125, 0.02, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLSNOWCLUMPS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_160_TOXIC_HUGE_DEAD_SWAMP_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_161_SUBZERO_FROZEN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 70, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0858, 0.0132, 0.0132, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 60, 2.85, 4.5, 1, 1, 0.5, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.022, 0.022, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0033, 0.0033, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FOREST", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_161_SUBZERO_FROZEN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_162_WEIRD_HUGE_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SUBZERO/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.05, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0033, 0.0033, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/ROCKSCREE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.7, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.012, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_162_WEIRD_HUGE_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_163_LUSH_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1.2, 2.25, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.033, 0.011, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGGSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 6, 9, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.0072, 0.0072, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/MEDGEOMETRIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.015, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WEIRDCUBE.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.9, 4.025, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0028, 0.0028, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_163_LUSH_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_164_RADIOACTIVE_BARREN_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 9, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.4, 0.03125, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.12, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.09, 0.00448, 0.007, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP.SCENE.MBIN", "UNDERGROUND", -1, 128, 0, 60, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "FALSE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/IRRADIATED/DETAIL/IRRADIATEDTALLGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "TRUE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_164_RADIOACTIVE_BARREN_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_165_WEIRD_HUGE_RADIOACTIVE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00295, 0.00295, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVESINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.24, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.075, 0.00128, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMVOLCANICROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.75, 11, 1, 1, 0.75, 0, 180, 0, -2, "FALSE", "FALSE", "FALSE", "FALSE", 0, 0.000118, 0.000118, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 0.9, 1.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_165_WEIRD_HUGE_RADIOACTIVE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_166_HUGE_NOXIOUS_WEIRD_DEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.2, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.0192, 0.01, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.45, 2.25, 1, 1, 0.1, 4, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.19, 0.054, 0.054, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.2, 1, 1, 0, 15, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00165, 0.00066, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_166_HUGE_NOXIOUS_WEIRD_DEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_167_TOXIC_LIVINGSHIP_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 0.64, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.11, 0.1408, 0.22, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPODDEAD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 1, 8, 1, 1, 0.74, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BURNT/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_167_TOXIC_LIVINGSHIP_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_168_SWAMP_IRRADIATED_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 60, 1, 3.96, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 1.32, 0.00528, 0.00264, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SUMMERUMBRELLA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.45, 1.2, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0063, 0.0036, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.05, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_168_SWAMP_IRRADIATED_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_169_BURNT_LIVINGSHIP_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 38, 1, 1, 0.75, 5, 180, 55, -2, "FALSE", "FALSE", "TRUE", "FALSE", 0.2046, 0.00475, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/IRRADIATED/LARGE/LARGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 1, 1.6, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.035, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.5, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.04, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED.SCENE.MBIN", "BIOMEPLANTX", -1, 128, 0, 60, 2, 8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_169_BURNT_LIVINGSHIP_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_16_NOXIOUS_TOXIC_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BURNT/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGESUMMEREGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.2, 3, 0.9, 1.1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.009, 0.009, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 4.5, 70, 0.9, 1.1, 0.75, 8, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0059, 0.0059, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 0.5, 0.8, 0.6, 1.2, 1, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 1.2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_16_NOXIOUS_TOXIC_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_170_LUSH_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 4.5, 0.9, 1.1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.0132, 0.0066, 1.5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMSHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 1.2, 3, 0.85, 1.15, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.009, 0.0063, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_170_LUSH_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_171_WEIRD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.8, 3.6, 0.9, 1.1, 0, 4, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0064, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.05, 1.5, 0.9, 1.1, 0.8, 8, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.035, 0.021, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 15, 1.2, 2.1, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.35, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/IRRADIATED/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_171_WEIRD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_172_HUGE_BURNT_DEAD_SWAMP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2, 1, 1, 0, 10, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.15, 0.00448, 0.007, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGESHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 11, 1, 1, 0.75, 6, 180, 55, -2, "FALSE", "FALSE", "TRUE", "FALSE", 0.0295, 0.01003, 0.01003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/COMET01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.6, 1.2, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0, 0.000512, 0.0008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", 1, 128, 0, 180, 1, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.015, 0.015, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_172_HUGE_BURNT_DEAD_SWAMP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_173_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BURNT/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/TESTS/FREQTEST/RARE1.SCENE.MBIN", "RARE1", -1, 128, 0, 50, 1, 1, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1.7, 3, 1, 1, 0.3, 6, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.03625, 0.029, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.8, 2.8, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_173_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_174_WEIRD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTURE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.2, 2.25, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.4, 0.044, 0, 5), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 25, 270, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1122, 0.0033, 0.0033, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/BUBBLECOLLECT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 0.85, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0132, 0.0132, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_174_WEIRD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_175_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 4.5, 7.5, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.066, 0.066, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 70, 1, 1, 0.75, 3, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.33, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.SCENE.MBIN", "RESCLUMPCOM", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_175_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_176_HUGE_IRRADIATED_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 37.5, 45, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.17, 0.0055, 0.0055, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 70, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0885, 0.00413, 0.00413, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1, 2, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_176_HUGE_IRRADIATED_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_177_LUSH_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESTRANDS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.025, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/IRRADIATED/LARGE/LARGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 1, 1.6, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.035, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/MEDIUMPROPS/MEDIUMROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.9, 2.1, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0162, 0.0072, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/CYLINDER.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.5, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.04, 0.04, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_177_LUSH_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_178_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 4.5, 1, 1, 0, 4, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.022, 0.011, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 4.5, 1, 1, 0, 4, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.022, 0.011, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01321875, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SUBZERO/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_178_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_179_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 90, 0.5, 1.53, 1, 1, 0.5, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 1, 0.28, 0.28, 2.5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/TALLKELP.SCENE.MBIN", "FLORACLUMP", -128, -32, 0, 180, 2, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/UNDERWATER/METALSPHERE.SCENE.MBIN", "FLORACLUMP", -128, -5, 0, 60, 0.8, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "FALSE", "FALSE", "FALSE", 0, 0.001, 0.001, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_179_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_17_FROZEN_WEIRD_SCORCHED_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 6.75, 9, 0.9, 1.1, 0, 8, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.011, 0.011, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 55, 2.25, 3.15, 1, 1, 0, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.12, 0.0132, 0.0132, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/EFFECTS/HEAVYAIR/BUBBLES/BUBBLES.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 80, 1, 2.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0033, 0.0033, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_17_FROZEN_WEIRD_SCORCHED_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_180_TOXIC_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.5, 1, 1, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.00225, 0.0009, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/SCORCHEDPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGGSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 4.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00512, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT.SCENE.MBIN", "FOREST", -1, 128, 0, 125, 1.1, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_180_TOXIC_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_181_HUGE_SUBZERO_DESOLATE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.12, 1, 1, 0.3, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.13, 0.0512, 0.08, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/TESTS/FREQTEST/RARE3.SCENE.MBIN", "RARE3X", -1, 128, 0, 50, 1, 1, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 1, 0.5, 0.5, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONESPINE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 2, 8, 1, 1, 0.74, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 1.75, 1, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.055, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_181_HUGE_SUBZERO_DESOLATE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_182_LIVINGSHIP_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SUBZERO/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.6, 1, 1, 0.3, 0, 360, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.15, 0.01, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.75, 1.2, 1, 1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.242, 0.242, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_182_LIVINGSHIP_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_183_WEIRD_DEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.5, 2.1, 0.9, 1.1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.0108, 0.0108, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 2, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0885, 0.0198, 0.0189, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.001, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SPRIGBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.75, 1.75, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_183_WEIRD_DEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_184_FROZEN_WEIRD_DEAD_SWAMP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 37.5, 45, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.17, 0.0055, 0.0055, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 1.2, 1.8, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.044, 0.044, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPODDEAD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 1.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.009, 0.009, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 2, 3, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.006, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_184_FROZEN_WEIRD_DEAD_SWAMP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_185_TOXIC_HUGE_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.5, 1, 1, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.00225, 0.0009, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 60, 1.9, 19, 1, 1, 0.75, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.165, 0.0184, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_185_TOXIC_HUGE_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_186_SUBZERO_DEAD_LAVA_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGEFUNGUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 10, 22, 1, 1, 0, 10, 180, 55, -2, "FALSE", "TRUE", "TRUE", "FALSE", 0.2, 0.0375, 0.03, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_186_SUBZERO_DEAD_LAVA_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_187_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SUBZERO/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.01856, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/BONECOLLECT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 0.9, 8, 1, 1, 0.74, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.003, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.4, 0.8, 1, 1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.08, 0.06, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_187_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_188_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 0.9, 1.1, 0.5, 45, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.005625, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2.25, 4.05, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.175, 0.0108, 0.0108, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 4.5, 7.5, 1, 1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.066, 0.066, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 90, 0.4, 2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.42, 0.42, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_188_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_189_DEAD_SWAMP_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.8, 1, 1, 0.3, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.14, 0.00192, 0.003, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 6, 7.5, 1, 1, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.009, 0.0045, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT.SCENE.MBIN", "RESCLUMPCOM", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_189_DEAD_SWAMP_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_18_LIVINGSHIP_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1.7, 3, 1, 1, 0.3, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.03625, 0.029, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/LUSHPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEFIN.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 1, 8, 1, 1, 0.74, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.015, 0.015, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1, 0.8, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.06, 0.06, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_18_LIVINGSHIP_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_190_HUGE_IRRADIATED_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.28, 0.9, 1.1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0128, 0.01, 1.5), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 1.2, 1.8, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.044, 0.044, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1.2, 3.75, 0.8, 1.2, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0084, 0.0049, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 185, 0.8, 1.3, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.2, 0.15, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_190_HUGE_IRRADIATED_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_191_HUGE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/IRRADIATED/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 1.2, 2.1, 1, 1, 0.3, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.12, 0.0045, 0.0045, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 0.9, 8, 1, 1, 0.74, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.005, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 70, 1.2, 1.9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0015, 0.0015, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_191_HUGE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_192_LUSH_SWAMP_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESTRANDS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.025, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.6, 28.8, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.248, 0.0165, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/HEPTAWHEAT.SCENE.MBIN", "WILDPLANTS", -1, 128, 0, 60, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/NOXIOUSGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.6, 1.5, 1, 1, 0.5, 20, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.05, 1.5), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_192_LUSH_SWAMP_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_193_SCORCHED_TOXIC_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.8, 3.6, 0.9, 1.1, 0, 4, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0064, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/LARGEMOSSROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.06, 0.0064, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 70, 1, 1, 0.75, 4, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0354, 0.0354, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "FLORACLUMP", -128, -12, 0, 80, 0.2, 1.2, 1, 1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0.5, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_193_SCORCHED_TOXIC_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_194_FROZEN_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.2, 0.9, 1.1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.0132, 0.0066, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/TOXICPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.025, 0.025, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0035, 0.0035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RAINFOREST/SMALLPLANT/SMALLFLOWER01.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 30, 1, 1.2, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.01, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_194_FROZEN_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_195_TOXIC_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPODOFF.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.5, 1.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0315, 0.0315, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/ROTATINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_195_TOXIC_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_196_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 4.5, 0.9, 1.1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.0132, 0.0066, 1.5), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/FLOORSHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.16875, 0.3, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1.3, 1.3, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0.5, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_196_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_197_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 1.2, 1.8, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.044, 0.044, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00295, 0.00295, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.SCENE.MBIN", "RESCLUMPCOM", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/ROTATINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_197_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_198_SWAMP_WEIRD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 3, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.059, 0.0396, 0.0378, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.72, 2.4, 0.9, 1.1, 0, 8, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.275, 0.00768, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 1, 2.1, 1, 1.2, 0.8, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0792, 0.0792, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TECHPLANT.SCENE.MBIN", "RESCLUMPTECH", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_198_SWAMP_WEIRD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_199_NOXIOUS_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 38, 1, 1, 0.75, 5, 180, 55, -2, "FALSE", "FALSE", "TRUE", "FALSE", 0.2046, 0.00475, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.6, 19, 0.9, 1.1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0138, 0.01425, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.9, 1.2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.021, 0.021, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_199_NOXIOUS_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_19_NOXIOUS_WEIRD_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.8, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_19_NOXIOUS_WEIRD_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_1_WEIRD_TOXIC_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.0005, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.45, 1.5, 1, 1, 0.1, 8, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.12, 0.0108, 0.0108, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0192, 0.01, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLCRYSTALSLICES.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.6, 2.45, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.06, 0.06, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_1_WEIRD_TOXIC_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_200_ROCKY_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 0.64, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.11, 0.1408, 0.22, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.7, 11, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2065, 0.00177, 0.00059, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.001, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.062, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_200_ROCKY_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_20_SWAMP_BARREN_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/RADIOACTIVEPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 1.2, 1.725, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0027, 0.0027, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSNOWBLEND.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 10, 2, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_20_SWAMP_BARREN_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_21_TOXIC_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGEFULL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.56, 2.64, 1, 1, 0, 5, 180, 55, -2, "FALSE", "FALSE", "TRUE", "FALSE", 0.24, 0.001, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0192, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_21_TOXIC_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_22_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.44, 1, 1, 0, 10, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 2, 0.00512, 0.004, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.2, 19, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0649, 0.0528, 0.0504, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.08, 3.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0064, 0.01, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/ALIEN/SMALLPLANT/SMALLPLANT02.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_22_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_23_FROZEN_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 2.25, 6, 0.8, 1.2, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.0045, 0.0018, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1.5, 1.5, 0.9, 1.1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.011, 0.011, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "GRASS", -1, 128, 0, 37, 1.1, 1.7, 1, 1.3, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLTOXICEGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.3, 1.7, 1, 1, 0.1, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.008, 0.005, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_23_FROZEN_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_24_LUSH_LIVINGSHIP_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 60, 0.7, 70, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1062, 0.0118, 0.0118, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.05, 2.7, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.115, 0.143, 0.143, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.8, 70, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01475, 0.01475, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_24_LUSH_LIVINGSHIP_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_25_BARREN_DEAD_LAVA_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 70, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.0118, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLESUMMER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 0.9, 1.5, 0.85, 1.15, 0.5, 15, 180, 55, 0, "TRUE", "TRUE", "TRUE", "TRUE", 0.3, 0.0035, 0.0049, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_25_BARREN_DEAD_LAVA_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_26_BARREN_INDUSTRIAL_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0064, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 2.55, 6, 1, 1, 0, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.0319, 0.0319, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.35, 3.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00225, 0.00225, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_26_BARREN_INDUSTRIAL_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_27_BARREN_TOXIC_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 80, 1.5, 1.95, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.00165, 0.00165, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 0.72, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.11, 0.1152, 0.18, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPODOFF.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.5, 1.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0315, 0.0315, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.15, 0, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_27_BARREN_TOXIC_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_28_HUGE_SUBZERO_BARREN_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 5.25, 9, 1, 1, 0.8, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0055, 0.0055, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREESINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4.5, 7.5, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0063, 0.0036, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_28_HUGE_SUBZERO_BARREN_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_29_LUSH_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SUBZERO/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.015, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_29_LUSH_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_2_NOXIOUS_LAVA_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1, 70, 1, 1, 0.75, 4, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.0118, 0.0059, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEARRANGEDROCK02.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.4, 2.3, 1, 1, 0.7, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0826, 0.0066, 0.0059, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPODOFF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0196875, 0.035, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BURNT/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_2_NOXIOUS_LAVA_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_30_WEIRD_HUGE_SWAMP_DEAD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.6, 1, 1, 0.3, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 11, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00177, 0.00177, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 1.5, 2.25, 1, 1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0027, 0.0009, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_30_WEIRD_HUGE_SWAMP_DEAD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_31_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.8, 19, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.059, 0.0198, 0.0063, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/LARGEMOSSROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.06, 0.0064, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.9, 11, 1, 1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02006, 0.02006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "JAMESPATCHX", -1, 128, 0, 60, 8, 70, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.066, 0.066, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_31_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_32_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.0384, 0.06, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 80, 1, 3.3, 1, 1, 0.3, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.104, 0.00416, 0.00416, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 2, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.003, 0.003, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "SMALLCLUMP", 1, 128, 0, 180, 1.5, 4.375, 1, 1.5, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.03, 0.03, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_32_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_33_ROCKY_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGESUMMEREGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.2, 3, 0.9, 1.1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.009, 0.009, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 4, 81, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0528, 0.00528, 0.00528, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 2, 19, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0198, 0.0189, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_33_ROCKY_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_34_SUBZERO_DEAD_LAVA_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTAL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3.5, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1475, 0.0059, 0.00295, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BURST.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01125, 0.02, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN", "BARRENGRASSCLUM", -1, 128, 0, 40, 0.8, 1.2, 1, 1.2, 0.6, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.005, 0.005, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_34_SUBZERO_DEAD_LAVA_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_35_TOXIC_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SUBZERO/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREEFLAMING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2.5, 11, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0944, 0.00059, 0.00059, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1, 70, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0059, 0.0059, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSNOW.SCENE.MBIN", "BIOMEPLANTX", -1, 128, 0, 60, 2, 8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_35_TOXIC_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_36_TOXIC_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 20, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.13, 0.02, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGGSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 4.8, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.00512, 0.008, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/TOXICEGGCLUSTER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.44, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/FLAP.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_36_TOXIC_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_37_HUGE_ROCKY_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 20, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.13, 0.02, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 3.2, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.065, 0.0416, 0.065, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.1, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.010125, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 0.2, 0.8, 0.8, 1.3, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.005, 0.005, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_37_HUGE_ROCKY_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_38_FROZEN_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0, 0.04, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 4, 1, 1, 0, 15, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.16, 0.0064, 0.005, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.7, 0, 2.8), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_38_FROZEN_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_39_RADIOACTIVE_DEAD_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.8, 2.25, 1, 1, 0.3, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.24, 0.00165, 0.00165, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/RADIOACTIVEPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/FLOORPIECES.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.3375, 0.6, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/FLORAL/SMALLPLANT/FLORALPLANTSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 1, 1.5, 1, 1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_39_RADIOACTIVE_DEAD_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_3_RADIOACTIVE_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2.5, 70, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00295, 0.00295, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.4, 1, 1, 0.3, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.029, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.08, 3.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0064, 0.01, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_3_RADIOACTIVE_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_40_WEIRD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.45, 2.25, 1, 1, 0.1, 4, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.19, 0.054, 0.054, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1.2, 8, 1, 1, 0.74, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1188, 0.0018, 0.0001, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/HUTS/MOSSHUT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.8, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0, 0.00128, 0, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1.2, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.3, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_40_WEIRD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_41_ROCKY_WEIRD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 20, 1.5, 2.25, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.011, 0.011, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 1.2, 1.8, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.044, 0.044, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.5, 3.75, 1, 1, 0.2, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.009, 0.009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_41_ROCKY_WEIRD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_42_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 7.5, 12, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0033, 0.0033, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.6, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/ROTATINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_42_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_43_IRRADIATED_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1, 8, 1, 1, 0.74, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.066, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLARGEALT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 19, 1, 1, 0.75, 0, 180, 55, -2, "FALSE", "TRUE", "TRUE", "FALSE", 0.2904, 0.046, 0.0475, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0512, 0.08, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_43_IRRADIATED_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_44_ROCKY_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/IRRADIATED/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.6, 19, 0.9, 1.1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.165, 0.0138, 0.01425, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/IMPULSEBEANS.SCENE.MBIN", "WILDPLANTS", -1, 128, 0, 60, 0.4, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 40, 0.5, 2.5, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.018, 0.018, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_44_ROCKY_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_45_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 4.5, 1, 1, 0, 4, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.022, 0.011, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/ROLLINGPLANT.SCENE.MBIN", "RARE3", -1, 128, 0, 50, 0.7, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.03, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/NOXIOUS/DETAIL/NOXIOUSTALLGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.1, 0.1, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_45_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_46_FROZEN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0192, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEARRANGEDROCK01.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.6, 2.3, 1, 1, 0.7, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1357, 0.0066, 0.0059, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/SHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0196875, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0225, 0.04, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_46_FROZEN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_47_LUSH_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.625, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 4, 72, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.104, 0.00208, 0.00208, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 70, 1, 1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0118, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEBLOBS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05625, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_47_LUSH_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_48_LIVINGSHIP_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 70, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.0059, 0.0059, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SUMMERSPIKE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.2, 8.8, 1, 1, 0.2, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.165, 0.0066, 0.0066, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0512, 0.08, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWPROCGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1.3, 1.3, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0.5, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_48_LIVINGSHIP_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_49_BARREN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0064, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYSHELLSAND.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.5, 3, 1, 1, 0.3, 360, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0225, 0.0225, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 70, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00413, 0.00177, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 4), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_49_BARREN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_4_LIVINGSHIP_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 70, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.0059, 0.0059, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 180, 1.5, 3, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.009, 0.009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_4_LIVINGSHIP_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_50_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SUMMERUMBRELLA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.45, 1.2, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0063, 0.0036, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 5, 8, 1, 1, 0.74, 30, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.198, 0.004, 0.004, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2.55, 4.05, 1, 1, 0, 6, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.027, 0.027, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.3, 0.3, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_50_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_51_WEIRD_LIVINGSHIP_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 20, 1, 1, 0, 3, 180, 55, -2, "FALSE", "TRUE", "TRUE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 15, 1.2, 2.1, 1, 1, 0.2, 25, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.06, 0.0042, 0, 5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/ALOEFLESH.SCENE.MBIN", "WILDPLANTS", -1, 128, 0, 60, 0.5, 2.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.002, 0.002, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.5, 3.15, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_51_WEIRD_LIVINGSHIP_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_52_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 2, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0885, 0.0198, 0.0189, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLESUMMER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 2.4, 4.5, 1, 1, 0.5, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0675, 0.009, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.35, 4.5, 0.9, 1.1, 0, 8, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0132, 0.0132, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEBLOBS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 120, 3, 3.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.09, 0.09, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_52_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_53_BARREN_IRRADIATED_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 60, 1, 70, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.059, 0.000885, 0.000885, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 0.5, 3.3, 0.8, 1.2, 0, 45, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.0495, 0.0264, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1.2, 7.6, 1, 1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00078, 0.00078, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSPROC.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.25, 0.9, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.6, 0.6, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_53_BARREN_IRRADIATED_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_54_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 70, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.118, 0.0059, 0.0059, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/IRRADIATED/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.009, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGG.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 70, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0099, 0.0099, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0006, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_54_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_55_WEIRD_DEAD_SWAMP_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTAL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3.5, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1475, 0.0059, 0.00295, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1, 19, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0767, 0.01056, 0.01008, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.4, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.25, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 3.6, 1, 1, 0.5, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0192, 0.03, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_55_WEIRD_DEAD_SWAMP_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_56_FROZEN_IRRADIATED_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 20, 24, 1, 1, 0, 10, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.17, 0.0032, 0.005, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.52, 2.4, 1, 1, 0.5, 6, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.0128, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.7, 11, 1, 1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00177, 0.00059, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/IRRADIATED/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_56_FROZEN_IRRADIATED_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_57_HUGE_IRRADIATED_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.56, 0.9, 1.1, 0.5, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.15, 0.0096, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/IRRADIATED/LARGE/LARGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 1, 1.6, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.035, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 6, 13.5, 1, 1, 0, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0088, 0.0088, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/BLOBFRAGMENTS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_57_HUGE_IRRADIATED_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_58_LAVA_LIVINGSHIP_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 20, 1, 1, 0, 3, 180, 55, -2, "FALSE", "TRUE", "TRUE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/IRRADIATED/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.6, 1, 1, 0.3, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.55, 3, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0126, 0.0126, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.03, 0.03, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_58_LAVA_LIVINGSHIP_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_59_WEIRD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGESHARDINACTIVE02.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1.7, 3, 1, 1, 0, 6, 180, 55, -2, "FALSE", "FALSE", "TRUE", "FALSE", 0.25, 0.00125, 0.001, 0), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGGHOLDER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.2, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0032, 0.005, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.9, 3, 0.9, 1.1, 0, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.011, 0.011, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/ROCKSCREE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.7, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.012, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_59_WEIRD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_5_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 20, 1.5, 2.25, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.13, 0.0176, 0.0176, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/COMET01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.6, 1.2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.4, 0.000512, 0.0008, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTALSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 4, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0064, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/FLORAL/SMALLPLANT/FLORALPLANTSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 1, 1.5, 1, 1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_5_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_60_SWAMP_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 25, 270, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1122, 0.0033, 0.0033, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 6.4, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0128, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLBLOCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.2, 1.8, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_60_SWAMP_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_61_WEIRD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1.2, 2.4, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.066, 0.0297, 0.0297, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/GROUNDREVEALROCK01.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.8, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0462, 0.0092, 0.0095, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEOMETRIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.35, 3.45, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00045, 0.00045, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.8, 2.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0048, 0.0036, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_61_WEIRD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_62_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 40, 1.5, 3, 0.9, 1.1, 1, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.45, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 70, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.06785, 0.0767, 0.0767, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.008, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_62_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_63_NOXIOUS_WEIRD_DEAD_SWAMP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 360, 1.2, 2.1, 1, 1, 0, 360, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.5, 0.0072, 0.0036, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTAL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 5.25, 7.5, 1, 1, 0.5, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.25, 0.009, 0.0045, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/INTERACTIVE/STEAMVENT.SCENE.MBIN", "SMALLCLUMP", -128, -5, 0, 180, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.005, 0.005, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 0.3, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.04, 0.04, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_63_NOXIOUS_WEIRD_DEAD_SWAMP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_64_FROZEN_WEIRD_BARREN_IRRADIATED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.6, 1, 1, 0.3, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.032, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTAL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3.5, 70, 1, 1, 0.75, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1475, 0.0059, 0.00295, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.52, 2.4, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0128, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 45, 1.5, 2, 0.6, 0.8, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.4, 0.25, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_64_FROZEN_WEIRD_BARREN_IRRADIATED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_65_TOXIC_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.5, 1, 1, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.00225, 0.0009, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/GROUNDREVEALROCK01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 0.9, 1.5, 1, 1, 0.3, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.23, 0.009, 0.009, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/IRRADIATED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.016, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_65_TOXIC_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_66_RADIOACTIVE_SCORCHED_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/HUGETENDRIL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 20, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.13, 0.025, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/TESTS/FREQTEST/RARE3.SCENE.MBIN", "RARE3X", -1, 128, 0, 50, 1, 1, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 1, 0.5, 0.5, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/WEIRDMEDIUMBUSH.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 2, 8, 1, 1, 0.74, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.9, 1.2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.021, 0.021, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_66_RADIOACTIVE_SCORCHED_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_67_LUSH_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 4.5, 7.5, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0027, 0.0009, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1.5, 4.5, 1, 1, 0, 3, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.115, 0.077, 0.077, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.24, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0028125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLSNOWCLUMPS.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 0.8, 1.925, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_67_LUSH_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_68_NOXIOUS_LUSH_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.35, 4.5, 0.9, 1.1, 0, 8, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.275, 0.0132, 0.0132, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0649, 0.1452, 0.1386, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN", "DEBRIS", -1, 128, 0, 45, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "FALSE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_68_NOXIOUS_LUSH_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_69_LIVINGSHIP_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.8, 70, 1, 1, 0.75, 4, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.118, 0.0236, 0.0059, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.2, 0.9, 1.1, 0, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0132, 0.0066, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_69_LIVINGSHIP_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_6_LIVINGSHIP_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SINGLESUMMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 7, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 2, 0.0064, 0.004, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 70, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.00354, 0.00354, 1.5), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0003, 0.0003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SNOWFRAGMENTS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.003, 0.003, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_6_LIVINGSHIP_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_70_IRRADIATED_BARREN_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGG.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1, 3.3, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.00198, 0.00066, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLESUMMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 0.85, 1.15, 0.5, 15, 180, 55, 0, "TRUE", "TRUE", "TRUE", "TRUE", 0.3, 0.0028125, 0.007, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.2, 1.95, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.018, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_70_IRRADIATED_BARREN_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_71_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/IRRADIATED/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0064, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 1.2, 3, 1, 1, 0.5, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0033, 0.0033, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/SHIELDPLANT1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 1.3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.001, 0.001, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_71_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_72_WEIRD_LIVINGSHIP_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 70, 0.9, 1.1, 0.75, 8, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.059, 0.0059, 0.0059, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 1.35, 3.675, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.45, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 1, 1.6, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.016, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_72_WEIRD_LIVINGSHIP_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_73_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.6, 1, 1, 0, 3, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.12, 0.0096, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 0.4, 2.2, 0.85, 1.15, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "TRUE", 0.132, 0.0066, 0.0132, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1, 1, 1, 0.2, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/SMALLCAVEBUSH.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_73_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_74_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 1.15, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.2, 19, 1, 1, 0.75, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0649, 0.0528, 0.0504, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLBLOCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 1.2, 8, 1, 1, 0.74, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.3, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_74_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_75_FROZEN_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 7.2, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.00512, 0.008, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/TESTS/FREQTEST/RARE1.SCENE.MBIN", "RARE1X", -1, 128, 0, 50, 1, 1, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 1, 0.5, 0.5, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 1.35, 2.25, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0342, 0.0342, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.3, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_75_FROZEN_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_76_SWAMP_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0.2, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.016875, 0.03, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00512, 0.004, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_76_SWAMP_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_77_BURNT_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGEFULL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.56, 2.64, 1, 1, 0, 5, 180, 55, -2, "FALSE", "FALSE", "TRUE", "FALSE", 0.24, 0.001, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREESINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.5, 45, 0.9, 1.1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.00066, 0.00132, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 7.5, 12, 1, 1, 0.5, 30, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0028, 0.0028, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_77_BURNT_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_78_TOXIC_SWAMP_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BURNT/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.016, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 20, 0.8, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_78_TOXIC_SWAMP_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_79_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 0.45, 0.75, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0135, 0.0135, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/LARGEMOSSROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1024, 0.16, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SPRIGBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.75, 1.75, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.05, 0.05, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_79_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_7_WEIRD_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 0.5, 3.3, 0.8, 1.2, 0, 40, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.132, 0.0495, 0.0264, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/GROUNDREVEALROCK01.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1357, 0.0066, 0.0059, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/BEAMSTONE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN", "CRATES", -1, 128, 0, 55, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_7_WEIRD_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_80_HUGE_SCORCHED_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 3, 5.25, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.15, 0.033, 0.033, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 70, 1, 1, 0.75, 6, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0767, 0.00177, 0.00177, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT.SCENE.MBIN", "BIGHAZCROP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.25, 0.25, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "GRASS", -1, 128, 0, 30, 0.5, 0.9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_80_HUGE_SCORCHED_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_81_HUGE_SUBZERO_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESTRANDS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1.5, 1.5, 0.9, 1.1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.011, 0.011, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.6, 4.8, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0064, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", 1, 128, 0, 180, 1, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.024, 0.024, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_81_HUGE_SUBZERO_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_82_BARREN_FROZEN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SUBZERO/HUGE/HUGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.2, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.18, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.08, 1, 1, 0.3, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.005625, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.001125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/ROCKSCREE.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 180, 0.7, 1.75, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.012, 0, 0), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_82_BARREN_FROZEN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_83_WEIRD_LUSH_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.05, 2.7, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.115, 0.143, 0.143, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/BONECOLLECT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.9, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.006, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BURNT/DETAIL/TINYROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.7, 1.4, 1, 1, 0.3, 20, 360, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0, 0.07, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_83_WEIRD_LUSH_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_84_WEIRD_HUGE_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 2, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0885, 0.0198, 0.0189, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 3.6, 3.75, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0018, 0.0009, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 60, 1, 70, 1, 1, 0.75, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.000885, 0.000885, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_84_WEIRD_HUGE_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_85_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 4.5, 7.5, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.066, 0.066, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.8, 19, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.059, 0.0198, 0.0063, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.016, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", 1, 128, 0, 40, 0.5, 2.625, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.03, 0.03, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_85_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_86_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.5, 1, 1, 0, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.00225, 0.0009, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/SNOWPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BURSTC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0189, 0.0189, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.015, 0.015, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_86_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_87_RADIOACTIVE_BARREN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 5.25, 6.75, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0018, 0.0018, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2.6, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0472, 0.0066, 0.0063, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 7.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00512, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLGRASS.SCENE.MBIN", "JAMESPATCH", 1, 128, 0, 180, 0.8, 2.8, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_87_RADIOACTIVE_BARREN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_88_ROCKY_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.00192, 0.001, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEARRANGEDROCK02.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.4, 2.3, 1, 1, 0.7, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0826, 0.0066, 0.0059, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SINGLESUMMER.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1, 3.3, 1, 1, 0, 7, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0066, 0.00264, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.3, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_88_ROCKY_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_89_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2.6, 19, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0472, 0.0066, 0.0063, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 3, 0.9, 1.2, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0028, 0.0028, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_89_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_8_RADIOACTIVE_LIVINGSHIP_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 1.6, 1, 1, 0.3, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.23, 0.0064, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/UNDERWATERSPORE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 80, 4, 54, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.156, 0.0052, 0.0052, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPODFLOAT.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 80, 1, 8, 1, 1, 0.74, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.008, 0.008, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 20, 0.9, 3.2, 1, 1, 0.05, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.015, 0, 0.5), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_8_RADIOACTIVE_LIVINGSHIP_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_90_NOXIOUS_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.16, 1, 1, 0, 6, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0192, 0.03, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SUMMERSPIKE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.2, 8.8, 1, 1, 0.2, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.165, 0.0066, 0.0066, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.6, 1.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0075, 0.006, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/ALIEN/SMALLPLANT/SMALLPLANT02.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_90_NOXIOUS_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_91_FROZEN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.28, 0.009, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 1, 1.6, 1, 1, 0.3, 3, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2.6, 19, 1, 1, 0.75, 0, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0066, 0.0063, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/FLORAL/SMALLPLANT/FLORALPLANTSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 1, 1.5, 1, 1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0, 2), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_91_FROZEN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_92_ROCKY_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.12, 1, 1, 0.3, 20, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.00512, 0.003, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0.2, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.016875, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER01.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 3, 6, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.021, 0.0105, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_92_ROCKY_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_93_ROCKY_LUSH_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/SNOWPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/BONECOLLECT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/ROTATINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.01, 0.01, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_93_ROCKY_LUSH_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_94_BURNT_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 55, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 4, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.3, 0.0128, 0.01, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0035, 0.0035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_94_BURNT_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_95_LUSH_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BURNT/RARE/RARELARGE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 90, 0.8, 1.8, 1, 1, 0, 0, 360, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/RADIOACTIVEPLANT.SCENE.MBIN", "BIOMEPLANT", -1, 128, 0, 60, 2, 24, 1, 1, 0, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 40, 0.04, 0.04, 0), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.15, 0.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.072, 0.072, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/ALIEN/SMALLPLANT/SMALLPLANT01.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_95_LUSH_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_96_LIVINGSHIP_RADIOACTIVE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 70, 1, 1, 0.75, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.0118, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.5, 19, 1, 1, 0.75, 3, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.0708, 0.0099, 0.00945, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN", "DEBRIS", -1, 128, 0, 45, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "FALSE", "FALSE", "FALSE", 0, 0.02, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SPRIGBUSH.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.9, 1.1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.1, 0.1, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_96_LIVINGSHIP_RADIOACTIVE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_97_FLORAL_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SUMMERUMBRELLA.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 0.45, 1.2, 1, 1, 0, 10, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0063, 0.0036, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 40, 1.05, 1.8, 1, 1, 0, 8, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.0108, 0.0108, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 4, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0064, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 0.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.5, 0, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_97_FLORAL_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_98_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 0.8, 1.2, 0, 40, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.08, 0.07, 0, 5), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.5, 1, 1, 0.5, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 60, 1.05, 1.8, 1, 1, 0, 10, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.022, 0.022, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HOVERINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.02, 0.02, 3), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_98_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_99_WEIRD_LUSH_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.8, 70, 1, 1, 0.75, 0, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.177, 0.01475, 0.01475, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0, 5, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.1, 0.07, 0.01, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 40, 4, 6, 0.8, 1, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.003, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2.5, 1, 1.2, 0.4, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0, 0.01, 0.008, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_99_WEIRD_LUSH_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_9_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.2, 3.75, 1, 1, 0, 5, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.17, 0.0165, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.35, 4.5, 0.9, 1.1, 0, 8, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.275, 0.0132, 0.0132, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.5, 70, 1, 1, 0.75, 20, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.00472, 0.00177, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/SHIELDPLANT1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.001, 0.001, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_9_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_1_ROCKY.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 5.25, 9, 1, 1, 0.8, 15, 180, 55, -2, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.0055, 0.0055, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 1.35, 3.675, 1, 1, 0, 0, 180, 55, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.2, 0.45, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/LARGECRYSTAL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 3.5, 70, 1, 1, 0.75, 15, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.0059, 0.00295, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0, 0.034, 0.034, 1), }, --## 3e_biome_detail
					}, }, --## 3f_biome_end
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_1_ROCKY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_2_ROCKY.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_2_ROCKY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_3_ROCKY.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_3_ROCKY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_4_ROCKY.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_4_ROCKY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_5_ROCKY.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_5_ROCKY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_6_ROCKY.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					
					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_6_ROCKY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_7_ROCKY.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					
					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/AETHER_LANDS/BIOME_FL_7_ROCKY.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE