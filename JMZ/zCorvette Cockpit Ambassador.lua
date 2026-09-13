Author			= "JMZawodny"
ModName			= "zCorvette"
ModNameSub		= "Cockpit Ambassador"
BaseDescription = "Adds real headlights"
GameVersion		= "v7.0"
ModVersion		= ""


NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {{

		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1x2_B_EXT.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Create an empty named section
				SEC_EMPTY = "HeadLight",
			},
			{ -- Left Volumetric Light
				SEC_EDIT = "HeadLight",
				ADD = 
[[						<Property name="Children" value="TkSceneNodeData">
							<Property name="Name" value="LeftVolLight" />
							<Property name="NameHash" value="0" />
							<Property name="Type" value="LIGHT" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="1.562500" />
								<Property name="TransY" value="-1.562500" />
								<Property name="TransZ" value="4.125000" />
								<Property name="RotX" value="-7.500000" />
								<Property name="RotY" value="-179.000000" />
								<Property name="RotZ" value="0.000000" />
								<Property name="ScaleX" value="1.000000" />
								<Property name="ScaleY" value="1.000000" />
								<Property name="ScaleZ" value="1.000000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="FOV" />
									<Property name="Value" value="40.000000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="FALLOFF" />
									<Property name="Value" value="2.000000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="RADIUS" />
									<Property name="Value" value="15.000000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="INTENSITY" />
									<Property name="Value" value="5.000000" />
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
									<Property name="Value" value="1.000000" />
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
						</Property>
]],
			},
			{ -- Add Light
				SKW = {"Name", "DATA"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
			{ -- Right Volumetric Light
				SEC_EDIT = "HeadLight",
				VCT = {
					{"Name", "RightVolLight", },
					{"TransX", "-1.562500", },
					{"RotY", "179.000000", },
				},
			},
			{ -- Add Light
				SKW = {"Name", "LeftVolLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
			{ -- Left Near Headlight
				SEC_EDIT = "HeadLight",
				VCT = {
					{"Name", "LeftNearHeadLight", },
					{"TransX", "1.000000", },
					{"TransY", "0.062500", },
					{"TransZ", "5.375000", },
					{"RotX", "0.000000", },
					{"RotY", "-174.000000", },
				},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FOV"},
				VCT = {{"Value", "40.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FALLOFF"},
				VCT = {{"Value", "1.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "RADIUS"},
				VCT = {{"Value", "10000.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "INTENSITY"},
				VCT = {{"Value", "5000.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "Volumetric"},
				VCT = {{"Value", "0.000000"},},
			},
			{ -- Add Light
				SKW = {"Name", "RightVolLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
			{ -- Right Near Headlight
				SEC_EDIT = "HeadLight",
				VCT = {
					{"Name", "RightNearHeadLight", },
					{"TransX", "-1.000000", },
					{"RotY", "174.000000", },
				},
			},
			{ -- Add Light
				SKW = {"Name", "LeftNearHeadLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
		}
	},
	{ -- Copy needed Teleporter Sections
		MBIN_FILE_SOURCE = "models\common\spacecraft\biggs\modules\parts\airlock_nesw_b.scene.mbin",
		MXML_CHANGE_TABLE = 
		{
			{ -- Copy TeleporterControls Section
				SKW = {
					{"Name", "TeleporterControls",},
				},
				SEC_SAVE_TO = "TeleCont",
			},
			{ -- Place the control
				SEC_EDIT = "TeleCont",
				SKW = {
					{"Name", "TeleporterControls",},
				},
				VCT = {
					{"TransX" ,"-1.312500"},
					{"TransY" ,"1.171875"},
					{"TransZ" ,"0.640625"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-135.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"0.800000"},
					{"ScaleY" ,"0.800000"},
					{"ScaleZ" ,"0.800000"},
				}
			},
			{ -- Copy TELEPORT_DESTINATION Section
				SKW = {
					{"Name", "TELEPORT_DESTINATION"},
				},
				SEC_SAVE_TO = "TeleDest",
			},
			{ -- Set Position
				SEC_EDIT = "TeleDest",
				SKW = {
					{"Name", "TELEPORT_DESTINATION"},
				},
				VCT = {
					{"TransX" ,"0.000000"},
					{"TransY" ,"-1.500000"},
					{"TransZ" ,"2.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"180.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1x2_B.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Add Teleporter Destination
				SKW = {
					{"Name", "EXT",},
				},
				ADD_OPTION = "ADDafterSECTION",
				SEC_ADD_NAMED = "TeleDest",
			},
			{ -- Add Teleporter Control
				SKW = {
					{"Name", "EXT",},
				},
				ADD_OPTION = "ADDafterSECTION",
				SEC_ADD_NAMED = "TeleCont",
			},
		}
	},
	}},}
}