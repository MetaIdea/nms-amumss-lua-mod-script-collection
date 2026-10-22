---------------------------------------------------------------------------------------
local mod_desc = [[
  Cockpit Landing Bay Controls v1.4
  Cockpits A (Titan), B (Ambassador), D (Thunderbird). Add-on for Ultimate Landing Bays.
  Beam-down button, and a ramp button that opens / closes every bay (glow indicator,
  lever animation). Details: Jank7.Cockpit_Landing_Bay_Controls_README.md
  v1.4  UNTESTED. Uses ULB's switch states, so it works in package A and B (in B it
        follows every bay switch). The switch entity is written in full instead of
        copied from ULB's bay switch, so both can share one combined build.
]]-------------------------------------------------------------------------------------

-- Ramp button entity (ADD_FILES takes the .MXML name; the game loads the .MBIN)
local GLOBAL_SWITCH = 'MODELS/COMMON/SPACECRAFT/BIGGS/ENTITIES/JANK7_GLOBALRAMPCONTROLS.ENTITY.MXML'

-- Ultimate Landing Bays' door / switch states (this switch uses them too)
local RAMP_OPEN		= 'JANK7_RAMPOPEN'
local RAMP_CLOSE	= 'JANK7_RAMPCLOSE'

-- Shows ('Activate') / hides ('Deactivate') a node of this switch's mesh (this part only)
local function setNode(state, name)
	return [[
							<Property name="Action" value="GcNodeActivationAction">
								<Property name="GcNodeActivationAction">
									<Property name="NodeActiveState" value="]] .. state .. [[" />
									<Property name="Name" value="]] .. name .. [[" />
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
]]
end

-- State that sends `target` ship-wide (BroadcastLevel Scene) on entry, then runs `extra`
local function relayState(id, target, extra)
	return [[
			<Property name="States" value="GcActionTriggerState" _id="]] .. id .. [[">
				<Property name="StateID" value="]] .. id .. [[" />
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
							<Property name="Action" value="GcGoToStateAction">
								<Property name="GcGoToStateAction">
									<Property name="State" value="]] .. target .. [[" />
									<Property name="Broadcast" value="true" />
									<Property name="BroadcastLevel" value="GcBroadcastLevel">
										<Property name="BroadcastLevel" value="Scene" />
									</Property>
								</Property>
							</Property>
]] .. table.concat(extra) .. [[
						</Property>
					</Property>
				</Property>
			</Property>
]]
end

-- Press alternates open / close; each state is sent ship-wide and sets the glow
local SWITCH_STATE_MACHINE = [[
<Property name="Components" value="GcTriggerActionComponentData">
	<Property name="GcTriggerActionComponentData">
		<Property name="HideModel" value="false" />
		<Property name="StartInactive" value="false" />
		<Property name="States">
			<Property name="States" value="GcActionTriggerState" _id="BOOT">
				<Property name="StateID" value="BOOT" />
				<Property name="Triggers" />
			</Property>
]] .. relayState(RAMP_OPEN,  RAMP_OPEN,  { setNode('Deactivate', 'SwitchGlowOn'), setNode('Activate',   'SwitchGlowFlip') })
	.. relayState(RAMP_CLOSE, RAMP_CLOSE, { setNode('Activate',   'SwitchGlowOn'), setNode('Deactivate', 'SwitchGlowFlip') }) .. [[
		</Property>
		<Property name="Persistent" value="false" />
		<Property name="PersistentState" value="" />
		<Property name="ResetShotTimeOnStateChange" value="false" />
		<Property name="LinkStateToBaseGrid" value="false" />
	</Property>
</Property>
]]

--=====================================================================================
-- Graph pieces (CustomData = one line per byte; text fields = 16 bytes)
--=====================================================================================

local NEWLINE = string.char(10)

-- Bytes as CustomData lines
local function byteLines(bytes)
	local lines = {}
	for i, b in ipairs(bytes) do
		lines[#lines + 1] = string.format('<Property name="CustomData" value="%d" _index="%d" />', b, i - 1)
	end
	return lines
end

-- Text as 16 bytes, zero padded
local function textBytes(text)
	assert(#text <= 15, text .. ' is too long for the 16-byte field')
	local bytes = {}
	for i = 1, 16 do
		bytes[i] = (i <= #text) and text:byte(i) or 0
	end
	return bytes
end

-- Joins byte lists in order
local function concatBytes(...)
	local out = {}
	for _, list in ipairs({...}) do
		for _, b in ipairs(list) do out[#out + 1] = b end
	end
	return out
end

local function sketchNode(index, typeName, connections, bytes)
	local conn = {}
	for i, c in ipairs(connections) do
		conn[#conn + 1] = string.format('<Property name="Connections" value="%d" _index="%d" />', c, i - 1)
	end
	return string.format([[
<Property name="Nodes" value="TkSketchNodeData" _index="%d">
	<Property name="TypeName" value="%s" />
	<Property name="TriggerType" value="RunParallel" />
	<Property name="SelectedVariant" value="0" />
	<Property name="PositionX" value="0" />
	<Property name="PositionY" value="%d" />
	<Property name="Connections">
		<Property name="Connections" value="TkSketchNodeConnections" _index="0">
			<Property name="Connections">
%s
			</Property>
		</Property>
	</Property>
	<Property name="CustomData">
%s
	</Property>
</Property>
]], index, typeName, index * 100, table.concat(conn, NEWLINE), table.concat(byteLines(bytes), NEWLINE))
end

-- On this entity's press: simple interaction id, event "Interacted" (vanilla lockers)
local function onInteracted(i, next)
	return sketchNode(i, 'OnComponentEvent', next, concatBytes({32, 235, 188, 96, 0, 0, 0, 0}, textBytes('Interacted'),
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}))
end
local function broadcast(i, message)			-- message (graphs in this part)
	return sketchNode(i, 'BroadcastValueModel', {}, textBytes(message))
end
local function ifValueIs(i, next, value)		-- 8 unused bytes, value
	return sketchNode(i, 'IfValueIs', next, concatBytes({0, 0, 0, 0, 0, 0, 0, 0}, textBytes(value)))
end
local function playAnimNode(i, anim)			-- anim name, 4 zero bytes, blend 0.2
	return sketchNode(i, 'PlayAnim', {}, concatBytes(textBytes(anim), {0, 0, 0, 0, 205, 204, 76, 62}))
end

--=====================================================================================
-- Lever: the switch tells QDRCONTROLS (the mesh's entity) to play FLIP
--=====================================================================================

local LEVER_MESSAGE	= 'JANK7_LEVER'
local VISUAL_ENTITY	= 'MODELS/COMMON/SPACECRAFT/BIGGS/RAMPCONTROL/ENTITIES/QDRCONTROLS.ENTITY.MBIN'

-- Replaces the switch's empty graph: send JANK7_LEVER on every press
local SWITCH_GRAPH = [[
<Property name="Components" value="TkSketchComponentData">
	<Property name="TkSketchComponentData">
		<Property name="GraphPosX" value="0.000000" />
		<Property name="GraphPosY" value="0.000000" />
		<Property name="GraphZoom" value="1.000000" />
		<Property name="UpdateRateMultiplier" value="1.000000" />
		<Property name="Nodes">
]] .. onInteracted(0, {1}) .. broadcast(1, LEVER_MESSAGE) .. [[
		</Property>
	</Property>
</Property>
]]

-- Ramp button entity: vanilla AIRLOCK_NESW_B_RAMPCONTROLS (NMS 7.05) with the Interact
-- prompt, ULB's states, the graph above and the state machine
local SWITCH_ENTITY = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkAttachmentData">
	<Property name="AdditionalData" />
	<Property name="Components">
		<Property name="Components" value="GcSimpleInteractionComponentData">
			<Property name="GcSimpleInteractionComponentData">
				<Property name="SimpleInteractionType" value="Interact" />
				<Property name="InteractDistance" value="2.500000" />
				<Property name="Use2dInteractDistance" value="true" />
				<Property name="InteractAngle" value="360.000000" />
				<Property name="Id" value="" />
				<Property name="Rarity" value="GcRarity">
					<Property name="Rarity" value="Common" />
				</Property>
				<Property name="Size" value="GcSizeIndicator">
					<Property name="SizeIndicator" value="Medium" />
				</Property>
				<Property name="TriggerAction" value="]] .. RAMP_OPEN .. [[" />
				<Property name="TriggerActionOnPrepare" value="" />
				<Property name="TriggerActionToggle" value="]] .. RAMP_CLOSE .. [[" />
				<Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
				<Property name="BroadcastTriggerAction" value="false" />
				<Property name="Delay" value="0.000000" />
				<Property name="HideContents" value="true" />
				<Property name="InteractIsCrime" value="false" />
				<Property name="InteractFiendCrimeType" value="GcFiendCrime">
					<Property name="FiendCrime" value="None" />
				</Property>
				<Property name="InteractFiendCrimeChance" value="1.000000" />
				<Property name="InteractCrimeLevel" value="0" />
				<Property name="IncreaseCorruptSentinelWanted" value="0" />
				<Property name="NotifyEncounter" value="false" />
				<Property name="ActivationCost" value="GcInteractionActivationCost">
					<Property name="SubstanceId" value="" />
					<Property name="AltIds" />
					<Property name="Cost" value="0" />
					<Property name="Repeat" value="false" />
					<Property name="RequiredTech" value="" />
					<Property name="UseCostID" value="" />
					<Property name="StartMissionOnCantAfford" value="" />
					<Property name="OnlyChargeDuringSeasons" />
				</Property>
				<Property name="StatToTrack" value="GcStatsEnum">
					<Property name="StatEnum" value="None" />
				</Property>
				<Property name="StartsBuried" value="false" />
				<Property name="MustBeVisibleToInteract" value="false" />
				<Property name="NeedsStorm" value="false" />
				<Property name="Name" value="BIGGS_RAMP_CONTROLS" />
				<Property name="ForceSubtitle" value="" />
				<Property name="VRInteractMessage" value="" />
				<Property name="TerminalHeading" value="" />
				<Property name="TerminalMessage" value="" />
				<Property name="ScanType" value="BINOC_INTERACTABLE" />
				<Property name="ScanData" value="" />
				<Property name="ScanIcon" value="GcDiscoveryType">
					<Property name="DiscoveryType" value="Unknown" />
				</Property>
				<Property name="ActivateLocatorsFromRarity" value="false" />
				<Property name="RarityLocators">
					<Property name="Common" value="" />
					<Property name="Uncommon" value="" />
					<Property name="Rare" value="" />
				</Property>
				<Property name="BaseBuildingTriggerActions" />
				<Property name="RewardOverrideTable" />
				<Property name="PersistencyBufferOverride" />
				<Property name="UsePersonalPersistentBuffer" value="false" />
				<Property name="ReseedOnRewardSuccess" value="false" />
				<Property name="CanCollectInMech" value="false" />
				<Property name="AnimateOnInteract" value="true" />
				<Property name="DisableAnimationUntilInteract" value="false" />
				<Property name="HideInteractLabelUntilRelease" value="true" />
				<Property name="OnlyActiveDuringSeasons" />
			</Property>
		</Property>
]] .. SWITCH_GRAPH .. [[
		<Property name="Components" value="TkPhysicsComponentData">
			<Property name="TkPhysicsComponentData">
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
				<Property name="CollisionGroup" value="GcPhysicsCollisionGroups">
					<Property name="CollisionGroup" value="Normal" />
				</Property>
				<Property name="TriggerVolume" value="false" />
				<Property name="TriggerVolumeType" value="TkVolumeTriggerType">
					<Property name="VolumeTriggerType" value="Open" />
				</Property>
				<Property name="SurfaceProperties" value="None" />
				<Property name="ModelOwnership" value="Model" />
				<Property name="Climbable" value="false" />
				<Property name="Walkable" value="false" />
				<Property name="Floor" value="false" />
				<Property name="IgnoreModelOwner" value="false" />
				<Property name="NoVehicleCollide" value="false" />
				<Property name="NoPlayerCollide" value="false" />
				<Property name="NoTerrainCollide" value="false" />
				<Property name="NoFireCollide" value="false" />
				<Property name="NoFallDamage" value="false" />
				<Property name="IgnoreAllCollisions" value="true" />
				<Property name="BlocksInteract" value="false" />
				<Property name="CameraInvisible" value="true" />
				<Property name="InvisibleForInteraction" value="false" />
				<Property name="AllowTeleporter" value="false" />
				<Property name="BlockTeleporter" value="false" />
				<Property name="DisableGravity" value="false" />
				<Property name="SpinOnCreate" value="0.000000" />
				<Property name="ScaleAffectsMass" value="false" />
				<Property name="AllowedDefaultCollision" value="true" />
				<Property name="Animated" value="false" />
				<Property name="DisablePhysicsUntilGravGunned" value="false" />
				<Property name="EnableSingleSidedMeshCollision" value="false" />
				<Property name="UseBasePartOptimisation" value="false" />
				<Property name="IsTransporter" value="false" />
				<Property name="UseSimpleCharacterCollision" value="false" />
				<Property name="RotateSimpleCharacterCollisionCapsule" value="false" />
				<Property name="SimpleCharacterCollisionRadius" value="0.500000" />
				<Property name="SimpleCharacterCollisionHeight" value="2.000000" />
				<Property name="SimpleCharacterCollisionHeightOffset" value="0.000000" />
				<Property name="SimpleCharacterCollisionFwdOffset" value="0.000000" />
			</Property>
		</Property>
]] .. SWITCH_STATE_MACHINE .. [[
	</Property>
	<Property name="LodDistances">
		<Property name="LodDistances" value="0.000000" _index="0" />
		<Property name="LodDistances" value="50.000000" _index="1" />
		<Property name="LodDistances" value="80.000000" _index="2" />
		<Property name="LodDistances" value="150.000000" _index="3" />
		<Property name="LodDistances" value="500.000000" _index="4" />
	</Property>
</Data>
]]

-- Only QDRCONTROLS ships as EXML (merges with ULB's glow fix); scenes and the switch stay MBIN
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'Jank7.Cockpit_Landing_Bay_Controls_v1.4',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.05',
	EXML_CREATE			= 'TRUE',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|Cockpit A (Titan) Beam Down + Ramp Control switches|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/COCKPIT_1X2_A.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefExteriorCockpitA'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= [[
		<Property name="Children" value="TkSceneNodeData" _index="28">
			<Property name="Name" value="TELEPORT_DESTINATION" />
			<Property name="NameHash" value="3032827221" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.600000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="29">
			<Property name="Name" value="CockpitTeleporterControls" />
			<Property name="NameHash" value="3801234569" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-1.220000" />
				<Property name="TransY" value="1.300000" />
				<Property name="TransZ" value="1.170000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="0.700000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\TELEPORTERCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="CockpitTeleCollisionA" />
					<Property name="NameHash" value="2901234569" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
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
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFCockpitTeleControlA" />
					<Property name="NameHash" value="2087654323" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="270.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\TELECONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="30">
			<Property name="Name" value="CockpitRampControls" />
			<Property name="NameHash" value="3901234569" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="1.220000" />
				<Property name="TransY" value="1.180000" />
				<Property name="TransZ" value="1.210000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="180.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="0.700000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\JANK7_GLOBALRAMPCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="CockpitRampCollisionA" />
					<Property name="NameHash" value="2801234569" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
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
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFCockpitRampControlA" />
					<Property name="NameHash" value="2187654323" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="270.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\RAMPCONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
				]]
			},
		}
	},
	{--	|Cockpit B (Ambassador) Beam Down + Ramp Control switches|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/COCKPIT_1X2_B.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'EXT'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= [[
		<Property name="Children" value="TkSceneNodeData" _index="10">
			<Property name="Name" value="TELEPORT_DESTINATION" />
			<Property name="NameHash" value="3032827222" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.600000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="11">
			<Property name="Name" value="CockpitTeleporterControls" />
			<Property name="NameHash" value="3801234570" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-1.500000" />
				<Property name="TransY" value="0.900000" />
				<Property name="TransZ" value="1.250000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="35.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="0.700000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\TELEPORTERCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="CockpitTeleCollisionB" />
					<Property name="NameHash" value="2901234570" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
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
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFCockpitTeleControlB" />
					<Property name="NameHash" value="2087654324" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="270.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\TELECONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="12">
			<Property name="Name" value="CockpitRampControls" />
			<Property name="NameHash" value="3901234570" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="1.500000" />
				<Property name="TransY" value="0.900000" />
				<Property name="TransZ" value="1.250000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="145.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="0.700000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\JANK7_GLOBALRAMPCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="CockpitRampCollisionB" />
					<Property name="NameHash" value="2801234570" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
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
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFCockpitRampControlB" />
					<Property name="NameHash" value="2187654324" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="270.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\RAMPCONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
				]]
			},
		}
	},
	{--	|Cockpit D (Thunderbird) Beam Down + Ramp Control switches|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/COCKPIT_1X2_D.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'EXT1'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= [[
		<Property name="Children" value="TkSceneNodeData" _index="10">
			<Property name="Name" value="TELEPORT_DESTINATION" />
			<Property name="NameHash" value="3032827224" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.600000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="11">
			<Property name="Name" value="CockpitTeleporterControls" />
			<Property name="NameHash" value="3801234572" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-1.150000" />
				<Property name="TransY" value="1.020000" />
				<Property name="TransZ" value="0.910000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="60.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="0.700000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\TELEPORTERCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="CockpitTeleCollisionD" />
					<Property name="NameHash" value="2901234572" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
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
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFCockpitTeleControlD" />
					<Property name="NameHash" value="2087654326" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="270.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\TELECONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="12">
			<Property name="Name" value="CockpitRampControls" />
			<Property name="NameHash" value="3901234572" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="1.150000" />
				<Property name="TransY" value="1.020000" />
				<Property name="TransZ" value="0.910000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="120.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="0.700000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\JANK7_GLOBALRAMPCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="CockpitRampCollisionD" />
					<Property name="NameHash" value="2801234572" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
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
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFCockpitRampControlD" />
					<Property name="NameHash" value="2187654326" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="270.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\RAMPCONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
				]]
			},
		}
	},
	{--	|switch mesh entity: also flip the lever on JANK7_LEVER (additions only)|
		MBIN_FILE_SOURCE	= VISUAL_ENTITY,
		MXML_CHANGE_TABLE	= {
			{--	|node 1 also runs new check 10 (its connection value 9 is unique)|
				SPECIAL_KEY_WORDS	= {'Connections', '9'},
				VALUE_CHANGE_TABLE	= {{'IGNORE', 'IGNORE'}},
				ADD_OPTION			= 'ADDafterLINE',
				ADD					= [[
									<Property name="Connections" value="10" _index="2" />
]],
			},
			{--	|after the last vanilla node (PositionY 429): 10 JANK7_LEVER -> 11 PlayAnim FLIP|
				SPECIAL_KEY_WORDS	= {'PositionY', '429'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= ifValueIs(10, {11}, LEVER_MESSAGE) .. playAnimNode(11, 'FLIP'),
			},
		}
	},
	}}},
	ADD_FILES			= {
		{ FILE_DESTINATION = GLOBAL_SWITCH, FILE_CONTENT = SWITCH_ENTITY },
	},
}