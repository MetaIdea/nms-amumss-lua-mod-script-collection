-----------------------------------------------------------------------------------------
local desc = [[
  Increase LOD for all parts - making the figther LOD the same as all other ship models.
  Deletes the in-scene LODDIST attributes and attaches a LodDistances entity to
  the main LOD0 node/s of the model.
  * Needs to be merged with 'fighter various tweaks' script(!)
]]---------------------------------------------------------------------------------------

local fighter_main_part_node = {
	{'ACCESSORIES/ACCA.SCENE.MBIN',						'AccALOD0'},
	{'ACCESSORIES/TURBINEAA.SCENE.MBIN',				'Wings5LOD0'},
	{'COCKPIT/COCKPIT_B/COCKPITB.SCENE.MBIN',			'CockpitBLOD0'},
	{'COCKPIT/COCKPIT_A/COCKPITA.SCENE.MBIN',			'BodyLOD0'},
	{'COCKPIT/COCKPIT_A/GOLDCOCKPITA.SCENE.MBIN',		'BodyLOD0'},
	{'COCKPIT/COCKPIT_D/COCKPITD.SCENE.MBIN',			'BodyLOD0'},
	{'COCKPIT/COCKPIT_E/COCKPIT_E.SCENE.MBIN',			'BodyLOD0'},
	{'COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',			'BodyLOD0'},
	{'NOSE/COCKPITA_NOSEA/COCKPITANOSEA.SCENE.MBIN'},
	{'NOSE/COCKPITA_NOSEA/GOLDCOCKPITANOSEA.SCENE.MBIN'},
	{'NOSE/COCKPITA_NOSEB/COCKPITANOSEB.SCENE.MBIN'},
	{'NOSE/COCKPITA_NOSEC/COCKPITANOSEC.SCENE.MBIN'},
	{'NOSE/COCKPITA_NOSED/COCKPITANOSED.SCENE.MBIN'},
	{'NOSE/COCKPITA_NOSEE/COCKPITANOSEE.SCENE.MBIN'},	
	{'ENGINE/ENGINE_B/ENGINEB.SCENE.MBIN',				'EngineBLOD0'},
	{'ENGINE/ENGINE_C/ENGINEC.SCENE.MBIN',				'EngineCLOD0'},
	{'ENGINE/ENGINE_C/GOLDENGINEC.SCENE.MBIN',			'EngineCLOD0'},
	{'ENGINE/ENGINE_D/ENGINED.SCENE.MBIN',				'EngineD1LOD0'},
	{'WINGS/WINGS_A/WINGS_A.SCENE.MBIN',				'WingsALOD0'},
	{'WINGS/WINGS_A/GOLDWINGS_A.SCENE.MBIN',			'WingsALOD0'},
	{'WINGS/WINGS_B/WINGSB.SCENE.MBIN',					{'WingsLOD0','WingsBLOD0'}},
	{'WINGS/WINGS_D/WINGSD.SCENE.MBIN',					'WingsDLOD0'},
	{'WINGS/WINGS_E/WINGSE.SCENE.MBIN',					{'WingELOD0', 'WingE2LOD0'}},
	{'WINGS/WINGS_G/WINGSG.SCENE.MBIN'},
	{'WINGS/WINGS_H/WINGSH.SCENE.MBIN'},
	{'WINGS/WINGS_I/WINGSI.SCENE.MBIN'},
	{'WINGS/WINGS_J/WINGSJ.SCENE.MBIN',					{'_WingsJ_FullLOD0', '_WingsJ_LowLOD0', '_WingsJ_MidLOD0'}},
	{'WINGS/WINGS_K/WINGSK.SCENE.MBIN',					{'WingsK_ALOD0', 'WingsK_BLOD0'}},
	{'SUBWINGS/SUBWINGS_A/SUBWINGSALEFT.SCENE.MBIN',	'SubWingsALeftLOD0'},
	{'SUBWINGS/SUBWINGS_A/SUBWINGSARIGHT.SCENE.MBIN',	'SubWingsARightLOD0'},
	{'SUBWINGS/SUBWINGS_B/SUBWINGSBLEFT.SCENE.MBIN',	'SubWingsBLeftLOD0'},
	{'SUBWINGS/SUBWINGS_B/SUBWINGSBRIGHT.SCENE.MBIN',	'SubWingsBRightLOD0'},
	{'SUBWINGS/SUBWINGS_C/SUBWINGSCLEFT.SCENE.MBIN',	'SubWingsCLeftLOD0'},
	{'SUBWINGS/SUBWINGS_C/SUBWINGSCRIGHT.SCENE.MBIN',	'SubWingsCRightLOD0'},
	{'SUBWINGS/SUBWINGS_D/SUBWINGSDLEFT.SCENE.MBIN',	'SubWingDLeftLOD0'},
	{'SUBWINGS/SUBWINGS_D/SUBWINGSDRIGHT.SCENE.MBIN',	'SubWingDRightLOD0'},
}

local function ChangeFighterLodAttribute()
	local function AddEntityAttribute(name)
		return {
			SPECIAL_KEY_WORDS	= {'Name', name},
			PRECEDING_KEY_WORDS	= 'Attributes',
			SECTION_ACTIVE		= 1,
			ADD 				= [[
				<Property value="TkSceneNodeAttributeData.xml">
					<Property name="Name" value="ATTACHMENT"/>
					<Property name="AltID" value=""/>
					<Property name="Value" value="MODELS/COMMON/SPACECRAFT/SHARED/ENTITIES/SHAREDLODDISTANCES.ENTITY.MBIN"/>
				</Property>
			]]
		}
	end
	local T = {}
	for _,mbin in ipairs(fighter_main_part_node) do
		local src = {}
		src.MBIN_FILE_SOURCE = 'MODELS/COMMON/SPACECRAFT/FIGHTERS/'..mbin[1]
		src.EXML_CHANGE_TABLE = {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST1'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST2'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST3'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
				VALUE_CHANGE_TABLE 	= { {'Value', 5} }
			}
		}
		if mbin[2] then
			if type(mbin[2]) == 'table' then
				for _,v in ipairs(mbin[2]) do
					table.insert(src.EXML_CHANGE_TABLE, AddEntityAttribute(v))
				end
			else
				table.insert(src.EXML_CHANGE_TABLE, AddEntityAttribute(mbin[2]))
			end
		end
		table.insert(T, src)
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SHIP fighter LOD increase.pak',
	MOD_AUTHOR			= 'lMonk',
	MOD_BATCHNAME		= '__SHIP fighter merged.pak',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {
	{
		MBIN_CHANGE_TABLE	= ChangeFighterLodAttribute()
	}
}}
