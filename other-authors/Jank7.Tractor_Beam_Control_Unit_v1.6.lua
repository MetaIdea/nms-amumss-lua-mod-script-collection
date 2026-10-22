---------------------------------------------------------------------------------------
-- How long the button shows its active glow after a press: matches the vent in-game
-- (Jank-tested). The vent length isn't in the data (game code), so this is by eye.
local GLOW_SECONDS = 5

local mod_desc = [[
  Tractor Beam Control Unit v1.6

  Buildable corvette part. Pressing it fires Vent Cargo on every tractor beam module
  on the ship.

]]-------------------------------------------------------------------------------------

--=====================================================================================
-- Helpers
--=====================================================================================

-- AMUMSS reads backslashes literally, so game-style paths are built by code point
local BACKSLASH = string.char(92)
local function nmsPath(path)	return (path:gsub('/', BACKSLASH)) end

-- ADD_FILES takes the source name (.MXML); the game loads the compiled .MBIN
local function mxml(path)		return (path:gsub('%.MBIN$', '.MXML')) end

-- Fills {KEY} placeholders in an XML template from a table of values
local function fill(template, values)
	return (template:gsub('{([%u_]+)}', function(key)
		return assert(values[key], 'no value for {' .. key .. '}')
	end))
end

--=====================================================================================
-- Paths and IDs
--=====================================================================================

local BIGGS	= 'MODELS/COMMON/SPACECRAFT/BIGGS/'
local PROPS	= 'MODELS/CUSTOM/PROPS/'

-- Vanilla files used
local VANILLA_SWITCH	= BIGGS .. 'MODULES/PARTS/AIRLOCK_NESW_B/ENTITIES/AIRLOCK_NESW_B_RAMPCONTROLS.ENTITY.MBIN'
local VANILLA_EJECT		= BIGGS .. 'MODULES/PARTS/MAG_1X1/ENTITIES/BEAMINTERACTDATA.ENTITY.MBIN'
local VANILLA_SWITCH_MESH	= BIGGS .. 'TELECONTROL.SCENE.MBIN'
local VANILLA_BUTTON_MAT	= BIGGS .. 'TELECONTROL/BIGGSSURFMAT1.MATERIAL.MBIN'
local WALL_GHOST		= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/SWITCH_WALL_PLACEMENT'

-- New files
local MODEL			= PROPS .. 'JANK7_TBEJECT'
local PLACEMENT		= PROPS .. 'JANK7_TBEJECT_PLACEMENT'
local BUTTON_ENTITY	= MODEL .. '/BUTTON.ENTITY.MBIN'
local PLACE_ENTITY	= PLACEMENT .. '/PLACEMENTDATA.ENTITY.MBIN'
local SWITCH_MESH	= MODEL .. '/SWITCH.SCENE.MBIN'			-- copy of TELECONTROL.SCENE
local BUTTON_MAT	= MODEL .. '/BUTTONMAT.MATERIAL.MBIN'	-- copy of BIGGSSURFMAT1
-- Made by make_button_texture.py; ships from ModScript\GlobalMEFTI (same path)
local BUTTON_TEXTURE	= 'TEXTURES/CUSTOM/JANK7_TBEJECT/BUTTONFACE.DDS'
-- Button face meshes (TeleButton LODs); the rest of the switch keeps vanilla materials
local BUTTON_MESHES	= {'TeleButtonLOD0', 'TeleButtonLOD1', 'TeleButtonLOD2'}

local EJECT_STATE	= 'JANK7_TBEJECT'	-- broadcast message and state ID (16-byte field)
local OBJECT_ID		= 'S_JANK7_TBEJ'
local PART_ID		= '_JANK7_TBEJ'
-- Build-menu icon: 256x256 BC7, made by make_icon.py from Jank's render (tools folder);
-- ships from ModScript\GlobalMEFTI (same path)
local ICON			= 'TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.JANK7TBEJECT.DDS'
assert(#EJECT_STATE <= 15, 'state ID too long for the 16-byte field')

--=====================================================================================
-- Tractor beam: fire the vanilla Vent Cargo interaction when the button broadcasts
--=====================================================================================

local EJECT_STATE_MACHINE = fill([[
<Property name="Components" value="GcTriggerActionComponentData">
	<Property name="GcTriggerActionComponentData">
		<Property name="HideModel" value="false" />
		<Property name="StartInactive" value="false" />
		<Property name="States">
			<Property name="States" value="GcActionTriggerState" _id="BOOT">
				<Property name="StateID" value="BOOT" />
				<Property name="Triggers" />
			</Property>
			<Property name="States" value="GcActionTriggerState" _id="{STATE}">
				<Property name="StateID" value="{STATE}" />
				<Property name="Triggers">
					<Property name="Triggers" value="GcActionTrigger" _index="0">
						<Property name="Event" value="GcStateTimeEvent">
							<Property name="GcStateTimeEvent">
								<Property name="Seconds" value="0.000000" />
								<Property name="RandomSeconds" value="0.000000" />
								<Property name="UseMissionClock" value="false" />
							</Property>
						</Property>
						<Property name="Action">
							<Property name="Action" value="GcFireSimpleInteractionAction">
								<Property name="GcFireSimpleInteractionAction" />
							</Property>
						</Property>
					</Property>
					<Property name="Triggers" value="GcActionTrigger" _index="1">
						<Property name="Event" value="GcStateTimeEvent">
							<Property name="GcStateTimeEvent">
								<Property name="Seconds" value="1.000000" />
								<Property name="RandomSeconds" value="0.000000" />
								<Property name="UseMissionClock" value="false" />
							</Property>
						</Property>
						<Property name="Action">
							<Property name="Action" value="GcGoToStateAction">
								<Property name="GcGoToStateAction">
									<Property name="State" value="BOOT" />
									<Property name="Broadcast" value="false" />
									<Property name="BroadcastLevel" value="GcBroadcastLevel">
										<Property name="BroadcastLevel" value="Local" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
		<Property name="Persistent" value="false" />
		<Property name="PersistentState" value="" />
		<Property name="ResetShotTimeOnStateChange" value="false" />
		<Property name="LinkStateToBaseGrid" value="false" />
	</Property>
</Property>
]], { STATE = EJECT_STATE })

--=====================================================================================
-- Button: active glow while the beam vents
--=====================================================================================

-- Shows ('Activate') / hides ('Deactivate') a node of the switch mesh (fields from
-- Cockpit Landing Bay Controls)
local function setNode(state, name)
	return fill([[
							<Property name="Action" value="GcNodeActivationAction">
								<Property name="GcNodeActivationAction">
									<Property name="NodeActiveState" value="{STATE}" />
									<Property name="Name" value="{NAME}" />
									<Property name="SceneToAdd" value="" />
									<Property name="IncludePhysics" value="false" />
									<Property name="IncludeChildPhysics" value="false" />
									<Property name="NotifyNPC" value="false" />
									<Property name="UseMasterModel" value="false" />
									<Property name="UseLocalNode" value="false" />
									<Property name="RestartEmitters" value="false" />
									<Property name="AffectModels" value="false" />
								</Property>
							</Property>
]], { STATE = state, NAME = name })
end

-- The press puts the button in EJECT_STATE (its TriggerAction): active glow on at once,
-- resting glow back after GLOW_SECONDS, then BOOT so the next press works
local GLOW_STATE_MACHINE = fill([[
<Property name="Components" value="GcTriggerActionComponentData">
	<Property name="GcTriggerActionComponentData">
		<Property name="HideModel" value="false" />
		<Property name="StartInactive" value="false" />
		<Property name="States">
			<Property name="States" value="GcActionTriggerState" _id="BOOT">
				<Property name="StateID" value="BOOT" />
				<Property name="Triggers" />
			</Property>
			<Property name="States" value="GcActionTriggerState" _id="{STATE}">
				<Property name="StateID" value="{STATE}" />
				<Property name="Triggers">
					<Property name="Triggers" value="GcActionTrigger" _index="0">
						<Property name="Event" value="GcStateTimeEvent">
							<Property name="GcStateTimeEvent">
								<Property name="Seconds" value="0.000000" />
								<Property name="RandomSeconds" value="0.000000" />
								<Property name="UseMissionClock" value="false" />
							</Property>
						</Property>
						<Property name="Action">
{GLOW_ON}						</Property>
					</Property>
					<Property name="Triggers" value="GcActionTrigger" _index="1">
						<Property name="Event" value="GcStateTimeEvent">
							<Property name="GcStateTimeEvent">
								<Property name="Seconds" value="{SECONDS}" />
								<Property name="RandomSeconds" value="0.000000" />
								<Property name="UseMissionClock" value="false" />
							</Property>
						</Property>
						<Property name="Action">
{GLOW_OFF}							<Property name="Action" value="GcGoToStateAction">
								<Property name="GcGoToStateAction">
									<Property name="State" value="BOOT" />
									<Property name="Broadcast" value="false" />
									<Property name="BroadcastLevel" value="GcBroadcastLevel">
										<Property name="BroadcastLevel" value="Local" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
		<Property name="Persistent" value="false" />
		<Property name="PersistentState" value="" />
		<Property name="ResetShotTimeOnStateChange" value="false" />
		<Property name="LinkStateToBaseGrid" value="false" />
	</Property>
</Property>
]], {
	STATE		= EJECT_STATE,
	SECONDS		= string.format('%.6f', GLOW_SECONDS),
	GLOW_ON		= setNode('Deactivate', 'SwitchGlowOn') .. setNode('Activate', 'SwitchGlowFlip'),
	GLOW_OFF	= setNode('Activate', 'SwitchGlowOn') .. setNode('Deactivate', 'SwitchGlowFlip'),
})

--=====================================================================================
-- Custom part files (layout from Ramp Control Switch Part v1.1)
--=====================================================================================

local IDENTITY = [[
<Property name="Transform" value="TkTransformData">
	<Property name="TransX" value="0.000000" />
	<Property name="TransY" value="0.000000" />
	<Property name="TransZ" value="0.000000" />
	<Property name="RotX" value="0.000000" />
	<Property name="RotY" value="0.000000" />
	<Property name="RotZ" value="0.000000" />
	<Property name="ScaleX" value="1.000000" />
	<Property name="ScaleY" value="1.000000" />
	<Property name="ScaleZ" value="1.000000" />
</Property>]]

-- Part model: interact locator (button entity + collision sphere) and the switch mesh
local MODEL_SCENE = fill([[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="{NAME}" />
	<Property name="NameHash" value="0" />
	<Property name="Type" value="MODEL" />
	{IDENTITY}
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes" />
	<Property name="InstanceTransforms" />
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="Interaction" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LOCATOR" />
			{IDENTITY}
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="{BUTTON}" />
				</Property>
			</Property>
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="{NAME}" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="COLLISION" />
					{IDENTITY}
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.226539" />
						</Property>
					</Property>
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="RefSwitchMesh" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="90.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="{MESH}" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
			<Property name="InstanceTransforms" />
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]], {
	NAME		= nmsPath(MODEL),
	BUTTON		= nmsPath(BUTTON_ENTITY),
	MESH		= nmsPath(SWITCH_MESH),
	IDENTITY	= IDENTITY,
})

-- Build-mode ghost: box geometry + collision box, with the placement rule entity
local PLACEMENT_SCENE = fill([[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="{NAME}" />
	<Property name="NameHash" value="0" />
	<Property name="Type" value="MODEL" />
	{IDENTITY}
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="{GEOMETRY}" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="JOINTHASH" />
			<Property name="Value" value="5512004423178871566" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="InstanceTransforms" />
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="PlacementData" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LOCATOR" />
			{IDENTITY}
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="{ENTITY}" />
				</Property>
			</Property>
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="{NAME}|CollisionBox" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.185459" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Box" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="WIDTH" />
							<Property name="Value" value="0.360992" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="HEIGHT" />
							<Property name="Value" value="0.370919" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="DEPTH" />
							<Property name="Value" value="0.335244" />
						</Property>
					</Property>
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
	</Property>
</Data>
]], {
	NAME		= nmsPath(PLACEMENT),
	GEOMETRY	= nmsPath(PLACEMENT .. '.GEOMETRY.MBIN'),
	ENTITY		= nmsPath(PLACE_ENTITY),
	IDENTITY	= IDENTITY,
})

local PLACEMENT_ENTITY = fill([[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkAttachmentData">
	<Property name="AdditionalData" />
	<Property name="Components">
		<Property name="Components" value="TkStaticPhysicsComponentData">
			<Property name="TkStaticPhysicsComponentData">
				<Property name="Data" value="TkPhysicsData">
					<Property name="Mass" value="0.000000" />
					<Property name="Friction" value="0.500000" />
					<Property name="RollingFriction" value="0.200000" />
					<Property name="AngularDamping" value="0.200000" />
					<Property name="LinearDamping" value="0.100000" />
					<Property name="Restitution" value="0.000000" />
					<Property name="Gravity" value="20.000000" />
					<Property name="CanBeTooSteepForTeleporter" value="true" />
				</Property>
				<Property name="NavMeshInclusion" value="TkNavMeshInclusionParams">
					<Property name="InclusionType" value="TkNavMeshInclusionType">
						<Property name="NavMeshInclusionType" value="Auto" />
					</Property>
					<Property name="AreaType" value="TkNavMeshAreaType">
						<Property name="NavMeshAreaType" value="Auto" />
					</Property>
					<Property name="ApplyMinSizeRequirements" value="true" />
				</Property>
				<Property name="StaticPhysicsTargetNode" value="Attachment" />
				<Property name="AddToWorldOnPrepare" value="true" />
				<Property name="AddToWorldImmediately" value="true" />
				<Property name="TriggerVolumeType" value="TkVolumeTriggerType">
					<Property name="VolumeTriggerType" value="Open" />
				</Property>
				<Property name="TriggerVolume" value="false" />
				<Property name="Climbable" value="false" />
				<Property name="NoVehicleCollide" value="false" />
				<Property name="NoPlayerCollide" value="false" />
				<Property name="NoTerrainCollide" value="false" />
				<Property name="UseAsteroidCollision" value="false" />
				<Property name="CameraInvisible" value="false" />
			</Property>
		</Property>
		<Property name="Components" value="GcBasePlacementComponentData">
			<Property name="GcBasePlacementComponentData">
				<Property name="Rules">
					<Property name="Rules" value="GcBasePlacementRule" _index="0">
						<Property name="Conditions" />
						<Property name="PositionLocator" value="" />
						<Property name="PartID" value="{PART}" />
						<Property name="ORConditions" value="false" />
						<Property name="TwinCriteria" value="None" />
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
	<Property name="LodDistances">
		<Property name="LodDistances" value="0.000000" _index="0" />
		<Property name="LodDistances" value="50.000000" _index="1" />
		<Property name="LodDistances" value="80.000000" _index="2" />
		<Property name="LodDistances" value="150.000000" _index="3" />
		<Property name="LodDistances" value="500.000000" _index="4" />
	</Property>
</Data>
]], { PART = PART_ID })

--=====================================================================================
-- Build-table entries (cloned from Ramp Control Switch Part v1.1)
--=====================================================================================

local OBJECT_ADD = fill([[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="{OBJECT}">
			<Property name="ID" value="{OBJECT}" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="{PLACEMENT}" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="SinglePartID" value="" />
			<Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
				<Property name="BaseBuildingDecorationType" value="SurfaceNormal" />
			</Property>
			<Property name="IsPlaceable" value="true" />
			<Property name="IsPlaceableFloatingInSpace" value="false" />
			<Property name="IsDecoration" value="true" />
			<Property name="Biome" value="GcBiomeType">
				<Property name="Biome" value="Lush" />
			</Property>
			<Property name="BuildableOnPlanetBase" value="false" />
			<Property name="BuildableOnSpaceBase" value="false" />
			<Property name="BuildableOnFreighter" value="false" />
			<Property name="BuildableInShipStructural" value="false" />
			<Property name="BuildableInShipDecorative" value="true" />
			<Property name="BuildableOnPlanet" value="false" />
			<Property name="BuildableOnPlanetWithProduct" value="false" />
			<Property name="BuildableUnderwater" value="false" />
			<Property name="BuildableAboveWater" value="true" />
			<Property name="BuildableOnSpaceStationBase" value="false" />
			<Property name="BuildableOnSpaceStationBackSection" value="false" />
			<Property name="BuildableOnSpaceStationExterior" value="false" />
			<Property name="PlanetLimit" value="0" />
			<Property name="RegionLimit" value="0" />
			<Property name="PlanetBaseLimit" value="0" />
			<Property name="FreighterBaseLimit" value="0" />
			<Property name="CorvetteBaseLimit" value="0" />
			<Property name="DoesNotCountTowardsComplexity" value="false" />
			<Property name="CheckPlaceholderCollision" value="false" />
			<Property name="CheckPlayerCollision" value="true" />
			<Property name="CanStack" value="true" />
			<Property name="SnapRotateBlocked" value="false" />
			<Property name="CanRotate3D" value="true" />
			<Property name="CanScale" value="false" />
			<Property name="Groups">
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="BASE_TECH" />
					<Property name="SubGroupName" value="TECHTECH" />
					<Property name="SubGroup" value="0" />
				</Property>
			</Property>
			<Property name="StorageContainerIndex" value="-1" />
			<Property name="ColourPaletteGroupId" value="" />
			<Property name="StationColourPaletteGroupId" value="" />
			<Property name="DefaultColourPaletteId" value="" />
			<Property name="MaterialGroupId" value="" />
			<Property name="DefaultMaterialId" value="" />
			<Property name="CanChangeColour" value="false" />
			<Property name="CanChangeMaterial" value="false" />
			<Property name="CanPickUp" value="false" />
			<Property name="ShowInBuildMenu" value="true" />
			<Property name="CompositePartObjectIDs" />
			<Property name="FamilyIDs" />
			<Property name="BuildEffectAccelerator" value="1.000000" />
			<Property name="IconOverrideProductID" value="" />
			<Property name="RemovesAttachedDecoration" value="false" />
			<Property name="RemovesWhenUnsnapped" value="false" />
			<Property name="EditsTerrain" value="false" />
			<Property name="BaseTerrainEditShape" value="Cube" />
			<Property name="MinimumDeleteDistance" value="1.000000" />
			<Property name="IsSealed" value="false" />
			<Property name="HasGravity" value="false" />
			<Property name="GravityStrength" value="0.500000" />
			<Property name="GravityFalloff" value="2.000000" />
			<Property name="CloseMenuAfterBuild" value="false" />
			<Property name="Tag" value="" />
			<Property name="LinkGridData" value="GcBaseLinkGridData">
				<Property name="Connection" value="GcBaseLinkGridConnectionData">
					<Property name="Network" value="GcLinkNetworkTypes">
						<Property name="LinkNetworkType" value="Power" />
					</Property>
					<Property name="NetworkSubGroup" value="0" />
					<Property name="NetworkMask" value="0" />
					<Property name="ConnectionDistance" value="0.100000" />
					<Property name="UseMinDistance" value="false" />
					<Property name="LinkSocketPositions" />
					<Property name="LinkSocketSubGroups" />
				</Property>
				<Property name="Rate" value="0" />
				<Property name="Storage" value="0" />
				<Property name="DependsOnEnvironment" value="None" />
				<Property name="DependsOnHotspots" value="None" />
				<Property name="DependentConnections" />
			</Property>
			<Property name="GhostsCountOverride" value="0" />
			<Property name="ShowGhosts" value="true" />
			<Property name="SnappingDistanceOverride" value="0.000000" />
			<Property name="RegionSpawnLOD" value="1" />
			<Property name="NPCInteractionScene" value="TkModelResource">
				<Property name="Filename" value="" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="IsModularCustomisation" value="false" />
			<Property name="ModularCustomisationBaseID" value="" />
			<Property name="HasDescriptor" value="false" />
			<Property name="DescriptorID" value="" />
			<Property name="FossilDisplayID" value="" />
			<Property name="UseProductIDOverride" value="false" />
			<Property name="UseProductIDOverrideInSpace" value="false" />
			<Property name="OverrideProductID" value="" />
		</Property>
]], { OBJECT = OBJECT_ID, PLACEMENT = nmsPath(PLACEMENT .. '.SCENE.MBIN') })

local PART_ADD = fill([[
		<Property name="Parts" value="GcBaseBuildingPart" _id="{PART}">
			<Property name="ID" value="{PART}" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="{MODEL}" />
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Inactive" value="TkModelResource">
						<Property name="Filename" value="{MODEL}" />
						<Property name="Seed" value="0" />
					</Property>
				</Property>
			</Property>
		</Property>
]], { PART = PART_ID, MODEL = nmsPath(MODEL .. '.SCENE.MBIN') })

-- Name / Subtitle are placeholder text; Description is Jank's (v1.4). In descriptions,
-- &lt;TECHNOLOGY&gt;text&lt;&gt; = light blue highlight (as vanilla's space hulk text)
local PRODUCT_ADD = fill([[
		<Property name="Table" value="GcProductData" _id="{OBJECT}">
			<Property name="ID" value="{OBJECT}" />
			<Property name="Name" value="Cargo Vent Control" />
			<Property name="NameLower" value="Cargo Vent Control" />
			<Property name="Subtitle" value="Control System" />
			<Property name="Description" value="A remote control unit for triggering cargo venting from installed corvette-class &lt;TECHNOLOGY&gt;Tractor Beam&lt;&gt; systems." />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="" />
			<Property name="DebrisFile" value="TkModelResource">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="BaseValue" value="1" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="{ICON}" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
			</Property>
			<Property name="Colour">
				<Property name="R" value="0.172549024" />
				<Property name="G" value="0.486274511" />
				<Property name="B" value="0.623529434" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="Category" value="GcRealitySubstanceCategory">
				<Property name="SubstanceCategory" value="BuildingPart" />
			</Property>
			<Property name="Type" value="GcProductCategory">
				<Property name="ProductCategory" value="BuildingPart" />
			</Property>
			<Property name="Rarity" value="GcRarity">
				<Property name="Rarity" value="Common" />
			</Property>
			<Property name="Legality" value="GcLegality">
				<Property name="Legality" value="Legal" />
			</Property>
			<Property name="Consumable" value="false" />
			<Property name="ChargeValue" value="0" />
			<Property name="StackMultiplier" value="1" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
			<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="LAND2">
					<Property name="ID" value="LAND2" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="25" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="MICROCHIP">
					<Property name="ID" value="MICROCHIP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="1" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="HYDRALIC">
					<Property name="ID" value="HYDRALIC" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="1" />
				</Property>
			</Property>
			<Property name="AltRequirements" />
			<Property name="Cost" value="GcItemPriceModifiers">
				<Property name="SpaceStationMarkup" value="0.000000" />
				<Property name="LowPriceMod" value="0.000000" />
				<Property name="HighPriceMod" value="0.000000" />
				<Property name="BuyBaseMarkup" value="0.000000" />
				<Property name="BuyMarkupMod" value="0.000000" />
			</Property>
			<Property name="RecipeCost" value="1" />
			<Property name="SpecificChargeOnly" value="false" />
			<Property name="NormalisedValueOnWorld" value="0.000000" />
			<Property name="NormalisedValueOffWorld" value="0.000000" />
			<Property name="TradeCategory" value="GcTradeCategory">
				<Property name="TradeCategory" value="None" />
			</Property>
			<Property name="WikiCategory" value="Construction" />
			<Property name="FossilCategory" value="GcFossilCategory">
				<Property name="FossilCategory" value="None" />
			</Property>
			<Property name="CorvettePartCategory" value="GcCorvettePartCategory">
				<Property name="CorvettePartCategory" value="None" />
			</Property>
			<Property name="CorvetteRewardFrequency" value="0.000000" />
			<Property name="IsCraftable" value="true" />
			<Property name="DeploysInto" value="" />
			<Property name="EconomyInfluenceMultiplier" value="0.000000" />
			<Property name="PinObjective" value="" />
			<Property name="PinObjectiveTip" value="" />
			<Property name="PinObjectiveMessage" value="" />
			<Property name="PinObjectiveScannableType" value="GcScannerIconTypes">
				<Property name="ScanIconType" value="None" />
			</Property>
			<Property name="PinObjectiveEasyToRefine" value="false" />
			<Property name="NeverPinnable" value="false" />
			<Property name="CookingIngredient" value="false" />
			<Property name="CookingValue" value="0.000000" />
			<Property name="FoodBonusStat" value="GcStatsTypes">
				<Property name="StatsType" value="Unspecified" />
			</Property>
			<Property name="FoodBonusStatAmount" value="0.000000" />
			<Property name="GoodForSelling" value="false" />
			<Property name="GiveRewardOnSpecialPurchase" value="" />
			<Property name="EggModifierIngredient" value="false" />
			<Property name="IsTechbox" value="false" />
			<Property name="CanSendToOtherPlayers" value="true" />
		</Property>
]], { OBJECT = OBJECT_ID, ICON = ICON })

-- Bounds match the placement box above
local AUTOPARTDATA_ADD = fill([[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="{PART}" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="MagicData" value="TkMagicModelData">
				<Property name="Vertices">
					<Property value="Vertices">
						<Property name="X" value="-0.180496" />
						<Property name="Y" value="0.370919" />
						<Property name="Z" value="-0.167622" />
					</Property>
					<Property value="Vertices">
						<Property name="X" value="-0.180496" />
						<Property name="Y" value="0.370919" />
						<Property name="Z" value="0.167622" />
					</Property>
					<Property value="Vertices">
						<Property name="X" value="0.180496" />
						<Property name="Y" value="0.370919" />
						<Property name="Z" value="-0.167622" />
					</Property>
					<Property value="Vertices">
						<Property name="X" value="0.180496" />
						<Property name="Y" value="0.370919" />
						<Property name="Z" value="0.167622" />
					</Property>
					<Property value="Vertices">
						<Property name="X" value="-0.180496" />
						<Property name="Y" value="0.000000" />
						<Property name="Z" value="-0.167622" />
					</Property>
					<Property value="Vertices">
						<Property name="X" value="-0.180496" />
						<Property name="Y" value="0.000000" />
						<Property name="Z" value="0.167622" />
					</Property>
					<Property value="Vertices">
						<Property name="X" value="0.180496" />
						<Property name="Y" value="0.000000" />
						<Property name="Z" value="-0.167622" />
					</Property>
					<Property value="Vertices">
						<Property name="X" value="0.180496" />
						<Property name="Y" value="0.000000" />
						<Property name="Z" value="0.167622" />
					</Property>
				</Property>
				<Property name="Centre">
					<Property name="X" value="0.000000" />
					<Property name="Y" value="0.185459" />
					<Property name="Z" value="0.000000" />
				</Property>
				<Property name="Radius" value="0.308326" />
			</Property>
			<Property name="NodesCost" value="3" />
			<Property name="TimeCost" value="5000" />
			<Property name="PhysicsCost" value="1" />
			<Property name="MeshesCost" value="1" />
			<Property name="InstanceNodesCost" value="3" />
			<Property name="InstanceTimeCost" value="5000" />
			<Property name="InstanceMeshesCost" value="1" />
			<Property name="LastProfiledTimestamp" value="1757700000" />
			<Property name="InstanceLastProfiledTimestamp" value="1757700000" />
		</Property>
]], { PART = PART_ID })

local COST_ADD = fill([[
		<Property name="ObjectCosts" value="GcBaseBuildingEntryCosts">
			<Property name="ID" value="{OBJECT}" />
			<Property name="Active0AverageFrameTimeCost" value="0.001000" />
			<Property name="Active1AverageFrameTimeCost" value="0.001000" />
			<Property name="ActiveTotalNodes" value="6" />
			<Property name="ActivePhysicsComponents" value="2" />
			<Property name="Inactive0AverageFrameTimeCost" value="0.000500" />
			<Property name="Inactive1AverageFrameTimeCost" value="0.000500" />
			<Property name="InactiveTotalNodes" value="6" />
			<Property name="InactivePhysicsComponents" value="2" />
		</Property>
]], { OBJECT = OBJECT_ID })

local KNOWNPRODUCT_ADD = fill([[
		<Property name="KnownProducts" value="{OBJECT}" />
]], { OBJECT = OBJECT_ID })

--=====================================================================================
-- Assembly
--=====================================================================================

-- One change per button face mesh: matched by node name, swaps only the vanilla
-- material path for our copy
local buttonFaceChanges = {}
for _, mesh in ipairs(BUTTON_MESHES) do
	buttonFaceChanges[#buttonFaceChanges + 1] = {
		SPECIAL_KEY_WORDS	= {'Name', mesh},
		VALUE_MATCH			= nmsPath(VANILLA_BUTTON_MAT),
		VALUE_MATCH_OPTIONS	= '=',
		VALUE_CHANGE_TABLE	= {
			{'Value',	nmsPath(BUTTON_MAT)},
		}
	}
end

local mbinChanges = {
	{--	|tractor beam: vanilla Vent Cargo entity gets the eject state machine (add only)|
		MBIN_FILE_SOURCE	= nmsPath(VANILLA_EJECT),
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Components', 'TkPhysicsComponentData'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= EJECT_STATE_MACHINE,
			},
		}
	},
	{--	|button entity: copy of the vanilla ramp switch entity|
		MBIN_FILE_SOURCE	= {
			{ nmsPath(VANILLA_SWITCH), nmsPath(BUTTON_ENTITY), 'REMOVE' },
		},
	},
	{--	|button: plain Interact prompt that broadcasts JANK7_TBEJECT ship-wide|
		MBIN_FILE_SOURCE	= nmsPath(BUTTON_ENTITY),
		MXML_CHANGE_TABLE	= {
			{ VALUE_CHANGE_TABLE = {
				{'SimpleInteractionType',	'Interact'},
				{'TriggerAction',			EJECT_STATE},
				{'BroadcastTriggerAction',	'true'},
				{'Name',					'UI_BIGGS_VENT_CARGO'},	-- "Vent Cargo" prompt
			}},
			{
				SPECIAL_KEY_WORDS	= {'Components', 'TkPhysicsComponentData'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= GLOW_STATE_MACHINE,
			},
		}
	},
	{--	|switch mesh: copy of the beam down button scene|
		MBIN_FILE_SOURCE	= {
			{ nmsPath(VANILLA_SWITCH_MESH), nmsPath(SWITCH_MESH), 'REMOVE' },
		},
	},
	{--	|switch mesh: button face meshes -> our material copy|
		MBIN_FILE_SOURCE	= nmsPath(SWITCH_MESH),
		MXML_CHANGE_TABLE	= buttonFaceChanges,
	},
	{--	|button material: copy of BIGGSSURFMAT1|
		MBIN_FILE_SOURCE	= {
			{ nmsPath(VANILLA_BUTTON_MAT), nmsPath(BUTTON_MAT), 'REMOVE' },
		},
	},
	{--	|button material: diffuse -> navy button face texture|
		MBIN_FILE_SOURCE	= nmsPath(BUTTON_MAT),
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE	= {
					{'Map',	BUTTON_TEXTURE},
				}
			},
		}
	},
	{--	|placement ghost geometry: copy of the vanilla wall switch's box|
		MBIN_FILE_SOURCE	= {
			{ nmsPath(WALL_GHOST .. '.GEOMETRY.MBIN'), nmsPath(PLACEMENT .. '.GEOMETRY.MBIN'), 'REMOVE' },
		},
	},
	{--	|placement ghost geometry stream data (ships as a pair with the file above)|
		MBIN_FILE_SOURCE	= {
			{ nmsPath(WALL_GHOST .. '.GEOMETRY.DATA.MBIN'), nmsPath(PLACEMENT .. '.GEOMETRY.DATA.MBIN'), 'REMOVE' },
		},
	},
	{--	|build object|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'S_SHOVEL'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= OBJECT_ADD,
			},
		}
	},
	{--	|build part|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', '_SHOVEL'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= PART_ADD,
			},
		}
	},
	{--	|product|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= {'Table'},
				ADD					= PRODUCT_ADD,
			},
		}
	},
	{--	|part bounds / perf data|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= {'PartsData'},
				ADD					= AUTOPARTDATA_ADD,
			},
		}
	},
	{--	|object cost row|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGCOSTSTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= {'ObjectCosts'},
				ADD					= COST_ADD,
			},
		}
	},
	{--	|known product in default save data|
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= {'KnownProducts'},
				ADD					= KNOWNPRODUCT_ADD,
			},
		}
	},
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'Jank7.Tractor_Beam_Control_Unit_v1.6',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.05',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = mbinChanges }},
	ADD_FILES			= {
		{ FILE_DESTINATION = mxml(MODEL .. '.SCENE.MBIN'),		FILE_CONTENT = MODEL_SCENE },
		{ FILE_DESTINATION = mxml(PLACEMENT .. '.SCENE.MBIN'),	FILE_CONTENT = PLACEMENT_SCENE },
		{ FILE_DESTINATION = mxml(PLACE_ENTITY),				FILE_CONTENT = PLACEMENT_ENTITY },
	},
}