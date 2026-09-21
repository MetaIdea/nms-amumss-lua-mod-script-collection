---------------------------------------------------------------------------------------
local mod_desc = [[
  Corvette Ramp Manual Control v7.0

  Removes the corvette landing bay's automatic open-on-land behaviour and puts the
  doors on the existing ramp control switch instead, with the vent steam driven off
  the same open/close signal.

  WHY v7.0 EXISTS - the BOOT state is empty again
    v3.0 introduced a permanently authored emitter node and used BOOT to switch it
    off at spawn. That made BOOT carry a trigger, and a door entity whose auto-open
    node has been removed spawns at the wrong pose when BOOT carries a trigger - the
    ramp came up open after a warp. v6.1 tried to paper over it by having BOOT play
    RAMPUP, which only replaced a wrong pose with a visible closing animation on
    every arrival.

    Section 20 of the notes already had this: give BOOT NO TRIGGERS AT ALL - present
    but completely empty - plus PersistentState = BOOT, and all three bays spawn
    correctly closed with zero visible animation.

    An empty BOOT and a permanent emitter are mutually exclusive, because a scene node
    appears to have no way to be authored switched off - the 39 attribute names used
    across AIRLOCK_NESW_A.SCENE (MATERIAL, ATTACHMENT, SCENEGRAPH, the mesh/AABB set,
    etc.) contain nothing resembling ACTIVE/STARTINACTIVE, so a permanent emitter runs
    from load with nothing able to stop it. [Checked in that one scene only - not a
    survey of the whole format.] v7.0 therefore drops the authored emitter
    and goes back to spawning the effect on demand, which is what v1.8-v2.0 did.
    Nothing exists at spawn, so there is nothing for BOOT to do.

  HOW IT WORKS
    Scene    Each bay's ShipAccesswayData node is replaced by a plain LOCATOR
             (ShipAccesswayVentAnchor) carrying that bay's original LOCVent locators
             at their exact vanilla transforms, and nothing else. Dropping
             ShipAccesswayData is what kills the auto-open; keeping the LOCVents is
             what preserves the steam, which the auto-open removal otherwise took
             with it.
    Logic    One GcTriggerActionComponentData per bay:
               BOOT             <no triggers at all>
               JANK7_RAMPOPEN   RAMPDOWN + GcParticleAction AIRLOCKVENT at each vent
               JANK7_RAMPCLOSE  RAMPUP   + RemoveChildren at each vent
    Switch   The vanilla RAMPCONTROLS entity drives those two states, with
             BroadcastTriggerAction so the one switch reaches every bay.

  WHY IT IS BUILT THIS WAY - the findings this rests on
    * GcParticleAction is a pure SPAWN action - 4 fields, no stop flag. The steam is
      vanilla's own AIRLOCKVENT effect, requested from the engine rather than a
      hand-built copy, so it looks exactly like vanilla's.
    * Stopping it needs RemoveChildren, NOT Deactivate. Deactivate does stop the
      steam but breaks the joint for all future lookups - the vent plays once, stops
      correctly, then never plays again. RemoveChildren kills the spawned child under
      the joint without disabling the locator, so repeat cycles keep working.
    * FindRange = LocalModel, not Scene. At Scene the lookup is ship-wide and every
      bay's vents fire together, because LOCVent names and hashes are identical
      across bays.
    * REPLACEwholeSECTION on ShipAccesswayData rather than REMOVE, because we are
      substituting a node, not just deleting one - the anchor has to occupy that slot
      to carry the LOCVents. Note this is a SCENE edit, and scene edits always build
      as whole MBIN regardless of EXML_CREATE, so all three scene files are whole-file
      replacements and will not merge with another mod touching them. The four ENTITY
      edits do build as EXML line-overrides and merge normally.
    * Action is a LIST sharing one Event, so the outer <Property name="Action">
      carries no value attribute. Giving it one raises UnknownGenericTypeException.
    * Broadcast scope is deliberately left to the switch's BroadcastTriggerAction.
      Do not reach for GcGoToStateAction as a message bus: it is a state TRANSITION,
      so it moves every machine in scope into the named state, and a name that machine
      does not define leaves it stranded. At BroadcastLevel = LocalModel that reaches
      the player character entity too, which is how v5.0 flashed the player's torch.

  KNOWN LIMITATION
    RemoveChildren destroys the spawned effect, so steam already in the air is cut
    rather than left to dissipate the way vanilla does. Every NodeActiveState value
    is a visibility/existence switch, so none of them taper, and the engine's own
    graceful stop (StopParticles) exists only as a TkSketchComponentData graph node
    with no GcTriggerActionComponentData equivalent.
]]-------------------------------------------------------------------------------------

--=====================================================================================
-- XML helpers
--
-- Every template below is written flush-left so it stays readable in this file, and is
-- pushed to its final depth by indent() when composed. XML indentation is cosmetic to
-- MBINCompiler, so nesting depth is a formatting concern, not a data one.
--
-- NOTE: no backslash escapes anywhere in this file. AMUMSS treats backslashes in
-- strings literally so that Windows paths ('MODELS\COMMON\...') work, which means '\t'
-- is backslash-plus-t and '[^\n]+' is the character class {backslash, n} - that one
-- silently shredded every generated tag by splitting on each letter n. Build the
-- characters by code point instead: 9 = tab, 10 = newline.
--=====================================================================================

local TAB = string.char(9)
local NEWLINE = string.char(10)

local function indent(text, tabs)
	local pad = string.rep(TAB, tabs)
	return (text:gsub('[^' .. NEWLINE .. ']+', function(line) return pad .. line end))
end

-- Concatenates generated blocks and indents the result as one unit.
local function block(parts, tabs)
	return indent(table.concat(parts), tabs)
end

--=====================================================================================
-- Vanilla data
--=====================================================================================

local PARTS = 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/'

-- Vanilla's own NameHash values, transcribed from the unmodified scenes and kept
-- literal so the locators still answer anything vanilla looks up by hash.
local VENT_HASH = {
	LOCVent1 = '1543583585',
	LOCVent2 = '3653677802',
	LOCVent3 = '3482099318',
	LOCVent4 = '3007342046',
}

-- Transforms are held as STRINGS to reproduce vanilla's exact decimal text - the
-- rotations carry 7 decimal places where the translations carry 6, so formatting these
-- as numbers would silently shift them. Scale is 1 everywhere, so it is not carried.
local ANCHOR_TRANSFORM = {
	tx = '0.000000',    ty = '0.088608', tz = '0.501070',
	rx = '-47.4653053', ry = '0.000000', rz = '180.000000',
}

-- Vent order within a bay is vanilla's own order and is preserved.
local BAYS = {
	-- Bay A (Titan) ramp - 4 vents
	{
		scene		= PARTS .. 'AIRLOCK_NESW_A.SCENE.MBIN',
		entity		= PARTS .. 'AIRLOCK_NESW_A/ENTITIES/RAMPDATA.ENTITY.MBIN',
		anchorIndex	= 11,
		vents = {
			{ name='LOCVent1', tx='-2.473430', ty='1.956803', tz='4.335597', rx='47.4653053', ry='180.000000', rz='0.000000' },
			{ name='LOCVent2', tx='-2.473430', ty='1.023037', tz='1.768809', rx='47.4653053', ry='180.000000', rz='0.000000' },
			{ name='LOCVent3', tx='2.473490',  ty='1.956803', tz='4.335597', rx='47.4653053', ry='180.000000', rz='0.000000' },
			{ name='LOCVent4', tx='2.473490',  ty='1.023037', tz='1.768809', rx='47.4653053', ry='180.000000', rz='0.000000' },
		},
	},
	-- Bay B ramp - 2 vents, and the bay whose RAMPCONTROLS is the shared switch
	{
		scene		= PARTS .. 'AIRLOCK_NESW_B.SCENE.MBIN',
		entity		= PARTS .. 'AIRLOCK_NESW_B/ENTITIES/RAMPDATA.ENTITY.MBIN',
		anchorIndex	= 19,
		vents = {
			{ name='LOCVent2', tx='-1.936527', ty='0.543685', tz='1.585106', rx='-47.4653053', ry='0.000000', rz='0.000000' },
			{ name='LOCVent1', tx='1.953401',  ty='0.543685', tz='1.585106', rx='-47.4653053', ry='0.000000', rz='0.000000' },
		},
	},
	-- Bay C lift/hatch - 4 vents, and its entity is LIFTDATA rather than RAMPDATA
	{
		scene		= PARTS .. 'AIRLOCK_NESW_C.SCENE.MBIN',
		entity		= PARTS .. 'AIRLOCK_NESW_C/ENTITIES/LIFTDATA.ENTITY.MBIN',
		anchorIndex	= 5,
		vents = {
			{ name='LOCVent4', tx='1.500000',  ty='-1.414622', tz='-1.418089', rx='47.4653053', ry='180.000000', rz='0.000000' },
			{ name='LOCVent3', tx='1.500000',  ty='0.795982',  tz='0.610021',  rx='47.4653053', ry='180.000000', rz='0.000000' },
			{ name='LOCVent2', tx='-1.500000', ty='0.795982',  tz='0.610021',  rx='47.4653053', ry='180.000000', rz='0.000000' },
			{ name='LOCVent1', tx='-1.500000', ty='-1.414622', tz='-1.418089', rx='47.4653053', ry='180.000000', rz='0.000000' },
		},
	},
}

-- Fail loudly at build time rather than emitting a malformed node. string.format('%s')
-- renders a nil as the text "nil", so a missing hash would otherwise ship silently.
for _, bay in ipairs(BAYS) do
	assert(bay.scene and bay.entity, 'bay is missing a scene or entity path')
	for _, vent in ipairs(bay.vents) do
		assert(VENT_HASH[vent.name], 'no NameHash known for vent ' .. tostring(vent.name))
		for _, field in ipairs({'tx', 'ty', 'tz', 'rx', 'ry', 'rz'}) do
			assert(vent[field], 'vent ' .. tostring(vent.name) .. ' is missing ' .. field)
		end
	end
end

--=====================================================================================
-- Scene: the vent anchor that replaces ShipAccesswayData
--=====================================================================================

local function transform(t)
	return string.format([[
<Property name="Transform" value="TkTransformData">
	<Property name="TransX" value="%s" />
	<Property name="TransY" value="%s" />
	<Property name="TransZ" value="%s" />
	<Property name="RotX" value="%s" />
	<Property name="RotY" value="%s" />
	<Property name="RotZ" value="%s" />
	<Property name="ScaleX" value="1.000000" />
	<Property name="ScaleY" value="1.000000" />
	<Property name="ScaleZ" value="1.000000" />
</Property>
]], t.tx, t.ty, t.tz, t.rx, t.ry, t.rz)
end

-- One vanilla LOCVent locator, rebuilt at its original transform. Bare, exactly as
-- vanilla has it - the steam is spawned into it at runtime, not authored here.
local function ventLocator(index, vent)
	return string.format([[
<Property name="Children" value="TkSceneNodeData" _index="%d">
	<Property name="Name" value="%s" />
	<Property name="NameHash" value="%s" />
	<Property name="Type" value="LOCATOR" />
%s	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes" />
	<Property name="InstanceTransforms" />
	<Property name="Children" />
</Property>
]], index, vent.name, VENT_HASH[vent.name], indent(transform(vent), 1))
end

-- Replaces ShipAccesswayData outright: same slot, same transform, but an inert LOCATOR
-- instead of the node the landing sequence drives.
local function ventAnchor(bay)
	local locators = {}
	for i, vent in ipairs(bay.vents) do
		locators[#locators + 1] = ventLocator(i - 1, vent)
	end
	return string.format([[
<Property name="Children" value="TkSceneNodeData" _index="%d">
	<Property name="Name" value="ShipAccesswayVentAnchor" />
	<Property name="NameHash" value="%s" />
	<Property name="Type" value="LOCATOR" />
%s	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes" />
	<Property name="InstanceTransforms" />
	<Property name="Children">
%s	</Property>
</Property>
]], bay.anchorIndex, GNH('ShipAccesswayVentAnchor'),
	indent(transform(ANCHOR_TRANSFORM), 1), block(locators, 2))
end

--=====================================================================================
-- Entity: the ramp + vent state machine
--=====================================================================================

local function playAnim(anim)
	return string.format([[
<Property name="Action" value="GcPlayAnimAction">
	<Property name="GcPlayAnimAction">
		<Property name="Anim" value="%s" />
	</Property>
</Property>
]], anim)
end

-- Spawns vanilla's own AIRLOCKVENT effect at one vent locator. LocalModel keeps the
-- lookup inside this bay - at Scene it is ship-wide and every bay fires together,
-- because the LOCVent names and hashes are identical across bays.
local function ventOn(vent)
	return string.format([[
<Property name="Action" value="GcParticleAction">
	<Property name="GcParticleAction">
		<Property name="Effect" value="AIRLOCKVENT" />
		<Property name="Joint" value="%s" />
		<Property name="Exact" value="true" />
		<Property name="FindRange" value="GcBroadcastLevel">
			<Property name="BroadcastLevel" value="LocalModel" />
		</Property>
	</Property>
</Property>
]], vent.name)
end

-- Removes the spawned effect from one vent locator. RemoveChildren, not Deactivate:
-- Deactivate stops the steam but breaks the joint for every later lookup.
local function ventOff(vent)
	return string.format([[
<Property name="Action" value="GcNodeActivationAction">
	<Property name="GcNodeActivationAction">
		<Property name="NodeActiveState" value="RemoveChildren" />
		<Property name="Name" value="%s" />
		<Property name="SceneToAdd" value="" />
		<Property name="IncludePhysics" value="false" />
		<Property name="IncludeChildPhysics" value="false" />
		<Property name="NotifyNPC" value="false" />
		<Property name="UseMasterModel" value="true" />
		<Property name="UseLocalNode" value="false" />
		<Property name="RestartEmitters" value="true" />
		<Property name="AffectModels" value="false" />
	</Property>
</Property>
]], vent.name)
end

-- BOOT carries NO triggers. This is load-bearing, not an oversight - see the header.
local BOOT_STATE = [[
<Property name="States" value="GcActionTriggerState" _id="BOOT">
	<Property name="StateID" value="BOOT" />
	<Property name="Triggers" />
</Property>
]]

-- One state: a single trigger firing immediately, running its actions in order. The
-- outer Action wrapper is intentionally unvalued - it is a list, not a single action,
-- and every action in it shares the one Event.
local function triggerState(id, actions)
	return string.format([[
<Property name="States" value="GcActionTriggerState" _id="%s">
	<Property name="StateID" value="%s" />
	<Property name="Triggers">
		<Property name="Triggers" value="GcActionTrigger" _index="0">
			<Property name="Event" value="GcStateTimeEvent">
				<Property name="GcStateTimeEvent">
					<Property name="Seconds" value="0.000000" />
				</Property>
			</Property>
			<Property name="Action">
%s			</Property>
		</Property>
	</Property>
</Property>
]], id, id, block(actions, 4))
end

-- Per-bay, because the vent lists differ (bay B has 2, A and C have 4).
local function rampStateMachine(bay)
	local open  = { playAnim('RAMPDOWN') }
	local close = { playAnim('RAMPUP') }
	for _, vent in ipairs(bay.vents) do
		open[#open + 1]   = ventOn(vent)
		close[#close + 1] = ventOff(vent)
	end
	return string.format([[
<Property name="Components" value="GcTriggerActionComponentData">
	<Property name="GcTriggerActionComponentData">
		<Property name="HideModel" value="false" />
		<Property name="StartInactive" value="false" />
		<Property name="States">
%s		</Property>
		<Property name="Persistent" value="false" />
		<Property name="PersistentState" value="BOOT" />
		<Property name="ResetShotTimeOnStateChange" value="false" />
		<Property name="LinkStateToBaseGrid" value="false" />
	</Property>
</Property>
]], block({
	BOOT_STATE,
	triggerState('JANK7_RAMPOPEN',  open),
	triggerState('JANK7_RAMPCLOSE', close),
}, 3))
end

--=====================================================================================
-- Assembly
--=====================================================================================

local mbinChanges = {
	{--	|The one switch that drives all three bays - BroadcastTriggerAction does the reach|
		MBIN_FILE_SOURCE	= PARTS .. 'AIRLOCK_NESW_B/ENTITIES/AIRLOCK_NESW_B_RAMPCONTROLS.ENTITY.MBIN',
		MXML_CHANGE_TABLE	= {
			{ VALUE_CHANGE_TABLE = {
				{'SimpleInteractionType',	'Interact'},
				{'TriggerAction',			'JANK7_RAMPOPEN'},
				{'TriggerActionToggle',		'JANK7_RAMPCLOSE'},
				{'BroadcastTriggerAction',	true},
			}},
		}
	},
}

for _, bay in ipairs(BAYS) do
	mbinChanges[#mbinChanges + 1] = {--	|scene: drop ShipAccesswayData, keep the bare vents|
		MBIN_FILE_SOURCE	= bay.scene,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ShipAccesswayData'},
				ADD_OPTION			= 'REPLACEwholeSECTION',
				ADD					= ventAnchor(bay),
			},
		}
	}
	mbinChanges[#mbinChanges + 1] = {--	|entity: the ramp + vent state machine, empty BOOT|
		MBIN_FILE_SOURCE	= bay.entity,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Components', 'TkPhysicsComponentData'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= rampStateMachine(bay),
			},
		}
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'Jank7.Corvette_Ramp_Manual_Control_v7.0',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.02',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = mbinChanges }},
}