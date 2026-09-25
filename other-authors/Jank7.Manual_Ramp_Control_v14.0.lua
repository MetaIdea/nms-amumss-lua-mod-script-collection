---------------------------------------------------------------------------------------
local mod_desc = [[
  Manual Ramp Control v14.0

  Removes the corvette landing bays' auto-open. Each bay is opened and closed by
  its own switches (interior and exterior), and they stay in sync.

  v13.0  Switch states share the door's names so all switches in a bay stay in sync
  v13.1  Door entities patched in place instead of copied
  v13.3  One shared vent entity for all bays
  v14.0  Vent steam soft stop (Jank-tested 2026-09-24: works). The door sends JANK7_RAMPOPEN / JANK7_RAMPCLOSE
         as graph messages when its ramp animation starts; the vent entity is a graph
         that spawns steam on open and stops it (no instant cut) on close.
]]-------------------------------------------------------------------------------------

--=====================================================================================
-- XML helpers
-- AMUMSS reads backslashes literally, so tab/newline/backslash are built by code point.
--=====================================================================================

local TAB = string.char(9)
local NEWLINE = string.char(10)
local BACKSLASH = string.char(92)

local function indent(text, tabs)
	local pad = string.rep(TAB, tabs)
	return (text:gsub('[^' .. NEWLINE .. ']+', function(line) return pad .. line end))
end

local function block(parts, tabs)
	return indent(table.concat(parts), tabs)
end

-- Forward slashes to game-style backslashes
local function nmsPath(path)
	return (path:gsub('/', BACKSLASH))
end

--=====================================================================================
-- Vanilla data
--=====================================================================================

local PARTS = 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/'

-- door is also the scene node name (matching is case-insensitive)
local BAYS = {
	{ dir = 'AIRLOCK_NESW_A', door = 'RAMPDATA' },	-- 4 vents
	{ dir = 'AIRLOCK_NESW_B', door = 'RAMPDATA' },	-- 2 vents
	{ dir = 'AIRLOCK_NESW_C', door = 'LIFTDATA' },	-- 4 vents
}

local function scenePath(bay)			return PARTS .. bay.dir .. '.SCENE.MBIN' end
local function entityPath(bay, name)	return PARTS .. bay.dir .. '/ENTITIES/' .. name .. '.ENTITY.MBIN' end

-- Shared vent entity, copied from bay A's SHIPACCESSWAYDATA
local ACCESSWAY_ENTITY	= 'SHIPACCESSWAYDATA'
local VENT_ENTITY		= 'JANK7_VENTS'
local VENT_PATH			= entityPath(BAYS[1], VENT_ENTITY)
local VENTS				= {'LOCVent1', 'LOCVent2', 'LOCVent3', 'LOCVent4'}
local VENT_EFFECT		= 'AIRLOCKVENT'
local NEW_ANCHOR_NAME	= 'ShipAccesswayVentAnchor'

--=====================================================================================
-- State IDs (16-byte field, kept to 15 characters). Also used as the graph messages.
--=====================================================================================

local STATE = {
	RAMP_OPEN	= 'JANK7_RAMPOPEN',
	RAMP_CLOSE	= 'JANK7_RAMPCLOSE',
}
for _, id in pairs(STATE) do
	assert(#id <= 15, 'state ID ' .. id .. ' is ' .. #id .. ' characters; the field holds 16 bytes')
end

--=====================================================================================
-- Shared state-machine pieces
--=====================================================================================

-- Empty BOOT: bays spawn closed with no animation
local BOOT_STATE = [[
<Property name="States" value="GcActionTriggerState" _id="BOOT">
	<Property name="StateID" value="BOOT" />
	<Property name="Triggers" />
</Property>
]]

local function stateMachine(states, persistentState)
	return string.format([[
<Property name="Components" value="GcTriggerActionComponentData">
	<Property name="GcTriggerActionComponentData">
		<Property name="HideModel" value="false" />
		<Property name="StartInactive" value="false" />
		<Property name="States">
%s		</Property>
		<Property name="Persistent" value="false" />
		<Property name="PersistentState" value="%s" />
		<Property name="ResetShotTimeOnStateChange" value="false" />
		<Property name="LinkStateToBaseGrid" value="false" />
	</Property>
</Property>
]], block(states, 3), persistentState)
end

-- One state that runs its actions immediately on entry
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

--=====================================================================================
-- Graph (TkSketchComponentData) pieces
-- Graph settings are raw bytes, one CustomData line per byte. Text fields are 16 bytes.
--=====================================================================================

-- Bytes as CustomData lines, numbered from `start`
local function byteLines(bytes, start)
	local lines = {}
	for i, b in ipairs(bytes) do
		lines[#lines + 1] = string.format('<Property name="CustomData" value="%d" _index="%d" />', b, start + i - 1)
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
]], index, typeName, index * 100, table.concat(conn, NEWLINE), table.concat(byteLines(bytes, 0), NEWLINE))
end

