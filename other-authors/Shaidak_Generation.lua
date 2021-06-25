----------------------------------------------------------------------------------------------
------------------------------------------- GLOBALS ------------------------------------------
----------------------------------------------------------------------------------------------

ExtMbin					= ".MBIN"
ExtSceneObj				= ".SCENE"..ExtMbin

TRUE					= "TRUE"
FALSE					= "FALSE"

Preset = {
	Dead				= "DEAD",
	Full				= "FULL",
	Low					= "LOW",
	Mid					= "MID",
}

PathToBiomes			= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES"
PathToBiomeModels		= "MODELS/PLANETS/BIOMES/"

BiomePath = {
	Frozen				= "\FROZEN\FROZEN",
	Lush				= "\LUSH\LUSH",
	Radioactive			= "\RADIOACTIVE\RADIOACTIVE",
	Scorched			= "\SCORCHED\SCORCHED",
	Toxic				= "\TOXIC\TOXIC",
}

ModelPath = {
	Common = {
		RockShape		= "COMMON/ROCKS/LARGE/PROCSHAPE1",
	},
	Frozen = {
		RockLarge		= "FROZEN/LARGEPROPS/LARGEROCKS",
		TreeLarge		= "FROZEN/LARGEPROPS/LARGETREE",
		TreeBareLarge	= "FROZEN/LARGEPROPS/LARGETREEBARE",
	},
	FrozenHQ = {
		PineHero		= "HQFROZEN/TREES/HEROPINE",
		PineSkinny		= "HQFROZEN/TREES/SKINNYPINE",
		PineTall		= "HQFROZEN/TREES/TALLPINE",
		RockIceLarge	= "HQFROZEN/LARGEPROPS/LARGEICEROCK_1",
		RockLarge		= "HQFROZEN/LARGEPROPS/LARGEROCK_1",
		RockStackLarge	= "HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1",
		TreeBareLarge	= "HQFROZEN/FOLIAGE/LARGETREEBARE",
	},
	LushHQ = {
		TreeHQ			= "HQLUSH/HQTREES/HQTREEREF",
	},
	Radioactive = {
		RockCurved		= "RADIOACTIVE/LARGE/CURVEDROCK",
		TreeRad			= "RADIOACTIVE/LARGE/RADIOACTIVETREE",
	},
	Scorched = {
		SpireLarge		= "SCORCHED/LARGE/LARGESPIRE",
		SpireMedium		= "SCORCHED/MEDIUM/MEDIUMSPIRE",
	},
	Toxic = {
		Tendril			= "TOXIC/LARGE/TENDRIL",
		TreeFungal		= "TOXIC/LARGE/FUNGALTREE",
	},
}

Placement = {
	BlanketClump		= "BLANKETCLUMP",
	BlanketClumpX		= "BLANKETCLUMPX",
	FloraClump			= "FLORACLUMP",
	Forest				= "FOREST",
	GrassClump			= "GRASSCLUMP",
	RockClump			= "ROCKCLUMP",
	RockBarrenClump		= "BARRENROCKCLUMP",
	SparseClump			= "SPARSECLUMP",
}

Priority = {
	Max					= "High",
	Mid					= "Normal",
	Min					= "Low",
}

Colour = {
	Pri					= { FALSE, FALSE, },
	Sec					= { TRUE, FALSE, },
	Ran					= { FALSE, TRUE, },
}

Coverage = {
	LargeF				= 0.62,
	LargeE				= 0.56,
	LargeD				= 0.52,
	LargeC				= 0.48,
	LargeB				= 0.44,
	LargeA				= 0.38,
	Normal				= 0.32,
	SmallA				= 0.26,
	SmallB				= 0.22,
	SmallC				= 0.18,
	SmallD				= 0.14,
	SmallE				= 0.08,
	SmallF				= 0.04,
}

Density = {
	HighE				= 0.048,
	HighD				= 0.042,
	HighC				= 0.038,
	HighB				= 0.032,
	HighA				= 0.028,
	Mid					= 0.024,
	LowA				= 0.020,
	LowB				= 0.018,
	LowC				= 0.012,
	LowD				= 0.009,
	LowE				= 0.006,
	LowF				= 0.003,
	LowG				= 0.0015,
}

MaxAngle = {
	Inv					= 180,
	AvA					= 60,
	AvB					= 55,
	AvC					= 50,
	AvD					= 45,
	AvE					= 40,
	AvF					= 35,
}

