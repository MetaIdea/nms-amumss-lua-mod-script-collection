--[[

*Biomes A - can place Landmarks into DistantObjects (for increased lod/draw distance)
*Biomes B - can't (mostly misc. "objects" MBINs)

0. Global variables		  			 	  		- i.e. quick adjustments
1. Functions									- i.e. just for biomes 1 & 2
2. Large lush [changes]       -	(BIOMES 1)		- i.e. lush mid/full, for large scale forests
3A. Copy vanilla (unmodified) biome files		- i.e. to allow for vanilla biome MBIN spawns
3B. Huge & medium/low density  -	(BIOMES 2&3 A/B)- i.e. bigprop/hugeprops, most radio/scorched/toxic & misc. props/plants
4. Other huge		 	      -	(BIOMES 4 A/B)	- i.e. barren/toxic/weird biomes, for unique scaling
5. Other huge 2				  - (BIOMES 5 A/B)  - i.e. " ", lower coverage/density
6. Low HQ density 		      -	(BIOMES 6)  	- i.e. just lush hq, for optimized performance
7. Highest density 		      -	(BIOMES 7)  	- i.e. med/low/dead lush/frozen
8. Medium density 		      -	(BIOMES 8)  	- i.e. weird/exotic
9. Buggy biomes 		      -	(BIOMES 9)		- i.e. full toxic/radio (to fix crashes with multi-biome mod)
10. Low density lava/tentacle -	(BIOMES 10) 	- i.e. lava valcanoes (to fix valcanoes/tentacles everywhere)
11. Rare, underwater & misc biomes- (BIOMES 11)	- i.e. plants for cooking, new underwater biomes, vanilla+ biomes
12A. Caves biomes			  - (BIOMES 12)
12B. Dead					  - (BIOMES 13)
13. Patchscale/regionscale density 		  		- i.e. balance forests vs. empty areas
14. Fast start									- i.e. remove intro logo
15. Remove rocks/hazard plants				 	- i.e. remove small rocks & exploding plants

Biomes 1-3 subsections: (old method = giant biomes, less scale variation, longer time)
a. Scale changes
b. Coverage/Density changes
c. Destroyed by ship/Max angle/Etc
d. Region/Imposter/Fade out
e. Lod distances/Ultra invisible bug fix
f. Placement/Placement priority
g. [just "b" biomes] Change landmarks to DistantObjects

Biomes 4-11 subsections: (new method = generally smaller biomes, more scale variation, shorter time)
a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc
b. Coverage/Density/Etc
c. Lod distances/Ultra invisible bug fix
d. Placement/Placement priority
e. [just "b" biomes] Change landmarks to DistantObjects

Just Biomes 11 - Crystals: d. Change objects to landmarks

InsaneRuffles code = "----IR:"

]]
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 0. GLOBAL VARIABLES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

--local DestroyedByPlayerShip = "False"

--Only in biomes 1-3:
local ScaleHugeMultiplier = 5
local ScaleLargeMultiplier = 3 		--misc. outlier values
local ScaleMediumMultiplier = 2 	--grass, bushes, etc. (2.2 so tall grass doesn't hit eyes on uphill climb)
local ScaleSmallestMultiplier = 1.5

--Only in biomes 4-10:
local ScaleHuge = 42					--All scale replacement = balanced by patchedgescaling:
local ScaleExtraLarge = 23
local ScaleLarge = 11
local ScaleMedium = 8
local ScaleSmall = 6
local ScaleSmallest = 2

local PatchEdgeScalingLarge = 0.74	--Changing these will heavily impact flora/object sizes
local PatchEdgeScalingMedium = 0.73
local PatchEdgeScalingSmall = 0.69				

--Only in biomes 12 (custom vanilla biomes):
local ScaleHugeMultiplierBig = 7
local DensityMediumMultiplierBig = 0.62 --Caution: raising this over 1 will break some planets
local DensityLowMultiplierBig = 0.59

local ScaleHugeMultiplierSmall = 4
local DensityMediumMultiplierSmall = 0.62
local DensityLowestMultiplierSmall = 0.52
local DensityMedLowMultiplierSmall = 0.59

local DensityLowMultiplier = 0.59

local minHeightAboveWater = -1
local maxHeightAboveWater = 128

--In all:
local harvestPlantDistance = 60; --from 15

local DensityHighestMultiplier = 0.86
local DensityMedHighMultiplier = 0.69
local DensityMediumMultiplier = 0.66 --Caution: raising this over 1 will break some planets
local DensityMedLowMultiplier = 0.63
local DensityLowestMultiplier = 0.55

--local DensitySHADOWLowMultiplier = 0.95 --Caution: raising this will break some planets
local DensityDETAILLowestMultiplier = 0.85 --Caution: raising this will break some planets

local DensityPointSevenMultiplier = 0.7 --Caution: raising this will break some planets
local DensityPointEightMultiplier = 0.8 --Caution: raising this will break some planets

local MaxAngleLarge = 80 			--i.e. cactus, rocks
local MaxAngleSmall = 60 			--i.e. trees, largest objects

local PatchsizeRegionScaleMultiplier = 1 --unchanged
local PatchsizeRegionScaleMultiplierJustForest = 1.1

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section below, modified by Lasagna (--*** = lasagna comments)----------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

--METADATA\SIMULATION\SOLARSYSTEM\BIOMES\*
local RadiusMultiplier = 3			--objects draw distance multiplier (limited by engine's hard-limit)
local RadiusMultiplierLow = 2 					--***float = errors
local LodDistancesMultiplierFarGrass = 1.75 --GRASS draw distance multiplier
local LodDistanceMultiplierDistantObjects = 1.5 	--***i.e. big rings/huge objects
local LodDistanceMultiplierLandmarks = 1.5 			--***i.e. trees/biome plants (unchanged rn)
local LodDistanceMultiplierLow = 1.25 				--***i.e. high detailobjects biomes, like toxic
local LodDistanceMultiplierLowest = 1.1 			--***i.e. HQ biomes that already have high LODD
local LodDistanceMultiplierHQUltraForest = 0.1    --***just hq forest
local CoverageMultiplier = 1			--object placement coverage multiplier (object density) --***needed to work

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section above, modified by Lasagna -------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

replaceDO =
[[
    <Property name="DetailObjects">
    </Property>
]]

--This adds basic collisions to shield plant that replaces hazard plants:
AddShieldPlantCollisions =
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
        <Property name="ScaleX" value="0.24" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.24" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT\ENTITIES\SHIELDPLANT.ENTITY.MBIN" />
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

replaceGrassMatFlags =
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

replaceCGDesc =
[[
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_7" />
          <Property name="Name" value="_lushgrass_7" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_1" />
          <Property name="Name" value="_lushgrass_1" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_3" />
          <Property name="Name" value="_lushgrass_3" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_6" />
          <Property name="Name" value="_lushgrass_6" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_5" />
          <Property name="Name" value="_lushgrass_5" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_4" />
          <Property name="Name" value="_lushgrass_4" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_8" />
          <Property name="Name" value="_lushgrass_8" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_2" />
          <Property name="Name" value="_lushgrass_2" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
]]

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = 1. FUNCTIONS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


local function AddGroundDetail(addGr1, addType1)
	local biomeModifier =
	{
						{ --Remove all non-detailObject stuff
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["ADD"] = [[    <Property name="DistantObjects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["ADD"] = [[    <Property name="Landmarks" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["ADD"] = [[    <Property name="Objects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["REMOVE"] = "SECTION"
						},

						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE rare tall grass (i.e. rockylushbiome)
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						
						--ADD GRASS
								
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addGr1(addType1),
						},
	}
return biomeModifier
end

function AddTheGrass(grassName)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/]] .. grassName .. [[.SCENE.MBIN" />
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
        <Property name="Placement" value="GRASS" />
        <Property name="Seed" value="GcSeed.xml">
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
        <Property name="MaxAngle" value="75" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.0" />
        <Property name="MinScaleY" value="1.3" />
        <Property name="MaxScaleY" value="1.3" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.5" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0.5" />
          <Property name="SlopeMultiplier" value="2.5" />
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
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.5" />
            <Property name="SlopeDensity" value="0.5" />
            <Property name="SlopeMultiplier" value="3" />
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
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.5" />
            <Property name="SlopeDensity" value="0.5" />
            <Property name="SlopeMultiplier" value="3" />
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


function AddTheGrassVerySparse(grassName)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. grassName .. [[" />
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
        <Property name="Placement" value="GRASS" />
        <Property name="Seed" value="GcSeed.xml">
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
        <Property name="MaxAngle" value="75" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.9" />
        <Property name="MaxScale" value="1.1" />
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
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.05" />
          <Property name="SlopeDensity" value="0.05" />
          <Property name="SlopeMultiplier" value="2.5" />
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
            <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.05" />
          <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="3" />
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
            <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.05" />
          <Property name="SlopeDensity" value="0.05" />
            <Property name="SlopeMultiplier" value="3" />
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

function AddTheGrassSparse(grassName)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. grassName .. [[" />
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
        <Property name="Placement" value="GRASS" />
        <Property name="Seed" value="GcSeed.xml">
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
        <Property name="MaxAngle" value="75" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.9" />
        <Property name="MaxScale" value="1.1" />
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
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.1" />
          <Property name="SlopeDensity" value="0.1" />
          <Property name="SlopeMultiplier" value="2.5" />
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
            <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.1" />
          <Property name="SlopeDensity" value="0.1" />
            <Property name="SlopeMultiplier" value="3" />
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
            <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.1" />
          <Property name="SlopeDensity" value="0.1" />
            <Property name="SlopeMultiplier" value="3" />
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

local function BiomesNewVanilla(VanillaDensity1, VanillaDensity2)
	local biomeModifier =
	{
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						
						--Increase density & scale
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity", 			1.25},
								--{"MinScale",				1.25},
								--{"MaxScale",				1.25},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity", 			VanillaDensity1}, --Med = unchanged
								{"SlopeDensity",			VanillaDensity1},
								{"MinScale",				1.5},
								{"MaxScale",				1.5},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FlatDensity", 			VanillaDensity2}, --Med = medium
								{"SlopeDensity",			VanillaDensity2},
								{"MinScale",				1.5},
								{"MaxScale",				1.5},
							}	
						},

						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGEVOLCANO.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
	}
return biomeModifier
end




local function BiomesOneTwoThreeModifierUnderwaterCave(DensityCustom1, DensityCustom2, DensityCustom3, DensityCustom4)
	local biomeModifier =
	{
						{
							["MATH_OPERATION"] 		= "*", --8 = HQTREE17, --9 = HQTREE10 --10 = HQTREE63
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --8 = HUGEPLATFORMROCK-barren-, --20 = HUGESPIKEROCK,
							["VALUE_MATCH"] 		= "4.1", --5 = FERNLARGEALT-swamp-, HQTREEREF-swamp-
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] 	= --6 = --YUKKA-swamp-, FERNLIGHT-swamp-
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --CACTUSSML, SMALLSHROOMCLUSTER-swamp-, 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**GRAVELPATCHSNOWBLEND, GRAVELPATCHSANDBLEND
							["VALUE_MATCH"] 		= "4", --LARGESNOWBLENDROCK, LARGESANDBLENDROCK, MEDIUMBOULDER01-toxicinfested-
							["VALUE_CHANGE_TABLE"] 	=     --FUNGALTREE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.8",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.7",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.6",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMBLUESHROOM-toxicinfested-
							["VALUE_MATCH"] 		= "3.5", --GRAVELPATCHSNOWBLEND**
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.4",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.3", --MANGROVELARGEFULL
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	DensityCustom1 }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.2",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.1",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGEVOLCANO, LARGESHARDINACTIVE02-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --DEADTREE-swamp-, LARGEMOSSROCK-swamp-
							["VALUE_MATCH"] 		= "3", --3 = HEROPINE, LARGESNOWBLENDROCK, LARGESANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	=  --MEDIUMBOULDER02-toxicinfested-, SMALLTENDRIL-toxicinfested-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier } --v1.8: changed from small, caused giant rocks on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.8", --MANGROVELARGE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectsmid-
							["VALUE_MATCH"] 		= "2.7", --SKINNYPINE, RADIOACTIVETREE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.6", --FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FUNGALTREE
							["VALUE_MATCH"] 		= "2.5", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.4", --LARGEROCK-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectslow-
							["VALUE_MATCH"] 		= "2.3", --STARJOINT, MEDIUMDEADTREE01-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --SMALLJOINT
							["VALUE_MATCH"] 		= "2.2", --2.2 = TALLPINE, HQTREEREF-lushobjectsmed-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --TOXICGRASS-radioactive-
							["VALUE_MATCH"] 		= "2.1", --RADIOACTIVETREE, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	=      --MEDIUMROCK-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMSHROOM-swamp-, MEDIUMSPIRE-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, LARGEROCK, GROUNDREVEALROCK01
							["VALUE_MATCH"] 		= "2", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK, FROZENGRASSLARGE, BEAMSTONE
							["VALUE_CHANGE_TABLE"] 	=    --SMALLERODEPLANT-toxicinfested-, SMALLBOULDER-""-, BUBBLELUSHGRASS-""-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "1.9", --MEDIUMPLANT-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  --SMALLPLANT-lushobjectslow-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEPLANT, **MEDIUMROCK
							["VALUE_MATCH"] 		= "1.8", --LARGETREEBARE, **MEDIUMPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --Changed in v1.8 - caused huge flowers everywhere
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.75", --SPRIGBUSH-barrenhqobjectsfull-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --HQFLOWERCACTUS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGETUBEROCK-radioactive-, LARGESPIKEROCK--radioactive-
							["VALUE_MATCH"] 		= "1.7", --**MEDIUMBUSH, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --SMALLFLOWERS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FERNLIGHT, **LARGEROCK, LARGEPLANT-lushobjectslow-
							["VALUE_MATCH"] 		= "1.6", --**MEDIUMBUSH, GROUNDFLOWER-barren-, **SMALLROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGESNOWBLENDROCK, MEDIUMPLANT, **SCRUBBUSH, NEWCROSSGRASS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, --YARROW-flower-, MEDIUMSTEAMER--radioactive-
							["VALUE_MATCH"] 		= "1.5", --1.5=GRASS, GRASSCLUMP, **NEWCROSSGRASS
							["VALUE_CHANGE_TABLE"] 	= --HUGEBEAM, **LARGEROCK, LARGESANDBLENDROCK, FRAGMENTS, TOXICGRASS-toxicinfested-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.43", --TENDRIL-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMJELLYPLANT, SCRUBBUSH, **MEDIUMBUSH
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMROCKS, LARGEROCK-laval-, CURVEDROCK-radioactive-
							["VALUE_MATCH"] 		= "1.4", --**MOUNTAINROCK_1, LARGEICEROCK_1, LARGEROCKSTACK_1
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --FERNLIGHT, LAVAGEMS, VOLUMEBUSH-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --YARROW-flower-, MEDIUMJELLYPLANT-radioactive-
							["VALUE_MATCH"] 		= "1.3", --SCABIOUS-flower-, **SCRUBGRASS, 
							["VALUE_CHANGE_TABLE"] 	=   --MEDIUMROCK-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --NEWSCRIBGRASS-barrenhqobjectsfull-
							["VALUE_MATCH"] 		= "1.25", --SINGLEJOINT-weird-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --v1.8 - changed from medium, caused huge grass on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGETREEBARE, MEDIUMROCK, MEDIUMGROWTHS-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FROZENBUSHYGRASS, **SCRUBGRASS, SMALLBOULDER
							["VALUE_MATCH"] 		= "1.2", --MEDIUMBOULDER02, **SMALLROCK, **BUTTERCUP
							["VALUE_CHANGE_TABLE"] 	=    --TALLGRASSBILLBOARD-toxicinfested-, SPONGE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEROCK-lushobjectslow-
							["VALUE_MATCH"] 		= "1.15", --**MEDIUMROCK, SMALLPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --1.1 = SCABIOUS-flower-, FERN, SNOWCLUMP, SMALLSNOWCLUMPS, SMALLROCK, SMALLROCKCLUMP, MOSSHUT, LAVACLUMP, LAVAGEMS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --1 = TALLGRASSBILLBOARD, CURVEDMEDIUM-radioactive-, MEDIUMBOULDER02, **SMALLROCK
							["VALUE_MATCH"] 		= "1.1",--0.5 = LEAFDROPLET-lava-
							["VALUE_MATCH_OPTIONS"] = "<=",--0.6 = TALLGRASSBILLBOARD, MEDIUMJELLYPLANT-radioactive-
							["VALUE_CHANGE_TABLE"] 	=      --0.8 = MOUNTAINROCK_1, **TALLGRASSBILLBOARD, SCRUBGRASS, GROUNDFLOWER--radioactive-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY CHANGES ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom2},
								{"FlatDensity", DensityCustom2},
								{"SlopeDensity",	DensityCustom2},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityMediumMultiplier},
								{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityCustom3},
								{"SlopeDensity",	DensityCustom3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom4},
								{"FlatDensity", DensityCustom4},
								{"SlopeDensity",	DensityLowMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. REGION/IMPOSTER/FADE OUT ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- e. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},

-------------------------------------------------------------------------------------------------------------------------------------------------
-- f. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- g. CHANGE OBJECTS TO LANDMARKS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						
						--If Landmarks section is closed, replace it to make it open
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Landmarks" />]], [[    <Property name="Landmarks">]] },
							}	
						},
					
					--THEN DO:
					
						--If Objects section is open, remove it so Landmarks takes over that section
						{  
							["PRECEDING_KEY_WORDS"]	= {"Objects", "Objects"},
							["REMOVE"]  = "LINE",  
						},
						
						--Add closed Objects line after Landmarks, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Objects" />]]
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- h. CHANGE UNDERWATER TO ABOVE WATER --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{						
								{ "MinHeight",	minHeightAboveWater },
							}
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{						
								{ "MaxHeight",	maxHeightAboveWater },
							}
						},
	}
return biomeModifier
end


function AddGrass()
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN" />
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
        <Property name="Placement" value="GRASS" />
        <Property name="Seed" value="GcSeed.xml">
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
        <Property name="MinScale" value="1.2" />
        <Property name="MaxScale" value="1.45" />
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
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.082" />
          <Property name="FlatDensity" value="0.36" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="13498" />
          <Property name="MaxImposterRadius" value="14" />
          <Property name="FadeOutStartDistance" value="13498" />
          <Property name="FadeOutEndDistance" value="13498" />
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
            <Property name="Coverage" value="0.03" />
            <Property name="FlatDensity" value="0.3" />
            <Property name="SlopeDensity" value="0.24" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="14" />
            <Property name="MaxImposterRadius" value="14" />
            <Property name="FadeOutStartDistance" value="94" />
            <Property name="FadeOutEndDistance" value="108" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="30" />
              <Property value="90" />
              <Property value="225" />
              <Property value="750" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

local function BiomesOneTwoThreeModifier(DensityCustom1, DensityCustom2, DensityCustom3, DensityCustom4)
	local biomeModifier =
	{
						{
							["MATH_OPERATION"] 		= "*", --8 = HQTREE17, --9 = HQTREE10 --10 = HQTREE63
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --8 = HUGEPLATFORMROCK-barren-, --20 = HUGESPIKEROCK,
							["VALUE_MATCH"] 		= "4.1", --5 = FERNLARGEALT-swamp-, HQTREEREF-swamp-
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] 	= --6 = --YUKKA-swamp-, FERNLIGHT-swamp-
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --CACTUSSML, SMALLSHROOMCLUSTER-swamp-, 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**GRAVELPATCHSNOWBLEND, GRAVELPATCHSANDBLEND
							["VALUE_MATCH"] 		= "4", --LARGESNOWBLENDROCK, LARGESANDBLENDROCK, MEDIUMBOULDER01-toxicinfested-
							["VALUE_CHANGE_TABLE"] 	=     --FUNGALTREE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.8",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.7",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.6",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMBLUESHROOM-toxicinfested-
							["VALUE_MATCH"] 		= "3.5", --GRAVELPATCHSNOWBLEND**
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.4",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.3", --MANGROVELARGEFULL
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	DensityCustom1 }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.2",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.1",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGEVOLCANO, LARGESHARDINACTIVE02-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --DEADTREE-swamp-, LARGEMOSSROCK-swamp-
							["VALUE_MATCH"] 		= "3", --3 = HEROPINE, LARGESNOWBLENDROCK, LARGESANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	=  --MEDIUMBOULDER02-toxicinfested-, SMALLTENDRIL-toxicinfested-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier } --v1.8: changed from small, caused giant rocks on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.8", --MANGROVELARGE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectsmid-
							["VALUE_MATCH"] 		= "2.7", --SKINNYPINE, RADIOACTIVETREE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.6", --FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FUNGALTREE
							["VALUE_MATCH"] 		= "2.5", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.4", --LARGEROCK-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectslow-
							["VALUE_MATCH"] 		= "2.3", --STARJOINT, MEDIUMDEADTREE01-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --SMALLJOINT
							["VALUE_MATCH"] 		= "2.2", --2.2 = TALLPINE, HQTREEREF-lushobjectsmed-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --TOXICGRASS-radioactive-
							["VALUE_MATCH"] 		= "2.1", --RADIOACTIVETREE, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	=      --MEDIUMROCK-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMSHROOM-swamp-, MEDIUMSPIRE-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, LARGEROCK, GROUNDREVEALROCK01
							["VALUE_MATCH"] 		= "2", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK, FROZENGRASSLARGE, BEAMSTONE
							["VALUE_CHANGE_TABLE"] 	=    --SMALLERODEPLANT-toxicinfested-, SMALLBOULDER-""-, BUBBLELUSHGRASS-""-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "1.9", --MEDIUMPLANT-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  --SMALLPLANT-lushobjectslow-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEPLANT, **MEDIUMROCK
							["VALUE_MATCH"] 		= "1.8", --LARGETREEBARE, **MEDIUMPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --Changed in v1.8 - caused huge flowers everywhere
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.75", --SPRIGBUSH-barrenhqobjectsfull-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --HQFLOWERCACTUS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGETUBEROCK-radioactive-, LARGESPIKEROCK--radioactive-
							["VALUE_MATCH"] 		= "1.7", --**MEDIUMBUSH, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --SMALLFLOWERS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FERNLIGHT, **LARGEROCK, LARGEPLANT-lushobjectslow-
							["VALUE_MATCH"] 		= "1.6", --**MEDIUMBUSH, GROUNDFLOWER-barren-, **SMALLROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGESNOWBLENDROCK, MEDIUMPLANT, **SCRUBBUSH, NEWCROSSGRASS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, --YARROW-flower-, MEDIUMSTEAMER--radioactive-
							["VALUE_MATCH"] 		= "1.5", --1.5=GRASS, GRASSCLUMP, **NEWCROSSGRASS
							["VALUE_CHANGE_TABLE"] 	= --HUGEBEAM, **LARGEROCK, LARGESANDBLENDROCK, FRAGMENTS, TOXICGRASS-toxicinfested-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.43", --TENDRIL-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMJELLYPLANT, SCRUBBUSH, **MEDIUMBUSH
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMROCKS, LARGEROCK-laval-, CURVEDROCK-radioactive-
							["VALUE_MATCH"] 		= "1.4", --**MOUNTAINROCK_1, LARGEICEROCK_1, LARGEROCKSTACK_1
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --FERNLIGHT, LAVAGEMS, VOLUMEBUSH-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --YARROW-flower-, MEDIUMJELLYPLANT-radioactive-
							["VALUE_MATCH"] 		= "1.3", --SCABIOUS-flower-, **SCRUBGRASS, 
							["VALUE_CHANGE_TABLE"] 	=   --MEDIUMROCK-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --NEWSCRIBGRASS-barrenhqobjectsfull-
							["VALUE_MATCH"] 		= "1.25", --SINGLEJOINT-weird-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --v1.8 - changed from medium, caused huge grass on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGETREEBARE, MEDIUMROCK, MEDIUMGROWTHS-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FROZENBUSHYGRASS, **SCRUBGRASS, SMALLBOULDER
							["VALUE_MATCH"] 		= "1.2", --MEDIUMBOULDER02, **SMALLROCK, **BUTTERCUP
							["VALUE_CHANGE_TABLE"] 	=    --TALLGRASSBILLBOARD-toxicinfested-, SPONGE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEROCK-lushobjectslow-
							["VALUE_MATCH"] 		= "1.15", --**MEDIUMROCK, SMALLPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --1.1 = SCABIOUS-flower-, FERN, SNOWCLUMP, SMALLSNOWCLUMPS, SMALLROCK, SMALLROCKCLUMP, MOSSHUT, LAVACLUMP, LAVAGEMS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --1 = TALLGRASSBILLBOARD, CURVEDMEDIUM-radioactive-, MEDIUMBOULDER02, **SMALLROCK
							["VALUE_MATCH"] 		= "1.1",--0.5 = LEAFDROPLET-lava-
							["VALUE_MATCH_OPTIONS"] = "<=",--0.6 = TALLGRASSBILLBOARD, MEDIUMJELLYPLANT-radioactive-
							["VALUE_CHANGE_TABLE"] 	=      --0.8 = MOUNTAINROCK_1, **TALLGRASSBILLBOARD, SCRUBGRASS, GROUNDFLOWER--radioactive-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY CHANGES ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom2},
								{"FlatDensity", DensityCustom2},
								{"SlopeDensity",	DensityCustom2},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityMediumMultiplier},
								{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityCustom3},
								{"SlopeDensity",	DensityCustom3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom4},
								{"FlatDensity", DensityCustom4},
								{"SlopeDensity",	DensityMedLowMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. REGION/IMPOSTER/FADE OUT ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- e. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- f. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- g. CHANGE LANDMARKS TO DISTANTOBJECTS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						
						--If DistanceObjects section is closed, replace it to make it open
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							}	
						},
						
					--THEN DO:
					
						--If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    </Property>]], [[]] },
							-- }	
						-- },
					
					--THEN DO:
					
						--If Landmarks section is open, remove it so DistanceObjects takes over that section
						{  
							["PRECEDING_KEY_WORDS"]	= {"Objects", "Landmarks"},
							["REMOVE"]  = "LINE",  
						},
						
						--Not possible: DistanceObjects == closed && Landmarks == closed
						--Not possible: DistanceObjects == open && Landmarks == closed
						
						--Add closed Landmarks line after DistantObjects, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Landmarks" />]]
						},
	}
return biomeModifier
end



