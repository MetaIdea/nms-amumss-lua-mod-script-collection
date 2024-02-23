-----------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
-----------------------------------------------------------------
local mod_desc = [[
  use the mouse wheel for switching multitool tech & zoom stages
  scan with mouse3 button
]]---------------------------------------------------------------

local function AddBindings(action, button, axis)
	return {
		META	= {'value', 'GcInputBinding.xml'},
		Action	= {
			META		= {'Action', 'GcInputActions.xml'},
			InputAction	= action
		},
		Button	= {
			META		= {'Button', 'TkInputEnum.xml'},
			InputButton	= button
		},
		Axis	= {
			META		= {'Axis', 'TkInputAxisEnum.xml'},
			InputAxis	= axis or 'Invalid'
		}
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META key binds.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|mouse input binds|
		MBIN_FILE_SOURCE	= 'METADATA/INPUT/BINDINGS/GCINPUTBINDINGS_WIN_MOUSE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'InputAction', 'Player_Zoom'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'InputButton',	'MouseWheelDown'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ActionSetType', 'OnFootControls'},
				SECTION_UP_SPECIAL	= 1,
				PRECEDING_KEY_WORDS = 'InputBindings',
				ADD 				= ToExml({
					AddBindings('Player_ChangeWeapon',	'MouseWheelDown'),
					AddBindings('Player_Scan',			'Mouse3'),
					AddBindings('Player_Binoculars',	'Mouse5'),
					AddBindings('Player_Torch',			'Mouse6')
				})
			},
			{
				SPECIAL_KEY_WORDS	= {'ActionSetType', 'VehicleMode'},
				SECTION_UP_SPECIAL	= 1,
				PRECEDING_KEY_WORDS = 'InputBindings',
				ADD 				= ToExml({
					AddBindings('Vehicle_ChangeWeapon',	'MouseWheelDown'),
					AddBindings('Vehicle_Scan',			'Mouse3')
				})
			},
			{
				SPECIAL_KEY_WORDS	= {'ActionSetType', 'ShipControls'},
				SECTION_UP_SPECIAL	= 1,
				PRECEDING_KEY_WORDS = 'InputBindings',
				ADD 				= ToExml({
					AddBindings('Ship_ChangeWeapon',	'MouseWheelDown'),
					AddBindings('Ship_Scan',			'Mouse3')
				})
			},
			{
				SPECIAL_KEY_WORDS	= {
					{'InputAction', 'Quick_Left'},
					{'InputAction', 'Quick_Right'}
				},
				SECTION_UP_SPECIAL	= 1,
				REMOVE				= 'Section'
			}
		}
	},
	{--	|keyboard input binds|
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
			{--	replace inventory KeyE with space : install tech & craft +1
				SPECIAL_KEY_WORDS	= {'InputAction', 'Fe_Alt1'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'InputButton',	'Space'}
				}
			},
			{--	terrain edit sphere size down
				SPECIAL_KEY_WORDS	= {'InputAction', 'Terrain_SizeDown'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'InputButton',	'F2'}
				}
			},
			{--	terrain edit sphere size up
				SPECIAL_KEY_WORDS	= {'InputAction', 'Terrain_SizeUp'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'InputButton',	'F1'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {
					{'InputAction', 'Player_ChangeWeapon'},
					{'InputAction', 'Ship_ChangeWeapon'},
					{'InputAction', 'Vehicle_ChangeWeapon'},
				},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'InputButton',	'Key2'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'InputAction', 'Unbound'},
				SECTION_UP			= 1,
				REMOVE				= 'Section'
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'ActionSetType', 'OnFootControls'},
				-- SECTION_UP_SPECIAL	= 1,
				-- PRECEDING_KEY_WORDS = 'InputBindings',
				-- ADD 				= ToExml(AddBindings('Ship_GalacticMap', 'KeyM'))
			-- }
		}
	}
}}}}