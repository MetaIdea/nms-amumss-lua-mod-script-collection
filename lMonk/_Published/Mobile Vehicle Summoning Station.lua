--[[┎──────────────────────────────────────────────────────────────────────────
	┃ Mobile summoning station - make it pickable.
	┃ Replace the default model with the signal booster
	┃ Set the station as the default choice in the exocrafts build menu
	┃ Set the icon to signal booster with a different background
	┃ Add hazard protection to the new summoing station (signal booster) model
────┸──────────────────────────────────────────────────────────────────────--]]
Protection_Radius = 8

Heater_Attachment = [[
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="HeatedFloors"/>
		<Property name="NameHash" value="0"/>
		<Property name="Type" value="LOCATOR"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0"/>
			<Property name="TransY" value="0"/>
			<Property name="TransZ" value="0"/>
			<Property name="RotX" value="0"/>
			<Property name="RotY" value="0"/>
			<Property name="RotZ" value="0"/>
			<Property name="ScaleX" value="1"/>
			<Property name="ScaleY" value="1"/>
			<Property name="ScaleZ" value="1"/>
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="ATTACHMENT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\HEATER.ENTITY.MBIN"/>
			</Property>
		</Property>
		<Property name="Children">
			<Property value="TkSceneNodeData.xml">
				<Property name="Name" value="HeaterCollision"/>
				<Property name="NameHash" value="635332889"/>
				<Property name="Type" value="COLLISION"/>
				<Property name="Transform" value="TkTransformData.xml">
					<Property name="TransX" value="0"/>
					<Property name="TransY" value="0"/>
					<Property name="TransZ" value="0"/>
					<Property name="RotX" value="0"/>
					<Property name="RotY" value="0"/>
					<Property name="RotZ" value="0"/>
					<Property name="ScaleX" value="1"/>
					<Property name="ScaleY" value="1"/>
					<Property name="ScaleZ" value="1"/>
				</Property>
				<Property name="Attributes">
					<Property value="TkSceneNodeAttributeData.xml">
						<Property name="Name" value="TYPE"/>
						<Property name="AltID" value=""/>
						<Property name="Value" value="Sphere"/>
					</Property>
					<Property value="TkSceneNodeAttributeData.xml">
						<Property name="Name" value="RADIUS"/>
						<Property name="AltID" value=""/>
						<Property name="Value" value="]]..Protection_Radius..[["/>
					</Property>
				</Property>
				<Property name="Children"/>
			</Property>
		</Property>
	</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Mobile Summoning Station.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'},
				VALUE_CHANGE_TABLE 	= {
					{'CanPickUp',			true},
					{'EditsTerrain',		false},
					{'CloseMenuAfterBuild',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'Model',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'InactiveModel',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SIGNALSCANNER/SIGNALSCANNER_LOD.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS = {'Name', 'UI_BUILD_PATH_VEHICLES'},
				VALUE_CHANGE_TABLE 	= {
					{'DefaultItem', 'SUMMON_GARAGE'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'Icon',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.SIGNAL.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'SUMMON_GARAGE'},
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.05},
					{'G',			0.24},
					{'B',			0.32}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SIGNALSCANNER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				ADD 				= Heater_Attachment
			}
		}
	}

}}}}
