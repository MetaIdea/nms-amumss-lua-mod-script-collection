--[[

LUA script created using PLUMGEN
Script may include unused identifiers
Import EXML back into PLUMGEN for swift and easy editing

--]]

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

function AddDistantProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, destroyableByShip, destroyableByTerrEdit, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
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
            <Property name="MaxRegionRadius" value="9999" />
            <Property name="MaxImposterRadius" value="9999" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="150" />
              <Property value="450" />
              <Property value="750" />
              <Property value="1050" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end


--This adds the exml "context" for each model, i.e. the max scale.
function AddLandmarkProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, destroyableByShip, destroyableByTerrEdit, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
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
            <Property name="MaxRegionRadius" value="20" />
            <Property name="MaxImposterRadius" value="9999" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="50" />
              <Property value="100" />
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
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
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
            <Property name="MaxRegionRadius" value="5" />
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
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
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
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
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
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="96" />
            <Property name="FadeOutEndDistance" value="114" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
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
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
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
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
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
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="63" />
            <Property name="FadeOutEndDistance" value="81" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
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

local replaceGrassMatFlags =
[[
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F02_SKINNED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F36_DOUBLESIDED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
  </Property>
]]

--This adds basic collisions to pre-release models:
AddBasicCollisions = --scale y&z flipped compared to blender (v2.6: 0.24 from 0.189618)
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddStargateMainCollisions =
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddSailPlantCollisions =
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddStargateSmallCollisions =
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddConstruct01Collisions =
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddDiploCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.12627" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.65969" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="17.5435" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddLargePyramidCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="25.036" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="17.2584" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="25.293" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="11.5588" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12.9888" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddLargeFir01Collisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddPanelCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddGiantCubeCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddTinyCubesCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddGiantSpikeCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddPillar1Collisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddSquatPillar1Collisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddAntelopeCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddAstronaut01Collisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddWalkerCollisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]


