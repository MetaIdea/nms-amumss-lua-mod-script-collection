---------------------------------------------------------------------------------------
local mod_desc = [[
  Ramp Warning Light v0.11 - TEST (with Manual Ramp Control v14.0+)

  The bay warning light flashes on a "DoorOpen" message and stops on "DoorClosed",
  but nothing sends those anymore. Manual Ramp Control's doors send JANK7_RAMPOPEN /
  JANK7_RAMPCLOSE instead. This adds two checks for those to the light's graph.
  Additions only - the vanilla checks are left in place.
  For use without Manual Ramp Control, see the standalone version (v0.10).
]]-------------------------------------------------------------------------------------

local LIGHT_ENTITY = 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/LIGHTS/AIRLOCKLIGHT/ENTITIES/LIGHTCONTROLS.ENTITY.MBIN'

-- IfValueIs node: 8 unused bytes, then the text to match as a 16-byte string
local function ifValueNode(index, posY, nextNode, text)
	assert(#text <= 15, text .. ' is too long for the 16-byte field')
	local lines = {}
	for i = 0, 23 do
		local b = 0
		if i >= 8 and (i - 8) < #text then b = text:byte(i - 7) end
		lines[#lines + 1] = string.format('<Property name="CustomData" value="%d" _index="%d" />', b, i)
	end
	return string.format([[
<Property name="Nodes" value="TkSketchNodeData" _index="%d">
	<Property name="TypeName" value="IfValueIs" />
	<Property name="TriggerType" value="RunParallel" />
	<Property name="SelectedVariant" value="0" />
	<Property name="PositionX" value="1762" />
	<Property name="PositionY" value="%d" />
	<Property name="Connections">
		<Property name="Connections" value="TkSketchNodeConnections" _index="0">
			<Property name="Connections">
				<Property name="Connections" value="%d" _index="0" />
			</Property>
		</Property>
	</Property>
	<Property name="CustomData">
%s
	</Property>
</Property>
]], index, posY, nextNode, table.concat(lines, string.char(10)))
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'Jank7.Ramp_Warning_Light_v0.11',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.02',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = {
		{
			MBIN_FILE_SOURCE	= LIGHT_ENTITY,
			MXML_CHANGE_TABLE	= {
				{--	|node 0 (OnBroadcastReceived) also runs the new checks 13 and 14.
				--  Its existing connections are 1 and 2; value 2 appears only there.|
					SPECIAL_KEY_WORDS	= {'Connections', '2'},
					VALUE_CHANGE_TABLE	= {{'IGNORE', 'IGNORE'}},
					ADD_OPTION			= 'ADDafterLINE',
					ADD					= [[
										<Property name="Connections" value="13" _index="2" />
										<Property name="Connections" value="14" _index="3" />
]],
				},
				{--	|new checks after the last vanilla node (12, WaitFrames at PositionY 985):
				--  13 JANK7_RAMPOPEN -> node 7 (LOOP = True), 14 JANK7_RAMPCLOSE -> node 9 (LOOP = False)|
					SPECIAL_KEY_WORDS	= {'PositionY', '985'},
					ADD_OPTION			= 'ADDafterSECTION',
					ADD					= ifValueNode(13, 1150, 7, 'JANK7_RAMPOPEN') .. ifValueNode(14, 1250, 9, 'JANK7_RAMPCLOSE'),
				},
			}
		},
	}}},
}