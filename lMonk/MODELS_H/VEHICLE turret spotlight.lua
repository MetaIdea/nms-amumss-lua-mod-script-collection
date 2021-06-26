--[[┎───────────────────────────────────
	┃ Add spotlight to exocraft turret
────┸───────────────────────────────--]]
LightStats = { fov=62, lum=94000.0, r=0.94, g=0.96, b=1.0 }

Turret_Spotlight = [[
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="spotLight1"/>
		<Property name="NameHash" value="422545419"/>
		<Property name="Type" value="LIGHT"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.25"/>
			<Property name="TransY" value="0.45"/>
			<Property name="TransZ" value="0.4"/>
			<Property name="RotX" value="-10.6"/>
			<Property name="RotY" value="180"/>
			<Property name="RotZ" value="0"/>
			<Property name="ScaleX" value="23.54772"/>
			<Property name="ScaleY" value="23.54772"/>
			<Property name="ScaleZ" value="23.54772"/>
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FOV"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..LightStats.fov..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FALLOFF"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="linear"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.0" />
            </Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="INTENSITY"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..LightStats.lum..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_R"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..LightStats.r..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_G"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..LightStats.g..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_B"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..LightStats.b..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COOKIE_IDX" />
				<Property name="AltID" value="" />
				<Property name="Value" value="-1" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VOLUMETRIC" />
				<Property name="AltID" value="" />
				<Property name="Value" value="0.0" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="MATERIAL"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN"/>
			</Property>
		</Property>
		<Property name="Children"/>
	</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL_H vehicle spotlight.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_MODELS_H ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/SHARED/MININGLASER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'SHOOT'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD 				= Turret_Spotlight
			}
		}
	}
}}}}
