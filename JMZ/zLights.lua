Author			= "JMZawodny"
ModName			= "!zLights"
ModNameSub		= ""
BaseDescription = "Changes the lights to be more useful and artistic"
GameVersion		= "v7.0"
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

		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Ceiling Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"30.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"12.500000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\FIREFLYTUBE.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Bio-Lantern
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "FireflyLight01", "Name", "FALLOFF",},
					{"Name", "FireflyLight02", "Name", "FALLOFF",},
					{"Name", "FireflyLight03", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "FireflyLight01", "Name", "RADIUS",},
					{"Name", "FireflyLight02", "Name", "RADIUS",},
					{"Name", "FireflyLight03", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"4.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LABLAMP.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Lab Lamp
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "LabLampLOD0", "Transform", "TkTransformData",},
					{"Name", "LabLampLOD1", "Transform", "TkTransformData",},
					{"Name", "LabLampLOD2", "Transform", "TkTransformData",},
					{"Name", "LabLampLOD3", "Transform", "TkTransformData",},
					{"Name", "data", "Transform", "TkTransformData",},
					{"Name", "HIDEINABAND", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"ScaleX" ,"0.200000"},
					{"ScaleY" ,"0.200000"},
					{"ScaleZ" ,"0.200000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "pointLight1",},
				SEC_SAVE_TO = "Plight",
			},
			{
				SEC_EDIT = "Plight",
				VCT = {
					{"Name", "pointLight2", },
				},
			},
			{
				SEC_EDIT = "Plight",
				SPECIAL_KEY_WORDS = {
					{"Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"0.500000"},}
			},
			{	-- Add Light
				SKW = {"Name", "pointLight1"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Plight",
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"RotX" ,"89.990000"},
					{"RotY" ,"30.000000"},
					{"RotZ" ,"30.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"90.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"30.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"18.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTTABLE.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Light Table
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "HIDEINABAND", "Name", "LOD0", "Name", "pointLight1", "Transform", "TkTransformData",},
					{"Name", "HIDEINABAND", "Name", "LOD1", "Name", "pointLight1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.500000"},
					{"RotX" ,"90.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "HIDEINABAND", "Name", "LOD0", "Name", "pointLight1", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"180.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "HIDEINABAND", "Name", "LOD0", "Name", "pointLight1", "Name", "FALLOFF",},
					{"Name", "HIDEINABAND", "Name", "LOD1", "Name", "pointLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "HIDEINABAND", "Name", "LOD0", "Name", "pointLight1", "Name", "RADIUS",},
					{"Name", "HIDEINABAND", "Name", "LOD1", "Name", "pointLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"5.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "HIDEINABAND", "Name", "LOD1", "Name", "pointLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Lantern
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"10.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"10.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Squared Standing Lamp
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"RotX" ,"-15.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"160.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"100.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"32.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Rounded Standing Lamp
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"RotX" ,"-15.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"160.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"100.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"10.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Capped Standing Lamp
			{
				SPECIAL_KEY_WORDS = {"NAME", "pointLight2",},
				SEC_SAVE_TO = "Plight",
			},
			{
				SEC_EDIT = "Plight",
				VCT = {
					{"Name", "pointLight1", },
					{"TransX", "0.000000", },
					{"TransY", "2.250000", },
				},
			},
			{
				SEC_EDIT = "Plight",
				SPECIAL_KEY_WORDS = {
					{"Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"120.000000"},}
			},
			{
				SEC_EDIT = "Plight",
				SPECIAL_KEY_WORDS = {
					{"Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"12.500000"},}
			},
			{	-- Add Light
				SKW = {"Name", "pointLight2"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Plight",
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight2", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransX" ,"0.000000"},
					{"TransY" ,"2.750000"},
					{"RotX" ,"-90.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight2", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"180.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight2", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight2", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight2", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"18.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TABLE1.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Round Table
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransX" ,"0.000000"},
					{"TransZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"20.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"2.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TABLE2.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Hexagonal Table
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"1.200000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"20.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"2.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Blue Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.050000"},
					{"RotX" ,"90.000000"},
					{"RotY" ,"45.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"190.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"2.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "COL_R",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"0.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "COL_G",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"0.300000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_GREEN.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Green Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.050000"},
					{"RotX" ,"90.000000"},
					{"RotY" ,"45.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"190.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"5.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "COL_R",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"0.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "COL_G",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"0.200000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_PINK.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Pink Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.050000"},
					{"RotX" ,"90.000000"},
					{"RotY" ,"45.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"190.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"5.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_RED.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Red Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.050000"},
					{"RotX" ,"90.000000"},
					{"RotY" ,"45.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"190.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"5.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_WHITE.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: White Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.050000"},
					{"RotX" ,"90.000000"},
					{"RotY" ,"45.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"190.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"5.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_YELLOW.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Yellow Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.050000"},
					{"RotX" ,"90.000000"},
					{"RotY" ,"45.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"190.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight6", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"5.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP0.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Hanging Lamp
			{
				SKW = {"NameHash", "2390406670"},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				ADD = [[
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="Lite" />
					<Property name="NameHash" value="3438460816" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="2.536044" />
						<Property name="TransZ" value="0.000000" />
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
							<Property name="Name" value="FOV" />
							<Property name="Value" value="360.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="50.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="0.500000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="COL_R" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="COL_G" />
							<Property name="Value" value="0.797260" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="COL_B" />
							<Property name="Value" value="0.581000" />
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
				</Property>
]],
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP1.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Triple Hanging Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"2.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "COL_R",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "COL_G",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP2.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Circles Hanging Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"8.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "COL_R",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "COL_G",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP3.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Splayed Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight17", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight17", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight17", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"5.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight17", "Name", "COL_R",},
					{"Name", "pointLight17", "Name", "COL_G",},
					{"Name", "pointLight17", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\LIGHTHANGINGSTRIP.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Tube Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"0.600000"},
					{"RotX" ,"90.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"175.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"8.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "COL_R",},
					{"Name", "pointLight1", "Name", "COL_G",},
					{"Name", "pointLight1", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "pointLight1",},
				SEC_SAVE_TO = "Plight",
			},
			{
				SEC_EDIT = "Plight",
				VCT = {
					{"Name", "spotLight2", },
					{"TransY", "1.920000", },
					{"RotX", "-90.000000", },
				},
			},
			{
				SEC_EDIT = "Plight",
				SPECIAL_KEY_WORDS = {
					{"Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"100.000000"},}
			},
			{	-- Add Light
				SKW = {"Name", "pointLight1"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Plight",
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight2", "Name", "COL_R",},
					{"Name", "pointLight2", "Name", "COL_G",},
					{"Name", "pointLight2", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\LIGHTOUTDOORSTANDING.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Lamp Post
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "spotLight2", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "spotLight2", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"100.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "spotLight2", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"12.500000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\TABLELAMP0.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Table Lamp
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"10.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\WALLLIGHT01.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Wall Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Transform", "TkTransformData",},
				},
				VALUE_CHANGE_TABLE = {
					{"RotX" ,"140.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"120.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"30.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "Lite1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"2.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\LARGE_LIGHT.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: Emergency Light
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "spotLight1", "Name", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "spotLight1", "Name", "RADIUS",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"50.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "spotLight1", "Name", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"18.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHT_A.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: unknown
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1", "Name", "COL_R",},
					{"Name", "pointLight1", "Name", "COL_G",},
					{"Name", "pointLight1", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHT_B.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: unknown
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight1LOD0", "Name", "COL_R",},
					{"Name", "pointLight1LOD0", "Name", "COL_G",},
					{"Name", "pointLight1LOD0", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHTS.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{	-- Name in Game: unknown
			{
				SPECIAL_KEY_WORDS = {
					{"Name", "pointLight3", "Name", "COL_R",},
					{"Name", "pointLight3", "Name", "COL_G",},
					{"Name", "pointLight3", "Name", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
		}
	},
	}},}
}