---------------------------------------------------------------------------------------
local mod_desc = [[
  Ramp Switch Glow Fix v0.1

  Vanilla bug: on a press, the corvette ramp switch's own graph (QDRCONTROLS) hides
  the resting glow (SwitchGlowOn) and should show the press glow (SwitchGlowFlip) while
  the lever flips. The "show SwitchGlowFlip" step's flag byte is 64 instead of 1, so
  nothing shows and the glow is an empty space until the lever is back. This sets it
  to 1 (the teleporter button's matching step has 1 and works).
  EXML patch, so it merges with other mods that patch QDRCONTROLS.

  v0.1  UNTESTED.
]]-------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'Jank7.Ramp_Switch_Glow_Fix_v0.1',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.05',
	EXML_CREATE			= 'TRUE',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = {
		{--	|"show SwitchGlowFlip" step (graph node 3): flag byte 0 is 64. It's the only
		--  CustomData value 64 in the file (NMS 7.05).|
			MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/RAMPCONTROL/ENTITIES/QDRCONTROLS.ENTITY.MBIN',
			MXML_CHANGE_TABLE	= {
				{
					VALUE_MATCH			= '64',
					REPLACE_TYPE		= 'ONCE',
					VALUE_CHANGE_TABLE	= {{'CustomData', '1'}},
				},
			}
		},
	}}},
}