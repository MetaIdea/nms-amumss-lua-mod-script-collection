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


function AddDistantPropFloat(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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


function AddRockProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

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
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="30" />
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
            <Property name="MaxImposterRadius" value="30" />
            <Property name="FadeOutStartDistance" value="110" />
            <Property name="FadeOutEndDistance" value="120" />
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
            <Property name="MaxImposterRadius" value="30" />
            <Property name="FadeOutStartDistance" value="140" />
            <Property name="FadeOutEndDistance" value="150" />
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


NMS_MOD_DEFINITION_CONTAINER = --## 2_body
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "___Las_Underwater_v1.41.pak",
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
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENCORALOBJECTS.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENCORALOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENHIVESOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 0.9, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.8, 0.05625, 0.1, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/MEDIUMCORALSAND.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.4, 0.8, 1.2, 0.8, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.005625, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/MEDIUMCORALSAND.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.4, 0.8, 1.2, 0.8, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.005625, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0225, 0.02, 0.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0140625, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0416, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.8, 4.8, 0.9, 1.1, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0032, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 3.2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0032, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.8, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0032, 0.003, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENHIVESOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENINFESTEDOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSMED.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0028125, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.016875, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0064, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0192, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.76, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVESINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.24, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.00128, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.016, 0.025, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENINFESTEDOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/CURLYTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.08, 0.144, 1, 1, 0, 360, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.002625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0028125, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.016875, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.002625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0024, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0102, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SUMMERSPIKE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.76, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0024, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0024, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.24, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.00092, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYSHELLSAND.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.6, 1, 1, 0.3, 360, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.007, 0.025, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.001125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.001125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.72, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.0448, 0.07, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSLOW.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.0010125, 0.0001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.12, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.0045, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 1.04, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0045, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 1.04, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.003375, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 1.44, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.016875, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.92, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0010125, 0.0001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 1.12, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01575, 0.028, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.08, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.00768, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.72, 1.12, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.01216, 0.019, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.32, 1.12, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.02204, 0.086, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.035, 0.0050625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 1.04, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.05625, 0.1, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.04, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00096, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.68, 2.4, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0128, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.44, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0384, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 1.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00096, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.28, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.035, 0.0128, 0.02, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENROCKYOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0028125, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0140625, 0.025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.01096875, 0.019, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.12, 1.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 1.92, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.185, 0.0128, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 1.6, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.36, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.00448, 0.007, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BARRENROCKYOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BEAMSOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 0.9, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.8, 0.05625, 0.1, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0365625, 0.045, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0225, 0.02, 0.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0140625, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 0.8, 1.2, 0, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0416, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.2, 0.8, 1.2, 0, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.048, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 3.2, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0032, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BEAMSOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BONESPIREOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.07, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.07, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.07, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.005, 0.01, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_BONESPIREOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_CONTOUROBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEBLOBS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.05625, 0.1, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONESPINE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2.4, 1, 1, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEFIN.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.04, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0084375, 0.015, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/BONECOLLECT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONEFRUIT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.28, 1.92, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONESPORE2.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2.8, 1, 1, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0084375, 0.015, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.6, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0192, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0192, 0.03, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_CONTOUROBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_DEADBIGPROPSOBJECTSVAR3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.01125, 0.02, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.00675, 0.012, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOUROBJECT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.00675, 0.012, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.84, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00140625, 0.0025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 16, 24, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0128, 0.02, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 20, 24, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.17, 0.0032, 0.005, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 20, 24, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.17, 0.0032, 0.005, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 20, 24, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.17, 0.0032, 0.005, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_DEADBIGPROPSOBJECTSVAR3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_ELBUBBLEOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 5, 15, 1, 1, 0, 3, 180, 0, -2, "FALSE", "TRUE", "FALSE", "FALSE", 0.15, 0.005, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "SPARSECLUMP", -128, -25, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN", "SPARSECLUMP", -128, -25, 0, 60, 0.5, 1.4, 1, 1, 0, 40, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.5, 0, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_ELBUBBLEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FRACTCUBEOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DETAILBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.005625, 0.01, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/EFFECTS/HEAVYAIR/BUBBLES/BUBBLES.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0028125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/BUBBLECOLLECT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.68, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 7.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.00512, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 3.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.065, 0.0416, 0.065, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FRACTCUBEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENDEADOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/GEOMETRIC.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0028125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/ENGINEORB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00028125, 0.0005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0064, 0.01, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.07, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.07, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.07, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.03, 0.04, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENDEADOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENHQOBJECTSMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.2, 0.9, 1.2, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0365625, 0.045, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0225, 0.02, 0.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0140625, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 0.8, 1.2, 0, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0416, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.2, 0.8, 1.2, 0, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.048, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 3.2, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0032, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 0.8, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0016, 0.001, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENHQOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQFROZEN/MEDIUMPROPS/MEDIUMROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 1.12, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.010125, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 2.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00024, 0, 0), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00656, 0.029, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.96, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0128, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/TREES/SKINNYPINE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.175, 0.0384, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.0832, 0.13, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.12, 1, 1, 0.3, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00512, 0.003, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSFULL3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.12, 1.76, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.003375, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00196875, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003375, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.8, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.00096, 0.0015, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSFULL3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSLOW.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.00084375, 0.001, 0.001), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.12, 1.76, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.003375, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003375, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00225, 0.001, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00196875, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.72, 3.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.00128, 0.0001, 0.0001), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.01912, 0.0001, 0.0001), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.96, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.505, 0.01216, 0.0001, 0.0001), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSMID3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.12, 1.76, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.003375, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003375, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.44, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.1024, 0.16, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.8, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.00096, 0.0015, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENOBJECTSMID3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENPILLAROBJECTS3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.8, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 2.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00064, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01856, 0.029, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.96, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0128, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.175, 0.0384, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.0832, 0.13, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 0.8, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00512, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.00448, 0.007, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENPILLAROBJECTS3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENROCKYOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/SMALLPILLARSTUMP.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 1.28, 1, 1.4, 0.2, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0084375, 0.015, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/MEDIUMPILLAR.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.08, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.56, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0096, 0.015, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_FROZENROCKYOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_HUGESCORCHOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.2, 0.9, 1.2, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0365625, 0.045, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0225, 0.02, 0.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0140625, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0416, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.048, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 3.2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0032, 0.002, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_HUGESCORCHOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_HYDROGARDENOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 8, 16, 1, 1, 0, 10, 180, 0, -2, "FALSE", "TRUE", "FALSE", "FALSE", 0.13, 0.01, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 8, 14.4, 1, 1, 0, 10, 180, 0, -2, "FALSE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.12, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00253125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.96, 1, 1, 0.2, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0084375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.325, 0.0028125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0140625, 0.025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.11, 0.0005625, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.0448, 0.07, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_HYDROGARDENOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_IRRISHELLSOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/WEIRDMEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.01125, 0.02, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/SWATERFALLSPIKEY.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 40, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.03, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.04, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.06, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.01, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/HYDROPOD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.84, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0005625, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 4, 6.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00192, 0.003, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOMDEAD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 4, 6.4, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00256, 0.004, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_IRRISHELLSOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LAVAOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLHUSK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 60, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.05625, 0.1, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLWHITE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2, 1, 1, 0.6, 30, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.05625, 0.1, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHELF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0675, 0.12, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/SHELLWHITE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00196875, 0.0035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 0.96, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.0256, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.0512, 0.08, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LAVAOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHBIGPROPSOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGESHARDINACTIVE02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.4, 1, 1, 0, 6, 180, 0, -2, "FALSE", "FALSE", "FALSE", "FALSE", 0.25, 0.001, 0.001, 0), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.04, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.0084375, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.04, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.44, 1.92, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.36, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.007875, 0.014, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.04, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.6, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/SMALLCOMET01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.24, 0.56, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/COMET01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.6, 1.2, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.000512, 0.0008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMVOLCANICROCKS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.6, 1.2, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.000128, 0.0002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.52, 1.84, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02176, 0.034, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.6, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0224, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGESHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.05, 0.01088, 0.017, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGESHARDINACTIVE01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.05, 0.01088, 0.017, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.01856, 0.029, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREEFLAMING.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 3.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.00064, 0.001, 0), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHBIGPROPSOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHBUBBLEOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE63.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 4, 1, 1, 0, 10, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.4, 1, 1, 0, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE10.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.9, 1.1, 1, 1, 0, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.012, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE17.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.72, 3.4, 1, 1, 0, 5, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.425, 0.001125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.425, 0.0039375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.96, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00253125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.12, 1, 1, 0.2, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0084375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0005625, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.0196875, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.001125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/PARTS/HQTREE21.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0128, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHBUBBLEOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHHQTENTACLEOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00225, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/DETAILBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00421875, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.003375, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 1, 1, 0, 40, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05625, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.016875, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 5.2, 5.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.00256, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0128, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.016, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.17, 0.0096, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHHQTENTACLEOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHINFESTEDOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.425, 0.001125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.425, 0.0039375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00225, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.44, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00253125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.0073125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.001125, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.003375, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 1, 1, 0, 40, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05625, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.028125, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.72, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.00192, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.12, 1.44, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.00192, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0068, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.008, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.72, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.00384, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHINFESTEDOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLESUMMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 0.85, 1.15, 0.5, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.3, 0.0009125, 0.007, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.8, 0.85, 1.15, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.002625, 0.02, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00225, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.52, 1.12, 1, 1, 0.5, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.013375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.001125, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.003375, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 0.8, 1.2, 0, 40, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05625, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 0.8, 1.2, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.016875, 0.03, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SPINDLESUMMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.4, 1, 1, 0.5, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.12, 0.9, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.00168, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGESUMMEREGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.6, 0.9, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0014, 0.01, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSFULL3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00196875, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.12, 1.76, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.003375, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003375, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.8, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.96, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.00096, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSFULL3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSLOW.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.425, 0.001125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.425, 0.0039375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.96, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00253125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.12, 1, 1, 0.2, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0084375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0005625, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.0196875, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.18, 0.001125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.92, 3.04, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.00156, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.72, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0068, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.56, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.008, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.00102, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSMID3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.425, 0.001125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.0095625, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.12, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00253125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.2, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.028125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0253125, 0.045, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0005625, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.05625, 0.1, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.005625, 0, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.84, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0704, 0.11, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHOBJECTSMID3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROCKYOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.12, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00253125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.96, 1, 1, 0.2, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0084375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.325, 0.0028125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0140625, 0.025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.11, 0.0005625, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.01216, 0.019, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROCKYOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROCKYWEIRDOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1.3, 0.95, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0675, 0.12, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2.4, 0.9, 1.2, 0.8, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.045, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.4, 1, 1.4, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.01125, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.4, 1, 1.4, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1.2, 0.8, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.0675, 0.12, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 4, 0.9, 1.1, 0.9, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.03375, 0.04, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 3.2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01125, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01125, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.92, 2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00128, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 2.4, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0384, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 3.2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0032, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROCKYWEIRDOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROOMAOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1.3, 0.95, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0675, 0.12, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2.4, 0.9, 1.2, 0.8, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.045, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.4, 1, 1.4, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.01125, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.4, 1, 1.4, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1.2, 0.8, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.0675, 0.12, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 4, 0.9, 1.1, 0.9, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.03375, 0.04, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 3.2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01125, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2, 0.8, 1.2, 0.9, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01125, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOSSCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.92, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00128, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 2.4, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0384, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGEMOSSBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 3.2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0032, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROOMAOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROOMBOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.85, 1.15, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.3, 0.005625, 0.007, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.85, 1.15, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.005625, 0.02, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00225, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.0073125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.001125, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.003375, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 0.8, 1.2, 0, 40, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05625, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 0.8, 1.2, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.016875, 0.03, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.6, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.72, 2.4, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.275, 0.00768, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 4, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0064, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHROOMBOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHULTRAOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.9, 1.1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.1, 0.0039375, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.9, 1.1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.25, 0.003375, 0.005, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.9, 1.1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.003375, 0.004, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00225, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.0073125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 0.8, 1.2, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.001125, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.003375, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 0.8, 1.2, 0, 40, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05625, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 0.8, 1.2, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.005, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0128, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0128, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.44, 3.2, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0256, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.8, 3.6, 0.9, 1.1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0064, 0, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.6, 4.8, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0064, 0.01, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_LUSHULTRAOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_MSTRUCTOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.44, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 1, 1, 0, 40, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.28125, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 5.2, 5.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.16, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.16, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.16, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.72, 2.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.16, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_MSTRUCTOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEALIENOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.08, 0.32, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.08, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/FLOATJOINT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.24, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0028125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/STARJOINT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.84, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.075, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.075, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantPropFloat("MODELS/PLANETS/BIOMES/ROCKY/ISLANDSPIKEHUGE.SCENE.MBIN", "BLANKETCLUMP", -128, -25, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEALIENOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEGLOWOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.004, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.215, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0016875, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 1, 0.0019375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.0028125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.0018125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00072, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.8, 3.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00128, 0.002, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTEMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.004, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/LARGEEGGHOLDER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0012, 0.005, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEGLOWOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.215, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.4, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0016875, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/MEDIUMGROWTHS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.28, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.005, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.0028125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 3.2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0032, 0.002, 1.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00192, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 3.2, 1, 1, 0.1, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0032, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.8, 3.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00128, 0.002, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTEMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.002, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 3.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0032, 0.005, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 1.68, 1, 1, 0.3, 2, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.001125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.36, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003375, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.021375, 0.038, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.002, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.07, 0.0005625, 0.001, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.68, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.16, 0.64, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.02, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00384, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.24, 1.2, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.0384, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.16, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0192, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.68, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00768, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTEMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.003, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.44, 2.56, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01472, 0.023, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSLOW.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 1.68, 1, 1, 0.3, 2, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.001125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.36, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.2, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011375, 0.038, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.215, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.018125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.68, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.018125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.018125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00384, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.24, 1.2, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.0184, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.16, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0192, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTEMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.001, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.68, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00768, 0.012, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.007, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.105, 0.0010125, 0.0018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00703125, 0.0125, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGESPIKEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.68, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.24, 1.28, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.012375, 0.022, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.68, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.003375, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.0032, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.00032, 0.0005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.28, 2.08, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.032, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTEMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.001, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.92, 2.4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.0192, 0.03, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOACTIVEOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOSPIKECRYSTALSOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.001125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.001, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANTS/MEDIUMJELLYPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/CURVEDMEDIUM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.64, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00365625, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 2.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 0.96, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.28, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.175, 0.00768, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.0256, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPLANTS/LARGESTEMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.006, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0032, 0.005, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOSPIKECRYSTALSOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOSPIKEPOTATOOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 0.8, 1.2, 0.2, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005625, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 2, 0.8, 1.2, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00675, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01125, 0.01, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_RADIOSPIKEPOTATOOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHBIGPROPSOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 0.8, 1.2, 0.2, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005625, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 2, 0.8, 1.2, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00675, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01125, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 0.9, 1.1, 0.5, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 1, 1, 0.5, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00384, 0.006, 1.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.00448, 0.007, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 3.6, 1, 1, 0.5, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0192, 0.03, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 4, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00512, 0.008, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHBIGPROPSOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDALIENOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 8, 16, 1, 1, 0, 10, 180, 0, -2, "FALSE", "TRUE", "FALSE", "FALSE", 0.13, 0.01, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 8, 14.4, 1, 1, 0, 10, 180, 0, -2, "FALSE", "TRUE", "FALSE", "FALSE", 0.2, 0.015, 0.02, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.12, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00253125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.96, 1, 1, 0.2, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0084375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.325, 0.0028125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0140625, 0.025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.36, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.11, 0.0005625, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.0448, 0.07, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDALIENOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/LARGEPROP/LARGETUBEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/UNDERWATER/MEDIUMPROP/HAIRYGLOWTENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.008, 0.005, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMSTEAMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.215, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/ARRAYSHELL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.000125, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/CURLYTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.64, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0013125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 1, 0.0013375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTROCKLIFTED.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.0013375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.0013125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/FLAMESPLINTER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0024, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/MEDIUM/MEDIUMGLOWROCKSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.8, 3.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00128, 0.002, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0012, 0.005, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.03375, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.064, 0.1, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSLOW.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.04, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.44, 1.92, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.36, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.007875, 0.014, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.03375, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.52, 1.84, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01176, 0.034, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.6, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0224, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.01056, 0.029, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.00588, 0.017, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.8, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.44, 1.92, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.00084375, 0.0015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.36, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.007875, 0.014, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.016875, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.52, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0095625, 0, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01321875, 0.0035, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.84, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.096, 0.15, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 3.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.00192, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.032, 0.05, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDSHIELDTREEOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.8, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.64, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.03, 0.050625, 0.09, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0050625, 0.009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 1.12, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0050625, 0.009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.64, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003375, 0.006, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.96, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.175, 0.0192, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.0448, 0.07, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SCORCHEDSHIELDTREEOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SHARDSOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/SCORCHSEED.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 1.2, 1, 1, 0.5, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0028125, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.04, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.44, 1.92, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.0016875, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.36, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.007875, 0.014, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.00675, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.03375, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/SCORCHSEED.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 1.04, 1, 1, 0.5, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREESINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 4, 0.9, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00064, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 1.6, 0.9, 1.1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0032, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 0.8, 0.9, 1.1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 1.6, 0.9, 1.1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 0.8, 0.9, 1.1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0128, 0.01, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SHARDSOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SWAMPOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/FLOORPIECES.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.3375, 0.6, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SINGLESHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 2.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.140625, 0.25, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/FLOORSHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.16875, 0.3, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/SHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.72, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0196875, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 0.64, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.1408, 0.22, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 0.72, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.1152, 0.18, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.08, 3.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.0064, 0.01, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_SWAMPOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICEGGSOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.24, 1, 1, 0.5, 5, 180, 0, -2, "FALSE", "FALSE", "FALSE", "FALSE", 0.31, 0.0025, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGEFULL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.56, 2.64, 1, 1, 0, 5, 180, 0, -2, "FALSE", "FALSE", "FALSE", "FALSE", 0.24, 0.001, 0, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.36, 2.4, 1, 1, 0.3, 6, 180, 0, -2, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.019, 0.029, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.39, 0.001125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.37, 0.0039375, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.92, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.042, 0.0225, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.043, 0.0073125, 0, 4), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.035, 0.01125, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/LARGEPROPS/MOUNTAINROCK_1.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.2, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.04, 0.003375, 0, 5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMSHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.6, 0.85, 1.15, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.12, 0.016875, 0.02, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/HUTS/MOSSHUT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.8, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.00128, 0, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0128, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2, 1, 1, 0.8, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.0256, 0, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.52, 2.4, 1, 1, 0.5, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0128, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLARGEALT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 4, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.44, 0.032, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 4.8, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.39, 0.032, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/SWAMP/MEDIUMPLANT/YUKKA.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 4.8, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.29, 0.032, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/GROUNDREVEALROCK01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.07, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPROP/LARGEMOSSROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.0034, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICEGGSOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICINFESTEDOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.016875, 0.05, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.6, 0.9, 1.2, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/TOXICEGGCLUSTER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.44, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMTOXICEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0045, 0.004, 0.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/TOXICEGGCLUSTER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.04, 1.44, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMTOXICEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 2, 0.8, 1.5, 1, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGGSINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 3.2, 4.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.00512, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGETOXICEGG.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0096, 0.015, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICINFESTEDOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICOBJECTSFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.4, 0.9, 1.1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 0.8, 1.2, 0.2, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0084375, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/SUMMERSPIKE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.6, 0.9, 1.1, 0.8, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.013125, 0.025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.4, 0.8, 1.2, 0.8, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 3.2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.016875, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.8, 0.9, 1.1, 0.8, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.013125, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.8, 0.9, 1.1, 1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.005625, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.6, 0.9, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0048, 0.01, 1.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.28, 0.9, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0048, 0.01, 1.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SUMMERUMBRELLA.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.24, 0.64, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.001, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/SINGLESUMMER.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 7, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 2, 0.0024, 0.004, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/ARRAYTWIST.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.64, 1.12, 1, 1, 0, 360, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.5, 0.00212, 0.004, 2), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICOBJECTSFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICOBJECTSLOW.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.88, 1.28, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.010125, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.010125, 0.034, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 2.08, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.16, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.0125, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.019375, 0.07, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01084375, 0.0335, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.0125, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.05, 0.016875, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.16, 0.4, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.018125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.68, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.010875, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.68, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.52, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0095625, 0.017, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.01375, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.4, 1.36, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.012, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.32, 1.144, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.185, 0.012, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 3.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.00768, 0.012, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 1.68, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0156, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 2.08, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.17, 0.01792, 0.028, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICOBJECTSLOW.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICOBJECTSMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.28, 1.84, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.52, 2.16, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.0140625, 0.025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0196875, 0.035, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 2.56, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.04, 0.039375, 0.07, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.68, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.68, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 0.8, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.15, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.52, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.32, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01884375, 0.0335, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.1, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.010125, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0.1, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.125, 0.010125, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 1.12, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.0512, 0.08, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.92, 2.72, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.48, 1.68, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01024, 0.016, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.68, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.01152, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICOBJECTSMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICSPORESOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.12, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0084375, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.64, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.00365625, 0.0065, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.00703125, 0.0125, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.0050625, 0.009, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.48, 0.64, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "TRUE", 0.07, 0.028125, 0.05, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPONGE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.12, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.0039375, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.8, 1.44, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.01125, 0.02, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 1.28, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.0225, 0.04, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/LARGEBLOB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 1.28, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.008, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2, 2.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00064, 0.002, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 1.76, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01856, 0.029, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.6, 2.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.195, 0.0192, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.165, 0.0448, 0.07, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICSPORESOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICTENTACLESOBJECTS.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.4, 0.9, 1.1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0039375, 0.003, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 0.8, 1.2, 0.2, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0084375, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETUBE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.6, 0.9, 1.1, 0.8, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.028125, 0.025, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.4, 0.8, 1.2, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.06, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER01.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 3.2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.016875, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETUBE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.6, 0.9, 1.1, 0.8, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.028125, 0.03, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/LUSHROOM/MEDIUMBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 2.8, 0.9, 1.1, 1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.005625, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 0.9, 1.1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0128, 0.01, 1.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/SPORETENDRIL.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 1.2, 2.4, 0.9, 1.1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0128, 0.01, 1.5), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREESINGLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 2.4, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.00448, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 2, 0.0064, 0.004, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/SPORETREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.44, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 2, 0.00512, 0.004, 2), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_TOXICTENTACLESOBJECTS.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_WIRECELLSOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.2, 1.6, 0.8, 1.2, 0.2, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005625, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/HQLUSH/MEDIUMPROPS/MEDIUMBOULDER02.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 2, 0.8, 1.2, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.00675, 0.007, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.56, 2, 0.8, 1.2, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01125, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/ANENOMESHAPE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 4, 6.4, 1, 1, 0.5, 30, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/MEDIUMTENTACLEBLOB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.64, 1, 1, 0.5, 30, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/MEDIUMTENTACLEBLOB.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.4, 0.96, 1, 1, 0.5, 30, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.00225, 0.004, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.24, 0.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.56, 0.96, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 2.4, 6.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0225, 0.04, 3), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 6.4, 9.6, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.064, 0.1, 3), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UW_WIRECELLSOBJECTSDEAD.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLSMALLBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2.4, 1, 1, 0, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.010125, 0.018, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLSMALLBUSH.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 1.6, 2.4, 1, 1, 0, 90, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLFLOATCUBE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.64, 0.96, 1, 1, 0, 25, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.045, 0.08, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLBLOCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.005, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLBLOCK.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 45, 0.96, 1.44, 1, 1, 0, 20, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005625, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0064, 0.01, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.0096, 0.015, 1), }, --## 3d_biome_obj
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "FLORACLUMP", -128, -25, 0, 30, 0.8, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.01024, 0.016, 1), }, --## 3d_biome_obj
					}, }, --## 3f_biome_end
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE