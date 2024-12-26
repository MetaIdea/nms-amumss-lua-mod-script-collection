--------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
--------------------------------------------------------------------------------
local mod_desc = [[
  Increase LOD for all fighter parts - making figther LOD equal to other ships.
  Deletes the in-scene LODDIST attributes and attaches a LodDistances entity to
  the main LOD0 node/s of the model.
  * Needs to be merged with other fighter script(!)
]]------------------------------------------------------------------------------

local fighter = {
	tail =		{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA.SCENE.MBIN',              		add=true},
	turbine =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/TURBINEAA.SCENE.MBIN',         		add=true},
	cockpit_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB.SCENE.MBIN',    		add=true},
	cockpit_a =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA.SCENE.MBIN',    		add=true},
	cockpit_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/GOLDCOCKPITA.SCENE.MBIN',		add=true},
	cockpit_g =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_D/COCKPITD.SCENE.MBIN',    		add=true},
	cockpit_e =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E.SCENE.MBIN',   		add=true},
	cockpit_f =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',     		add=true},
	nose_a =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEA/COCKPITANOSEA.SCENE.MBIN'},
	nose_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEA/GOLDCOCKPITANOSEA.SCENE.MBIN'},
	nose_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEB/COCKPITANOSEB.SCENE.MBIN'},
	nose_c =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEC/COCKPITANOSEC.SCENE.MBIN'},
	nose_d =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSED/COCKPITANOSED.SCENE.MBIN'},
	nose_e =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEE/COCKPITANOSEE.SCENE.MBIN'},
	engine_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_B/ENGINEB.SCENE.MBIN',    		add=true},
	engine_c =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/ENGINEC.SCENE.MBIN',    		add=true},
	engine_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/GOLDENGINEC.SCENE.MBIN',		add=true},
	engine_d =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_D/ENGINED.SCENE.MBIN',    		add=true},
	wing_a =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_A/WINGS_A.SCENE.MBIN',      		add=true},
	wing_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_A/GOLDWINGS_A.SCENE.MBIN',  		add=true},
	wing_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB.SCENE.MBIN',       		add=true},
	wing_d =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_D/WINGSD.SCENE.MBIN',       		add=true},
	wing_e =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE.SCENE.MBIN',       		add=true},
	wing_g =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_G/WINGSG.SCENE.MBIN'},
	wing_h =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_H/WINGSH.SCENE.MBIN'},
	wing_i =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_I/WINGSI.SCENE.MBIN'},
	wing_j =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_J/WINGSJ.SCENE.MBIN',              	add=true},
	s_wing_al =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSALEFT.SCENE.MBIN', 	add=true},
	s_wing_ar =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSARIGHT.SCENE.MBIN',	add=true},
	s_wing_bl =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_B/SUBWINGSBLEFT.SCENE.MBIN', 	add=true},
	s_wing_br =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_B/SUBWINGSBRIGHT.SCENE.MBIN',	add=true},
	s_wing_cl =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_C/SUBWINGSCLEFT.SCENE.MBIN', 	add=true},
	s_wing_cr =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_C/SUBWINGSCRIGHT.SCENE.MBIN',	add=true},
	s_wing_dl =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDLEFT.SCENE.MBIN', 	add=true},
	s_wing_dr =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDRIGHT.SCENE.MBIN',	add=true}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SHIP fighter LOD increase.pak',
	MOD_AUTHOR			= 'lMonk',
	MOD_BATCHNAME		= '__SHIP fighter merged.pak',
	NMS_VERSION			= '4.7',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {
	{
		MBIN_CHANGE_TABLE	= (
			function()
				T = {}
				for _,part in pairs(fighter) do
					local inx = #T+1
					T[inx] = {
						MBIN_FILE_SOURCE	= part.src,
						EXML_CHANGE_TABLE	= {
							{
								SPECIAL_KEY_WORDS 	= {
									{'Name', 'LODDIST1'},
									{'Name', 'LODDIST2'},
									{'Name', 'LODDIST3'},
								},
								REMOVE = 'Section'
							},
							{
								SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
								VALUE_CHANGE_TABLE 	= { {'Value', 5} }
							}
						}
					}
					if part.add then
						T[inx].EXML_CHANGE_TABLE[#T[inx].EXML_CHANGE_TABLE+1] = {
							SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
							ADD_OPTION			= 'AddAfterSection',
							ADD 				= ToExml({
								meta	= {'value', 'TkSceneNodeAttributeData.xml'},
								Name	= 'ATTACHMENT',
								Value	= 'MODELS/COMMON/SPACECRAFT/SHARED/ENTITIES/SHAREDLODDISTANCES.ENTITY.MBIN'
							})
						}
					end
				end
				return T
			end
		)()
	}
}}
