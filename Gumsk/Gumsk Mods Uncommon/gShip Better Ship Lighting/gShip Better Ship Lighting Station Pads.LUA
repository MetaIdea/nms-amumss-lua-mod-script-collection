ModName = "gShip Better Ship Lighting"
ModNameSub = "Station Pads"
BaseDescription = ""
GameVersion = "6.1.3.0"
ModVersion = "a"

--[[ Files Modified:
MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN
MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD.SCENE.MBIN
]]--

AddLight = [[		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="]]..GNH("pointLight1")..[[" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0" />
				<Property name="TransY" value="12" />
				<Property name="TransZ" value="0" />
				<Property name="RotX" value="-90" />
				<Property name="RotY" value="0" />
				<Property name="RotZ" value="0" />
				<Property name="ScaleX" value="1" />
				<Property name="ScaleY" value="1" />
				<Property name="ScaleZ" value="1" />
			</Property>
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="120.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="linear" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="45000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_R"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_G"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_B"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight7",
								"Name","INTENSITY"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",60000.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight7",
								"Name","FOV"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",120.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight8",
								"Name","INTENSITY"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",60000.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight8",
								"Name","FOV"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",120.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight9",
								"Name","INTENSITY"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",60000.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight9",
								"Name","FOV"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",120.000000},
							}
						},
					}
				},
				{
					MBIN_FILE_SOURCE = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Name","SUB5LandingPadFloorLOD0"
							},
							ADD_OPTION = "ADDafterSECTION",
							ADD = AddLight
						},
					}
				}
			}
		}
	}
}