AddSmallTree3Collisions = 
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
          <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.4" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.32182" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.8" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.97841" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
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
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7.89745" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "GONMS_Biomes_High_v1.1b.pak",
["MOD_AUTHOR"]				= "FjordFish",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
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
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\BENDYTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01.SCENE.MBIN",
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
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEARRANGEDROCK02.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 1.4, 2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEARRANGEDROCK01.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.004, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/GROUNDREVEALROCK01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 0.6, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.005, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.8, 1.2, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.25, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSMED.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.5, 1.2, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.5, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 0.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.35, 0.005, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 15, 1, 2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.18, 0.0155, 0.0155, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 1.4, 2.5, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFURRYCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1.25, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.03, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SPRIGBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.75, 1.75, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.19, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.16, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "SPARSECUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.25, 0.9, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.3, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.19, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.5, 1.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.19, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.19, 0.01, 0.01, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 7, 11.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.003, 0.002, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/LARGETREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 7, 11.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.003, 0.002, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.08, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.045, 0.045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.065, 0.02, 0.02, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 2.6, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.23, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.9, 1.4, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.019, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.4, 1.4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.23, 0.086, 0.086, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 1.5, 2.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.0018, 0.0001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1.4, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.008, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.008, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 0.7, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.006, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, "TRUE", "TRUE", "FALSE", 0.23, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 35, 1.2, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.0018, 0.0001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.6, 1.4, 1, 1, 0, 4, "TRUE", "TRUE", "FALSE", 0.12, 0.028, 0.028, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.9, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.34, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.24, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.6, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 15, 1.4, 2.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.3, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1.8, 2.5, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 10), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.05, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.026, 0.026, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.4, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.14, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.15, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.014, 0.014, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 80, 1, 1.3, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.1, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.1, 3, 1, 1, 0.3, 5, "FALSE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1, 1.8, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.14, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1.6, 2.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.035, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.035, 0.009, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.9, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 10, "FALSE", "TRUE", "FALSE", 0.04, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.13, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2, 4, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 0.1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.09, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2, 1, 1, 0, 8, "FALSE", "TRUE", "TRUE", 0.12, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.7, 0.7, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.13, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.5, 0.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.09, 0.065, 0.065, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 1.4, 2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.6, 2.4, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.185, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.005, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.5, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.0195, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.24, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 0.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 15, 1.4, 2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.18, 0.0155, 0.0155, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 2, 2.5, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.48, 0.48, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.12, 0.12, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.9, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.19, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.16, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "SPARSECUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.1, 0.1, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCK.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.8, 1.3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.185, 0.0385, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.8, 1, 1, 1, 0, 12, "FALSE", "TRUE", "FALSE", 0.16, 0.095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.8, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.395, 0.0875, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.4, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.355, 0.011, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.5, 2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.395, 0.075, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 0.8, 1.2, 1, 1, 0, 3, "FALSE", "TRUE", "FALSE", 0.355, 0.009, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLSHARP02.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 85, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.2, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.2, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.545, 0.0205, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.495, 0.01, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 100, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.39, 0.0325, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEBOULDER.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 35, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 25, 0.8, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.28, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 120, 250, 0.8, 1.6, 1, 1, 0.1, 10, "FALSE", "TRUE", "FALSE", 0.5, 0.03, 0.03, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 100, 230, 1.1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 2, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 10, 40, 0.3, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 40, 0.2, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.005, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 45, 0.4, 0.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.034, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 50, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.07, 0.07, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 30, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 25, 50, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 30, 50, 0.5, 0.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.54, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 20, 0.5, 0.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCKPOOL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 15, 1, 1.3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.32, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 30, 0.6, 0.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.22, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 240, 1.3, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 25, 0.6, 1.4, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.26, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 45, 0.6, 1, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.4, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 20, 55, 0.4, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.62, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 120, 280, 0.5, 1.6, 1, 1, 0.1, 10, "FALSE", "TRUE", "FALSE", 0.3, 0.2, 0.2, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCKPOOL.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 30, 1.1, 1.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.295, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCK.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.8, 1.4, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.275, 0.0065, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 155, 280, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.475, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.8, 1.3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.185, 0.0385, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.8, 1, 1, 1, 0, 12, "FALSE", "TRUE", "FALSE", 0.16, 0.095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.8, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.395, 0.0875, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.4, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.355, 0.011, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.5, 2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.395, 0.075, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 0.8, 1.2, 1, 1, 0, 3, "FALSE", "TRUE", "FALSE", 0.355, 0.009, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEBOULDER.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 45, 0.3, 0.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.305, 0.003, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEROCKFORMATION.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 50, 1, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 50, 0.4, 1.15, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.38, 0.005, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLSHARP02.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 85, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 75, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.023, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.2, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.2, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.545, 0.0205, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 70, 1.2, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.315, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.495, 0.01, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 70, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.175, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 100, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.39, 0.0325, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 60, 0.3, 0.55, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.0525, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 60, 0.3, 0.55, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.34, 0.045, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.76, 2.3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.14, 0.0005, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 75, 0.6, 1.6, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.26, 0.0005, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.5, 1.4, 1, 1, 0, 40, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.15, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.4, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.2, 0.6, 1, 1, 0, 20, "FALSE", "TRUE", "FALSE", 3, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.3, 0.5, 1, 1, 0, 40, "FALSE", "TRUE", "FALSE", 0.2, 0.058, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.2, 0.4, 1, 1, 0, 40, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.4, 1.1, 1, 1, 0, 20, "TRUE", "TRUE", "FALSE", 2, 0.005, 0.01, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/TREES/HEROPINE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 25, 2.5, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/TREES/TALLPINE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.12, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/TREES/SKINNYPINE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.175, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.115, 0.13, 0.13, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 0.5, 1.4, 1, 1, 0.3, 20, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMPX", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/MEDIUMPROPS/MEDIUMROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.6, 1.4, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.018, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMPX", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.27, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMPX", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCKCLUMPS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 25, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 30, 0.8, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.24, 0.07, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMPX", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMPX", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FORESTX", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FORESTX", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMPX", -1, 128, 0, 40, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FORESTX", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 0.8, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "SPARSECLUMPX", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCKCLUMPS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.8, 1.1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.0005, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.8, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLSNOWCLUMPS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.8, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.03, 0.08, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SNOWCLUMP.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 20, 0.8, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/ROCKSCREE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.012, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.2, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.5, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.15, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 10.5, 15.4, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.0435, 0.0001, 0.0001), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 10.5, 15.4, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.0435, 0.0001, 0.0001), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3.4, 4, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.002, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.058, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.505, 0.019, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.5, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.001, 0.001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.004, 0.001, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.8, 0.9, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.3, 0.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.03, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.8, 2.5, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.13, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.11, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.99, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.65, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.7, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0045, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.0055, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.78, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.03, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.7, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.12, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.175, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.13, 0.13, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.27, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0105, 0.0105, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.03, 0.08, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.4, 2.8, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.008, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.44, 0.02, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.3, 0.02, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.265, 0.003, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.002, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.007, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 0.8, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FORESX", -1, 128, 0, 45, 1.3, 1.8, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.2, 0.0045, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 1, 1.5, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.19, 0.012, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.001, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 15, 0.8, 1.4, 1, 1, 0.2, 25, "TRUE", "TRUE", "FALSE", 0.06, 0.005, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 40, "TRUE", "TRUE", "FALSE", 0.08, 0.09, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0.2, 5, "TRUE", "TRUE", "FALSE", 0.13, 0.04, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.7, 0, 2.8), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.9, 1.1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.02, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 0.9, 1.1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.09, 0.07, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.9, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 0.9, 1.2, 1, 1, 0.5, 5, "FALSE", "TRUE", "FALSE", 0.5, 0.018, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 0.8, 1.2, 1, 1, 0.1, 10, "FALSE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 0.8, 1.2, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.15, 0.008, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 0.4, 0.8, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 0.7, 1, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 180, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 180, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 180, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 180, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 180, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 180, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 180, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 180, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.2, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.02, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.02, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.5, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.15, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 16.8, 19.599, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.006, 0, 5), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 16.8, 19.599, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.006, 0, 5), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.4, 2.8, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.008, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.44, 0.02, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.43, 0.04, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.265, 0.003, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.002, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.007, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 0.8, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 1.3, 1.8, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.2, 0.0045, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.2, 0.015, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.19, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.19, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.2, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.002, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.7, 0, 2.8), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.02, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.062, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.1, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.004, 0.008, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1, 1.5, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.09, 0.07, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.054, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.1, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.1, 1.5, 1, 1, 0.5, 5, "FALSE", "TRUE", "FALSE", 0.5, 0.018, 0, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.7, 2.3, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.15, 0.11, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.002, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.017, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 0.8, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 1.3, 1.4, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.2, 0.0045, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.06, 0.05, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1.2, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.045, 0.045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1.2, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.13, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.3, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.01, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.7, 0, 2.8), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.02, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.14, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.004, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.4, 1.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.07, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.2, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.1, 1.5, 1, 1, 0.5, 5, "FALSE", "TRUE", "FALSE", 0.4, 0.012, 0, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.13, 0.019, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.18, 0.05, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1.4, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 180, 1, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 180, 1, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 0.6, 1, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.14, 0.0045, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1.2, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.015, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 0.9, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.325, 0.005, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1.3, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.001, 0, 4), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.7, 0, 2.8), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 1, 1.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.016, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.15, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.004, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.03, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.15, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.5, 5, "FALSE", "TRUE", "FALSE", 0.45, 0.018, 0, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.19, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 55, 1.8, 3.2, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.023, 0.023, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, "FALSE", "TRUE", "FALSE", 0.1, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.21, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.8, 1.7, 1, 1, 0.3, 5, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.9, 1.5, 1, 1, 0.2, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.038, 0.038, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 45, 0.7, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.07, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.02, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.8, 1.3, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.11, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.4, 2.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.42, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.06, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.09, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.06, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 11.9, 18.9, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.18, 0.0225, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 11.9, 18.9, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.18, 0.0225, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.19, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, "FALSE", "TRUE", "FALSE", 0.1, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.7, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.9, 1.5, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.038, 0.038, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.7, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.215, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 2.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.42, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.06, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.04, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.06, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.0005, 0.0005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.6, 2.6, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 2.4, 3, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.09, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.2, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.105, 0.0018, 0.0018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.09, 0.07, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1.3, 2.1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.3, 1.6, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.06, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.13, 0.013, 0.013, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.022, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.06, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.22, 0.34, 0.34, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.09, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.25, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.6, 1.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.6, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.175, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.5, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.4, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.18, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.2, 0, "FALSE", "TRUE", "TRUE", 0.19, 0.18, 0.18, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.18, 0.18, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1.5, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.075, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.6, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.075, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.17, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.35, 0.35, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.014, 0.014, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 11.9, 14, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.05, 0.0127, 0.017, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 11.9, 14, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.05, 0.0127, 0.017, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, "FALSE", "TRUE", "FALSE", 0.2, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.5, 2, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.22, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.16, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.05, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.13, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.8, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1.7, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.1, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.22, 0.7, 0.7, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 185, 0.8, 1.3, 1, 1, 0.3, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.78, 0.78, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.21, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.125, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.215, 0.2159, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.5, 2.3, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.13, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.8, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1.7, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.017, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.0235, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.4, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 185, 0.8, 1.3, 1, 1, 0.3, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.03, 0.03, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.215, 0.2159, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.12, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.175, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.4, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.23, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 1, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0.0055, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.01, 0.01, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.27, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.005, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.08, 0.08, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 12, 16, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.21, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREESINGLE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 15, 19, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.21, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.23, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.4, 1.43, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.185, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 3, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.6, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.17, 0.028, 0.028, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.6, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.21, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1, 2.6, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.2, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.19, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.2, 0.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.13, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.27, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.05, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.3, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.4, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.09, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.19, 0.16, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.12, 0.12, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.75, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.185, 0.125, 0.125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.16, 0.16, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.7, 1.4, 1, 1, 0.3, 5, "FALSE", "TRUE", "FALSE", 0.13, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2.4, 3.4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.14, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.1, 0.016, 0.016, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.11, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.6, 2.3, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.11, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.7, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.11, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.2, 1.8, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.14, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 1.2, 3.2, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.04, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.4, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.09, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.125, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.14, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.05, 0, "FALSE", "TRUE", "TRUE", 0.16, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.3, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "TRUE", 0.14, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.19, 0.78, 0.78, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.75, 0.026, 0.026, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.185, 0.125, 0.125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.12, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 3.5, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.195, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.165, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0.0065, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.32, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 35, 0.8, 1.85, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 1, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 0.9, 2.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 45, 0.55, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 55, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.002, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -35, 0, 55, 0.6, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3825, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 55, 0.5, 1.15, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "ROCKCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.365, 0.18, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "GRASSCLUMP", -1, 10, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.575, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, -5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.475, 0.045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -128, -5, 0, 30, 0.3, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.345, 0.011, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0012, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FOREST", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.29, 0.0045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2675, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "ROCKCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0018, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.525, 0.0024, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 20, 0.8, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.003, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "GRASSCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.86, 0.035, 0, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "FLORACLUMP", -128, -12, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 45, 0.8, 1.85, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 45, 1, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "FLORACLUMP", -128, -10, 0, 45, 0.2, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -15, 0, 40, 1, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.0055, 0.0055, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -128, -15, 0, 40, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 40, 0.6, 2, 1, 1, 0, 1, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "FLORACLUMP", -128, -10, 0, 40, 0.5, 1.35, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0025, 0.0025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 180, 1, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 40, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -20, 0, 180, 0.8, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 180, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 180, 1, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 180, 1, 1.3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 60, 0.2, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 60, 1.2, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -3, 0, 180, 1, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.0145, 0.0145, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 70, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 90, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "FLORACLUMP", -128, -12, 0, 80, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "FLORACLUMP", -128, -15, 0, 20, 1.5, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -128, -0.5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.575, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -128, -0.5, 0, 50, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.065, 0.065, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -0.5, 0, 40, 0.3, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.345, 0.021, 0.021, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "FLORACLUMP", -128, -1.4, 0, 50, 0.3, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0185, 0.0185, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 180, 0.4, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 40, 0.3, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.041, 0.041, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.32, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 35, 0.8, 1.85, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 1, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 0.9, 2.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 45, 0.55, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 55, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.002, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -35, 0, 55, 0.6, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3825, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 55, 0.5, 1.15, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "ROCKCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.365, 0.18, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "GRASSCLUMP", -1, 10, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.575, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, -5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.475, 0.045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -128, -5, 0, 30, 0.3, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.345, 0.011, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0012, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FOREST", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.29, 0.0045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2675, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "ROCKCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0018, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.525, 0.0024, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 20, 0.8, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.003, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "GRASSCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.86, 0.035, 0, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.1, 0.03, 0.01, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BURSTC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.6, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.021, 0.021, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BURST.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.02, 0.02, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BURSTB.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.011, 0.011, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BURST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.5, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HOVERING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.9, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/BEAMSTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.9, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HOVERINGINST.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/EFFECTS/HEAVYAIR/STONEFRAGMENTS/STONEFRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.01, 0.01, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/SMALLSTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.5, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.1, 0.1, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.09, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.065, 0.065, 0.065, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 60, 0.9, 1.5, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.24, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/EFFECTS/HEAVYAIR/BUBBLES/BUBBLES.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.14, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPEB.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 50, 0.8, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.125, 0.04, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 55, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.3, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 60, 1.5, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.1, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DEADBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.2, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.035, 0.034, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DETAILBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.01, 0.01, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 3, 5, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 3, 5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.06, 0.06, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 60, 0.9, 1.5, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.24, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/MEDGEOMETRIC.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 60, 0.8, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPEB.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 50, 0.8, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.125, 0.04, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 55, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.3, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 60, 1.5, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.1, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/CYLINDER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.04, 0.04, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/FLAP.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.02, 0.02, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.1, 0.03, 0.01, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 1.5, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.24, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/MEDGEOMETRIC.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPEB.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.8, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.125, 0.04, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 55, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.3, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.1, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HOVERINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.02, 0.02, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/ROTATINGDETAIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.01, 0.01, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTURE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.4, 0.04, 0, 5), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.1, 0.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.3, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTURE.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 45, 0.9, 2.3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/SINGLEJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.5, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/SMALLJOINT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.25, 2.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.12, 0.12, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.11, 0.22, 0.22, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 100, 0.5, 0.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.11, 0.18, 0.18, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 2.6, 4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.08, 0.01, 0.01, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/FLOORPIECES.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SINGLESHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.4, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.2, 0.25, 0.25, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/FLOORSHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPEB.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 50, 0.8, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.125, 0.04, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 55, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.3, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/DETAILSHAPE.SCENE.MBIN", "FLORACLUMPX", -1, 128, 0, 60, 1.5, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.1, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DEADBUBBLE.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 50, 0.2, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.035, 0.035, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/FLAP.SCENE.MBIN", "BLANKETCLUMPX", -1, 128, 0, 50, 3, 5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.01, 0.01, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.08, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.08, 0.045, 0.045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.6, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.06, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.05, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.065, 0.02, 0.02, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 2.6, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.23, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.9, 1.4, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.21, 0.019, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.4, 1.4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.23, 0.086, 0.086, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 1.5, 2.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.0018, 0.0001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1.4, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.008, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.008, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 0.7, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.006, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, "TRUE", "TRUE", "FALSE", 0.23, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 35, 1.2, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.0018, 0.0001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.6, 1.4, 1, 1, 0, 4, "TRUE", "TRUE", "FALSE", 0.12, 0.028, 0.028, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.21, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.9, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.34, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.24, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.9, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.21, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.6, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 15, 1.4, 2.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.3, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.28, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1.8, 2.5, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0, 10), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.7, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.06, 0.05, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0.026, 0.026, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.4, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.15, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.014, 0.014, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 14, 30, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.23, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 14, 30, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.23, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 80, 1, 1.3, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.1, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.1, 3, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1, 1.8, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.14, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1.6, 2.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.035, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.035, 0.009, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.9, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.07, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.04, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.13, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2, 4, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 0.1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 1, 1.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.09, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.4, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2, 1, 1, 0, 8, "TRUE", "TRUE", "TRUE", 0.12, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.17, 0.7, 0.7, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.13, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.04, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.5, 0.7, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.065, 0.065, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 1.4, 2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.6, 2.4, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.185, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.005, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.5, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.0195, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.24, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 0.7, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.21, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 15, 1.4, 2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.18, 0.0155, 0.0155, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 2, 2.5, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.48, 0.48, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.07, 0.12, 0.12, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.9, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.19, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.06, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.16, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "SPARSECUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.08, 0.1, 0.1, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCK.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.275, 0.0095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.8, 1.3, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.185, 0.0385, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.8, 1, 1, 1, 0, 12, "TRUE", "TRUE", "FALSE", 0.16, 0.095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.8, 1, 1, 0, 15, "TRUE", "TRUE", "FALSE", 0.395, 0.0875, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.4, 1, 1, 0, 15, "TRUE", "TRUE", "FALSE", 0.355, 0.011, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.5, 2, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.395, 0.075, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 0.8, 1.2, 1, 1, 0, 3, "TRUE", "TRUE", "FALSE", 0.355, 0.009, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.4, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.55, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLSHARP02.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 85, 0.4, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.35, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.2, 0.45, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.03, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.2, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.545, 0.0205, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.495, 0.01, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 100, 0.3, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.39, 0.0325, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEBOULDER.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 35, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 25, 0.8, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.28, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 120, 250, 0.8, 1.6, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.5, 0.03, 0.03, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 100, 230, 1.1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 2, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 10, 40, 0.3, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 40, 0.2, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.08, 0.005, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 45, 0.4, 0.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.034, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 50, 0.4, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.07, 0.07, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 30, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.07, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 25, 50, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 30, 50, 0.5, 0.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.54, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 20, 0.5, 0.7, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.07, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCKPOOL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 15, 1, 1.3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.32, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 30, 0.6, 0.7, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.22, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 240, 1.3, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 25, 0.6, 1.4, 1, 1, 0, 15, "TRUE", "TRUE", "FALSE", 0.26, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 45, 0.6, 1, 1, 1, 0, 15, "TRUE", "TRUE", "FALSE", 0.4, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 20, 55, 0.4, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.62, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 120, 280, 0.5, 1.6, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.3, 0.2, 0.2, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCKPOOL.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 30, 1.1, 1.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.295, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCK.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.275, 0.0095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.8, 1.4, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.275, 0.0065, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 155, 280, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.475, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.8, 1.3, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.185, 0.0385, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.8, 1, 1, 1, 0, 12, "TRUE", "TRUE", "FALSE", 0.16, 0.095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.8, 1, 1, 0, 15, "TRUE", "TRUE", "FALSE", 0.395, 0.0875, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.4, 1, 1, 0, 15, "TRUE", "TRUE", "FALSE", 0.355, 0.011, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.5, 2, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.395, 0.075, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 0.8, 1.2, 1, 1, 0, 3, "TRUE", "TRUE", "FALSE", 0.355, 0.009, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEBOULDER.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 45, 0.3, 0.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.305, 0.003, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEROCKFORMATION.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 50, 1, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.275, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 50, 0.4, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.38, 0.005, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.4, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.55, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLSHARP02.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 85, 0.4, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.35, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 75, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.023, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.2, 0.45, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.03, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.2, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.545, 0.0205, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 70, 1.2, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.315, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.495, 0.01, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 70, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.175, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 100, 0.3, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.39, 0.0325, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 60, 0.3, 0.55, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.0525, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 60, 0.3, 0.55, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.34, 0.045, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.76, 2.3, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.0005, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 75, 0.6, 1.6, 1, 1, 0, 15, "TRUE", "TRUE", "FALSE", 0.26, 0.0005, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.018, 0.018, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.06, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.04, 0.5, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.04, 0.15, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 23.8, 28, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.52, 0.0015, 0.0001, 0.0001), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 14, 16, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.52, 0.0015, 0.0001, 0.0001), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3.4, 4, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.52, 0.002, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.52, 0.058, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.505, 0.019, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.5, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.001, 0.001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.004, 0.001, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.8, 0.9, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.3, 0.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.8, 2.5, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.13, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.11, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.99, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.65, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.7, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0045, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0055, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.78, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.7, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.25, 0.001, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.12, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.175, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.13, 0.13, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.27, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0105, 0.0105, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.3, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.08, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.06, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.04, 0.5, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.04, 0.15, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 11.2, 15.4, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.43, 0.03, 0.04, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 14, 19, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.43, 0.03, 0.04, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.4, 2.8, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.21, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.44, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.43, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 2.2, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.265, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 40, 0.8, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 1.3, 1.8, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.2, 0.0045, 0.0045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.2, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.19, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.19, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.2, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.062, 0.062, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.004, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1, 1.5, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.09, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.17, 0.054, 0.054, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.1, 1.5, 1, 1, 0.5, 5, "TRUE", "TRUE", "FALSE", 0.5, 0.018, 0.018, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.7, 2.3, 1, 1, 0, 5, "TRUE", "TRUE", "FALSE", 0.15, 0.11, 0.11, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 40, 0.8, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 1.3, 1.4, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.2, 0.0045, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.06, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.045, 0.045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.13, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.3, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.06, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.21, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.004, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.08, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.4, 1.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.1, 1.5, 1, 1, 0.5, 5, "TRUE", "TRUE", "FALSE", 0.4, 0.012, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.13, 0.019, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.4, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 0.6, 1, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.14, 0.0045, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1.2, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 0.9, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.325, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.3, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "TRUE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 1, 1.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.016, 0.016, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.21, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.004, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.17, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.5, 5, "TRUE", "TRUE", "FALSE", 0.45, 0.018, 0.018, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, "TRUE", "TRUE", "FALSE", 0.19, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 55, 1.8, 3.2, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.12, 0.023, 0.023, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.08, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, "TRUE", "TRUE", "FALSE", 0.1, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.8, 1.7, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.9, 1.5, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.038, 0.038, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 45, 0.7, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.07, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.8, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.4, 2.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.42, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.55, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.09, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.21, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 10.5, 14.7, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 10.5, 14.7, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, "TRUE", "TRUE", "FALSE", 0.19, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, "TRUE", "TRUE", "FALSE", 0.1, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.7, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.9, 1.5, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.038, 0.038, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.7, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.215, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 2.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.42, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.55, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.04, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.06, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.0005, 0.0005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.6, 2.6, 1, 1, 0.1, 4, "TRUE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 2.4, 3, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.09, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.2, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.105, 0.0018, 0.0018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.09, 0.07, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1.3, 2.1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.3, 1.6, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.06, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.13, 0.013, 0.013, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.022, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.06, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.22, 0.34, 0.34, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.09, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.25, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.6, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.6, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.175, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.5, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.4, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.18, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.2, 0, "TRUE", "TRUE", "TRUE", 0.19, 0.18, 0.18, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.8, 2.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.18, 0.18, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1.5, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.075, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.6, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.075, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.08, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.17, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.04, 0.35, 0.35, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.05, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.08, 0.014, 0.014, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 30, 60, 12, 15, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.16, 0.02175, 0.029, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 30, 60, 24, 28, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.16, 0.02175, 0.029, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, "TRUE", "TRUE", "FALSE", 0.2, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.5, 2, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.22, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.16, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.05, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.13, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.8, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1.7, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.1, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.22, 0.7, 0.7, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 185, 0.8, 1.3, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.17, 0.78, 0.78, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.125, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.215, 0.2159, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.5, 2.3, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.13, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.8, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1.7, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.017, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.0235, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.9, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.4, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 185, 0.8, 1.3, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.17, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 1, 1.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.05, 0.03, 0.03, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.215, 0.2159, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.12, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.175, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.4, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.23, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 1, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.04, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0055, 0.0055, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.5, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.01, 0.01, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.27, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.005, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.35, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.08, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.08, 0.08, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 9, 12, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.21, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 14, 17, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.21, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.23, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.4, 1.43, 1, 1, 0.1, 4, "TRUE", "TRUE", "FALSE", 0.185, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 3, 4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.6, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.17, 0.028, 0.028, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.6, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.21, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1, 2.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.08, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.2, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.19, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.05, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.2, 0.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.13, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.27, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.05, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.3, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.4, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.09, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.19, 0.16, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.14, 0.12, 0.12, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.75, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.185, 0.125, 0.125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.16, 0.16, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.7, 1.4, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.13, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2.4, 3.4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.14, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.1, 0.016, 0.016, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.1, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.11, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.6, 2.3, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.11, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.7, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.11, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.2, 1.8, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 1.2, 3.2, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.04, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.4, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.09, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.125, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.05, 0, "TRUE", "TRUE", "TRUE", 0.16, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.3, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "TRUE", 0.14, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.19, 0.78, 0.78, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.75, 0.026, 0.026, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.185, 0.125, 0.125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.25, 0.001, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.12, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 3.5, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.195, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.165, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0.0065, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.8, 2.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.2, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.32, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 35, 0.8, 1.85, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.001, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 0.9, 2.45, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.275, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 45, 0.55, 1.95, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 55, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.002, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -35, 0, 55, 0.6, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3825, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 55, 0.5, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "ROCKCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.365, 0.18, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "GRASSCLUMP", -1, 10, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.575, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, -5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.475, 0.045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -128, -5, 0, 30, 0.3, 0.45, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.345, 0.011, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.425, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.275, 0.0012, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FOREST", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.29, 0.0045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2675, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.325, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "ROCKCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.425, 0.0018, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.525, 0.0024, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 20, 0.8, 3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.003, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "GRASSCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.86, 0.035, 0, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "FLORACLUMP", -128, -12, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 45, 0.8, 1.85, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "FLORACLUMP", -128, -10, 0, 45, 0.2, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -15, 0, 40, 1, 1.95, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.0055, 0.0055, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -128, -15, 0, 40, 1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 40, 0.6, 2, 1, 1, 0, 1, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "FLORACLUMP", -128, -10, 0, 40, 0.5, 1.35, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0025, 0.0025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 180, 1, 1.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 40, 1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -20, 0, 180, 0.8, 1.7, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 180, 1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 180, 1, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 180, 1, 1.3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 60, 0.2, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 60, 1.2, 2.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -3, 0, 180, 1, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.0145, 0.0145, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 70, 1.2, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 90, 1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 60, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "FLORACLUMP", -128, -12, 0, 80, 0.5, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "FLORACLUMP", -128, -15, 0, 20, 1.5, 3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.28, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -128, -0.5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.575, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -128, -0.5, 0, 50, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.45, 0.065, 0.065, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -0.5, 0, 40, 0.3, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.345, 0.021, 0.021, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "FLORACLUMP", -128, -1.4, 0, 50, 0.3, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.0185, 0.0185, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 180, 0.4, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.35, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 40, 0.3, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.041, 0.041, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.32, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 35, 0.8, 1.85, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.001, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 0.9, 2.45, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.275, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 45, 0.55, 1.95, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 55, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.002, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -35, 0, 55, 0.6, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.3825, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 55, 0.5, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "ROCKCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.365, 0.18, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "GRASSCLUMP", -1, 10, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.575, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, -5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.475, 0.045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -128, -5, 0, 30, 0.3, 0.45, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.345, 0.011, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.425, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.275, 0.0012, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FOREST", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.29, 0.0045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.2675, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.325, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "ROCKCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.425, 0.0018, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.525, 0.0024, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 20, 0.8, 3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.25, 0.003, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "GRASSCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.86, 0.035, 0, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.08, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.045, 0.045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.065, 0.02, 0.02, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 2.6, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.23, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.9, 1.4, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.019, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.4, 1.4, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.23, 0.086, 0.086, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 1.5, 2.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.0018, 0.0001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1.4, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.008, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.008, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 0.7, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.006, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, "TRUE", "TRUE", "FALSE", 0.23, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 35, 1.2, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.0018, 0.0001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.6, 1.4, 1, 1, 0, 4, "TRUE", "TRUE", "FALSE", 0.12, 0.028, 0.028, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.9, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.34, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.24, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.6, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 15, 1.4, 2.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.3, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1.8, 2.5, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 10), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.05, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.026, 0.026, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.4, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.14, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.15, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.014, 0.014, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 11, 12.5, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.23, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 11, 12.5, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.23, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 80, 1, 1.3, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.1, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.1, 3, 1, 1, 0.3, 5, "FALSE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1, 1.8, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.14, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1.6, 2.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.035, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.035, 0.009, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1.3, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.9, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.15, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 10, "FALSE", "TRUE", "FALSE", 0.04, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.13, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2, 4, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 0.1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.09, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2, 1, 1, 0, 8, "FALSE", "TRUE", "TRUE", 0.12, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.7, 0.7, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.13, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.5, 0.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.09, 0.065, 0.065, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 1.4, 2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.6, 2.4, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.185, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.23, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.005, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.5, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.0195, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.24, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 0.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 15, 1.4, 2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.18, 0.0155, 0.0155, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 2, 2.5, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.48, 0.48, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.12, 0.12, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.9, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.19, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.16, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "SPARSECUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.1, 0.1, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCK.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.8, 1.3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.185, 0.0385, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.8, 1, 1, 1, 0, 12, "FALSE", "TRUE", "FALSE", 0.16, 0.095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.8, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.395, 0.0875, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.4, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.355, 0.011, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.5, 2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.395, 0.075, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 0.8, 1.2, 1, 1, 0, 3, "FALSE", "TRUE", "FALSE", 0.355, 0.009, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLSHARP02.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 85, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.2, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.2, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.545, 0.0205, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.495, 0.01, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 100, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.39, 0.0325, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEBOULDER.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 35, 0.3, 0.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.4, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 25, 0.8, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.28, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 120, 250, 0.8, 1.6, 1, 1, 0.1, 10, "FALSE", "TRUE", "FALSE", 0.5, 0.03, 0.03, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 100, 230, 1.1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 2, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 10, 40, 0.3, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 40, 0.2, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.005, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 45, 0.4, 0.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.034, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 50, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.07, 0.07, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 30, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 25, 50, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 30, 50, 0.5, 0.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.54, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 20, 0.5, 0.7, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.07, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCKPOOL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 15, 1, 1.3, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.32, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 30, 0.6, 0.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.22, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 240, 1.3, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 25, 0.6, 1.4, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.26, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 15, 45, 0.6, 1, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.4, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 20, 55, 0.4, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.62, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 120, 280, 0.5, 1.6, 1, 1, 0.1, 10, "FALSE", "TRUE", "FALSE", 0.3, 0.2, 0.2, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCKPOOL.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 30, 1.1, 1.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.295, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMROCK.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.8, 1.4, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.275, 0.0065, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 155, 280, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.475, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.8, 1.3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.185, 0.0385, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 55, 0.8, 1, 1, 1, 0, 12, "FALSE", "TRUE", "FALSE", 0.16, 0.095, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.8, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.395, 0.0875, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 145, 280, 1, 1.4, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.355, 0.011, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.5, 2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.395, 0.075, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 0.8, 1.2, 1, 1, 0, 3, "FALSE", "TRUE", "FALSE", 0.355, 0.009, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEBOULDER.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 45, 0.3, 0.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.305, 0.003, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEROCKFORMATION.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 50, 1, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 50, 0.4, 1.15, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.38, 0.005, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLSHARP02.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 85, 0.4, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 75, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.023, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 65, 0.2, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 75, 0.2, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.545, 0.0205, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 70, 1.2, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.315, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 85, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.495, 0.01, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 70, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.175, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 100, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.39, 0.0325, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 60, 0.3, 0.55, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.0525, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN", "CAVEGRASSCLUMP", -1, 128, 0, 60, 0.3, 0.55, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.34, 0.045, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 145, 280, 1.76, 2.3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.14, 0.0005, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN", "CAVEROCKCLUMP", -1, 128, 0, 75, 0.6, 1.6, 1, 1, 0, 15, "FALSE", "TRUE", "FALSE", 0.26, 0.0005, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.018, 0.018, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.2, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.5, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.15, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 8, 12, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.0015, 0.0001, 0.0001), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 14, 17, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.0015, 0.0001, 0.0001), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3.4, 4, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.002, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.52, 0.058, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.505, 0.019, 0.0001, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.5, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.001, 0.001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.004, 0.001, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.8, 0.9, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.3, 0.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.03, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.8, 0.8, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.8, 2.5, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.13, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 2.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.11, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.99, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.65, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.7, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0045, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.0055, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.78, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.03, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.7, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.12, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.175, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.13, 0.13, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.27, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0105, 0.0105, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.03, 0.08, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.6, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.012, 0, 0), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0035, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.4, 2.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.006, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.02, 0.02, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.002, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.6, 0.001, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.2, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.06, 0.04, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.5, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.15, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.03, 0.03, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 22, 26, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.006, 0.008, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 15, 17, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.006, 0.008, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.4, 2.8, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.21, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.44, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.43, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 2.2, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.265, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 40, 0.8, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 1.3, 1.8, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.2, 0.0045, 0.0045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.2, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.19, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.19, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.2, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.18, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.062, 0.062, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.004, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1, 1.5, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.09, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.054, 0.054, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.1, 1.5, 1, 1, 0.5, 5, "FALSE", "TRUE", "FALSE", 0.5, 0.018, 0.018, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.7, 2.3, 1, 1, 0, 5, "FALSE", "TRUE", "FALSE", 0.15, 0.11, 0.11, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.1, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.425, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.1, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 40, 0.8, 1.15, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 1.3, 1.4, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.2, 0.0045, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.06, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.045, 0.045, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.13, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.3, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.14, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.06, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.004, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.4, 1.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.1, 1.5, 1, 1, 0.5, 5, "FALSE", "TRUE", "FALSE", 0.4, 0.012, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.13, 0.019, 0.019, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.18, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.4, 2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 0.6, 1, 1, 1, 0.5, 6, "TRUE", "TRUE", "FALSE", 0.14, 0.0045, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1.2, 1, 1, 0.2, 10, "TRUE", "TRUE", "FALSE", 0.14, 0.015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 0.9, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "TRUE", 0.325, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.3, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "TRUE", 0.11, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.8, 1, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.45, 0.5, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSBILLBOARD.SCENE.MBIN", "GRASS", -1, 128, 0, 75, 0.7, 0.9, 1, 1, 0.5, 0, "FALSE", "TRUE", "FALSE", 1, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/CROSSGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0, 0, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.182, 0.008, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 38, 1, 1.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.016, 0.016, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 39, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.004, 0.004, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 39, 1.2, 1.6, 1, 1, 0.5, 5, "FALSE", "TRUE", "FALSE", 0.45, 0.018, 0.018, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.19, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 55, 1.8, 3.2, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.023, 0.023, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, "FALSE", "TRUE", "FALSE", 0.1, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.21, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.8, 1.7, 1, 1, 0.3, 5, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.9, 1.5, 1, 1, 0.2, 0, "FALSE", "TRUE", "FALSE", 0.18, 0.038, 0.038, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 45, 0.7, 1.4, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.07, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.02, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.8, 1.3, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.11, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.4, 2.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.42, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMX", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.06, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.09, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.06, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.21, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 6, 8.5, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 6, 8.5, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.009, 0.012, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.19, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.18, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, "FALSE", "TRUE", "FALSE", 0.1, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.7, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.9, 1.5, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.038, 0.038, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.7, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.215, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 2.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.42, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.55, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.06, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.04, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.3, 0.3, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.06, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.0005, 0.0005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.6, 2.6, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 2.4, 3, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.09, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.2, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.3, 1, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 150, 1, 1.5, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.105, 0.0018, 0.0018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.007, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.09, 0.07, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1.3, 2.1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.06, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.3, 1.6, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.06, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.14, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 1.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.8, 1.3, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.11, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.13, 0.013, 0.013, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.003, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.2, 0.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.022, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.06, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.8, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.22, 0.34, 0.34, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.09, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.25, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.6, 1.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.6, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.175, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.12, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.002, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.2, 0.5, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.4, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.18, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.2, 0, "FALSE", "TRUE", "TRUE", 0.19, 0.18, 0.18, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.18, 0.18, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1.5, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.075, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.6, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.075, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.08, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.17, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.35, 0.35, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.014, 0.014, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 7, 14, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.16, 0.02175, 0.029, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGGSINGLE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 7, 14, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.16, 0.02175, 0.029, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, "FALSE", "TRUE", "FALSE", 0.2, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.5, 2, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.22, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.16, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.05, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.3, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.13, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.8, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.22, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1.7, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.15, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.1, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.22, 0.7, 0.7, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 185, 0.8, 1.3, 1, 1, 0.3, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.21, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.78, 0.78, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.21, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.125, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.215, 0.2159, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.5, 2.3, 1, 1, 0, 6, "TRUE", "TRUE", "FALSE", 0.08, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.13, 0.003, 0.003, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.08, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.2, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.6, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.8, 2.4, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 1.7, 2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.014, 0.014, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1.2, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.05, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.017, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.0235, 0.0035, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.4, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 185, 0.8, 1.3, 1, 1, 0.3, 0, "FALSE", "TRUE", "TRUE", 0.17, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.033, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.6, 0.6, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 1, 1.4, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.03, 0.03, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.8, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.4, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.4, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.215, 0.2159, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.12, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.18, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.175, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, "TRUE", "TRUE", "FALSE", 0.115, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.4, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.03, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.4, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.006, 0.006, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.23, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.25, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 1, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.04, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.9, 1, 1, 1, 0, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 2), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0.0075, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0.0055, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1.1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.5, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.07, 0.3, 0.3, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.01, 0.01, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.27, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.005, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.08, 0.08, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG_COPY.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 4, 6, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.185, 0.0375, 0.05, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL_BIG_COPY.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 6, 10.01, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.185, 0.0375, 0.05, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.23, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.4, 1.43, 1, 1, 0.1, 4, "FALSE", "TRUE", "FALSE", 0.185, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 3, 4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.21, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.1, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.6, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.17, 0.028, 0.028, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.6, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.21, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.21, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1, 2.6, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.08, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.2, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.19, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.05, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.2, 0.5, 1, 1, 0.1, 0, "TRUE", "TRUE", "FALSE", 0.1, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.13, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.017, 0.017, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.27, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.05, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.3, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.4, 1, 1, 0.1, 8, "FALSE", "TRUE", "FALSE", 0.09, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.19, 0.16, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.022, 0.022, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.6, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.14, 0.12, 0.12, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.75, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.185, 0.125, 0.125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.16, 0.16, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.7, 1.4, 1, 1, 0.3, 5, "FALSE", "TRUE", "FALSE", 0.13, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2.4, 3.4, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.14, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.1, 0.016, 0.016, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.1, 1, 1, 0, 6, "FALSE", "TRUE", "FALSE", 0.11, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.6, 2.3, 1, 1, 0.3, 5, "TRUE", "TRUE", "FALSE", 0.11, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.7, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.11, 0.025, 0.025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1.2, 1.8, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.14, 0.035, 0.035, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 1.2, 3.2, 1, 1, 0.3, 0, "FALSE", "TRUE", "FALSE", 0.04, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1.2, 1.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.1, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.05, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.7, 1, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.15, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 1.9, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.16, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0335, 0.0335, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.8, 1.4, 1, 1, 0.1, 8, "TRUE", "TRUE", "FALSE", 0.09, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.8, 1.4, 1, 1, 0.1, 10, "TRUE", "TRUE", "FALSE", 0.125, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.3, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.14, 0.034, 0.034, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1.6, 1, 1, 0.05, 0, "FALSE", "TRUE", "TRUE", 0.16, 0.5, 0.5, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.3, 1.2, 1, 1, 0, 8, "FALSE", "TRUE", "TRUE", 0.14, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.1, 0.08, 0.08, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.19, 0.78, 0.78, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.3, 0.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.75, 0.026, 0.026, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.185, 0.125, 0.125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.11, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 1, 1.2, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.1, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 50, 1, 1.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.12, 0.4, 0.4, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0.002, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.12, 0.029, 0.029, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 3.5, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.195, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, "FALSE", "TRUE", "FALSE", 0.165, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 65, 0.8, 1.4, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.24, 0.015, 0.015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 40, 0.5, 0.8, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.14, 0.0065, 0.0065, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.2, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.12, 0.0125, 0.0125, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 1.2, 1, 1, 0, 8, "TRUE", "TRUE", "FALSE", 0.12, 0.009, 0.009, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "TRUE", "TRUE", "TRUE", 0.07, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, "TRUE", "TRUE", "FALSE", 0.09, 0.007, 0.007, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1, 1.8, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.24, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.6, 1, 1, 0.2, 0, "TRUE", "TRUE", "FALSE", 0.16, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.6, 1, 1, 0.3, 0, "TRUE", "TRUE", "FALSE", 0.2, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.5, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.3, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.008, 0.008, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.14, 0.14, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 15, 0.9, 1, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.18, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -1, 128, 0, 15, 0.5, 0.7, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.12, 0.0075, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 0.1, 0.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.03, 0.03, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.5, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.2, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.22, 0.0005, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.7, 0.9, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.24, 0.0055, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.15, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.4, 0.8, 1, 1, 0, 8, "FALSE", "TRUE", "FALSE", 0.15, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.2, 0.15, 0.15, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.15, 0.1, 0.1, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 2.5, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.16, 0.16, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddGrassProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.4, 0.6, 1, 1, 0.1, 0, "FALSE", "TRUE", "TRUE", 0.08, 0.2, 0.2, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.65, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.6, 0.8, 1, 1, 0.1, 0, "FALSE", "TRUE", "FALSE", 0.085, 0.0005, 0.03, 2), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.32, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 35, 0.8, 1.85, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 1, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 0.9, 2.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 45, 0.55, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 55, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.002, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -35, 0, 55, 0.6, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3825, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 55, 0.5, 1.15, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "ROCKCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.365, 0.18, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "GRASSCLUMP", -1, 10, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.575, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, -5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.475, 0.045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -128, -5, 0, 30, 0.3, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.345, 0.011, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0012, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FOREST", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.29, 0.0045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2675, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "ROCKCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0018, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.525, 0.0024, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 20, 0.8, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.003, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "GRASSCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.86, 0.035, 0, 3), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERMID.MBIN"}, },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "FLORACLUMP", -128, -12, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 45, 0.8, 1.85, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 45, 1, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "FLORACLUMP", -128, -10, 0, 45, 0.2, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -15, 0, 40, 1, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.0055, 0.0055, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -128, -15, 0, 40, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.005, 0.005, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 40, 0.6, 2, 1, 1, 0, 1, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "FLORACLUMP", -128, -10, 0, 40, 0.5, 1.35, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0025, 0.0025, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 180, 1, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.001, 0.001, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 40, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.05, 0.05, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -20, 0, 180, 0.8, 1.7, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 180, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.04, 0.04, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 180, 1, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.09, 0.09, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 180, 1, 1.3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 60, 0.2, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 60, 1.2, 2.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.01, 0.01, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -3, 0, 180, 1, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.0145, 0.0145, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 70, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 90, 1, 1.5, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0015, 0.0015, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "BLANKETCLUMP", -128, -12, 0, 60, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.26, 0.018, 0.018, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "FLORACLUMP", -128, -12, 0, 80, 0.5, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.24, 0.024, 0.024, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "FLORACLUMP", -128, -15, 0, 20, 1.5, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.28, 0.012, 0.012, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -128, -0.5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.575, 0.02, 0.02, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "BLANKETCLUMP", -128, -0.5, 0, 50, 0.6, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.45, 0.065, 0.065, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -128, -0.5, 0, 40, 0.3, 1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.345, 0.021, 0.021, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "FLORACLUMP", -128, -1.4, 0, 50, 0.3, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.0185, 0.0185, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "BLANKETCLUMP", -128, -1.5, 0, 180, 0.4, 0.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.35, 0.07, 0.07, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "FLORACLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3, 0.06, 0.06, 1), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "BLANKETCLUMP", -3, -0.1, 0, 40, 0.3, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2, 0.041, 0.041, 1), },
					}, },

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERMID.MBIN", },
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["REPLACE_TYPE"] = "ADDAFTERSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 0.9, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.32, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPROP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 35, 0.8, 1.85, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.001, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 55, 0.6, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.002, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGELUMP.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 45, 1, 1.4, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESWIRLPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 45, 0.9, 2.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "GRASSCLUMP", -128, -5, 0, 45, 0.55, 1.95, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "ROCKCLUMP", -128, -12, 0, 55, 1, 1.6, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.002, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -35, 0, 55, 0.6, 2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.3825, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGEPLATFORMROCK.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 55, 0.5, 1.15, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.375, 0.0025, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "ROCKCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.365, 0.18, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "GRASSCLUMP", -1, 10, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.575, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FOREST", -1, -5, 0, 50, 0.9, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.475, 0.045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN", "FOREST", -128, -5, 0, 30, 0.3, 0.45, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.345, 0.011, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/SEAURCHIN.SCENE.MBIN", "GRASSCLUMP", -128, -3, 0, 60, 0.3, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0035, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.275, 0.0012, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMLUMPS.SCENE.MBIN", "FOREST", -128, -5, 0, 60, 0.7, 1.1, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.01, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMSEAPLANT.SCENE.MBIN", "ROCKCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.29, 0.0045, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUIMGLOWPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.2675, 0.0015, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "GRASSCLUMP", -128, -4, 0, 180, 1.2, 1.9, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.325, 0.0015, 0, 0), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "ROCKCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.425, 0.0018, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTRANDS.SCENE.MBIN", "GRASSCLUMP", -128, -10, 0, 70, 0.5, 1.2, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.525, 0.0024, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/UNDERWATERTREE.SCENE.MBIN", "GRASSCLUMP", -128, -15, 0, 20, 0.8, 3, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.25, 0.003, 0, 3), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/SMALLPLANTS/SEABUSH.SCENE.MBIN", "GRASSCLUMP", -128, -1.5, 0, 180, 0.5, 0.8, 1, 1, 0, 0, "FALSE", "TRUE", "FALSE", 0.86, 0.035, 0, 3), },
					}, },

				--Replace 2 hazard plants with tentacle plants
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TENTACLEPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FLYTRAPPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SPOREVENTPLANT.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	=
					{

						{
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TENTACLEPLANT.SCENE.MBIN" },
							}
						},	

					},
				},
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULLSAFE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{

						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TENTACLEPLANT.SCENE.MBIN" },
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/VENUSFLYTRAP.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TENTACLEPLANT.SCENE.MBIN" },
							}
						},	

					},
				},
				
				--change original dandelion grass material flags (= multishade & white dandelion)
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS\LUSHGRASS1MAT1.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--Replace material flags:
						{
							["PRECEDING_KEY_WORDS"] = {"Flags",},
							["ADD"] = replaceGrassMatFlags,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Flags",},
							["REMOVE"] = "SECTION"
						},
					},
				},

			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE