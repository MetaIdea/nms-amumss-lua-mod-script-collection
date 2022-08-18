--[[----------------------------------------------
  station and freighter hangar landing pad lights
------------------------------------------------]]

local function InsertLight(newlight)
	local light = {
		name = 'Light9',
		tx = 0,
		ty = 10,
		tz = 0,
		rx = -22,
		ry = 0,
		rz = 0,
		sx = 1,
		sy = 1,
		sz = 1,
		fov = 100,
		i = 32000,
		f = 'quadratic',
		fr = 2.0,
		r = 0.95,
		g = 0.95,
		b = 0.85,
	}
	for k, v in pairs(newlight) do light[k] = v end
	if newlight.f ~= nil and newlight.fr ~= nil then
		if light.f == 'linear' then light.fr = 1.0 end
	end
	return [[
		<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="]]..light.name..[["/>
		<Property name="NameHash" value="0"/>
		<Property name="Type" value="LIGHT"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="]]..light.tx..[["/>
			<Property name="TransY" value="]]..light.ty..[["/>
			<Property name="TransZ" value="]]..light.tz..[["/>
			<Property name="RotX" value="]]..light.rx..[["/>
			<Property name="RotY" value="]]..light.ry..[["/>
			<Property name="RotZ" value="]]..light.rz..[["/>
			<Property name="ScaleX" value="]]..light.sx..[["/>
			<Property name="ScaleY" value="]]..light.sy..[["/>
			<Property name="ScaleZ" value="]]..light.sz..[["/>
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FOV"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..light.fov..[[.0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FALLOFF"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..light.f..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FALLOFF_RATE"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..light.fr..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="INTENSITY"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..light.i..[[.0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_R"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..light.r..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_G"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..light.g..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COL_B"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="]]..light.b..[["/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="COOKIE_IDX"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="-1"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VOLUMETRIC"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0.0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="MATERIAL"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN"/>
			</Property>
		</Property>
		<Property name="Children"/>
	</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 11 freighter hangar lights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- |freighter landing pad lights|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/LANDINGPAD_HANGAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'OrangeLights'},
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				=
					InsertLight({name='left', tx=16, ry=90, f='linear'})
					..
					InsertLight({name='right', tx=-16, ry=-90, f='linear'})
					..
					InsertLight({name='ne', i=44000, fov=120, tx=4.8, ty=0.25, tz=4.8, rx=30, ry=45})
					..
					InsertLight({name='nw', i=44000, fov=120, tx=-4.8, ty=0.25, tz=4.8, rx=30, ry=-45})
					..
					InsertLight({name='se', i=44000, fov=120, tx=4.8, ty=0.25, tz=-4.8, rx=30, ry=135})
					..
					InsertLight({name='sw', i=44000, fov=120, tx=-4.8, ty=0.25, tz=-4.8, rx=30, ry=-135})
			}
		}
	}
}}}}