local function BiomesOneTwoThreeModifierDISTANTOBJECTS(DensityCustom1, DensityCustom2, DensityCustom3, DensityCustom4)
	local biomeModifier =
	{
						{
							["MATH_OPERATION"] 		= "*", --8 = HQTREE17, --9 = HQTREE10 --10 = HQTREE63
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --8 = HUGEPLATFORMROCK-barren-, --20 = HUGESPIKEROCK,
							["VALUE_MATCH"] 		= "4.1", --5 = FERNLARGEALT-swamp-, HQTREEREF-swamp-
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] 	= --6 = --YUKKA-swamp-, FERNLIGHT-swamp-
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --CACTUSSML, SMALLSHROOMCLUSTER-swamp-, 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**GRAVELPATCHSNOWBLEND, GRAVELPATCHSANDBLEND
							["VALUE_MATCH"] 		= "4", --LARGESNOWBLENDROCK, LARGESANDBLENDROCK, MEDIUMBOULDER01-toxicinfested-
							["VALUE_CHANGE_TABLE"] 	=     --FUNGALTREE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.8",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.7",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.6",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMBLUESHROOM-toxicinfested-
							["VALUE_MATCH"] 		= "3.5", --GRAVELPATCHSNOWBLEND**
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.4",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.3", --MANGROVELARGEFULL
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	DensityCustom1 }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.2",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.1",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGEVOLCANO, LARGESHARDINACTIVE02-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --DEADTREE-swamp-, LARGEMOSSROCK-swamp-
							["VALUE_MATCH"] 		= "3", --3 = HEROPINE, LARGESNOWBLENDROCK, LARGESANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	=  --MEDIUMBOULDER02-toxicinfested-, SMALLTENDRIL-toxicinfested-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier } --v1.8: changed from small, caused giant rocks on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.8", --MANGROVELARGE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectsmid-
							["VALUE_MATCH"] 		= "2.7", --SKINNYPINE, RADIOACTIVETREE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.6", --FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FUNGALTREE
							["VALUE_MATCH"] 		= "2.5", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.4", --LARGEROCK-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectslow-
							["VALUE_MATCH"] 		= "2.3", --STARJOINT, MEDIUMDEADTREE01-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --SMALLJOINT
							["VALUE_MATCH"] 		= "2.2", --2.2 = TALLPINE, HQTREEREF-lushobjectsmed-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --TOXICGRASS-radioactive-
							["VALUE_MATCH"] 		= "2.1", --RADIOACTIVETREE, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	=      --MEDIUMROCK-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMSHROOM-swamp-, MEDIUMSPIRE-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, LARGEROCK, GROUNDREVEALROCK01
							["VALUE_MATCH"] 		= "2", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK, FROZENGRASSLARGE, BEAMSTONE
							["VALUE_CHANGE_TABLE"] 	=    --SMALLERODEPLANT-toxicinfested-, SMALLBOULDER-""-, BUBBLELUSHGRASS-""-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "1.9", --MEDIUMPLANT-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  --SMALLPLANT-lushobjectslow-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEPLANT, **MEDIUMROCK
							["VALUE_MATCH"] 		= "1.8", --LARGETREEBARE, **MEDIUMPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --Changed in v1.8 - caused huge flowers everywhere
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.75", --SPRIGBUSH-barrenhqobjectsfull-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --HQFLOWERCACTUS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGETUBEROCK-radioactive-, LARGESPIKEROCK--radioactive-
							["VALUE_MATCH"] 		= "1.7", --**MEDIUMBUSH, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --SMALLFLOWERS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FERNLIGHT, **LARGEROCK, LARGEPLANT-lushobjectslow-
							["VALUE_MATCH"] 		= "1.6", --**MEDIUMBUSH, GROUNDFLOWER-barren-, **SMALLROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGESNOWBLENDROCK, MEDIUMPLANT, **SCRUBBUSH, NEWCROSSGRASS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, --YARROW-flower-, MEDIUMSTEAMER--radioactive-
							["VALUE_MATCH"] 		= "1.5", --1.5=GRASS, GRASSCLUMP, **NEWCROSSGRASS
							["VALUE_CHANGE_TABLE"] 	= --HUGEBEAM, **LARGEROCK, LARGESANDBLENDROCK, FRAGMENTS, TOXICGRASS-toxicinfested-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.43", --TENDRIL-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMJELLYPLANT, SCRUBBUSH, **MEDIUMBUSH
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMROCKS, LARGEROCK-laval-, CURVEDROCK-radioactive-
							["VALUE_MATCH"] 		= "1.4", --**MOUNTAINROCK_1, LARGEICEROCK_1, LARGEROCKSTACK_1
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --FERNLIGHT, LAVAGEMS, VOLUMEBUSH-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --YARROW-flower-, MEDIUMJELLYPLANT-radioactive-
							["VALUE_MATCH"] 		= "1.3", --SCABIOUS-flower-, **SCRUBGRASS, 
							["VALUE_CHANGE_TABLE"] 	=   --MEDIUMROCK-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --NEWSCRIBGRASS-barrenhqobjectsfull-
							["VALUE_MATCH"] 		= "1.25", --SINGLEJOINT-weird-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --v1.8 - changed from medium, caused huge grass on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGETREEBARE, MEDIUMROCK, MEDIUMGROWTHS-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FROZENBUSHYGRASS, **SCRUBGRASS, SMALLBOULDER
							["VALUE_MATCH"] 		= "1.2", --MEDIUMBOULDER02, **SMALLROCK, **BUTTERCUP
							["VALUE_CHANGE_TABLE"] 	=    --TALLGRASSBILLBOARD-toxicinfested-, SPONGE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEROCK-lushobjectslow-
							["VALUE_MATCH"] 		= "1.15", --**MEDIUMROCK, SMALLPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --1.1 = SCABIOUS-flower-, FERN, SNOWCLUMP, SMALLSNOWCLUMPS, SMALLROCK, SMALLROCKCLUMP, MOSSHUT, LAVACLUMP, LAVAGEMS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --1 = TALLGRASSBILLBOARD, CURVEDMEDIUM-radioactive-, MEDIUMBOULDER02, **SMALLROCK
							["VALUE_MATCH"] 		= "1.1",--0.5 = LEAFDROPLET-lava-
							["VALUE_MATCH_OPTIONS"] = "<=",--0.6 = TALLGRASSBILLBOARD, MEDIUMJELLYPLANT-radioactive-
							["VALUE_CHANGE_TABLE"] 	=      --0.8 = MOUNTAINROCK_1, **TALLGRASSBILLBOARD, SCRUBGRASS, GROUNDFLOWER--radioactive-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY CHANGES ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom2},
								{"FlatDensity", DensityCustom2},
								{"SlopeDensity",	DensityCustom2},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityMediumMultiplier},
								{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityCustom3},
								{"SlopeDensity",	DensityCustom3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom4},
								{"FlatDensity", DensityCustom4},
								{"SlopeDensity",	DensityMedLowMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. REGION/IMPOSTER/FADE OUT ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- e. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- f. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-- -------------------------------------------------------------------------------------------------------------------------------------------------
-- -- g. CHANGE LANDMARKS TO DISTANTOBJECTS <-Causes error in these biomes
-- -------------------------------------------------------------------------------------------------------------------------------------------------
						
						-- --If DistanceObjects section is closed, replace it to make it open
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							-- }	
						-- },
						
					-- --THEN DO:
					
						-- --If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- -- {
							-- -- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- -- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- -- ["REPLACE_TYPE"] 		= "RAW",
							-- -- ["VALUE_CHANGE_TABLE"] 	= 
							-- -- {
								-- -- { [[    </Property>]], [[]] },
							-- -- }	
						-- -- },
					
					-- --THEN DO:
					
						-- --If Landmarks section is open, remove it so DistanceObjects takes over that section
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="Landmarks">]], [[]] },
							-- }	
						-- },
						
						-- --Not possible: DistanceObjects == closed && Landmarks == closed
						-- --Not possible: DistanceObjects == open && Landmarks == closed
						
						-- --Add closed Landmarks line after DistantObjects, otherwise error:
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							-- ["ADD_OPTION"] = "ADDafterSECTION",
							-- ["ADD"] 	= [[    <Property name="Landmarks" />]]
						-- },
	}
return biomeModifier
end

-------------------------------------------------------------------------------------------------------------------------------------------------


local function BiomeFourFiveSevenEightModifier(Param1, Param2, Param3, Param4, Param5, Param6, Param7)
	local biomeModifier =
	{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxXZRotation",			10},
								{"MaxScale",				Param1},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				Param2}, --for big/huge biomes
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	Param4},
								{"FlatDensity", Param5},
								{"SlopeDensity",	Param5},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	Param4},
								{"FlatDensity", Param3},
								{"SlopeDensity",	Param5},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	Param4},
								{"FlatDensity", Param3},
								{"SlopeDensity",	Param5},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.2},
								--{"SlopeDensity",	DensityMediumMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--ADD NEW GRASS:
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrass(),
						-- },
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- g. CHANGE LANDMARKS TO DISTANTOBJECTS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						
						--If DistanceObjects section is closed, replace it to make it open
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							}	
						},
						
					--THEN DO:
					
						--If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    </Property>]], [[]] },
							-- }	
						-- },
					
					--THEN DO:
					
						--If Landmarks section is open, remove it so DistanceObjects takes over that section
						{  
							["PRECEDING_KEY_WORDS"]	= {"Objects", "Landmarks"},
							["REMOVE"]  = "LINE",  
						},
						
						--Not possible: DistanceObjects == closed && Landmarks == closed
						--Not possible: DistanceObjects == open && Landmarks == closed
						
						--Add closed Landmarks line after DistantObjects, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Landmarks" />]]
						},
	}
return biomeModifier
end



local function BiomeFourFiveSevenEightModifierDISTANTOBJECTS(Param1, Param2, Param3, Param4, Param5, Param6, Param7)
	local biomeModifier =
	{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				Param1},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				Param2}, --for big/huge biomes
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	Param4},
								{"FlatDensity", Param5},
								{"SlopeDensity",	Param5},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	Param4},
								{"FlatDensity", Param3},
								{"SlopeDensity",	Param5},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	Param4},
								{"FlatDensity", Param3},
								{"SlopeDensity",	Param5},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.2},
								--{"SlopeDensity",	DensityMediumMultiplier},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-- -------------------------------------------------------------------------------------------------------------------------------------------------
-- -- g. CHANGE LANDMARKS TO DISTANTOBJECTS -> removed, causes errors in these biomes
-- -------------------------------------------------------------------------------------------------------------------------------------------------
						
						-- --If DistanceObjects section is closed, replace it to make it open
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							-- }	
						-- },
						
					-- --THEN DO:
					
						-- --If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- -- {
							-- -- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- -- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- -- ["REPLACE_TYPE"] 		= "RAW",
							-- -- ["VALUE_CHANGE_TABLE"] 	= 
							-- -- {
								-- -- { [[    </Property>]], [[]] },
							-- -- }	
						-- -- },
					
					-- --THEN DO:
					
						-- --If Landmarks section is open, remove it so DistanceObjects takes over that section
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="Landmarks">]], [[]] },
							-- }	
						-- },
						
						-- --Not possible: DistanceObjects == closed && Landmarks == closed
						-- --Not possible: DistanceObjects == open && Landmarks == closed
						
						-- --Add closed Landmarks line after DistantObjects, otherwise error:
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							-- ["ADD_OPTION"] = "ADDafterSECTION",
							-- ["ADD"] 	= [[    <Property name="Landmarks" />]]
						-- },
	}
