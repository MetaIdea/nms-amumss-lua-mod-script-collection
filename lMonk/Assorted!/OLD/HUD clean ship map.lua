-----------------------------------------------
local mod_desc = [[
  Remove grainy shader from ship's system map
]]---------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SHIP clean HUD map.pak',
	MOD_AUTHOR			= 'Lo2k; script by lMonk',
	NMS_VERSION			= '4.7',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/HUD/SPACEMAPHORIZON/HORZ_MAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'CastShadow',	false}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F48_WARPED_DIFFUSE_LIGHTING'},
				VALUE_CHANGE_TABLE 	= {
					{'MaterialFlag', '_F10_NORECEIVESHADOW'}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'MaterialFlag', '_F49_DISABLE_AMBIENT'},
					{'MaterialFlag', '_F50_DISABLE_POSTPROCESS'},
					{'MaterialFlag', '_F60_ACUTE_ANGLE_FADE'},
					{'MaterialFlag', '_F29_VBCOLOUR'},
				},
				REMOVE 				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = {'Uniforms'},
				ADD					= [[
					<Property value="TkMaterialUniform.xml">
						<Property name="Name" value="gCustomParams01Vec4"/>
						<Property name="Values" value="Vector4f.xml">
							<Property name="x" value="1"/>
						</Property>
					</Property>
				]]
			}
		}
	}
}}}}