MaxXZRotation = {
	Min					= 0,
	Mid					= 5,
	Max					= 10,
}

Scale = {
	LargeE				= { 6, 9, },
	LargeD				= { 5, 8, },
	LargeCE				= { 4, 9, },
	LargeC				= { 4, 6, },
	LargeB				= { 3, 5, },
	LargeA				= { 2, 3, },
	NormalA				= { 1, 3, },
	Normal				= { 1, 2, },
	SmallA				= { 0.6, 1.4, },
}

Mod = {
	DensityThreshold = {
		High			= Density.HighB,
		Mid				= Density.LowA,
		Low				= Density.LowC,
	},

	DensityModifier = {
		High			= 0.008,
		Mid				= 0.004,
		Low				= 0.001,
	},

	Preset = {
		Lowest			= 4,
		Low				= 3,
		Medium			= 2,
		High			= 1,
		Highest			= 0,
	},

	Template			= "Highest",
	Version				= "6.0",
}

----------------------------------------------------------------------------------------------
------------------------------------------ FUNCTIONS -----------------------------------------
----------------------------------------------------------------------------------------------

--- TODO
function generate_path_to_biome(inBiomePath, inPreset, inIsHQ)
	inBiomePath = PathToBiomes..inBiomePath

	if inIsHQ then
		inBiomePath = inBiomePath.."HQ"
	end

	return inBiomePath.."OBJECTS"..inPreset..ExtMbin
end

--- TODO
function generate_path_to_model(inModel)
	return PathToBiomeModels..inModel..ExtSceneObj
end

--- TODO
function get_max_angle_from_scale(inScale)
	local scaleRef = inScale[2]

	if scaleRef <= Scale.Normal[2] then
		return MaxAngle.AvA
	elseif scaleRef <= Scale.LargeA[2] then
		return MaxAngle.AvB
	elseif scaleRef <= Scale.LargeC[2] then
		return MaxAngle.AvC
	else
		return MaxAngle.AvD
	end
end

--- Generates an object used to fill a "GcObjectSpawnData.xml" based on the provided parameters
-- @param inFilename The name of the file (with the biome's path) containing the object to instanciate (i.e: "HQLUSH/HQTREES/HQTREEREF", ...)
-- @param inPlacement The area on which the objects will be spawned (i.e: FOREST, SPARSECLUMP, ...)
-- @param inPriority The priority used to place the objects (High, Normal or Low)
-- @param inCoverage The area in which the objects will be placed
-- @param inDensity The density of the objects in the given area
-- @param inScale The scale of the objects to place (range => min & max)
-- @param inMaxAngle The maximum ground angle allowed to place an object
-- @param inIsPatchEdgeScaling Does the edge of a populated area scales down (smaller objects on the outer layers of the area)
-- @param inMaxXZRotation [Optional (default = 0)] The maximum rotation an object is allowed to have (slightly inclined from a 90° standard)
-- @param inColour [Optional (default = Primary)] The colour to use for these objects (3 possibilities only: Primary, Secondary or Random)
function generate_object_data(inFilename, inPlacement, inPriority, inCoverage, inDensity, inScale, inMaxAngle, inIsPatchEdgeScaling, inMaxXZRotation, inColour)
	inMaxXZRotation = inMaxXZRotation or MaxXZRotation.Min
	inColour = inColour or Colour.Pri
	
	local patchEdgeScaling = 0
	local densityModifier = 0
	local presetValue = Mod.Preset[Mod.Template]

	if inIsPatchEdgeScaling then
		patchEdgeScaling = inCoverage
	end
	
	if inDensity > Mod.DensityThreshold.High then
		densityModifier = Mod.DensityModifier.High * presetValue
	elseif inDensity > Mod.DensityThreshold.Mid then
		densityModifier = Mod.DensityModifier.Mid * presetValue
	elseif inDensity > Mod.DensityThreshold.Low then
		densityModifier = Mod.DensityModifier.Low * presetValue
	end

	inDensity = inDensity - densityModifier

	return {
		Filename						= generate_path_to_model(inFilename),
		Placement						= inPlacement,
		PlacementPriority				= inPriority,
		Coverage						= inCoverage,
		FlatDensity						= inDensity,
		MinScale						= inScale[1],
		MaxScale						= inScale[2],
		MaxAngle						= inMaxAngle,
		MaxXZRotation					= inMaxXZRotation,
		PatchEdgeScaling				= patchEdgeScaling,
		SwapPrimaryForSecondaryColour	= inColour[1],
		SwapPrimaryForRandomColour		= inColour[2],
	}
end

--- Generates a flora data object
function generate_object_data_flora(inFilename, inPlacement, inPriority, inCoverage, inDensity, inScale, inColour, inMaxAngle)
	inMaxAngle = inMaxAngle or get_max_angle_from_scale(inScale)
	return generate_object_data(inFilename, inPlacement, inPriority, inCoverage, inDensity, inScale, inMaxAngle, true, MaxXZRotation.Mid, inColour)
end

--- Generates a mineral data object
function generate_object_data_mineral(inFilename, inPlacement, inPriority, inCoverage, inDensity, inScale, inMaxAngle)
	inMaxAngle = inMaxAngle or MaxAngle.AvA
	return generate_object_data(inFilename, inPlacement, inPriority, inCoverage, inDensity, inScale, inMaxAngle, false, MaxXZRotation.Max)
end

--- @TODO
function generate_object_header(inFileName)
	return [[
		<Property value="GcObjectSpawnData.xml">
			<Property name="DebugName" value="" />
			<Property name="Type" value="Instanced" />
			<Property name="Resource" value="GcResourceElement.xml">
				<Property name="Filename" value="]]..inFileName..[[" />
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
			<Property name="PlacementSeed" value="GcSeed.xml">
				<Property name="Seed" value="0" />
				<Property name="UseSeedValue" value="False" />
			</Property>
			<Property name="SlopeMultiplier" value="0" />
			<Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
			<Property name="OverlapStyle" value="None" />
			<Property name="MinHeight" value="-1" />
			<Property name="MaxHeight" value="128" />
			<Property name="RelativeToSeaLevel" value="True" />
			<Property name="MinAngle" value="0" />
			<Property name="MinRegionRadius" value="0" />
			<Property name="MaxRegionRadius" value="3" />
			<Property name="MaxImposterRadius" value="99" />
			<Property name="FadeInStartDistance" value="0" />
			<Property name="FadeInEndDistance" value="0" />
			<Property name="FadeInOffsetDistance" value="0" />
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
			<Property name="MatchGroundColour" value="False" />
			<Property name="GroundColourIndex" value="Auto" />
			<Property name="AlignToNormal" value="False" />
			<Property name="MinScaleY" value="1" />
			<Property name="MaxScaleY" value="1" />
			<Property name="SlopeScaling" value="1" />
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
	]]
end

--- Used to add an object to the landmark section (usually trees or big minerals / plants)
-- @param inObject The object used to fill the properties
-- @return The object created as a string (<Property value="GcObjectSpawnData.xml"> with all its contents)
function generate_object(inObject)
	return generate_object_header(inObject.Filename)..[[
			<Property name="Placement" value="]]..inObject.Placement..[[" />
			<Property name="PlacementPriority" value="]]..inObject.PlacementPriority..[[" />
			<Property name="Coverage" value="]]..inObject.Coverage..[[" />
			<Property name="FlatDensity" value="]]..inObject.FlatDensity..[[" />
			<Property name="SlopeDensity" value="]]..inObject.FlatDensity..[[" />
			<Property name="MaxAngle" value="]]..inObject.MaxAngle..[[" />
			<Property name="SwapPrimaryForSecondaryColour" value="]]..inObject.SwapPrimaryForSecondaryColour..[[" />
			<Property name="SwapPrimaryForRandomColour" value="]]..inObject.SwapPrimaryForRandomColour..[[" />
			<Property name="MinScale" value="]]..inObject.MinScale..[[" />
			<Property name="MaxScale" value="]]..inObject.MaxScale..[[" />
			<Property name="PatchEdgeScaling" value="]]..inObject.PatchEdgeScaling..[[" />
			<Property name="MaxXZRotation" value="]]..inObject.MaxXZRotation..[[" />
		</Property>
	]]
end

--- @TODO
function generate_biome_objects(InPresetObjects)
	local biomeObjects = "";

	for index, obj in ipairs(InPresetObjects) do
		biomeObjects = biomeObjects..generate_object(obj)
	end

	return biomeObjects
end

function add_objects_to_biome(inBiomePath, inPresetName, inObjects, inIsHQ)
	return {
		["MBIN_FILE_SOURCE"] 	= generate_path_to_biome(inBiomePath, inPresetName, inIsHQ),
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = { "Landmarks" },
				["ADD"] = generate_biome_objects(inObjects),
			}
		},
	}
end

--- Used to remove a given amount of objects at the current position in the current file
-- @param inCount The number of objects to remove
-- @return The array of instructions to provide to the "EXML_CHANGE_TABLE" in order to remove the objects
function remove_objects(inCount)
	local sections = {};

	for index=1,inCount do
		sections[index] = {
			["SPECIAL_KEY_WORDS"]	= { "Type", "Instanced", },
			["PRECEDING_KEY_WORDS"] = { "GcObjectSpawnData.xml" },
			["REMOVE"] 				= "SECTION",
		}
	end

	return sections
end

--- @TODO
function remove_objects_from_biome(inBiomePath, inPresetName, inCount, inIsHQ)
	return {
		["MBIN_FILE_SOURCE"] 	= generate_path_to_biome(inBiomePath, inPresetName, inIsHQ),
		["EXML_CHANGE_TABLE"] 	= remove_objects(inCount),
	}
end

----------------------------------------------------------------------------------------------
------------------------------------------ ENTITIES ------------------------------------------
----------------------------------------------------------------------------------------------

Presets = {
	Frozen = {
		Full = {
			generate_object_data_flora(ModelPath.Frozen.TreeLarge, Placement.Forest, Priority.Max, Coverage.LargeC, Density.LowB, Scale.LargeD, Colour.Ran),
			generate_object_data_flora(ModelPath.Frozen.TreeLarge, Placement.Forest, Priority.Mid, Coverage.LargeD, Density.LowA, Scale.LargeC),
			generate_object_data_flora(ModelPath.Frozen.TreeLarge, Placement.Forest, Priority.Min, Coverage.LargeE, Density.Mid, Scale.LargeB, Colour.Sec),

			generate_object_data_flora(ModelPath.Frozen.TreeLarge, Placement.FloraClump, Priority.Mid, Coverage.SmallC, Density.Mid, Scale.LargeA),
			generate_object_data_flora(ModelPath.Frozen.TreeBareLarge, Placement.FloraClump, Priority.Min, Coverage.SmallB, Density.HighC, Scale.Normal),

			generate_object_data_mineral(ModelPath.Frozen.RockLarge, Placement.SparseClump, Priority.Min, Coverage.SmallB, Density.LowD, Scale.SmallA, MaxAngle.AvC),

			generate_object_data_flora(ModelPath.Frozen.TreeBareLarge, Placement.SparseClump, Priority.Min, Coverage.SmallC, Density.HighB, Scale.SmallA),
		},
		MidHQ = {
			generate_object_data_flora(ModelPath.FrozenHQ.PineTall, Placement.Forest, Priority.Max, Coverage.LargeC, Density.LowC, Scale.LargeCE),
			generate_object_data_flora(ModelPath.FrozenHQ.PineTall, Placement.Forest, Priority.Mid, Coverage.LargeD, Density.LowA, Scale.LargeB),
			generate_object_data_mineral(ModelPath.FrozenHQ.PineHero, Placement.Forest, Priority.Min, Coverage.SmallB, Density.LowD, Scale.LargeC),
			
			generate_object_data_flora(ModelPath.FrozenHQ.PineSkinny, Placement.FloraClump, Priority.Mid, Coverage.LargeA, Density.LowA, Scale.LargeA),
			generate_object_data_mineral(ModelPath.FrozenHQ.RockIceLarge, Placement.FloraClump, Priority.Max, Coverage.SmallD, Density.LowD, Scale.Normal, MaxAngle.AvF),
			generate_object_data_mineral(ModelPath.FrozenHQ.RockLarge, Placement.FloraClump, Priority.Mid, Coverage.SmallD, Density.LowD, Scale.Normal, MaxAngle.AvF),
			
			generate_object_data_flora(ModelPath.FrozenHQ.PineSkinny, Placement.SparseClump, Priority.Mid, Coverage.Normal, Density.LowA, Scale.Normal),
			generate_object_data_mineral(ModelPath.FrozenHQ.RockStackLarge, Placement.SparseClump, Priority.Min, Coverage.SmallC, Density.LowC, Scale.SmallA, MaxAngle.AvF),
			generate_object_data_flora(ModelPath.Frozen.TreeBareLarge, Placement.SparseClump, Priority.Min, Coverage.SmallC, Density.LowC, Scale.SmallA),

			generate_object_data_flora(ModelPath.Frozen.TreeBareLarge, Placement.BlanketClumpX, Priority.Min, Coverage.SmallC, Density.LowC, Scale.SmallA),
		},
	},
	Lush = {
		Full = {
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Max, Coverage.LargeB, Density.LowB, Scale.LargeC, Colour.Ran),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Mid, Coverage.LargeC, Density.LowA, Scale.LargeB, Colour.Pri),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Min, Coverage.LargeD, Density.Mid, Scale.LargeA, Colour.Sec),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Min, Coverage.LargeF, Density.HighC, Scale.Normal, Colour.Ran),

			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.FloraClump, Priority.Mid, Coverage.SmallD, Density.LowA, Scale.LargeB, Colour.Pri),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.FloraClump, Priority.Min, Coverage.SmallC, Density.Mid, Scale.LargeA, Colour.Sec),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.FloraClump, Priority.Min, Coverage.SmallB, Density.HighC, Scale.Normal, Colour.Sec),

			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.SparseClump, Priority.Min, Coverage.SmallD, Density.Mid, Scale.Normal, Colour.Pri),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.SparseClump, Priority.Min, Coverage.SmallC, Density.HighB, Scale.SmallA, Colour.Ran),
		},
		Mid	= {
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Max, Coverage.LargeB, Density.LowA, Scale.LargeB, Colour.Ran),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Mid, Coverage.LargeC, Density.Mid, Scale.LargeA, Colour.Pri),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Min, Coverage.LargeD, Density.HighA, Scale.Normal, Colour.Sec),

			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.FloraClump, Priority.Min, Coverage.SmallD, Density.HighA, Scale.LargeA, Colour.Pri),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.FloraClump, Priority.Min, Coverage.SmallC, Density.HighB, Scale.Normal, Colour.Sec),
			
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.SparseClump, Priority.Min, Coverage.SmallC, Density.Mid, Scale.SmallA, Colour.Ran),
		},
		Low	= {
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Mid, Coverage.LargeA, Density.Mid, Scale.LargeA, Colour.Ran),
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.Forest, Priority.Min, Coverage.LargeB, Density.HighA, Scale.Normal, Colour.Sec),
			
			generate_object_data_flora(ModelPath.LushHQ.TreeHQ, Placement.SparseClump, Priority.Mid, Coverage.SmallD, Density.LowC, Scale.SmallA, Colour.Sec),
		},
	},
	Radioactive = {
		Full = {
			generate_object_data_flora(ModelPath.Radioactive.TreeRad, Placement.RockBarrenClump, Priority.Max, Coverage.Normal, Density.Mid, Scale.LargeC, Colour.Ran),
			generate_object_data_flora(ModelPath.Radioactive.TreeRad, Placement.RockBarrenClump, Priority.Mid, Coverage.LargeA, Density.HighA, Scale.LargeB, Colour.Pri),
			generate_object_data_flora(ModelPath.Radioactive.TreeRad, Placement.RockBarrenClump, Priority.Min, Coverage.LargeB, Density.HighB, Scale.Normal, Colour.Sec),

			generate_object_data_flora(ModelPath.Radioactive.TreeRad, Placement.FloraClump, Priority.Mid, Coverage.SmallB, Density.HighB, Scale.Normal, Colour.Pri),

			generate_object_data_mineral(ModelPath.Common.RockShape, Placement.GrassClump, Priority.Min, Coverage.SmallD, Density.LowB, Scale.NormalA, MaxAngle.AvB),

			generate_object_data_mineral(ModelPath.Radioactive.RockCurved, Placement.BlanketClump, Priority.Min, Coverage.SmallD, Density.LowE, Scale.SmallA, MaxAngle.AvD),
		},
	},
	Scorched = {
		Full = {
			generate_object_data_flora(ModelPath.Scorched.SpireLarge, Placement.FloraClump, Priority.Mid, Coverage.Normal, Density.LowC, Scale.LargeCE, Colour.Ran, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Scorched.SpireMedium, Placement.FloraClump, Priority.Min, Coverage.LargeA, Density.LowB, Scale.LargeB, Colour.Pri, MaxAngle.AvB),

			generate_object_data_flora(ModelPath.Scorched.SpireLarge, Placement.RockBarrenClump, Priority.Max, Coverage.SmallB, Density.LowB, Scale.LargeD, Colour.Ran, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Scorched.SpireLarge, Placement.RockBarrenClump, Priority.Mid, Coverage.SmallA, Density.LowA, Scale.LargeCE, Colour.Pri, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Scorched.SpireMedium, Placement.RockBarrenClump, Priority.Min, Coverage.Normal, Density.Mid, Scale.LargeA, Colour.Sec, MaxAngle.AvB),

			generate_object_data_flora(ModelPath.Scorched.SpireMedium, Placement.SparseClump, Priority.Min, Coverage.SmallA, Density.Mid, Scale.SmallA, Colour.Sec, MaxAngle.AvD),
		},
	},
	Toxic = {
		Full = {
			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.RockBarrenClump, Priority.Max, Coverage.LargeB, Density.LowC, Scale.LargeCE, Colour.Ran, MaxAngle.AvB),
			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.RockBarrenClump, Priority.Mid, Coverage.LargeC, Density.LowB, Scale.LargeB, Colour.Pri, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.RockBarrenClump, Priority.Mid, Coverage.LargeD, Density.LowA, Scale.NormalA, Colour.Ran, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Toxic.Tendril, Placement.RockBarrenClump, Priority.Min, Coverage.LargeD, Density.HighA, Scale.LargeA, Colour.Sec, MaxAngle.AvA),

			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.RockClump, Priority.Mid, Coverage.SmallB, Density.HighA, Scale.SmallA, Colour.Ran, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Toxic.Tendril, Placement.RockClump, Priority.Min, Coverage.SmallA, Density.LowA, Scale.LargeA, Colour.Sec, MaxAngle.AvA),

			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.GrassClump, Priority.Min, Coverage.SmallC, Density.HighC, Scale.Normal, Colour.Sec, MaxAngle.AvA),
		},
		Mid	= {
			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.RockBarrenClump, Priority.Max, Coverage.LargeB, Density.LowA, Scale.LargeB, Colour.Pri, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.RockBarrenClump, Priority.Mid, Coverage.LargeC, Density.Mid, Scale.NormalA, Colour.Ran, MaxAngle.AvA),
			generate_object_data_flora(ModelPath.Toxic.Tendril, Placement.RockBarrenClump, Priority.Min, Coverage.LargeC, Density.HighA, Scale.SmallA, Colour.Sec, MaxAngle.AvA),

			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.RockClump, Priority.Mid, Coverage.SmallC, Density.Mid, Scale.SmallA, Colour.Ran, MaxAngle.AvA),

			generate_object_data_flora(ModelPath.Toxic.TreeFungal, Placement.GrassClump, Priority.Min, Coverage.SmallC, Density.HighC, Scale.Normal, Colour.Sec, MaxAngle.AvA),
		},
	},
}

----------------------------------------------------------------------------------------------
------------------------------------------- PROCESS ------------------------------------------
----------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "_Shaidak.Shaidak_Generation_"..Mod.Version.."_"..Mod.Template..".pak",
["MOD_AUTHOR"]		= "Shaidak",
["MOD_DESCRIPTION"]	= "Enhances the generation of most planets by changing the density & diversity of flora/minerals",
["NMS_VERSION"]		= "2.13",
["MODIFICATIONS"]	=
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				----------------------------------------------------------------------------------------------
				---------------------------------------- TESTING ONLY ----------------------------------------
				----------------------------------------------------------------------------------------------
				-- {
				-- 	["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
				-- 	["EXML_CHANGE_TABLE"] 	=
				-- 	{
				-- 		{
				-- 			["REPLACE_TYPE"] 		= "ALL",
				-- 			["VALUE_MATCH_TYPE"] 	= "number",
				-- 			["VALUE_CHANGE_TABLE"] 	=
				-- 			{
				-- 				{ "Toxic", "9" },
				-- 			}
				-- 		}
				-- 	}
				-- },

				----------------------------------------------------------------------------------------------
				--------------------------------- ORIGINAL LANDMARKS REMOVAL ---------------------------------
				----------------------------------------------------------------------------------------------

				-- LUSH --

				remove_objects_from_biome(BiomePath.Lush, Preset.Full, 4, false),
				remove_objects_from_biome(BiomePath.Lush, Preset.Mid, 2, false),
				remove_objects_from_biome(BiomePath.Lush, Preset.Low, 1, false),

				remove_objects_from_biome(BiomePath.Lush, Preset.Full, 4, true),

				-- FROZEN --

				remove_objects_from_biome(BiomePath.Frozen, Preset.Full, 3, false),
				--remove_objects_from_biome(BiomePath.Frozen, Preset.Mid, 7, false),					-- Seems good enough on vanilla
				--remove_objects_from_biome(BiomePath.Frozen, Preset.Low, 4, false),					-- Seems good enough on vanilla

				remove_objects_from_biome(BiomePath.Frozen, Preset.Mid, 8, true),

				-- RADIOACTIVE --

				remove_objects_from_biome(BiomePath.Radioactive, Preset.Full, 4, false),
				--remove_objects_from_biome(BiomePath.Radioactive, Preset.Mid, 6, false),				-- Seems good enough on vanilla
				--remove_objects_from_biome(BiomePath.Radioactive, Preset.Low, 5, false),				-- Seems good enough on vanilla

				-- SCORCHED --

				remove_objects_from_biome(BiomePath.Scorched, Preset.Full, 4, false),
				--remove_objects_from_biome(BiomePath.Scorched, Preset.Mid, 4, false),					-- Seems good enough on vanilla
				--remove_objects_from_biome(BiomePath.Scorched, Preset.Low, 3, false),					-- Seems good enough on vanilla

				-- TOXIC --

				remove_objects_from_biome(BiomePath.Toxic, Preset.Full, 5, false),
				remove_objects_from_biome(BiomePath.Toxic, Preset.Mid, 4, false),
				--remove_objects_from_biome(BiomePath.Toxic, Preset.Low, 4, false),						-- Seems good enough on vanilla

				----------------------------------------------------------------------------------------------
				------------------------------------ SHAIDAK'S GENERATION ------------------------------------
				----------------------------------------------------------------------------------------------

				-- LUSH --

				add_objects_to_biome(BiomePath.Lush, Preset.Full, Presets.Lush.Full, false),
				add_objects_to_biome(BiomePath.Lush, Preset.Mid, Presets.Lush.Mid, false),
				add_objects_to_biome(BiomePath.Lush, Preset.Low, Presets.Lush.Low, false),

				add_objects_to_biome(BiomePath.Lush, Preset.Full, Presets.Lush.Full, true),

				-- FROZEN --

				add_objects_to_biome(BiomePath.Frozen, Preset.Full, Presets.Frozen.Full, false),
				-- add_objects_to_biome(BiomePath.Frozen, Preset.Mid, Presets.Frozen.Mid, false),			-- Seems good enough on vanilla
				-- add_objects_to_biome(BiomePath.Frozen, Preset.Low, Presets.Frozen.Low, false),			-- Seems good enough on vanilla

				add_objects_to_biome(BiomePath.Frozen, Preset.Mid, Presets.Frozen.MidHQ, true),
				
				-- RADIOACTIVE --

				add_objects_to_biome(BiomePath.Radioactive, Preset.Full, Presets.Radioactive.Full, false),
				-- add_objects_to_biome(BiomePath.Radioactive, Preset.Mid, Presets.Radioactive.Mid, false),
				-- add_objects_to_biome(BiomePath.Radioactive, Preset.Low, Presets.Radioactive.Low, false),	-- Seems good enough on vanilla

				-- SCORCHED --

				add_objects_to_biome(BiomePath.Scorched, Preset.Full, Presets.Scorched.Full, false),
				-- add_objects_to_biome(BiomePath.Scorched, Preset.Mid, Presets.Scorched.Mid, false),
				-- add_objects_to_biome(BiomePath.Scorched, Preset.Low, Presets.Scorched.Low, false),		-- Seems good enough on vanilla

				-- TOXIC --

				add_objects_to_biome(BiomePath.Toxic, Preset.Full, Presets.Toxic.Full, false),
				add_objects_to_biome(BiomePath.Toxic, Preset.Mid, Presets.Toxic.Mid, false),
				-- add_objects_to_biome(BiomePath.Toxic, Preset.Low, Presets.Toxic.Low, false),				-- Seems good enough on vanilla
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE