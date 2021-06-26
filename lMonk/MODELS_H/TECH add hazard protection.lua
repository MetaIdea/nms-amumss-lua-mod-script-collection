--[[┎──────────────────────────────────────────────────────────────────────────────
	┃ Add hazard protection and a small light to beacon, cooker and signal booster
────┸──────────────────────────────────────────────────────────────────────────--]]
Tech_Light = { lum=28000.0, r=0.86, g=0.18, b=0.28 }

Protection_Radius = 8

Add_Light = [[
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="TechLight02"/>
		<Property name="NameHash" value="0"/>
		<Property name="Type" value="LIGHT"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0"/>
			<Property name="TransY" value="1.8"/>
			<Property name="TransZ" value="0"/>
			<Property name="RotX" value="0"/>
			<Property name="RotY" value="0"/>
			<Property name="RotZ" value="0"/>
			<Property name="ScaleX" value="2"/>
			<Property name="ScaleY" value="2"/>
			<Property name="ScaleZ" value="2"/>
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FOV"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="360"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FALLOFF"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="quadratic"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.0" />
            </Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="INTENSITY"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..Tech_Light.lum..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_R"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..Tech_Light.r..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_G"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..Tech_Light.g..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_B"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..Tech_Light.b..[["/>
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

Add_Heater = [[
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
				<Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/STANDINGLIGHT_SMALL/ENTITIES/HEATER.ENTITY.MBIN"/>
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
	MOD_FILENAME 		= '__MODEL_H hazard protection with tech.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_MODELS_H ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BEACON.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/COOKER.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				ADD 				= Add_Light .. Add_Heater
			}
		}
	}
}}}}
