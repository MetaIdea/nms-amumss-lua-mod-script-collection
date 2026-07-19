Author			= "JMZawodny"
ModName			= "zCorvette"
ModNameSub		= "Cockpit Thunderbird"
BaseDescription = "Removes the yellow front bumper and Blinking interior light and Adds real headlights"
GameVersion		= "v6.24"
ModVersion		= ""


NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1x2_D_EXT.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Remove the White Band on the Bumper, keeping its children, by Changing it from a MESH to a LOCATOR
				SPECIAL_KEY_WORDS = {"Name", "extCutoutLOD0" },
				VALUE_CHANGE_TABLE = {{"TYPE", "LOCATOR"},},
			},
			{ -- And then Removing its Attributes
				REPLACE_TYPE = "ONCE",
				SPECIAL_KEY_WORDS = {"Name", "extCutoutLOD0" },
				PRECEDING_KEY_WORDS = {"Attributes"},
				CREATE_HOES = "TRUE",
			},
			{ -- Remove the sections for the Yellow Bumper
				SPECIAL_KEY_WORDS =
				{
					{"Name", "SUB1ext2LOD0" },
					{"Name", "SUB1ext2LOD1" },
					{"Name", "SUB1ext2LOD2" },
					{"Name", "SUB1ext2LOD3" },
				},
				REMOVE = "SECTION"
			},
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
								<Property name="TransX" value="1.000000" />
								<Property name="TransY" value="0.062500" />
								<Property name="TransZ" value="5.375000" />
								<Property name="RotX" value="-2.500000" />
								<Property name="RotY" value="-170.000000" />
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
				SKW = {"Name", "outerGlassprossed_object_LOD3"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
			{ -- Right Volumetric Light
				SEC_EDIT = "HeadLight",
				VCT = {
					{"Name", "RightVolLight", },
					{"TransX", "-1.000000", },
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
					{"RotX", "0.000000", },
					{"RotY", "-174.000000", },
				},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FOV"},
				VCT = {{"Value", "45.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FALLOFF"},
				VCT = {{"Value", "1.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "RADIUS"},
				VCT = {{"Value", "500.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "INTENSITY"},
				VCT = {{"Value", "2000.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "Volumetric"},
				VCT = {{"Value", "0.000000"},},
			},
			{	-- Add Light
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
			{	-- Add Light
				SKW = {"Name", "LeftNearHeadLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
		}

	},
	{
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1x2_D.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Remove the Blinking Light
				SKW =
				{
					{"Name", "REFLight" },
					{"Name", "REFLight1" },
					{"Name", "REFLight2" },
				},
				REMOVE = "SECTION"
			},
		}
	},
	}},}
}