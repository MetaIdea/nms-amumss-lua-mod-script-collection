--------------------------------------------------------------------
mod_desc = [[
  Access the upgrade menus at your base/freighter.
  The multitool upgrade menu from the weapons specialist terminal.
  The ship salavage and upgrade menu from the old monitor station.
]]------------------------------------------------------------------
mod_version = '1.63'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.ship and multitool upgrade terminals.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.23',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_WEAPONS/ENTITIES/WEAPON5SPIN.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Components',
				ADD					= [[
					<Property value="GcInteractionComponentData.xml">
						<Property name="InteractionAction" value="PressButton"/>
						<Property name="InteractionType" value="GcInteractionType.xml">
							<Property name="InteractionType" value="WeaponUpgrade"/>
						</Property>
						<Property name="AttractDistanceSq" value="9"/>
						<Property name="BlendToCameraTime" value="0.5"/>
						<Property name="BlendFromCameraTime" value="-1"/>
						<Property name="TriggerAction" value="INACTIVE"/>
						<Property name="InteractAngle" value="360"/>
						<Property name="InteractDistance" value="3"/>
						<Property name="SecondaryCameraTransitionTime" value="1"/>
					</Property>
					<Property value="TkPhysicsComponentData.xml" />]]
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/NEXUSORBPILLAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'DATA'},
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.7}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',	'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'}
				}
			}
		}
	}
}}}}
