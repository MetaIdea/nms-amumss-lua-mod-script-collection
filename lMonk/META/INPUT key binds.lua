-----------------------------------------------------------------
local desc = [[
  use the mouse wheel for switching multitool tech & zoom stages
  scan with mouse3 button
]]---------------------------------------------------------------

local function AddBindings(action, button, axis)
 return [[
	<Property value="GcInputBinding.xml">
		<Property name="Action" value="GcInputActions.xml">
			<Property name="InputAction" value="]]..action..[["/>
		</Property>
		<Property name="Button" value="TkInputEnum.xml">
			<Property name="InputButton" value="]]..button..[["/>
		</Property>
		<Property name="Axis" value="TkInputAxisEnum.xml">
			<Property name="InputAxis" value="]]..axis..[["/>
		</Property>
	</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META key binds.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|mouse input binds|
		MBIN_FILE_SOURCE	= 'METADATA/INPUT/BINDINGS/GCINPUTBINDINGS_WIN_MOUSE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'InputAction', 'Player_Zoom'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'InputButton',	'None'},
					{'InputAxis',	'MouseWheel'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ActionSetType', 'OnFootControls'},
				SECTION_UP_SPECIAL	= 1,
				PRECEDING_KEY_WORDS = 'InputBindings',
				ADD 				= AddBindings('Player_ChangeWeapon', 'None', 'MouseWheel')
									  ..
									  AddBindings('Player_Scan', 'Mouse3', 'Invalid')
									  ..
									  AddBindings('Player_Binoculars', 'Mouse5', 'Invalid')
			},
			{
				SPECIAL_KEY_WORDS	= {'ActionSetType', 'VehicleMode'},
				SECTION_UP_SPECIAL	= 1,
				PRECEDING_KEY_WORDS = 'InputBindings',
				ADD 				= AddBindings('Vehicle_ChangeWeapon', 'None', 'MouseWheel')
									  ..
									  AddBindings('Vehicle_Scan', 'Mouse3', 'Invalid')
			},
			{
				SPECIAL_KEY_WORDS	= {'ActionSetType', 'ShipControls'},
				SECTION_UP_SPECIAL	= 1,
				PRECEDING_KEY_WORDS = 'InputBindings',
				ADD 				= AddBindings('Ship_ChangeWeapon', 'None', 'MouseWheel')
									  ..
									  AddBindings('Ship_Scan', 'Mouse3', 'Invalid')
			}
		}
	},
	{
	---	|keyboard input binds|
		MBIN_FILE_SOURCE	= 'METADATA/INPUT/BINDINGS/GCINPUTBINDINGS_WIN_KEYBOARD.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'InputAction', 'Vehicle_Exit'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
				-- doesn't work for the mech because of a hardcoded bug
					{'InputButton',	'KeyR'}
				}
			},
			{
			--	replace inventory KeyE with space : install tech & craft +1
				SPECIAL_KEY_WORDS	= {'InputAction', 'Fe_Alt1'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'InputButton',	'Space'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ActionSetType', 'OnFootControls'},
				SECTION_UP_SPECIAL	= 1,
				PRECEDING_KEY_WORDS = 'InputBindings',
				ADD 				= AddBindings('Player_Zoom', 'Key2', 'Invalid')
			},
		}
	}
}}}}