local function sketchGraph(nodes)
	return string.format([[
<Property name="Components" value="TkSketchComponentData">
	<Property name="TkSketchComponentData">
		<Property name="GraphPosX" value="0.000000" />
		<Property name="GraphPosY" value="0.000000" />
		<Property name="GraphZoom" value="1.000000" />
		<Property name="UpdateRateMultiplier" value="1.000000" />
		<Property name="Nodes">
%s		</Property>
	</Property>
</Property>
]], table.concat(nodes))
end

-- Node types. Byte layouts copied from vanilla (BIGGSPLATFORM, COOKER, AIRLOCKLIGHT).
local function onAnimFrame(i, next, anim)		-- frame 1, 4 unused bytes, anim name
	return sketchNode(i, 'OnAnimFrame', next, concatBytes({1, 0, 0, 0, 0, 0, 0, 0}, textBytes(anim)))
end
local function broadcast(i, message)			-- message name
	return sketchNode(i, 'BroadcastValueModel', {}, textBytes(message))
end
local function onBroadcast(i, next)				-- no data
	return sketchNode(i, 'OnBroadcastReceived', next, {})
end
local function ifValueIs(i, next, value)		-- 8 unused bytes, value
	return sketchNode(i, 'IfValueIs', next, concatBytes({0, 0, 0, 0, 0, 0, 0, 0}, textBytes(value)))
end
local function spawnParticles(i, effect, joint)	-- effect, joint, scale 1.0, 1
	return sketchNode(i, 'SpawnParticles', {}, concatBytes(textBytes(effect), textBytes(joint), {0, 0, 128, 63, 1, 0, 0, 0}))
end
local function stopParticles(i, joint)			-- joint
	return sketchNode(i, 'StopParticles', {}, textBytes(joint))
end

--=====================================================================================
-- Door entity: plays the ramp, and tells the bay when it starts moving
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

local DOOR_STATE_MACHINE = stateMachine({
	BOOT_STATE,
	triggerState(STATE.RAMP_OPEN,  { playAnim('RAMPDOWN') }),
	triggerState(STATE.RAMP_CLOSE, { playAnim('RAMPUP') }),
}, 'BOOT')

-- Ramp animation starts -> graph message to the bay (vents, and the light if installed)
local DOOR_SIGNAL = sketchGraph({
	onAnimFrame(0, {2}, 'RAMPDOWN'),
	onAnimFrame(1, {3}, 'RAMPUP'),
	broadcast(2, STATE.RAMP_OPEN),
	broadcast(3, STATE.RAMP_CLOSE),
})

--=====================================================================================
-- Vent entity: steam on at open, soft stop at close
--=====================================================================================

