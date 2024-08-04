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

local propType = ""

--This adds the exml "context" for each model, i.e. the max scale.
function AddDistantProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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


--This adds the exml "context" for each model, i.e. the max scale.
function AddLandmSingleProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

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

maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

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

maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

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
["MOD_FILENAME"] 			= "___Las_CustomBiomes_XL_v1.22.pak",
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
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_100_WEIRD_BARREN_NOXIOUS.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_100_WEIRD_BARREN_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_101_WEIRD_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 30, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_101_WEIRD_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_102_RAINFOREST_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 1, 1.6, 1, 1, 0.3, 3, 360, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.16, 0.035, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_102_RAINFOREST_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_103_RAINFOREST_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/MEDIUMCREATURE/ANTELOPE/ANTELOPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.7, 1.4, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_103_RAINFOREST_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_104_INDUSTRIAL_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/LARGETREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 2, 10, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_104_INDUSTRIAL_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_105_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ABANDONED/LIGHT_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 4, 5, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.03, 0.08, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_105_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_106_BARREN_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/EXPLODEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_106_BARREN_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_107_ALPINE_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/HEALTHPLANT2.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 30, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_107_ALPINE_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_108_NOXIOUS_FLORAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGEFIR01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_108_NOXIOUS_FLORAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_109_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 18, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_109_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_10_LIVINGSHIP_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 25, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_10_LIVINGSHIP_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_110_ALPINE_BARREN_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYSHELLSAND.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 6, 10, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_110_ALPINE_BARREN_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_111_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGESPRUCE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_111_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_112_FLORAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LAMPSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 17, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_112_FLORAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_113_ALIEN_LUSH_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/HEALTHPLANT2.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 30, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_113_ALIEN_LUSH_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_114_LUSH_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALIEN/LARGEPLANT/BENDYTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_114_LUSH_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_115_ROCKY_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/TREES/SKINNEDTREES.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 20, 25, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.007, 0.007, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_115_ROCKY_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_116_WEIRD_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 11, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_116_WEIRD_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_117_INDUSTRIAL_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 9, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.017, 0.017, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_117_INDUSTRIAL_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_118_INDUSTRIAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/MONUMENTS/STARGATEMAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_118_INDUSTRIAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_119_RAINFOREST_SUBZERO_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RELIC/RELIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_119_RAINFOREST_SUBZERO_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_11_DEAD_ALPINE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/LARGEPLANT1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 12, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_11_DEAD_ALPINE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_120_RAINFOREST_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMDEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 18, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_120_RAINFOREST_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_121_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/TREEVARIANTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_121_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_122_RAINFOREST_LUSH_BURNT_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_122_RAINFOREST_LUSH_BURNT_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_123_WEIRD_SUBZERO_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/TREEVARIANTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_123_WEIRD_SUBZERO_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_124_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 30, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_124_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_125_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 10, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_125_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_126_HUGE_DESOLATE_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 9, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.03, 0.08, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_126_HUGE_DESOLATE_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_127_ALIEN_RAINFOREST_BURNT_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/DESOLATE/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_127_ALIEN_RAINFOREST_BURNT_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_128_BURNT_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/DIPLODOCUS/DIPLODOCUSALIEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 2, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_128_BURNT_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_129_RUINS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_129_RUINS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_12_HUGE_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI11.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_12_HUGE_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_130_RAINFOREST_LUSH_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SUBZERO/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 9, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.005, 0.005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_130_RAINFOREST_LUSH_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_131_ALPINE_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/SMALLTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 22, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_131_ALPINE_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_132_WEIRD_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLSPRUCE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_132_WEIRD_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_133_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 2, 3, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_133_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_134_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MONSTERPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 11, 1, 1, 0, 40, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_134_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_135_INDUSTRIAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_135_INDUSTRIAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_136_ROCKY_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/MONUMENTS/STARGATEMAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_136_ROCKY_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_137_SWAMP_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_137_SWAMP_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_138_WEIRD_FLORAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/LARGEMOSSROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_138_WEIRD_FLORAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_139_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 20, 40, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_139_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_13_BARREN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/TREES/SKINNEDTREES.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 20, 25, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.007, 0.007, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_13_BARREN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_140_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/EXPLODEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_140_WEIRD_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_141_BARREN_SUBZERO_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 24, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_141_BARREN_SUBZERO_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_142_NOXIOUS_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_142_NOXIOUS_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_143_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LAMPSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 17, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_143_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_144_LUSH_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MYRTLEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 7, 16, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_144_LUSH_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_145_LAVA_WEIRD_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 8, 24, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_145_LAVA_WEIRD_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_146_DEAD_NEVADA_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/LAVACRYSTALS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_146_DEAD_NEVADA_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_147_SUBZERO_WEIRD_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/DEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_147_SUBZERO_WEIRD_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_148_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_148_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_149_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/SAILPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 10, 15, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_149_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_14_ALPINE_FLORAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 30, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_14_ALPINE_FLORAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_150_BARREN_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLSPRUCE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 19, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_150_BARREN_WEIRD_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_151_WEIRD_FLORAL_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/TRUNK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_151_WEIRD_FLORAL_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_152_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_152_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_153_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MONSTERPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 11, 1, 1, 0, 40, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 8, 12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.007, 0.007, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_153_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_154_BARREN_DESOLATE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MONSTERPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 11, 1, 1, 0, 40, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_154_BARREN_DESOLATE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_155_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_155_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_156_LUSH_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 7, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_156_LUSH_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_157_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WOODLAND/LARGEPLANT/MEDIUMOAK1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 7, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_157_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_158_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/COMMON/CHARACTERS/ASTRONAUT/ASTRONAUT01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 4, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 18, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_158_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_159_BARREN_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_159_BARREN_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_15_FLORAL_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 30, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_15_FLORAL_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_160_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/FIREBERRY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 15, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_160_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_161_HUGE_BURNT_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_161_HUGE_BURNT_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_162_ALIEN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_162_ALIEN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_163_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALIEN/LARGEPLANT/LARGETREE02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.074, 0.074, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_163_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_164_BURNT_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 9, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.017, 0.017, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_164_BURNT_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_165_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.006, 0.006, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_165_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_166_ALPINE_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 10, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.05, 0.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_166_ALPINE_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_167_HUGE_SUBZERO_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMSPRUCE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_167_HUGE_SUBZERO_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_168_SWAMP_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SUBZERO/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_168_SWAMP_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_169_BARREN_FLORAL_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/VINETREELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_169_BARREN_FLORAL_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_16_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.01, 0, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_16_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_170_ALPINE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WOODLAND/LARGEPLANT/MEDIUMOAK1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.025, 0.025, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_170_ALPINE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_171_ALPINE_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGEFIR01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_171_ALPINE_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_172_ALIEN_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLSPRUCE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_172_ALIEN_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_173_HUGE_BURNT_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALIEN/MEDIUMPROP/MEDIUMPROP01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_173_HUGE_BURNT_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_174_DESOLATE_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_174_DESOLATE_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_175_NEVADA_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_175_NEVADA_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_176_SUBZERO_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEPLANT01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_176_SUBZERO_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_177_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SUBZERO/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 18, 20, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.9, 1.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_177_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_178_DESOLATE_FLORAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 30, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_178_DESOLATE_FLORAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_179_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.12, 0.12, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_179_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_17_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_17_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_180_RAINFOREST_LUSH_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/UNDERWATER/SEAURCHIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 10, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_180_RAINFOREST_LUSH_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_181_INDUSTRIAL_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/TREEVARIANTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_181_INDUSTRIAL_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_182_SUBZERO_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/MONUMENTS/STARGATEMAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_182_SUBZERO_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_183_WEIRD_FLORAL_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/IMPULSEBEANS.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 15, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_183_WEIRD_FLORAL_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_184_RAINFOREST_LUSH_DESOLATE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/CRYSTAL/LARGEPROP/PILLAR1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 20, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.03, 0.08, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_184_RAINFOREST_LUSH_DESOLATE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_185_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/TREEVARIANTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_185_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_186_RAINFOREST_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 10, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_186_RAINFOREST_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_187_NEVADA_LUSH_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/RHINO/RHINO.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_187_NEVADA_LUSH_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_188_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEPLANT03.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_188_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_189_RAINFOREST_NOXIOUS_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_189_RAINFOREST_NOXIOUS_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_18_HUGE_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/DIPLODOCUS/DIPLODOCUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.8, 6, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_18_HUGE_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_190_DEAD_NEVADA_NOXIOUS_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.025, 0.025, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_190_DEAD_NEVADA_NOXIOUS_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_191_WEIRD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/DEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_191_WEIRD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_192_INDUSTRIAL_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/LIGHTNINGROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 10, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_192_INDUSTRIAL_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_193_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/SNOW/CONSTRUCTS/CONSTRUCT01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.006, 0.006, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_193_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_194_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.074, 0.074, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_194_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_195_WEIRD_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLFLOATCUBE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 7, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_195_WEIRD_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_196_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_196_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_197_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_197_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_198_RAINFOREST_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHELF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_198_RAINFOREST_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_199_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/LARGEMANGROVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_199_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_19_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_19_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_1_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/SMALLGLOWINGTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_1_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_200_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/ALOEFLESH.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_200_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_201_RAINFOREST_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_201_RAINFOREST_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_202_WEIRD_DESOLATE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/MEDIUMCREATURE/ANTELOPE/ANTELOPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.7, 1.4, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_202_WEIRD_DESOLATE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_203_WEIRD_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 7, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_203_WEIRD_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_204_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 20, 40, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_204_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_205_NEVADA_BURNT_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/MEDGLOWINGTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_205_NEVADA_BURNT_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_206_RAINFOREST_BARREN_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEBUSH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_206_RAINFOREST_BARREN_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_207_LIVINGSHIP_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/RHINO/RHINO.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_207_LIVINGSHIP_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_208_NEVADA_SUBZERO_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYSHELLSAND.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 6, 10, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_208_NEVADA_SUBZERO_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_209_WEIRD_BARREN_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEPLANT01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_209_WEIRD_BARREN_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_20_DEAD_NEVADA_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/CRYSTAL/LARGEPROP/GIANTCUBE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 4, 1, 1, 0, 180, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_20_DEAD_NEVADA_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_210_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/DEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_210_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_211_BARREN_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_211_BARREN_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_212_ALPINE_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_212_ALPINE_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_213_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLCEDAR01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_213_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_214_HUGE_BURNT_NOXIOUS_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 24, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_214_HUGE_BURNT_NOXIOUS_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_215_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 20, 25, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_215_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_216_NOXIOUS_WEIRD_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_216_NOXIOUS_WEIRD_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_217_RAINFOREST_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 14, 18, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_217_RAINFOREST_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_218_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 2, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_218_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_219_ROCKY_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/CRYSTAL/LARGEPROP/PILLAR1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 20, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_219_ROCKY_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_21_RAINFOREST_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.025, 0.025, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_21_RAINFOREST_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_220_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/RHINO/RHINO.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 21, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_220_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_221_BURNT_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/HEXABERRY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_221_BURNT_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_222_RAINFOREST_NOXIOUS_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 20, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_222_RAINFOREST_NOXIOUS_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_223_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/LARGEMANGROVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_223_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_224_WEIRD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/ALOEFLESH.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_224_WEIRD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_225_WEIRD_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 9, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.9, 1.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_225_WEIRD_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_226_LIVINGSHIP_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 20, 40, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_226_LIVINGSHIP_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_227_WEIRD_SUBZERO_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYSHELLSAND.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 6, 10, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.12, 0.12, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_227_WEIRD_SUBZERO_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_228_LIVINGSHIP_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 30, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_228_LIVINGSHIP_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_229_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYSHELLSAND.SCENE.MBIN", "FOREST", -1, 128, 0, 10, 2, 3, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_229_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_22_INDUSTRIAL_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_22_INDUSTRIAL_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_230_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/MONUMENTS/STARGATESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_230_WEIRD_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_231_ALPINE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 7, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_231_ALPINE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_232_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGEFIR01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_232_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_233_RAINFOREST_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/HEXABERRY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_233_RAINFOREST_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_234_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/DIPLODOCUS/DIPLOPOSE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.5, 2, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_234_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_235_RAINFOREST_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 6, 12, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_235_RAINFOREST_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_236_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/RHINO/RHINO.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_236_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_237_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/SAILPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 20, 30, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.006, 0.006, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_237_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_238_ALIEN_LUSH_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/HEALTHPLANT2.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 30, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_238_ALIEN_LUSH_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_239_RAINFOREST_LUSH_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALIEN/LARGEPLANT/BENDYTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_239_RAINFOREST_LUSH_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_23_WEIRD_DESOLATE_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/LARGETREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 2, 10, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.074, 0.074, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_23_WEIRD_DESOLATE_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_240_WEIRD_LUSH_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 24, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_240_WEIRD_LUSH_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_241_ROCKY_BARREN_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BERRYPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 25, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_241_ROCKY_BARREN_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_242_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_242_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_243_NOXIOUS_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/MEDGLOWINGTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_243_NOXIOUS_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_244_FLORAL_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MYRTLEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 7, 32, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_244_FLORAL_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_245_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 12, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.085, 0.085, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_245_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_246_SWAMP_LUSH_SUBZERO_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_246_SWAMP_LUSH_SUBZERO_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_247_RAINFOREST_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/STRAIGHTTREELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_247_RAINFOREST_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_248_SUBZERO_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/RHINO/RHINO.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_248_SUBZERO_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_249_HUGE_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_249_HUGE_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_24_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_24_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_250_NOXIOUS_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 4, 40, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_250_NOXIOUS_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_251_INDUSTRIAL_WEIRD_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 10, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 1, 1.6, 1, 1, 0.3, 3, 360, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.16, 0.035, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_251_INDUSTRIAL_WEIRD_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_252_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ABANDONED/LIGHT_3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 30, 40, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_252_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_253_WEIRD_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/IMPULSEBEANS.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 15, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 8, 12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_253_WEIRD_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_254_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_254_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_255_FLORAL_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/TREES/SKINNEDTREES.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 12, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_255_FLORAL_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_256_NOXIOUS_SUBZERO_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 10, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_256_NOXIOUS_SUBZERO_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_257_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 14, 18, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_257_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_258_ALIEN_LUSH_BARREN_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SUBZERO/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_258_ALIEN_LUSH_BARREN_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_259_RAINFOREST_LUSH_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALIEN/LARGEPLANT/BENDYTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_259_RAINFOREST_LUSH_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_25_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/TREEVARIANTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_25_WEIRD_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_260_LUSH_BURNT_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 24, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_260_LUSH_BURNT_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_261_FLORAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 20, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.11, 0.11, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_261_FLORAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_262_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/HEPTAWHEAT.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 25, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 2, 3, 1, 1, 0, 0, 180, 10, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.002, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_262_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_263_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/IMPULSEBEANS.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 15, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_263_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_264_LUSH_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/IMPULSEBEANS.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 15, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_264_LUSH_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_265_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_265_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_266_RUINS_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 4, 40, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_266_RUINS_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_267_BARREN_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI11.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_267_BARREN_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_268_RAINFOREST_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/TRUNK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_268_RAINFOREST_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_269_BARREN_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/SMALLTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 10, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_269_BARREN_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_26_BARREN_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 18, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.11, 0.11, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_26_BARREN_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_270_RAINFOREST_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WOODLAND/LARGEPLANT/MEDIUMOAK1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_270_RAINFOREST_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_271_BURNT_NOXIOUS_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/LARGEMANGROVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_271_BURNT_NOXIOUS_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_272_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_272_WEIRD_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_273_INDUSTRIAL_SUBZERO_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LAMPSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 17, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_273_INDUSTRIAL_SUBZERO_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_274_HUGE_DESOLATE_LUSH_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/MONUMENTS/STARGATESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_274_HUGE_DESOLATE_LUSH_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_275_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/DESOLATE/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.12, 0.12, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_275_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_276_NOXIOUS_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BERRYPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 25, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_276_NOXIOUS_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_277_DESOLATE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/IMPULSEBEANS.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 15, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_277_DESOLATE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_278_SWAMP_LUSH_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 10, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_278_SWAMP_LUSH_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_279_BURNT_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/VINETREELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_279_BURNT_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_27_WEIRD_FLORAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 18, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_27_WEIRD_FLORAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_280_WEIRD_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLFLOATCUBE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.085, 0.085, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_280_WEIRD_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_281_INDUSTRIAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 7, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_281_INDUSTRIAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_282_WEIRD_DESOLATE_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ABANDONED/LIGHT_3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 30, 40, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 11, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_282_WEIRD_DESOLATE_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_283_BURNT_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/CRYSTAL/LARGEPROP/GIANTSPIKE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 2, 12, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_283_BURNT_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_284_WEIRD_FLORAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_284_WEIRD_FLORAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_285_BURNT_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 9, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.017, 0.017, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 2, 3, 1, 1, 0, 0, 180, 10, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.002, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_285_BURNT_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_286_WEIRD_LUSH_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 6, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_286_WEIRD_LUSH_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_287_HUGE_ROCKY_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 10, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_287_HUGE_ROCKY_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_288_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, 0, 55, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_288_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_289_ROCKY_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 20, 40, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_289_ROCKY_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_28_WEIRD_FLORAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_28_WEIRD_FLORAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_290_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/MEDGEOMETRIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_290_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_291_FLORAL_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 22, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_291_FLORAL_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_292_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.05, 0.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_292_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_293_SWAMP_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LAMPSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 17, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_293_SWAMP_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_294_HUGE_NOXIOUS_BARREN_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/LARGEMOSSROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.14, 0.14, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_294_HUGE_NOXIOUS_BARREN_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_295_LIVINGSHIP_WEIRD_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.9, 1.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_295_LIVINGSHIP_WEIRD_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_296_RAINFOREST_LUSH_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 5, 7, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_296_RAINFOREST_LUSH_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_297_INDUSTRIAL_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/SMALLTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_297_INDUSTRIAL_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_298_NEVADA_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/SPACE/WRECKS/DEBRIS/PANEL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 10, 1, 1, 0, 90, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_298_NEVADA_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_299_RAINFOREST_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPROP/LARGEPYRAMID.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_299_RAINFOREST_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_29_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/MEDIUMCREATURE/ANTELOPE/ANTELOPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.7, 1.4, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 18, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_29_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_2_HUGE_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/CAVEGROUNDLEAVES.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.11, 0.11, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_2_HUGE_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_300_WEIRD_SUBZERO_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/HUGE/HUGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_300_WEIRD_SUBZERO_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_30_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 30, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_30_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_31_LIVINGSHIP_SUBZERO_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHELF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_31_LIVINGSHIP_SUBZERO_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_32_LIVINGSHIP_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 7, 9, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_32_LIVINGSHIP_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_33_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 7, 9, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 7, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_33_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_34_BURNT_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 10, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_34_BURNT_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_35_LUSH_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 8, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_35_LUSH_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_36_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_36_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_37_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/HEXABERRY.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 20, 25, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_37_WEIRD_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_38_FROZEN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_38_FROZEN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_39_ROCKY_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 15, 20, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_39_ROCKY_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_3_WEIRD_LUSH_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_3_WEIRD_LUSH_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_40_WEIRD_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/MEDGEOMETRIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_40_WEIRD_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_41.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHELF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.05, 0.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_41.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_42_NOXIOUS_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 8, 10, 1, 1, 0.1, 0, 180, -3, -4, "FALSE", "TRUE", "TRUE", "FALSE", 0.3, 0.25, 0.25, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.074, 0.074, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_42_NOXIOUS_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_43_FLORAL_SUBZERO_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/HEPTAWHEAT.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 25, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 14, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_43_FLORAL_SUBZERO_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_44_NOXIOUS_BURNT_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_44_NOXIOUS_BURNT_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_45_RAINFOREST_LUSH_DESOLATE_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_45_RAINFOREST_LUSH_DESOLATE_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_46_INDUSTRIAL_SUBZERO_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/MEDIUMTREE3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_46_INDUSTRIAL_SUBZERO_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_47_WEIRD_NOXIOUS_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ABANDONED/LIGHT_3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 30, 40, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_47_WEIRD_NOXIOUS_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_48_WEIRD_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_48_WEIRD_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_49_ALIEN_RAINFOREST_BURNT_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_49_ALIEN_RAINFOREST_BURNT_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_4_ALIEN_LUSH_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/DIPLODOCUS/DIPLODOCUSALIEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 2, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_4_ALIEN_LUSH_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_50_NEVADA_LUSH_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALIEN/LARGEPLANT/LARGETREE02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_50_NEVADA_LUSH_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_51_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEBUSH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.12, 0.12, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_51_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_52_BARREN_SUBZERO_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 21, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_52_BARREN_SUBZERO_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_53_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/PEACOCKTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_53_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_54_DEAD_ALPINE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.006, 0.006, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_54_DEAD_ALPINE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_55_INDUSTRIAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMDEADTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_55_INDUSTRIAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_56_NEVADA_BURNT_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/SNOW/WRECKS/GIANTWRECKEDSHIP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.1, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_56_NEVADA_BURNT_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_57_LAVA_WEIRD_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEBUSH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_57_LAVA_WEIRD_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_58_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 6, 7, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_58_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_59_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSLRG.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 25, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_59_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_5_LUSH_NOXIOUS_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/IMPULSEBEANS.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 15, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_5_LUSH_NOXIOUS_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_60_WEIRD_BURNT_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/TREES/SKINNEDTREES.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 12, 15, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_60_WEIRD_BURNT_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_61_WEIRD_LUSH_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 24, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_61_WEIRD_LUSH_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_62_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 8, 35, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.12, 0.12, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_62_WEIRD_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_63_WEIRD_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_63_WEIRD_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_64_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 2, 3, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_64_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_65_BURNT_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.074, 0.074, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_65_BURNT_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_66_WEIRD_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_66_WEIRD_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_67_BURNT_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONESEED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.9, 1.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_67_BURNT_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_68_WEIRD_LUSH_FLORAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/COMMON/CHARACTERS/ASTRONAUT/ASTRONAUT01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 4, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_68_WEIRD_LUSH_FLORAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_69_NOXIOUS_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 2, 3, 1, 1, 0, 5, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 2, 3, 1, 1, 0, 0, 180, 10, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.002, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_69_NOXIOUS_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_6_RAINFOREST_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NOXIOUS/RARE/RARELARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_6_RAINFOREST_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_70_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_70_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_71_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/COOKING/HEPTAWHEAT.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 25, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 2, 3, 1, 1, 0, 0, 180, 10, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.002, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_71_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_72_INDUSTRIAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/HEALTHPLANT2.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 30, 40, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_72_INDUSTRIAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_73_NEVADA_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/SNOW/WRECKS/GIANTWRECKEDSHIP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.1, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.1, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_73_NEVADA_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_74_BURNT_BARREN_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/NEVADA/LARGEPLANTS/LARGEPLANT01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_74_BURNT_BARREN_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_75_WEIRD_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 8, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_75_WEIRD_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_76_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 9, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.12, 0.12, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_76_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_77_ALPINE_FLORAL_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/SAILPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 20, 30, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.006, 0.006, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_77_ALPINE_FLORAL_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_78_BARREN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLCEDAR01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_78_BARREN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_79_INDUSTRIAL_FLORAL_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 8, 12, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_79_INDUSTRIAL_FLORAL_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_7_INDUSTRIAL_SUBZERO_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/SPACE/WRECKS/DEBRIS/PANEL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 90, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.12, 0.12, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_7_INDUSTRIAL_SUBZERO_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_80_RAINFOREST_BURNT_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/SNOW/CONSTRUCTS/CONSTRUCT01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.006, 0.006, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_80_RAINFOREST_BURNT_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_81_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/RHINO/RHINO.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 9, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_81_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_82_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 30, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_82_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_83_RAINFOREST_LUSH_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEARRANGEDROCK01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "FORESTX", -1, 128, 0, 30, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.05, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_83_RAINFOREST_LUSH_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_84_ROCKY_FLORAL_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/MEDIUMTREE3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_84_ROCKY_FLORAL_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_85_FLORAL_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_85_FLORAL_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_86_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_86_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_87_INDUSTRIAL_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.074, 0.074, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_87_INDUSTRIAL_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_88_ALPINE_DESOLATE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/SNOW/WRECKS/GIANTWRECKEDSHIP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.1, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0005, 0.0005, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 6, 1, 1.5, 1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_88_ALPINE_DESOLATE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_89_WEIRD_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/LARGEFIR01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 8, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/DESOLATE/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 1.3, 1, 1, 0.5, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.5, 0.5, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_89_WEIRD_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_8_ROCKY_BARREN_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_8_ROCKY_BARREN_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_90_WEIRD_SUBZERO_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENACOLOURED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_90_WEIRD_SUBZERO_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_91_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/HYDROPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05, 0, 5), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_91_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_92_INDUSTRIAL_NOXIOUS_SUBZERO.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 2, 4, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 50, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.074, 0.074, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 2.5, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.007, 0.007, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_92_INDUSTRIAL_NOXIOUS_SUBZERO.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_93_BURNT_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/LIGHTS/SMALLLANTERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 3, 5, 1, 1, 0, 0, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SUBZERO/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_93_BURNT_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_94_BURNT_NOXIOUS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGEPLANT.SCENE.MBIN", "LEVILARGEPATCH", -1, 128, 0, 90, 0.8, 1.5, 1, 1, 0.3, 3, 360, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.28, 0.001, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGECREEPYPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.002, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_94_BURNT_NOXIOUS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_95_NOXIOUS_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/CUCUMBERSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 2, 12, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/NOXIOUS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 1.3, 1, 1, 0.3, 20, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.02, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_95_NOXIOUS_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_96_FROZEN_FLORAL_RUINS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, -3, -4, "FALSE", "FALSE", "TRUE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/NOXIOUS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_96_FROZEN_FLORAL_RUINS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_97_FLORAL_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 15, 20, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FLYINGFERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RUINS/SCIFI/RUINSCIFI10.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 20, 1.3, 1.6, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.008, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_97_FLORAL_BURNT.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_98_ALPINE_FLORAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 20, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/MEDIUMPLANT/FOXGLOVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BURNT/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 90, 0.8, 2, 1, 1, 0.3, 0, 360, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.28, 0.016, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_98_ALPINE_FLORAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_99_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMSPRUCE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FLORAL/LARGEPLANT/FLORALTREE01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_99_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_9_WEIRD_BURNT.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 25, 30, 1, 1, 0, 10, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 60, 0, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES/BIOME_9_WEIRD_BURNT.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmSingleProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 3, 30, 1, 1, 0, 20, 180, -3, -4, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BURNT/LARGE/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 10, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.01, 0, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE