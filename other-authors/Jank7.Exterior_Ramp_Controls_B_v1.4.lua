NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'Jank7.Exterior_Ramp_Controls_B_v1.4',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '6.24',
	MOD_DESCRIPTION		= 'Adds exterior ramp control switches to corvette landing bays A, B, and C',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|Titan landing bay exterior switch|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/AIRLOCK_NESW_A.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFExteriorLight1'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= [[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="RampControlsExterior" />
			<Property name="NameHash" value="3701234567" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="2.455000" />
				<Property name="TransY" value="0.280000" />
				<Property name="TransZ" value="1.530000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="-90.000000" />
				<Property name="RotZ" value="-62.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\AIRLOCK_NESW_B\ENTITIES\AIRLOCK_NESW_B_RAMPCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\AIRLOCK_NESW_A|collisionSphereExt" />
					<Property name="NameHash" value="2841098765" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="1.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFRampControlExterior" />
					<Property name="NameHash" value="1987654321" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="-90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\RAMPCONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
				]]
			},
		}
	},
	{--	|Ambassador landing bay exterior switch|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/AIRLOCK_NESW_B.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFLight3'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= [[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="RampControlsExterior" />
			<Property name="NameHash" value="3701234568" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="2.106000" />
				<Property name="TransY" value="0.255000" />
				<Property name="TransZ" value="0.630000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="-90.000000" />
				<Property name="RotZ" value="-62.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\AIRLOCK_NESW_B\ENTITIES\AIRLOCK_NESW_B_RAMPCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\AIRLOCK_NESW_B|collisionSphereExt" />
					<Property name="NameHash" value="2841098766" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="1.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFRampControlExterior" />
					<Property name="NameHash" value="1987654322" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="270.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\RAMPCONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
				]]
			},
		}
	},
	{--	|Bay C (lift/hatch) exterior switch|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/AIRLOCK_NESW_C.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RampControls'},
				ADD_OPTION			= 'ADDafterSECTION',
				ADD					= [[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="RampControlsExterior" />
			<Property name="NameHash" value="3701234569" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-1.650000" />
				<Property name="TransY" value="-0.250000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="-90.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\AIRLOCK_NESW_B\ENTITIES\AIRLOCK_NESW_B_RAMPCONTROLS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\AIRLOCK_NESW_C|collisionSphereExt" />
					<Property name="NameHash" value="2841098767" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.005722" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="1.226539" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="REFRampControlExterior" />
					<Property name="NameHash" value="1987654323" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.071805" />
						<Property name="TransY" value="0.002693" />
						<Property name="TransZ" value="0.123321" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\BIGGS\RAMPCONTROL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
				]]
			},
		}
	},
}}}}