return biomeModifier
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_Env_Med_v6.22.pak",
["MOD_AUTHOR"]				= "Lasagna - with InsaneRuffles code",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					--Change biome specific harvestable plant distance:
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\BARRENPLANT\ENTITIES\ROOT.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\LUSHPLANT\ENTITIES\ROOT.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\RADIOACTIVEPLANT\ENTITIES\ROOT.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\SCORCHEDPLANT\ENTITIES\ROOT.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\SNOWPLANT\ENTITIES\ROOT.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\TOXICPLANT\ENTITIES\ROOT.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"InteractDistance",				harvestPlantDistance},
							}
						},
						
					},
				},
				
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 3A. COPY VANILLA (UNMODIFIED) BIOME FILES = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						--BIOMES 2A
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRAOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRAOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						--previously [v3.31] from biomes 3:
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN"},
						--++++"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSOBJECTSFULL.MBIN", --HUGE rocks everywhere
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKBIOME.MBIN",
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUVWPLANTBIOME.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN"},
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FLYTRAPPLANT.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\PLANTLARGECROP.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\PLANTLARGECROP_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT_GHOSTLYNEW.MBIN"},
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVECUBES.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVEPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CLAMSHELLPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FIENDEGGS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\GEMPROPS.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\LANDURCHINS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\METALFORMATION.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\NAVDATA.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PICKUPCUBE.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCBONES.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYPROPS.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYTENTACLEPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RARECRYSTALPROPS.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RAREROCKS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RAREROCKS_GHOSTLYNEW.MBIN"},
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\STORMCRYSTALS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERGROUNDFUN.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN",
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						--BIOMES 3A
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN"}, --Large yellow/red oval trees
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOUROBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOUROBJECTSDEAD_GHOSTLYNEW.MBIN"},
						
						--BIOMES 2B
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\ULTRAEXTERNALOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\ULTRAEXTERNALOBJECTS_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCRYSTALS.MBIN",--creates giant crystals, obstructing all water
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCUCUMBERLIGHTS.MBIN", --v2.0: removed
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCURVECORAL.MBIN",--creates giant coral, obstructing all water
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERDEAD_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERFULL.MBIN",--v2.0: removed
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERGASBAGS.MBIN", --v2.0: removed
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMID_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMONOLITHS.MBIN",--creates plants/shore rocks that stick out of water
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERPLANT.MBIN",--creates giant weeds, obstructing all waterCoverageMultiplier
						
						--BIOMES 3B
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						
						--BIOMES 4A
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",
						
						--BIOMES 5A
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN"},--
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN"},
						
						
						--BIOMES 4B
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN"},
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						
						--BIOMES 5B
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						--BIOMES 6
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						--BIOMES 7
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN"},
						
						--Biomes 7B
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						--BIOMES 8
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN"}, 		--Huge disappearing swirl objects
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSOBJECTSDEAD.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSOBJECTSDEAD_GHOSTLYNEW.MBIN"},
						
						--BIOMES 9
						--{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						--BIOMES 10
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
					},
					["EXML_CHANGE_TABLE"] 	=  BiomesNewVanilla(1.0, 0.8)
				},
						

				{
					["MBIN_FILE_SOURCE"] 	=
					{
					
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRAOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRAOBJECTS_GHOSTLYNEW.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN"},
						

						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN"},
						
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",
						
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN"},
						
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN"},
						
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN"},--
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN"},
						
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN"},
						
					},
					["EXML_CHANGE_TABLE"] 	=  BiomesNewVanilla(0.8, 0.6)---------------------------Lower density
				},

				
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = 3B. HUGE & MEDIUM/LOW DENSITY(BIOMES 2&3) = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 2A------------------------------------------------------------------------------------
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHINFESTEDOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSFULL3.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSLOW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROCKYOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROCKYWEIRDOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRAOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHULTRAOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYELBUBBLEOBJECTSDEAD.MBIN"},
						--previously [v3.31] from biomes 3:
						--++++"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSOBJECTSFULL.MBIN", --HUGE rocks everywhere
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKBIOME.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY4.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUVWPLANTBIOME.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUWPLANTOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY6.MBIN"},
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FLYTRAPPLANT.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\PLANTLARGECROP_GHOSTLYNEW.MBIN","CUSTOMBIOMES/GHOSTLYPLANTLARGECROP.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\ALWAYSPRESENT_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY7.MBIN"},
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVECUBES.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CAVEPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\CLAMSHELLPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FIENDEGGS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\GEMPROPS.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\LANDURCHINS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\METALFORMATION.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\NAVDATA.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PICKUPCUBE.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCBONES.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYPROPS.MBIN",--
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROXIMITYTENTACLEPROPS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RARECRYSTALPROPS.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\RAREROCKS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY8.MBIN"},
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\STORMCRYSTALS.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERGROUNDFUN.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleHugeMultiplier, DensityMediumMultiplier, DensityLowestMultiplier, DensityMedLowMultiplier) --biomes 1
				},
				{
				["MBIN_FILE_SOURCE"] 	= -------BIOMES 3A-----------------------------------------------------------------------------------------
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENINFESTEDOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENROCKYOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENDEADOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENROCKYOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY10.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEALIENOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEALIENOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDSHIELDTREEOBJECTS.MBIN"}, --Large yellow/red oval trees
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSMOONOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY11.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICINFESTEDOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICSPORESOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOUROBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYCONTOUROBJECTSDEAD.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleLargeMultiplier, DensityMedHighMultiplier, DensityMediumMultiplier, DensityMediumMultiplier) --biomes 3
				},
				{
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 2B-------------------------------------------------------------------------------------
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\ULTRAEXTERNALOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY12.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCRYSTALS.MBIN",--creates giant crystals, obstructing all water
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCUCUMBERLIGHTS.MBIN", --v2.0: removed
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCURVECORAL.MBIN",--creates giant coral, obstructing all water
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY13.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERFULL.MBIN",--v2.0: removed
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERGASBAGS.MBIN", --v2.0: removed
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY14.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERMONOLITHS.MBIN",--creates plants/shore rocks that stick out of water
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERPLANT.MBIN",--creates giant weeds, obstructing all waterCoverageMultiplier
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifierDISTANTOBJECTS(ScaleHugeMultiplier, DensityMediumMultiplier, DensityLowestMultiplier, DensityMedLowMultiplier) --biomes 1
				},
				{
				["MBIN_FILE_SOURCE"] 	= -------BIOMES 3B-----------------------------------------------------------------------------------------
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PHYSICSPROPS.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY15.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\FLOATINGPHYSICS.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY16.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY17.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BARRENFULL.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY18.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY19.MBIN"},
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\FULL.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\LOW.MBIN",
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\MID.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\BEACH\FULL.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY20.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY21.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY22.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\FULL.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY23.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKGRASS.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY24.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKSCRUB.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY25.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILD1.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY26.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILD2.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY27.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILD3.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY28.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILDFULL.MBIN","CUSTOMBIOMES/GHOSTLYALLWILDFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\DEADPLANETS.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY29.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULL.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY30.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULLSAFE.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY31.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\BARREN.MBIN","CUSTOMBIOMES/GHOSTLYBARREN.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\BARRENWILD.MBIN","CUSTOMBIOMES/GHOSTLYBARRENWILD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZEN.MBIN","CUSTOMBIOMES/GHOSTLYFROZEN.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZENWILD.MBIN","CUSTOMBIOMES/GHOSTLYFROZENWILD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\LUSH.MBIN","CUSTOMBIOMES/GHOSTLYLUSH.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\LUSHWILD.MBIN","CUSTOMBIOMES/GHOSTLYLUSHWILD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\RADIOACTIVE.MBIN","CUSTOMBIOMES/GHOSTLYRADIOACTIVE.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\RADIOACTIVEWILD.MBIN","CUSTOMBIOMES/GHOSTLYRADIOACTIVEWILD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SCORCHED.MBIN","CUSTOMBIOMES/GHOSTLYSCORCHED.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SCORCHEDWILD.MBIN","CUSTOMBIOMES/GHOSTLYSCORCHEDWILD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TOXIC.MBIN","CUSTOMBIOMES/GHOSTLYTOXIC.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TOXICWILD.MBIN","CUSTOMBIOMES/GHOSTLYTOXICWILD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\WEIRDWILD.MBIN","CUSTOMBIOMES/GHOSTLYWEIRDWILD.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifierDISTANTOBJECTS(ScaleLargeMultiplier, DensityMedHighMultiplier, DensityMediumMultiplier, DensityMediumMultiplier) --biomes 3
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 4. OTHER HUGE (BIOMES 4A) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY32.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleHuge, ScaleHuge, DensityMediumMultiplier, CoverageMultiplier, DensityMediumMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 5. OTHER HUGE 2 (BIOMES 5A) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENCORALOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENHIVESOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSMID.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY34.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSMID3.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROOMAOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROOMBOBJECTS.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSLOW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSMID.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOSPIKECRYSTALSOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKEPOTATOOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOSPIKEPOTATOOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDALIENOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDALIENOBJECTS.MBIN"},--
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSLOW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSMID.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSLOW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSMID.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICTENTACLESOBJECTS.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSLOW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENHQOBJECTSMID.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSLOW.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSMID3.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEGLOWOBJECTS.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleHuge, ScaleHuge, DensityLowestMultiplier, DensityLowestMultiplier, DensityLowestMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},
				{
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 4B-------------------------------------------------------------------------------------
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYHUGESCORCHOBJECTSFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHBIGPROPSOBJECTSFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY35.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICEGGSOBJECTS.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYHYDROGARDENOBJECTSDEAD.MBIN"},
						
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY33.MBIN"},
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY9.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY5.MBIN"},
						
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY1.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY2.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY3.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYDEADBIGPROPSOBJECTSVAR3.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifierDISTANTOBJECTS(ScaleHuge, ScaleHuge, DensityMediumMultiplier, CoverageMultiplier, DensityMediumMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},
				{
					["MBIN_FILE_SOURCE"] 	= -------BIOMES 5B-------------------------------------------------------------------------------------
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY36.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHBIGPROPSOBJECTSFULL.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifierDISTANTOBJECTS(ScaleHuge, ScaleHuge, DensityLowestMultiplier, DensityLowestMultiplier, DensityLowestMultiplier, DensityDETAILLowestMultiplier, DensityPointSevenMultiplier)
				},

				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = 6. LOW DENSITY HQ (BIOMES 6) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY37.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
--------------------------------------------------------------------------------------------------------------------------------------------------
-- a. Destroyed by ship/Max scale/Max angle/Patch edge scaling/Etc -------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleExtraLarge},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleLarge},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC --------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.1},
								--{"SlopeDensity",	1.05},
								-- {"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								-- {"MaxImposterRadius",		RadiusMultiplier},
								-- {"FadeOutStartDistance",	    RadiusMultiplier},
								-- {"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	CoverageMultiplier},
								{"FlatDensity", DensityMedLowMultiplier},
								--{"SlopeDensity",	1},
								-- {"MaxRegionRadius",			RadiusMultiplierLow},
								-- {"MaxImposterRadius",		RadiusMultiplierLow},
								-- {"FadeOutStartDistance",	    RadiusMultiplierLow},
								-- {"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	CoverageMultiplier},
								--{"FlatDensity", 1.2},
								--{"SlopeDensity",	1},
								-- {"MaxRegionRadius",			RadiusMultiplierLow},
								-- {"MaxImposterRadius",		RadiusMultiplierLow},
								-- {"FadeOutStartDistance",	    RadiusMultiplierLow},
								-- {"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	1},
								--{"FlatDensity", 1},
								--{"SlopeDensity",	1},
							}	
						},
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- c. Lod distances/Ultra invisible bug fix (code originally by InsaneRuffles *** = lasagna comments): ----------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLowest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] 	= {"ID","ULTRA",},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierHQUltraForest}
							}
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = 7. HIGHEST DENSITY (BIOMES 7) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLAROBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENPILLAROBJECTS3.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHBUBBLEOBJECTS.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleExtraLarge, ScaleLarge, DensityHighestMultiplier, CoverageMultiplier, DensityMedLowMultiplier, DensityMedLowMultiplier, DensityPointSevenMultiplier)
				},
--Biomes 7B
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSWAMPOBJECTSFULL.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifierDISTANTOBJECTS(ScaleExtraLarge, ScaleLarge, DensityHighestMultiplier, CoverageMultiplier, DensityMedLowMultiplier, DensityMedLowMultiplier, DensityPointSevenMultiplier)
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = 8. MEDIUM DENSITY (BIOMES 8) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSFULL3.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY38.MBIN"}, 		--Huge disappearing swirl objects
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBEAMSOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYBONESPIREOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYFRACTCUBEOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYUNUSE3D9.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSOBJECTS_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY40.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYIRRISHELLSOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYMSTRUCTOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYSHARDSOBJECTSDEAD.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSOBJECTSDEAD_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYWIRECELLSOBJECTSDEAD.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomeFourFiveSevenEightModifier(ScaleExtraLarge, ScaleLarge, DensityMediumMultiplier, DensityLowestMultiplier, DensityMedLowMultiplier, DensityMedLowMultiplier, DensityPointEightMultiplier)
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = 9. BUGGY BIOMES (BIOMES 9) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY41.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleExtraLarge},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleLarge},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] = {"Placement","SPARSECLUMP","MinScale","1.6",}, --fix giant rocks everywhere
							["VALUE_MATCH"] 		= "",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallest},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] = {"Placement","BLANKETCLUMP","MinScale","1.4",}, --fix giant rocks everywhere
							["VALUE_MATCH"] 		= "",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",				ScaleSmallest},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",		CoverageMultiplier},
								-- {"FlatDensity", 	1.1},
								-- {"SlopeDensity",	1.05},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	DensityMedLowMultiplier},
								{"SlopeDensity",	DensityLowestMultiplier},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	DensityMedLowMultiplier},
								{"SlopeDensity",	DensityLowestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",		0.1},
								{"FlatDensity", 	DensityLowestMultiplier},
								--{"SlopeDensity",	0.1},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- {"Coverage",		DensityLowestMultiplier},
								-- {"FlatDensity", 	0.9},
								-- {"SlopeDensity",	DensityLowestMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
					},
				},
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = 10. LOW DENSITY LAVA/TENTACLE (BIOMES 10) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLAVAOBJECTSFULL.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL_GHOSTLYNEW.MBIN","CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHHQTENTACLEOBJECTSFULL.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleMedium},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleMedium},
								{"MaxAngle",				MaxAngleSmall},
								{"PatchEdgeScaling",		PatchEdgeScalingLarge},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmall},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingMedium},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxScale",				ScaleSmallest},
								{"MaxAngle",				MaxAngleLarge},
								{"PatchEdgeScaling",		PatchEdgeScalingSmall},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY/ETC ----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	CoverageMultiplier},
								{"FlatDensity", DensityLowestMultiplier},
								--{"SlopeDensity",	1.05},
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	DensityLowestMultiplier},
								{"SlopeDensity",	DensityLowestMultiplier},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","ULTRA",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	DensityLowestMultiplier},
								{"SlopeDensity",	DensityLowestMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- {"Coverage",		DensityLowestMultiplier},
								{"FlatDensity", 	0.9},
								-- {"SlopeDensity",	DensityLowestMultiplier},
								{"MaxRegionRadius",			RadiusMultiplierLow},
								{"MaxImposterRadius",		RadiusMultiplierLow},
								{"FadeOutStartDistance",	RadiusMultiplierLow},
								{"FadeOutEndDistance",		RadiusMultiplierLow},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- {"Coverage",		DensityLowestMultiplier},
								-- {"FlatDensity", 	0.9},
								-- {"SlopeDensity",	DensityLowestMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLow}
							}
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGEVOLCANO.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"SPARSECLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
					},
				},
--------------------------------------------------------------------------------------------------------------------------------------------------
-- Code by InsaneRuffles in section above, modified by Lllasagna (*** = lasagna comment) ---------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = 11. RARE, UNDERWATER & MISC BIOMES (BIOMES 11) = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
				
				--Modify newly created files:
				
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GHOSTLYFROZEN.MBIN",
						"CUSTOMBIOMES/GHOSTLYFROZENWILD.MBIN",
						"CUSTOMBIOMES/GHOSTLYTOXIC.MBIN",
						"CUSTOMBIOMES/GHOSTLYTOXICWILD.MBIN",
						"CUSTOMBIOMES/GHOSTLYSCORCHED.MBIN",
						"CUSTOMBIOMES/GHOSTLYSCORCHEDWILD.MBIN",
						"CUSTOMBIOMES/GHOSTLYRADIOACTIVE.MBIN",
						"CUSTOMBIOMES/GHOSTLYRADIOACTIVEWILD.MBIN",
						"CUSTOMBIOMES/GHOSTLYBARREN.MBIN",
						"CUSTOMBIOMES/GHOSTLYBARRENWILD.MBIN",
						"CUSTOMBIOMES/GHOSTLYLUSH.MBIN",
						"CUSTOMBIOMES/GHOSTLYLUSHWILD.MBIN",
						"CUSTOMBIOMES/GHOSTLYALLWILDFULL.MBIN",
						"CUSTOMBIOMES/GHOSTLYWEIRDWILD.MBIN",
						"CUSTOMBIOMES/GHOSTLYPLANTLARGECROP.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MaxScale",	3},
							},
						}
					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENCORALOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE43.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENHIVESOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE44.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENINFESTEDOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE45.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE46.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE47.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSLOW.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE48.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENOBJECTSMID.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE49.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBARRENROCKYOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE50.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBEAMSOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE51.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYBONESPIREOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE52.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYCONTOUROBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE53.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYELBUBBLEOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE54.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFRACTCUBEOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE55.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENDEADOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE56.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENHQOBJECTSMID.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE57.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE58.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSFULL3.MBIN","CUSTOMBIOMES/GHOSTLYFROZENOBJECTSFULL.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSLOW.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE59.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENOBJECTSMID3.MBIN","CUSTOMBIOMES/GHOSTLYFROZENOBJECTSMID.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENPILLAROBJECTS3.MBIN","CUSTOMBIOMES/GHOSTLYFROZENPILLAROBJECTS.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYFROZENROCKYOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE60.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYHUGESCORCHOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE61.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYHYDROGARDENOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE62.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYIRRISHELLSOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE63.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLAVAOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE64.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHBIGPROPSOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE65.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHBUBBLEOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE66.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHHQTENTACLEOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE67.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHINFESTEDOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE68.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE69.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSFULL3.MBIN","CUSTOMBIOMES/GHOSTLYLUSHOBJECTSFULL.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSLOW.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE70.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHOBJECTSMID3.MBIN","CUSTOMBIOMES/GHOSTLYLUSHOBJECTSMID.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROCKYOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE71.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROCKYWEIRDOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE72.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROOMAOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE73.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHROOMBOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE74.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYLUSHULTRAOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE75.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYMSTRUCTOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE76.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEALIENOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE77.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEGLOWOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE78.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE79.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE80.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSLOW.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE81.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOACTIVEOBJECTSMID.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE82.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOSPIKECRYSTALSOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE83.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYRADIOSPIKEPOTATOOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE84.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHBIGPROPSOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE85.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDALIENOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE86.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE87.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE88.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSLOW.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE89.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDOBJECTSMID.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE90.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSCORCHEDSHIELDTREEOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE91.MBIN"}, --Large yellow/red oval trees
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSHARDSOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE92.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYSWAMPOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE93.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICEGGSOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE94.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICINFESTEDOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE95.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSFULL.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE96.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSLOW.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE97.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICOBJECTSMID.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE98.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICSPORESOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE99.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYTOXICTENTACLESOBJECTS.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE100.MBIN"},
						{"CUSTOMBIOMES/UNDERWATER/GHOSTLYWIRECELLSOBJECTSDEAD.MBIN","CUSTOMBIOMES/CAVE/GHOSTLYCAVE101.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						
						
						
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							-- ["ADD"] = [[    <Property name="Objects" />]],
							-- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							-- ["ADD"] = [[    <Property name="DetailObjects" />]],
							-- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							-- ["REMOVE"] = "SECTION"
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							-- ["REMOVE"] = "SECTION"
						-- },
						
						--Multiply:
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",	0.8},
								{"MinScale",	0.8},
								{ "FlatDensity", 0.95 },
								{ "FlatDensity", 0.95 },
							}	
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",	0.8},
								{"MinScale",	0.8},
								{ "FlatDensity", 0.75 },
								{ "FlatDensity", 0.75 },
							}	
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",	0.8},
								{"MinScale",	0.8},
								{ "FlatDensity", 0.7 },
								{ "FlatDensity", 0.7 },
							}	
						},

						
						--Replace:
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Placement",	"FLORACLUMP" },
								{ "ShearWindStrength", 0 },
								--{ "Coverage",	0.18 },
								--{ "FlatDensity", 0.06 },
								{ "MinAngle",	0 },
								{ "MaxAngle",	30 },
								{ "MinHeight",	-128 },
								{ "MaxHeight",	-25 },
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Placement",	"FLORACLUMP" },
								{ "ShearWindStrength", 0 },
								--{ "Coverage",	0.18 },
								--{ "FlatDensity", 0.06 },
								{ "MinAngle",	0 },
								{ "MaxAngle",	30 },
								{ "MinHeight",	-128 },
								{ "MaxHeight",	-25 },
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Placement",	"FLORACLUMP" },
								{ "ShearWindStrength", 0 },
								--{ "Coverage",	0.18 },
								--{ "FlatDensity", 0.06 },
								{ "MinAngle",	0 },
								{ "MaxAngle",	45 },
								{ "MinHeight",	-128 },
								{ "MaxHeight",	-25 },
							}	
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						
						
						
						--If Objects section is open, remove line above it so it can be moved upwards
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Objects"},
							["LINE_OFFSET"] = "-1",
							["REMOVE"] = "LINE",
						},
						--If Objects section is open, remove it so it can be moved upwards
						{  
							["PRECEDING_KEY_WORDS"]	= {"Objects", "Objects"},
							["REMOVE"]  = "LINE",  
						},
						
						
					--THEN DO:
						
						--If Landmarks section is open, replace it with objects
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Landmarks">]], [[    <Property name="Objects">]] },
							}	
						},
						
					
					--THEN DO:
					
						--Add closed Landmarks line after DistantObjects, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Landmarks" />]]
						},

						
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/LARGEVOLCANO.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						
					}
				},
				--Custom biomes - vanilla v1 --Large
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN","CUSTOMBIOMES/GHOSTLYFROZENOBJECTSFULL2.MBIN"},
						{"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN","CUSTOMBIOMES/GHOSTLYFROZENOBJECTSMID2.MBIN"},
						{"CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN","CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY42.MBIN"},
						{"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN","CUSTOMBIOMES/GHOSTLYLUSHOBJECTSFULL2.MBIN"},
						{"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN","CUSTOMBIOMES/GHOSTLYLUSHOBJECTSMID2.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleHugeMultiplierBig, DensityMediumMultiplierBig, DensityMediumMultiplierBig, DensityLowMultiplierBig)
				},
				--Custom biomes - vanilla v2 --Small
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN",
						"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN",
						"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN",
						"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleHugeMultiplierSmall, DensityMediumMultiplierSmall, DensityLowestMultiplierSmall, DensityMedLowMultiplierSmall)
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= --Copy vanilla (unmodified) files to CUSTOMBIOMES folder:
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERCRYSTALS.MBIN","CUSTOMBIOMES/GHOSTLYUNDERWATERCRYSTALS.MBIN"},----------------
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\UNDERWATER\UNDERWATERGASBAGS.MBIN","CUSTOMBIOMES/GHOSTLYUNDERWATERGASBAGS.MBIN"},----------------
					},
				},
				--Custom biomes --underwater (seperated because all props are in objects section)
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN",
						"CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifierUnderwaterCave(ScaleHugeMultiplierBig, DensityMediumMultiplierSmall, DensityLowestMultiplierSmall, DensityMedLowMultiplierSmall),
				},
				
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = 12A. CAVES (BIOMES 12) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
				
				--CAVES
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE43.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD1.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE44.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD2.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE45.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD3.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE46.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD4.MBIN"},--46-49 = barren
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE47.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD5.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE48.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD6.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE49.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD7.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE50.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD8.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE51.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD9.MBIN"},--51-55 = weird
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE52.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD10.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE53.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD11.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE54.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD12.MBIN"},--BUBBLEOBJECTSDEAD
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE55.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD13.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE56.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD14.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE57.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD15.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE58.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD16.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE59.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD17.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE60.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD18.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE61.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD19.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE62.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD20.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE63.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD21.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE64.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD22.MBIN"},--64 = lava
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE65.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD23.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE66.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD24.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE67.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD25.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE68.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD26.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE69.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD27.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE70.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE71.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD29.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE72.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD30.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE73.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD31.MBIN"},--LUSHROOMA
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE74.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD32.MBIN"},--LUSHROOMB
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE75.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD33.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE76.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD34.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE77.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD35.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE78.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD36.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE79.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE80.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE81.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE82.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD40.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE83.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD41.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE84.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD42.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE85.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD43.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE86.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD44.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE87.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD45.MBIN"},--87-91 = scorched
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE88.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD46.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE89.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD47.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE90.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD48.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE91.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD49.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE92.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD50.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE93.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD51.MBIN"},--SWAMP
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE94.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD52.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE95.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD53.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE96.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD54.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE97.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD55.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE98.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD56.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE99.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD57.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE100.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD58.MBIN"},
						{"CUSTOMBIOMES/CAVE/GHOSTLYCAVE101.MBIN","CUSTOMBIOMES/DEAD/GHOSTLYDEAD59.MBIN"}, --CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY17.MBIN --DEADOBJECTSDEAD
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{ --Remove all non-detailObject stuff
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["ADD"] = [[    <Property name="DistantObjects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["ADD"] = [[    <Property name="Landmarks" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["ADD"] = [[    <Property name="Objects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						

						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["REMOVE"] = "SECTION"
						},
						
						
-------------------------------------------------------------------------------------------------------------------------------------------------
-- v5.5: REMOVE SMALL DETAIL STUFF THAT GRASS COVERS --------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
--Barren-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --tiny
--MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN
--MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SPRIGBUSH.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFURRYCACTUS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/GRAVELPATCHSHINY.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --too small/blocky


--Dead/Frozen-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSNOWBLEND.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SNOWFRAGMENTS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN --ok
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SNOWCLUMP.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},


--Huge-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --too small/blocky
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN --ok
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN


--Lava-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVACLUMP.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --remove
--MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN


--Lush-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN
--MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN
--MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --tiny, remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --tiny, remove
--toxicgrassx2 on lushfull
--remove lushultraobjects


--Radio-----------------------------------------
--MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --remove
--MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLDETAILPLANT.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --remove, tiny


--Scorch-----------------------------------------


--Swamp:
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN


--Toxic-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPOREBARNACLE.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --tiny, remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEGRAVELPATCH.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						}, --tiny, remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
--MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLERODEPLANT.SCENE.MBIN
--MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLTOXICEGG.SCENE.MBIN





						
						
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MaxScale",	 1.75},
								--{"FlatDensity",	 0.3},
								--{"SlopeDensity", 0.3},
							},
						},
						
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinAngle",			0 },
								{ "MinHeight",			1 },
								{ "MaxHeight",			128 },
								{ "PatchEdgeScaling", 0},
								{ "MaxAngle", 180},
								{ "MatchGroundColour", "False"},
								{ "ShearWindStrength", 0 },
							}	
						},
						
						
						--cave grass:
						
						
						{ --remove tall weeds:
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxAngle",				40}, 		--Big plants
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxAngle",				40}, 		--Big plants
							}
						},
						--MULTIPLY:
						{
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			0.6},
								{"MaxImposterRadius",		0.6},
								{"FadeOutStartDistance",	0.6},
								{"FadeOutEndDistance",		0.6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    1},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
								{"SlopeMultiplier",			2.8},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    1},
								{"FlatDensity",			    0.5},
								{"SlopeDensity",			0.5},
								{"SlopeMultiplier",			2.8},
								--To increase draw distance of just this grass:
								{"MaxRegionRadius",			2},
								{"MaxImposterRadius",		2},
								{"FadeOutStartDistance",	2},
								{"FadeOutEndDistance",		2},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    1},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
								{"SlopeMultiplier",			2.8},
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Coverage",			    1},
								-- {"FlatDensity",			    0.6},
								-- {"SlopeDensity",			0.6},
								-- {"SlopeMultiplier",			2.8},
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.43},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.43},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"}, --Frozen & barren small plants
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{ 
								{"Coverage",			    0.43},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"}, 
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.43},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.43},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.43},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
							}
						},
						
						
					}
				},
				
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = 12B. DEAD (BIOMES 13) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD37.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD37.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD38.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD38.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD39.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD39.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{ --Remove all non-detailObject stuff
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["ADD"] = [[    <Property name="DistantObjects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["ADD"] = [[    <Property name="Landmarks" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["ADD"] = [[    <Property name="Objects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						

						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
					}
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD40.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD40.MBIN"},
						
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD54.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD54.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD55.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD55.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD56.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD56.MBIN"},
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{ --Remove all non-detailObject stuff
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["ADD"] = [[    <Property name="DistantObjects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["ADD"] = [[    <Property name="Landmarks" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["ADD"] = [[    <Property name="Objects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						

						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["REMOVE"] = "SECTION"
						},
						
						--REMOVE DetailObjects
						
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["ADD"] = replaceDO,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["REMOVE"] = "SECTION"
						},
						--ADD NEW GRASS:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
					}
				},
						
						
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD1.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD2.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD3.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD3.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD4.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD4.MBIN"},--46-49 = barren
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD5.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD5.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD6.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD6.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD7.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD7.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD8.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD8.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD9.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD9.MBIN"},--51-55 = weird
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD10.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD10.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD11.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD11.MBIN"},--CONTOUR
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD12.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD12.MBIN"},--BUBBLEOBJECTSDEAD
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD13.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD13.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD14.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD14.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD15.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD15.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD16.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD16.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD17.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD17.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD18.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD18.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD19.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD19.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD20.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD20.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD21.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD21.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD22.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD22.MBIN"},--64 = lava
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD23.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD23.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD24.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD24.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD25.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD25.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD26.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD26.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD27.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD27.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD28.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD28.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD29.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD29.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD30.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD30.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD31.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD31.MBIN"},--LUSHROOMA
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD32.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD32.MBIN"},--LUSHROOMB
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD33.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD33.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD34.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD34.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD35.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD35.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD36.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD36.MBIN"},
						
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD41.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD41.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD42.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD42.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD43.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD43.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD44.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD44.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD45.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD45.MBIN"},--87-91 = scorched
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD46.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD46.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD47.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD47.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD48.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD48.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD49.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD49.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD50.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD50.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD51.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD51.MBIN"},--SWAMP
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD52.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD52.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD53.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD53.MBIN"},

						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD57.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD57.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD58.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD58.MBIN"},
						{"CUSTOMBIOMES/DEAD/GHOSTLYDEAD59.MBIN","CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD59.MBIN"}, --CUSTOMBIOMES/UNUSED/GHOSTLYPEPPORY17.MBIN --DEADOBJECTSDEAD
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{ --Remove all non-detailObject stuff
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["ADD"] = [[    <Property name="DistantObjects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["ADD"] = [[    <Property name="Landmarks" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["ADD"] = [[    <Property name="Objects" />]],
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						

						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["REMOVE"] = "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects",},
							["REMOVE"] = "SECTION"
						},
						
						
						
						
-------------------------------------------------------------------------------------------------------------------------------------------------
-- v6.0: REMOVE SMALL DETAIL STUFF THAT GRASS COVERS --------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
--Barren-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSANDBLEND.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/CACTUSSML.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/FLUFFBUSH.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/PLANTS/THINBUSHTREE.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --tiny
--MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER01.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN
--MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN
--MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SPRIGBUSH.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFURRYCACTUS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/GRAVELPATCHSHINY.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --too small/blocky


--Dead/Frozen-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSNOWBLEND.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SNOWFRAGMENTS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN --ok
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/SMALLPROPS/SNOWCLUMP.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSNOWBLENDROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},


--Huge-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --too small/blocky
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN --ok
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSH/SMALLPROPS/SMALLBOULDER.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN


--Lava-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVACLUMP.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --remove
--MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLSPIRE.SCENE.MBIN


--Lush-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN
--MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN
--MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --tiny, remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --tiny, remove
--toxicgrassx2 on lushfull
--remove lushultraobjects


--Radio-----------------------------------------
--MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEDSMALL.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/RADIOACTIVE/SMALL/CURVEFRAGMENT.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --remove
--MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLDETAILPLANT.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/GLOWGRASS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --remove, tiny


--Scorch-----------------------------------------


--Swamp:
--MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN


--Toxic-----------------------------------------
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPOREBARNACLE.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --tiny, remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEGRAVELPATCH.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						}, --tiny, remove
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLROCK.SCENE.MBIN"},
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects",},
							["PRECEDING_FIRST"] = "TRUE",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.65},
								{"FlatDensity",			    0.65},
								{"SlopeDensity",			0.65},
							},
						},
--MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLERODEPLANT.SCENE.MBIN
--MODELS/PLANETS/BIOMES/TOXIC/SMALL/SMALLTOXICEGG.SCENE.MBIN
						
						
						
						--REPLACE:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								{"Placement",				"FLORACLUMP"},
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								{"Placement",				"GRASS"},
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								{"Placement",				"GRASS"},
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchEdgeScaling",		"0"},
								-- {"Placement",				"FLORACLUMP"}, --Takes over bubble glow grass
								-- {"MaxAngle",				90},
								-- {"LargeObjectCoverage",		"AlwaysPlace"},
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"}, --Ultra planet quality tall grass
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								--{"Placement",				"GRASS"}, 	--Causes lag
								--{"MaxAngle",				90}, 		--Causes grass to "float" on an angle
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								--{"Placement",				"GRASS"},  	--Causes lag
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								{"Placement",				"GRASS"},
								--{"MaxAngle",				90}, 	--Big plants, doesn't work
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								{"Placement",				"FLORACLUMP"},
								--{"MaxAngle",				90},	--Big plants, doesn't work
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								--{"Placement",				"GRASS"},  	--Causes lag
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								--{"Placement",				"GRASS"},  	--Causes lag
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						--MULTIPLY:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.53},
								{"FlatDensity",			    0.3},
								{"SlopeDensity",			0.3},
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
								{"MaxScale", 				1.7},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.53},
								{"FlatDensity",			    0.3},
								{"SlopeDensity",			0.3},
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
								{"MaxScale", 				1.7},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							--REPLACE (to correct non-lush/frozen planets density)
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",			    2.27},
								{"Coverage",			    1},
								{"FlatDensity",			    0.24},
								{"SlopeDensity",			0.24},
								{"SlopeMultiplier",			2.5},
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"FlatDensity",			    0.12},
								-- {"SlopeDensity",			0.12},
								-- {"MaxRegionRadius",			1.8},
								-- {"MaxImposterRadius",		1.8},
								-- {"FadeOutStartDistance",	1.8},
								-- {"FadeOutEndDistance",		1.8},
								-- --{"MaxScale", 				1}, --Too large = overtakes glow BUBBLELUSHGRASS ..
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
								{"MaxScale", 				1.6},
							}
						},
						--Adds "Ultra" planet quality grass to all planet quality types:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							--REPLACES
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.2},
								{"FlatDensity",			    0.2},
								{"SlopeDensity",			0.2},
								{"MaxScale", 				1.6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.7},
								{"FlatDensity",			    0.6},
								{"SlopeDensity",			0.6},
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
								{"MaxScale", 				1.7},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"}, --Frozen & barren small plants
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{ 
								{"Coverage",			    0.4}, 	--Too much = lag 
								{"FlatDensity",			    0.4},
								{"SlopeDensity",			0.4},
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"}, --Frozen & barren small plants
							["SECTION_UP"] = 1,
							--REPLACES
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{ 
								{"MaxScale", 				1.25}, 	--Too large = above eye level
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"}, 
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.15}, 	--Too much = weird faded lod in distance
								{"FlatDensity",			    0.05}, 	--Lower
								{"SlopeDensity",			0.05}, 	--Lower
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
								{"MaxScale", 				2.0},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.7}, 	--Higher
								{"FlatDensity",			    0.3}, 
								{"SlopeDensity",			0.3},
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
								{"MaxScale", 				1.7},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",			    0.7},
								{"FlatDensity",			    0.4},
								{"SlopeDensity",			0.4},
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
								{"MaxScale", 				1.7},
							}
						},
						--LODDISTANCES:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+1",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	LodDistancesMultiplierFarGrass}
							-- }
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+2",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	LodDistancesMultiplierFarGrass}
							-- }
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+3",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	LodDistancesMultiplierFarGrass}
							-- }
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+4",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	LodDistancesMultiplierFarGrass}
							-- }
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
							-- ["SECTION_UP"] = 1,
							-- ["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+5",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	LodDistancesMultiplierFarGrass}
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSSMALL.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						
						
						
					}
				},
				
				--v6.1 distinct grass biomes
				--Detail 1
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrass, "BUBBLELUSHGRASS")
				},
				
				--Detail 2
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrass, "CROSSGRASS")
				},
				

				--v6.12
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD3.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENGRASSLARGE.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD4.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD5.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWSCRUBGRASS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD6.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD7.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrass, "BARRENGRASSSMALL")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD8.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrass, "BARRENGRASSLARGE")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD9.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD10.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrass, "BUBBLELUSHGRASS")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD11.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrass, "NEWLUSHGRASS")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD12.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrass, "NEWPROCGRASS")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD13.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\COMMON\PLANTS\SPRIGBUSH.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD14.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\FIENDEGG.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD15.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD16.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\BLOBFRAGMENTS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD17.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\NEWCROSSGRASS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD18.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\SMALLCAVEBUSH.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD19.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLCIELINGPLANT.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD20.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD21.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLPLANT.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD22.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLROCKS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD23.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLSHRUB.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD24.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\TINYROCKS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD25.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\CAVEGROUNDLEAVES.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD26.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\DUDLEYA.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD27.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\ALIEN\SMALLPLANT\SMALLPLANT02.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD28.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\ALIEN\SMALLPLANT\SMALLPLANT01.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD29.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\SWAMP\SMALLPLANT\SMALLTWIGS01.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD30.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS\PLANETS\BIOMES\RAINFOREST\SMALLPLANT\SMALLCOLOUREDFLOWER01.SCENE.MBIN")
				},
				
				--v6.11:
				
				--Detail 3 - OTHERS
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD31.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/TOXIC/SMALL/BLOBFRAGMENTS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD32.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD33.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD34.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/BARREN/PLANTS/VOLUMEBUSH.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD35.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/BARREN/PLANTS/SMALLCACTUS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD36.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLERODEPLANT.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD37.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD38.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA02.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD39.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/POOFBUSH.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD40.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/FLOWERS/BUTTERCUP.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD41.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/MEDIUMPLANT.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD42.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/YUKKA.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD43.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD44.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "BIOMES\BARREN\HQ\FOLIAGE\BARRENGRASSLARGE.SCENE.MBIN.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD45.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVESMALLFLOWERS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD46.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS\PLANETS\BIOMES\FROZEN\SMALLPROPS\SNOWFRAGMENTS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD47.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLFLOWERS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD48.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/PLANTS/SMALLPLANT.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD49.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/CRYSTALTINY.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD50.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERN.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD51.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/LAVAGEMS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD52.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/SCORCHED/SMALL/LEAFDROPLET.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD53.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/SCORCHED/SMALL/SMALLROCK.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD54.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/LUSHROOM/SMALLSHROOMCLUSTER.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD55.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/LUSHROOM/SMALLBLUESHROOMS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD56.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/HQLUSHULTRA/DECORATIVEFERN.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD57.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/LIVINGSHIP/SMALL/SMALLTENDRIL.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD58.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassSparse, "MODELS/PLANETS/BIOMES/COMMON/GRASS/LONGALTGRASS.SCENE.MBIN")
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"CUSTOMBIOMES/GROUNDDETAIL/GHOSTLYDEAD59.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= AddGroundDetail(AddTheGrassVerySparse, "MODELS/PLANETS/BIOMES/TOXIC/SMALL/SPORETUBESMALL.SCENE.MBIN")
				},
				
				
				
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = 13. PATCH SCALE/REGION SCALE/SPAWN DENSITY CHANGES = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--Modifies placement/regions on a planet, i.e. high density areas & expansive open areas
						
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","FOREST",}, --v2.1: Changed these to * 1.5
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplierJustForest}, 	-- Original "64"
								{"RegionScale",				PatchsizeRegionScaleMultiplierJustForest},		-- Original "6"
							}
						},
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","BIOMEPLANT",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "550"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- "0.2"
							-- }
						-- },
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "100"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.75"
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "590"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.1"
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "610"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.1"
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Name","RARE3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "650"
								{"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.1"
							}
						},
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","UNDERGROUND",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "150"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "1"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","SPARSECLUMP",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "30"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "5"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","BARRENROCKCLUMP",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "25"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "8"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","FLORACLUMP",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "5"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "5"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","STORMCRYST",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "220"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "1"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","WILDPLANTS",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplier}, 	-- Original "120"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplier}		-- Original "0.6"
							-- }
						-- },
						-- {
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["SPECIAL_KEY_WORDS"] = {"Name","GRASS",},
							-- ["VALUE_CHANGE_TABLE"] 	= 		
							-- {
								-- {"PatchSize",				PatchsizeRegionScaleMultiplierForest}, 	-- Original "100"
								-- {"RegionScale",				PatchsizeRegionScaleMultiplierForest}		-- Original "5"
							-- }
						-- },
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = 14. FAST START CHANGES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--makes boot load time faster, doesn't remove mod warning
						
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\UI\BOOTLOGOPC.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_MATCH"] = "TEXTURES/UI/LOADING/HGLOGOBLACKBGSMALL.DDS",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            ["VALUE_MATCH"] = "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "DisplayTime",
                            ["REPLACE_TYPE"]  = "ALL",
                            ["MATH_OPERATION"]  = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE","0"},
                            }
                        },
                    }
                }
            }
        },
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = 15. REMOVE ROCKS/HAZARD PLANTS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/FULL.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/LOW.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/MID.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
                        },
                    }
                },
				--Replace 2 hazard plants with shield plants
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
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
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
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/VENUSFLYTRAP.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
							}
						},	

					},
				},
				

				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddShieldPlantCollisions,
						},
					}
				},
				
				--v5.61: To change original dandelion grass material flags (= multishade & white dandelion)
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
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\NEWCROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{



						--REMOVE new grass_curly option (no old version of this model)
						
						{
							["SPECIAL_KEY_WORDS"] = {"Id","_GRASS_CURLY",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{


						--Reorder descriptor to match newcrossgrass
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["ADD"] = replaceCGDesc,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
				

            }
        },
    },
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE