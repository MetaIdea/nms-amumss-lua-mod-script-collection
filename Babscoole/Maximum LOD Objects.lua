NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Maximum LOD Objects",
["MOD_AUTHOR"]      = "fabricator",
["LUA_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "Increases the draw distance of crystals and mountain objects on all planets & increases the density and distance of the objects on dead planets",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSFULL.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR1.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR2.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSOBJECTSVAR3.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKS.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\MOUNTAIN\MOUNTAINROCKSCRUB.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FadeOutStartDistance", "9999.000000"},
                {"FadeOutEndDistance",   "9999.000000"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Filename", "MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN"},
                {"Filename", "MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN"},
              },
              ["SECTION_UP_SPECIAL"] = 1,
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxRegionRadius", "3"},
              }
            }
          }
        },
      }
    }
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADOBJECTSDEAD.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cGcExternalObjectList">
	<Property name="Objects" value="GcEnvironmentSpawnData">
		<Property name="Creatures" />
		<Property name="DistantObjects">
			<Property name="DistantObjects" value="GcObjectSpawnData" _index="0">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.100000" />
						<Property name="FlatDensity" value="0.030000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="3" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="SPARSECLUMP" />
				<Property name="PlacementPriority" value="Normal" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.500000" />
				<Property name="MaxScale" value="6.400000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="40.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="true" />
				<Property name="CollideWithPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
			<Property name="DistantObjects" value="GcObjectSpawnData" _index="1">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="2.000000" />
						<Property name="FlatDensity" value="0.005000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="3" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
						<Property name="ID" value="ULTRA" />
						<Property name="Coverage" value="2.000000" />
						<Property name="FlatDensity" value="0.005000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="3" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="SPARSECLUMP" />
				<Property name="PlacementPriority" value="Normal" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.400000" />
				<Property name="MaxScale" value="6.100000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="20.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="true" />
				<Property name="CollideWithPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
			<Property name="DistantObjects" value="GcObjectSpawnData" _index="2">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.300000" />
						<Property name="FlatDensity" value="0.050000" />
						<Property name="SlopeDensity" value="0.050000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="3" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
						<Property name="ID" value="ULTRA" />
						<Property name="Coverage" value="0.300000" />
						<Property name="FlatDensity" value="0.050000" />
						<Property name="SlopeDensity" value="0.050000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="3" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="BLANKETCLUMP" />
				<Property name="PlacementPriority" value="Low" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.200000" />
				<Property name="MaxScale" value="5.600000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="20.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="true" />
				<Property name="CollideWithPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
		</Property>
		<Property name="Landmarks" />
		<Property name="Objects">
			<Property name="Objects" value="GcObjectSpawnData" _index="0">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/MEDIUMBOULDER02.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.100000" />
						<Property name="FlatDensity" value="0.030000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="30" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="SPARSECLUMP" />
				<Property name="PlacementPriority" value="Normal" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.500000" />
				<Property name="MaxScale" value="1.400000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="40.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="true" />
				<Property name="CollideWithPlayerVehicle" value="false" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
			<Property name="Objects" value="GcObjectSpawnData" _index="1">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="2.000000" />
						<Property name="FlatDensity" value="0.005000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
						<Property name="ID" value="ULTRA" />
						<Property name="Coverage" value="2.000000" />
						<Property name="FlatDensity" value="0.005000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="SPARSECLUMP" />
				<Property name="PlacementPriority" value="Normal" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.400000" />
				<Property name="MaxScale" value="1.100000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="20.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="false" />
				<Property name="CollideWithPlayerVehicle" value="false" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
			<Property name="Objects" value="GcObjectSpawnData" _index="2">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.100000" />
						<Property name="FlatDensity" value="0.040000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
						<Property name="ID" value="ULTRA" />
						<Property name="Coverage" value="0.100000" />
						<Property name="FlatDensity" value="0.040000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="ROCKCLUMP" />
				<Property name="PlacementPriority" value="Normal" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.200000" />
				<Property name="MaxScale" value="0.400000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="40.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="true" />
				<Property name="CollideWithPlayerVehicle" value="false" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
			<Property name="Objects" value="GcObjectSpawnData" _index="3">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.200000" />
						<Property name="FlatDensity" value="0.058000" />
						<Property name="SlopeDensity" value="0.018000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
						<Property name="ID" value="ULTRA" />
						<Property name="Coverage" value="0.200000" />
						<Property name="FlatDensity" value="0.058000" />
						<Property name="SlopeDensity" value="0.018000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="ROCKCLUMP" />
				<Property name="PlacementPriority" value="Normal" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.300000" />
				<Property name="MaxScale" value="0.500000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="40.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="false" />
				<Property name="CollideWithPlayerVehicle" value="false" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
			<Property name="Objects" value="GcObjectSpawnData" _index="4">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLBOULDER05.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.300000" />
						<Property name="FlatDensity" value="0.050000" />
						<Property name="SlopeDensity" value="0.050000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="5" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
						<Property name="ID" value="ULTRA" />
						<Property name="Coverage" value="0.300000" />
						<Property name="FlatDensity" value="0.050000" />
						<Property name="SlopeDensity" value="0.050000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="7" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="BLANKETCLUMP" />
				<Property name="PlacementPriority" value="Low" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.200000" />
				<Property name="MaxScale" value="0.600000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="20.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="false" />
				<Property name="CollideWithPlayerVehicle" value="false" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
			<Property name="Objects" value="GcObjectSpawnData" _index="5">
				<Property name="Resource" value="GcResourceElement">
					<Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN" />
					<Property name="Seed" value="NONE" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
						<Property name="Samplers" />
					</Property>
					<Property name="AltId" value="" />
				</Property>
				<Property name="DebugName" value="" />
				<Property name="Type" value="Instanced" />
				<Property name="ImposterActivation" value="TkImposterActivation">
					<Property name="ImposterActivation" value="Default" />
				</Property>
				<Property name="ImposterType" value="TkImposterType">
					<Property name="ImposterType" value="Hemispherical" />
				</Property>
				<Property name="QualityVariants">
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
						<Property name="ID" value="STANDARD" />
						<Property name="Coverage" value="0.100000" />
						<Property name="FlatDensity" value="0.040000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
					<Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
						<Property name="ID" value="ULTRA" />
						<Property name="Coverage" value="0.100000" />
						<Property name="FlatDensity" value="0.040000" />
						<Property name="SlopeDensity" value="0.010000" />
						<Property name="SlopeMultiplier" value="1.000000" />
						<Property name="LodDistances">
							<Property name="LodDistances" value="0.000000" _index="0" />
							<Property name="LodDistances" value="20.000000" _index="1" />
							<Property name="LodDistances" value="60.000000" _index="2" />
							<Property name="LodDistances" value="150.000000" _index="3" />
							<Property name="LodDistances" value="500.000000" _index="4" />
						</Property>
						<Property name="MaxRegionRadius" value="10" />
						<Property name="MaxImposterRadius" value="10" />
						<Property name="FadeOutStartDistance" value="9999.000000" />
						<Property name="FadeOutEndDistance" value="9999.000000" />
						<Property name="FadeOutOffsetDistance" value="10.000000" />
					</Property>
				</Property>
				<Property name="Placement" value="BLANKETCLUMP" />
				<Property name="PlacementPriority" value="Normal" />
				<Property name="AlignToNormal" value="true" />
				<Property name="MinScale " value="0.400000" />
				<Property name="MaxScale" value="1.200000" />
				<Property name="MinScaleY" value="1.000000" />
				<Property name="MaxScaleY" value="1.000000" />
				<Property name="SlopeScaling" value="1.000000" />
				<Property name="PatchEdgeScaling" value="0.000000" />
				<Property name="MaxXZRotation" value="0.000000" />
				<Property name="MaxYRotation" value="180.000000" />
				<Property name="MaxRaise" value="0.000000" />
				<Property name="MaxLower" value="0.000000" />
				<Property name="UseMultipleUpgradeRays" value="false" />
				<Property name="Order" value="0" />
				<Property name="Seed" value="NONE" />
				<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
				<Property name="OverlapStyle" value="All" />
				<Property name="MinAngle" value="0.000000" />
				<Property name="MaxAngle" value="60.000000" />
				<Property name="MinHeight" value="-1.000000" />
				<Property name="MaxHeight" value="128.000000" />
				<Property name="RelativeToSeaLevel" value="true" />
				<Property name="MatchGroundColour" value="true" />
				<Property name="GroundColourIndex" value="Auto" />
				<Property name="SwapPrimaryForSecondaryColour" value="false" />
				<Property name="SwapPrimaryForRandomColour" value="false" />
				<Property name="AutoCollision" value="false" />
				<Property name="CollideWithPlayer" value="true" />
				<Property name="CollideWithPlayerVehicle" value="false" />
				<Property name="DestroyedByPlayerVehicle" value="true" />
				<Property name="DestroyedByPlayerShip" value="true" />
				<Property name="DestroyedByTerrainEdit" value="true" />
				<Property name="InvisibleToCamera" value="true" />
				<Property name="CreaturesCanEat" value="false" />
				<Property name="ShearWindStrength" value="0.000000" />
				<Property name="SupportsScanToReveal" value="false" />
				<Property name="MoveToGroundOnUpgrade" value="false" />
				<Property name="IsFloatingIsland" value="false" />
				<Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
				<Property name="AltResources" />
				<Property name="ExtraTileTypes" />
				<Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
					<Property name="ID" value="STANDARD" />
					<Property name="Coverage" value="0.200000" />
					<Property name="FlatDensity" value="0.500000" />
					<Property name="SlopeDensity" value="0.000000" />
					<Property name="SlopeMultiplier" value="3.000000" />
					<Property name="LodDistances">
						<Property name="LodDistances" value="0.000000" _index="0" />
						<Property name="LodDistances" value="0.000000" _index="1" />
						<Property name="LodDistances" value="0.000000" _index="2" />
						<Property name="LodDistances" value="0.000000" _index="3" />
						<Property name="LodDistances" value="0.000000" _index="4" />
					</Property>
					<Property name="MaxRegionRadius" value="9999" />
					<Property name="MaxImposterRadius" value="10" />
					<Property name="FadeOutStartDistance" value="9999.000000" />
					<Property name="FadeOutEndDistance" value="9999.000000" />
					<Property name="FadeOutOffsetDistance" value="0.000000" />
				</Property>
			</Property>
		</Property>
		<Property name="DetailObjects" />
		<Property name="SelectableObjects">
			<Property name="SelectableObjects" value="GcSelectableObjectSpawnList" _index="0">
				<Property name="Name" value="" />
				<Property name="Objects" />
			</Property>
			<Property name="SelectableObjects" value="GcSelectableObjectSpawnList" _index="1">
				<Property name="Name" value="" />
				<Property name="Objects" />
			</Property>
			<Property name="SelectableObjects" value="GcSelectableObjectSpawnList" _index="2">
				<Property name="Name" value="" />
				<Property name="Objects" />
			</Property>
			<Property name="SelectableObjects" value="GcSelectableObjectSpawnList" _index="3">
				<Property name="Name" value="" />
				<Property name="Objects" />
			</Property>
			<Property name="SelectableObjects" value="GcSelectableObjectSpawnList" _index="4">
				<Property name="Name" value="" />
				<Property name="Objects" />
			</Property>
		</Property>
	</Property>
</Data>
]]
    },
  }
}