local function ventGraph()
	-- 0 listen, 1 open check, 2 close check, then one spawn and one stop node per vent
	local spawnIds, stopIds, spawns, stops = {}, {}, {}, {}
	for n, vent in ipairs(VENTS) do
		local spawnId = 2 + n
		local stopId  = 2 + #VENTS + n
		spawnIds[#spawnIds + 1] = spawnId
		stopIds[#stopIds + 1]   = stopId
		spawns[#spawns + 1] = spawnParticles(spawnId, VENT_EFFECT, vent)
		stops[#stops + 1]   = stopParticles(stopId, vent)
	end
	local nodes = {
		onBroadcast(0, {1, 2}),
		ifValueIs(1, spawnIds, STATE.RAMP_OPEN),
		ifValueIs(2, stopIds,  STATE.RAMP_CLOSE),
	}
	for _, n in ipairs(spawns) do nodes[#nodes + 1] = n end
	for _, n in ipairs(stops)  do nodes[#nodes + 1] = n end
	return sketchGraph(nodes)
end

--=====================================================================================
-- Switch entity
--=====================================================================================

local function goToState(target, broadcast, level)
	return string.format([[
<Property name="Action" value="GcGoToStateAction">
	<Property name="GcGoToStateAction">
		<Property name="State" value="%s" />
		<Property name="Broadcast" value="%s" />
		<Property name="BroadcastLevel" value="GcBroadcastLevel">
			<Property name="BroadcastLevel" value="%s" />
		</Property>
	</Property>
</Property>
]], target, tostring(broadcast), level)
end

local function timedTrigger(index, seconds, actions)
	return string.format([[
<Property name="Triggers" value="GcActionTrigger" _index="%d">
	<Property name="Event" value="GcStateTimeEvent">
		<Property name="GcStateTimeEvent">
			<Property name="Seconds" value="%s" />
			<Property name="RandomSeconds" value="0.000000" />
			<Property name="UseMissionClock" value="false" />
		</Property>
	</Property>
	<Property name="Action">
%s	</Property>
</Property>
]], index, seconds, block(actions, 2))
end

-- Sends the state to everything in the bay (door, other switches) and stays in it
local function relayState(id, target)
	return string.format([[
<Property name="States" value="GcActionTriggerState" _id="%s">
	<Property name="StateID" value="%s" />
	<Property name="Triggers">
%s	</Property>
</Property>
]], id, id, block({
		timedTrigger(0, '0.000000', { goToState(target, true, 'LocalModel') }),
	}, 2))
end

local SWITCH_STATE_MACHINE = stateMachine({
	BOOT_STATE,
	relayState(STATE.RAMP_OPEN,  STATE.RAMP_OPEN),
	relayState(STATE.RAMP_CLOSE, STATE.RAMP_CLOSE),
}, '')

--=====================================================================================
-- Assembly
--=====================================================================================

local mbinChanges = {
	{--	|Shared switch entity|
		MBIN_FILE_SOURCE	= PARTS .. 'AIRLOCK_NESW_B/ENTITIES/AIRLOCK_NESW_B_RAMPCONTROLS.ENTITY.MBIN',
		MXML_CHANGE_TABLE	= {
			{ VALUE_CHANGE_TABLE = {
				{'SimpleInteractionType',	'Interact'},
				{'TriggerAction',			STATE.RAMP_OPEN},
				{'TriggerActionToggle',		STATE.RAMP_CLOSE},
				{'BroadcastTriggerAction',	'false'},
			}},
			{
				SPECIAL_KEY_WORDS	= {'Components', 'TkPhysicsComponentData'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= SWITCH_STATE_MACHINE,
			},
		}
	},
}

for _, bay in ipairs(BAYS) do
	-- |scene: rename ShipAccesswayData (stops auto-open), point it at the vent entity|
	mbinChanges[#mbinChanges + 1] = {
		MBIN_FILE_SOURCE	= scenePath(bay),
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ShipAccesswayData'},
				VALUE_CHANGE_TABLE	= {
					{'Name',     NEW_ANCHOR_NAME},
					{'NameHash', GNH(NEW_ANCHOR_NAME)},
					{'Value',    nmsPath(VENT_PATH)},
				},
			},
		}
	}
	-- |door entity: add the ramp state machine and the signal graph|
	mbinChanges[#mbinChanges + 1] = {
		MBIN_FILE_SOURCE	= nmsPath(entityPath(bay, bay.door)),
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Components', 'TkPhysicsComponentData'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= DOOR_STATE_MACHINE .. DOOR_SIGNAL,
			},
		}
	}
end

-- |copy bay A's accessway entity to the shared vent entity|
mbinChanges[#mbinChanges + 1] = {
	MBIN_FILE_SOURCE	= {
		{ nmsPath(entityPath(BAYS[1], ACCESSWAY_ENTITY)), nmsPath(VENT_PATH), 'REMOVE' },
	},
}
-- |vent entity: replace its component with the vent graph|
mbinChanges[#mbinChanges + 1] = {
	MBIN_FILE_SOURCE	= nmsPath(VENT_PATH),
	MXML_CHANGE_TABLE	= {
		{
			SPECIAL_KEY_WORDS	= {'Components', 'GcShipAccesswayComponentData'},
			ADD_OPTION			= 'REPLACEwholeSECTION',
			ADD					= ventGraph(),
		},
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'Jank7.Manual_Ramp_Control_v14.0',
	MOD_BATCHNAME 		= 'Jank7_Ultimate_Landing_Bays_v3.0',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.03',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = mbinChanges }},
}