-------------------------------------------------------------------------------------------
local mod_desc = [[
  Removes the red glow from the sentinel ship cockpit the canopy.
  The 2 front monitors, scrolling pulse lines along the side wires, base of the system map
  and side walls along the back are affected.
]]-----------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Sentinel cockpit no red glow.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP = {
					{'Name', 'lightrim'},			-- high sidewall scroll glow
					{'Name', 'WireLightsL'},		-- L sidewires scroll glow
					{'Name', 'WireLightsR'},		-- R sidewires scroll glow
					{'Name', 'polySurface8398'},	-- canopy lights
					{'Name', 'Lightbase'},		 	-- map base center
					{'Name', 'MonitorL1'},			-- L monitor
					{'Name', 'MonitorL2'},			-- R monitor
				},
				REMOVE = 'Section'
			}
		}
	}
}}}}
