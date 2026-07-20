NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zBridge Terminal",
["MOD_AUTHOR"]      = "JMZ",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.42",
["MOD_DESCRIPTION"] = "Makes your Freighter Bridge Terminal more useful by adding Planetary Scan and Starship Outfitting functions",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINALPIRATE.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleX", "1.025000"},
                {"ScaleZ", "1.025000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Base"},
              ["PRECEDING_KEY_WORDS"] = {"Attributes"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateSlowR.ENTITY.MBIN" />
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Galaxy"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleX", "0.040000"},
                {"ScaleY", "0.040000"},
                {"ScaleZ", "0.040000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FleetTerminal"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="16">
			<Property name="Name" value="ScanRoomInteraction" />
			<Property name="NameHash" value="2814384068" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="1.500000" />
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
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\JMZ\Entities\ScanRoomInteraction.entity.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL|collisionSphere_2" />
					<Property name="NameHash" value="2415653162" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
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
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.500000" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="17">
			<Property name="Name" value="ShipSalvageTerminal" />
			<Property name="NameHash" value="12679043" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-2.063833" />
				<Property name="TransY" value="1.037093" />
				<Property name="TransZ" value="0.000000" />
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
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL|collisionSphere_2" />
					<Property name="NameHash" value="2415653162" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
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
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Sphere" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="0.500000" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="18">
			<Property name="Name" value="Fighter" />
			<Property name="NameHash" value="3898713103" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-2.000000" />
				<Property name="TransY" value="0.800000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.400000" />
				<Property name="ScaleY" value="0.400000" />
				<Property name="ScaleZ" value="0.400000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="MODELS\JMZ\Parts\FighterHologram.SCENE.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="19">
			<Property name="Name" value="Planets" />
			<Property name="NameHash" value="3343963792" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="2.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="-45.000000" />
				<Property name="RotZ" value="-10.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="MODELS\JMZ\Parts\BRIDGESCAN.SCENE.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MiddleEffect"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "2.000000"},
                {"RotY",   "-45.000000"},
                {"RotZ",   "5.000000"},
                {"ScaleX", "0.500000"},
                {"ScaleY", "0.500000"},
                {"ScaleZ", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EffectGlobe2LOD0"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotY", "135.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "REFBridgeTerminalVolumeLightVFX"},
                {"Name", "REFBridgeFloorMistVFX"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MiddleEffect"},
              ["EXML_INDEX"] = 20,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MiddleEffectBase"},
              ["EXML_INDEX"] = 21,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Light"},
              ["EXML_INDEX"] = 22,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Light1"},
              ["EXML_INDEX"] = 23,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Light2"},
              ["EXML_INDEX"] = 24,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MPLIGHT"},
              ["EXML_INDEX"] = 25,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Light4"},
              ["EXML_INDEX"] = 26,
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINALPIRATE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL|collisionSphere_2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NameHash", "2256751881"},
                {"Name",     "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINALPIRATE|collisionSphere_2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL|collisionSphere_2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NameHash", "2256751881"},
                {"Name",     "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINALPIRATE|collisionSphere_2"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\SPACE\NEXUS\PARTS\BRIDGE\BRIDGEROOM.SCENE.MBIN", "MODELS\JMZ\PARTS\FIGHTERHOLOGRAM.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\PARTS\FIGHTERHOLOGRAM.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinData"},
              ["SEC_SAVE_TO"] = "SaveSpin",
            },
            {
              ["SEC_EDIT"] =  {"SaveSpin"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "-0.100000"},
                {"TransY", "0.580000"},
                {"TransZ", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE", 
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["SEC_ADD_NAMED"] = "SaveSpin",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcMaintenanceComponentData"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEFAST.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEFAST.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "0.050000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEMEDIUM.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEMEDIUM.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "0.020000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEMEDIUMR.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEMEDIUMR.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "-0.020000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATESLOWR.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATESLOWR.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "-0.015000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEUBERFAST.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEUBERFAST.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "0.400000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEULTRAFAST.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEULTRAFAST.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "0.700000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEVERYFAST.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEVERYFAST.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "0.100000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEVERYSLOW.ENTITY.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEVERYSLOW.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "0.010000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\CHARACTERS\ASTRONAUT\HELMETHUD\ENTITIES\HUDCOMPASS.ENTITY.MBIN", "MODELS\JMZ\ENTITIES\TKROTATEVERYSLOWR.ENTITY.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\ENTITIES\TKROTATEVERYSLOWR.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Speed", "-0.010000"},
              }
            },
          }
        },
      }
    }
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "MODELS\JMZ\PARTS\BRIDGESCAN.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="OrbitingPlanets" />
	<Property name="NameHash" value="0" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
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
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="Oribt3" />
			<Property name="NameHash" value="1111975604" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000001" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="-170.231186" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.580000" />
				<Property name="ScaleY" value="0.580000" />
				<Property name="ScaleZ" value="0.580000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="8136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="2297" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="2592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="864" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="295" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="104" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="120" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-3.972020" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.011057" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-3.972018" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="3.972019" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.011057" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="3.972018" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="4817574998353719540" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="OribtShape3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateVerySlow.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="Inertial" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="3.935620" />
						<Property name="TransY" value="-0.018240" />
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
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateVerySlowR.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="Planet3" />
							<Property name="NameHash" value="2409588518" />
							<Property name="Type" value="MESH" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="0.000000" />
								<Property name="TransZ" value="0.000000" />
								<Property name="RotX" value="0.000000" />
								<Property name="RotY" value="0.000000" />
								<Property name="RotZ" value="21.180000" />
								<Property name="ScaleX" value="1.650000" />
								<Property name="ScaleY" value="1.650000" />
								<Property name="ScaleZ" value="1.650000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="BATCHSTARTPHYSI" />
									<Property name="Value" value="9000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="VERTRSTARTPHYSI" />
									<Property name="Value" value="2593" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="VERTRENDPHYSICS" />
									<Property name="Value" value="3552" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="BATCHSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
									<Property name="Name" value="BATCHCOUNT" />
									<Property name="Value" value="4608" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
									<Property name="Name" value="VERTRSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
									<Property name="Name" value="VERTRENDGRAPHIC" />
									<Property name="Value" value="959" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
									<Property name="Name" value="FIRSTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
									<Property name="Name" value="LASTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
									<Property name="Name" value="LODLEVEL" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
									<Property name="Name" value="BOUNDHULLST" />
									<Property name="Value" value="120" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
									<Property name="Name" value="BOUNDHULLED" />
									<Property name="Value" value="168" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
									<Property name="Name" value="AABBMINX" />
									<Property name="Value" value="-0.230308" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
									<Property name="Name" value="AABBMINY" />
									<Property name="Value" value="-0.230308" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
									<Property name="Name" value="AABBMINZ" />
									<Property name="Value" value="-0.230308" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
									<Property name="Name" value="AABBMAXX" />
									<Property name="Value" value="0.230308" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
									<Property name="Name" value="AABBMAXY" />
									<Property name="Value" value="0.230308" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
									<Property name="Name" value="AABBMAXZ" />
									<Property name="Value" value="0.230308" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
									<Property name="Name" value="HASH" />
									<Property name="Value" value="611013350718123495" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
									<Property name="Name" value="MATERIAL" />
									<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT1.MATERIAL.MBIN" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
									<Property name="Name" value="MESHLINK" />
									<Property name="Value" value="PlanetShape3" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
									<Property name="Name" value="ATTACHMENT" />
									<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateUltraFast.ENTITY.MBIN" />
								</Property>
							</Property>
							<Property name="Children">
								<Property name="Children" value="TkSceneNodeData" _index="0">
									<Property name="Name" value="pCube12" />
									<Property name="NameHash" value="1192326779" />
									<Property name="Type" value="MESH" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="-0.753407" />
										<Property name="TransY" value="-0.269011" />
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
											<Property name="Name" value="BATCHSTARTPHYSI" />
											<Property name="Value" value="13608" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="VERTRSTARTPHYSI" />
											<Property name="Value" value="3553" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="VERTRENDPHYSICS" />
											<Property name="Value" value="4512" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="BATCHSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="BATCHCOUNT" />
											<Property name="Value" value="4608" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
											<Property name="Name" value="VERTRSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
											<Property name="Name" value="VERTRENDGRAPHIC" />
											<Property name="Value" value="959" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
											<Property name="Name" value="FIRSTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
											<Property name="Name" value="LASTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
											<Property name="Name" value="LODLEVEL" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
											<Property name="Name" value="BOUNDHULLST" />
											<Property name="Value" value="168" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
											<Property name="Name" value="BOUNDHULLED" />
											<Property name="Value" value="216" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
											<Property name="Name" value="AABBMINX" />
											<Property name="Value" value="0.547673" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
											<Property name="Name" value="AABBMINY" />
											<Property name="Value" value="0.063276" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
											<Property name="Name" value="AABBMINZ" />
											<Property name="Value" value="-0.205735" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
											<Property name="Name" value="AABBMAXX" />
											<Property name="Value" value="0.959142" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
											<Property name="Name" value="AABBMAXY" />
											<Property name="Value" value="0.474745" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
											<Property name="Name" value="AABBMAXZ" />
											<Property name="Value" value="0.205734" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
											<Property name="Name" value="HASH" />
											<Property name="Value" value="14947860295566523405" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
											<Property name="Name" value="MATERIAL" />
											<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\TRANSBACKGROND_MAT.MATERIAL.MBIN" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
											<Property name="Name" value="MESHLINK" />
											<Property name="Value" value="pCubeShape12" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
							</Property>
						</Property>
						<Property name="Children" value="TkSceneNodeData" _index="1">
							<Property name="Name" value="Oribt4" />
							<Property name="NameHash" value="195295598" />
							<Property name="Type" value="MESH" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="0.000000" />
								<Property name="TransZ" value="0.000000" />
								<Property name="RotX" value="0.000000" />
								<Property name="RotY" value="0.000000" />
								<Property name="RotZ" value="21.180000" />
								<Property name="ScaleX" value="1.250000" />
								<Property name="ScaleY" value="1.250000" />
								<Property name="ScaleZ" value="1.250000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="BATCHSTARTPHYSI" />
									<Property name="Value" value="18216" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="VERTRSTARTPHYSI" />
									<Property name="Value" value="4513" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="VERTRENDPHYSICS" />
									<Property name="Value" value="4808" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="BATCHSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
									<Property name="Name" value="BATCHCOUNT" />
									<Property name="Value" value="864" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
									<Property name="Name" value="VERTRSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
									<Property name="Name" value="VERTRENDGRAPHIC" />
									<Property name="Value" value="295" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
									<Property name="Name" value="FIRSTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
									<Property name="Name" value="LASTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
									<Property name="Name" value="LODLEVEL" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
									<Property name="Name" value="BOUNDHULLST" />
									<Property name="Value" value="216" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
									<Property name="Name" value="BOUNDHULLED" />
									<Property name="Value" value="232" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
									<Property name="Name" value="AABBMINX" />
									<Property name="Value" value="-0.476947" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
									<Property name="Name" value="AABBMINY" />
									<Property name="Value" value="-0.004335" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
									<Property name="Name" value="AABBMINZ" />
									<Property name="Value" value="-0.476947" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
									<Property name="Name" value="AABBMAXX" />
									<Property name="Value" value="0.476947" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
									<Property name="Name" value="AABBMAXY" />
									<Property name="Value" value="0.004335" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
									<Property name="Name" value="AABBMAXZ" />
									<Property name="Value" value="0.476947" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
									<Property name="Name" value="HASH" />
									<Property name="Value" value="6724611852278447187" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
									<Property name="Name" value="MATERIAL" />
									<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT2.MATERIAL.MBIN" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
									<Property name="Name" value="MESHLINK" />
									<Property name="Value" value="OribtShape4" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
									<Property name="Name" value="ATTACHMENT" />
									<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateVeryFast.ENTITY.MBIN" />
								</Property>
							</Property>
							<Property name="Children">
								<Property name="Children" value="TkSceneNodeData" _index="0">
									<Property name="Name" value="pCube12_2" />
									<Property name="NameHash" value="3281818237" />
									<Property name="Type" value="MESH" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="2.405630" />
										<Property name="TransY" value="0.292490" />
										<Property name="TransZ" value="0.042879" />
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
											<Property name="Name" value="BATCHSTARTPHYSI" />
											<Property name="Value" value="23688" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="VERTRSTARTPHYSI" />
											<Property name="Value" value="5769" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="VERTRENDPHYSICS" />
											<Property name="Value" value="6728" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="BATCHSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="BATCHCOUNT" />
											<Property name="Value" value="4608" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
											<Property name="Name" value="VERTRSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
											<Property name="Name" value="VERTRENDGRAPHIC" />
											<Property name="Value" value="959" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
											<Property name="Name" value="FIRSTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
											<Property name="Name" value="LASTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
											<Property name="Name" value="LODLEVEL" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
											<Property name="Name" value="BOUNDHULLST" />
											<Property name="Value" value="280" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
											<Property name="Name" value="BOUNDHULLED" />
											<Property name="Value" value="328" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
											<Property name="Name" value="AABBMINX" />
											<Property name="Value" value="-1.976548" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
											<Property name="Name" value="AABBMINY" />
											<Property name="Value" value="-0.336119" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
											<Property name="Name" value="AABBMINZ" />
											<Property name="Value" value="-0.080074" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
											<Property name="Name" value="AABBMAXX" />
											<Property name="Value" value="-1.889290" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
											<Property name="Name" value="AABBMAXY" />
											<Property name="Value" value="-0.248861" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
											<Property name="Name" value="AABBMAXZ" />
											<Property name="Value" value="0.007185" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
											<Property name="Name" value="HASH" />
											<Property name="Value" value="10745371938623930402" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
											<Property name="Name" value="MATERIAL" />
											<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\TRANSBACKGROND_MAT.MATERIAL.MBIN" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
											<Property name="Name" value="MESHLINK" />
											<Property name="Value" value="pCubeShape12" />
										</Property>
									</Property>
									<Property name="Children">
										<Property name="Children" value="TkSceneNodeData" _index="0">
											<Property name="Name" value="Moon1" />
											<Property name="NameHash" value="147476709" />
											<Property name="Type" value="MESH" />
											<Property name="Transform" value="TkTransformData">
												<Property name="TransX" value="0.000000" />
												<Property name="TransY" value="0.000000" />
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
													<Property name="Name" value="BATCHSTARTPHYSI" />
													<Property name="Value" value="19080" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
													<Property name="Name" value="VERTRSTARTPHYSI" />
													<Property name="Value" value="4809" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
													<Property name="Name" value="VERTRENDPHYSICS" />
													<Property name="Value" value="5768" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
													<Property name="Name" value="BATCHSTARTGRAPH" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
													<Property name="Name" value="BATCHCOUNT" />
													<Property name="Value" value="4608" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
													<Property name="Name" value="VERTRSTARTGRAPH" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
													<Property name="Name" value="VERTRENDGRAPHIC" />
													<Property name="Value" value="959" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
													<Property name="Name" value="FIRSTSKINMAT" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
													<Property name="Name" value="LASTSKINMAT" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
													<Property name="Name" value="LODLEVEL" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
													<Property name="Name" value="BOUNDHULLST" />
													<Property name="Value" value="232" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
													<Property name="Name" value="BOUNDHULLED" />
													<Property name="Value" value="280" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
													<Property name="Name" value="AABBMINX" />
													<Property name="Value" value="-1.981760" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
													<Property name="Name" value="AABBMINY" />
													<Property name="Value" value="-0.341330" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
													<Property name="Name" value="AABBMINZ" />
													<Property name="Value" value="-0.085285" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
													<Property name="Name" value="AABBMAXX" />
													<Property name="Value" value="-1.884079" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
													<Property name="Name" value="AABBMAXY" />
													<Property name="Value" value="-0.243650" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
													<Property name="Name" value="AABBMAXZ" />
													<Property name="Value" value="0.012396" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
													<Property name="Name" value="HASH" />
													<Property name="Value" value="11742873081415246522" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
													<Property name="Name" value="MATERIAL" />
													<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT1.MATERIAL.MBIN" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
													<Property name="Name" value="MESHLINK" />
													<Property name="Value" value="MoonShape1" />
												</Property>
											</Property>
											<Property name="Children" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="Oribt2" />
			<Property name="NameHash" value="279741311" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000001" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="4.596385" />
				<Property name="RotY" value="104.838913" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.200000" />
				<Property name="ScaleY" value="0.200000" />
				<Property name="ScaleZ" value="0.200000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="28296" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="6729" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="7024" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="864" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="295" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="328" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="344" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-4.585998" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.012767" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-4.585997" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="4.585997" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.012767" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="4.585997" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="705254676088087661" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="OribtShape2" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateVeryFast.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="Planet2" />
					<Property name="NameHash" value="559516332" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="4.543976" />
						<Property name="TransY" value="-0.021057" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="16.220550" />
						<Property name="ScaleX" value="1.650000" />
						<Property name="ScaleY" value="1.650000" />
						<Property name="ScaleZ" value="1.650000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="29160" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="7025" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="7984" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="4608" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="959" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="344" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="392" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.274056" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="-0.274055" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.274055" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.274056" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="0.274056" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.274055" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="15924518832324116343" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="PlanetShape2" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateMedium.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="pCube2" />
							<Property name="NameHash" value="1856195532" />
							<Property name="Type" value="MESH" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="0.000000" />
								<Property name="TransZ" value="0.000000" />
								<Property name="RotX" value="0.000000" />
								<Property name="RotY" value="0.000000" />
								<Property name="RotZ" value="0.000000" />
								<Property name="ScaleX" value="0.200000" />
								<Property name="ScaleY" value="0.200000" />
								<Property name="ScaleZ" value="0.200000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="BATCHSTARTPHYSI" />
									<Property name="Value" value="68616" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="VERTRSTARTPHYSI" />
									<Property name="Value" value="15593" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="VERTRENDPHYSICS" />
									<Property name="Value" value="19048" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="BATCHSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
									<Property name="Name" value="BATCHCOUNT" />
									<Property name="Value" value="18432" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
									<Property name="Name" value="VERTRSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
									<Property name="Name" value="VERTRENDGRAPHIC" />
									<Property name="Value" value="3455" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
									<Property name="Name" value="FIRSTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
									<Property name="Name" value="LASTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
									<Property name="Name" value="LODLEVEL" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
									<Property name="Name" value="BOUNDHULLST" />
									<Property name="Value" value="712" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
									<Property name="Name" value="BOUNDHULLED" />
									<Property name="Value" value="760" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
									<Property name="Name" value="AABBMINX" />
									<Property name="Value" value="-1.178687" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
									<Property name="Name" value="AABBMINY" />
									<Property name="Value" value="-1.178686" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
									<Property name="Name" value="AABBMINZ" />
									<Property name="Value" value="-1.178687" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
									<Property name="Name" value="AABBMAXX" />
									<Property name="Value" value="1.178687" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
									<Property name="Name" value="AABBMAXY" />
									<Property name="Value" value="1.178686" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
									<Property name="Name" value="AABBMAXZ" />
									<Property name="Value" value="1.178687" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
									<Property name="Name" value="HASH" />
									<Property name="Value" value="14096624205079371757" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
									<Property name="Name" value="MATERIAL" />
									<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\TRANSBACKGROND_MAT1.MATERIAL.MBIN" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
									<Property name="Name" value="MESHLINK" />
									<Property name="Value" value="pCubeShape2" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="Oribt1" />
			<Property name="NameHash" value="3680180469" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000001" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.480000" />
				<Property name="ScaleY" value="0.480000" />
				<Property name="ScaleZ" value="0.480000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="38376" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="8945" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="9240" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="864" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="295" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="456" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-3.164636" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.008810" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-3.164635" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="3.164636" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.008810" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="3.164636" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="9558532941909752358" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="OribtShape1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateMedium.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="Inertial" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="3.135639" />
						<Property name="TransY" value="-0.014530" />
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
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateMediumR.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="Planet1" />
							<Property name="NameHash" value="1605502820" />
							<Property name="Type" value="MESH" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="0.000000" />
								<Property name="TransZ" value="0.000000" />
								<Property name="RotX" value="10.000000" />
								<Property name="RotY" value="0.000000" />
								<Property name="RotZ" value="16.595540" />
								<Property name="ScaleX" value="1.400000" />
								<Property name="ScaleY" value="1.400000" />
								<Property name="ScaleZ" value="1.400000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="BATCHSTARTPHYSI" />
									<Property name="Value" value="43848" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="VERTRSTARTPHYSI" />
									<Property name="Value" value="10201" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="VERTRENDPHYSICS" />
									<Property name="Value" value="11160" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="BATCHSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
									<Property name="Name" value="BATCHCOUNT" />
									<Property name="Value" value="4608" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
									<Property name="Name" value="VERTRSTARTGRAPH" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
									<Property name="Name" value="VERTRENDGRAPHIC" />
									<Property name="Value" value="959" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
									<Property name="Name" value="FIRSTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
									<Property name="Name" value="LASTSKINMAT" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
									<Property name="Name" value="LODLEVEL" />
									<Property name="Value" value="0" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
									<Property name="Name" value="BOUNDHULLST" />
									<Property name="Value" value="504" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
									<Property name="Name" value="BOUNDHULLED" />
									<Property name="Value" value="552" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
									<Property name="Name" value="AABBMINX" />
									<Property name="Value" value="-0.193356" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
									<Property name="Name" value="AABBMINY" />
									<Property name="Value" value="-0.193356" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
									<Property name="Name" value="AABBMINZ" />
									<Property name="Value" value="-0.193357" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
									<Property name="Name" value="AABBMAXX" />
									<Property name="Value" value="0.193356" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
									<Property name="Name" value="AABBMAXY" />
									<Property name="Value" value="0.193356" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
									<Property name="Name" value="AABBMAXZ" />
									<Property name="Value" value="0.193356" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
									<Property name="Name" value="HASH" />
									<Property name="Value" value="10863747590526487484" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
									<Property name="Name" value="MATERIAL" />
									<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\TRANSBACKGROND_MAT2.MATERIAL.MBIN" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
									<Property name="Name" value="MESHLINK" />
									<Property name="Value" value="pCubeShape12" />
								</Property>
							</Property>
							<Property name="Children">
								<Property name="Children" value="TkSceneNodeData" _index="0">
									<Property name="Name" value="pCube12_4" />
									<Property name="NameHash" value="3890305798" />
									<Property name="Type" value="MESH" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="0.000000" />
										<Property name="TransY" value="0.000000" />
										<Property name="TransZ" value="0.000000" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="0.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.250000" />
										<Property name="ScaleY" value="1.250000" />
										<Property name="ScaleZ" value="1.250000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="BATCHSTARTPHYSI" />
											<Property name="Value" value="39240" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="VERTRSTARTPHYSI" />
											<Property name="Value" value="9241" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="VERTRENDPHYSICS" />
											<Property name="Value" value="10200" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="BATCHSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="BATCHCOUNT" />
											<Property name="Value" value="4608" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
											<Property name="Name" value="VERTRSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
											<Property name="Name" value="VERTRENDGRAPHIC" />
											<Property name="Value" value="959" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
											<Property name="Name" value="FIRSTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
											<Property name="Name" value="LASTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
											<Property name="Name" value="LODLEVEL" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
											<Property name="Name" value="BOUNDHULLST" />
											<Property name="Value" value="456" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
											<Property name="Name" value="BOUNDHULLED" />
											<Property name="Value" value="504" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
											<Property name="Name" value="AABBMINX" />
											<Property name="Value" value="-0.216451" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
											<Property name="Name" value="AABBMINY" />
											<Property name="Value" value="-0.216451" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
											<Property name="Name" value="AABBMINZ" />
											<Property name="Value" value="-0.216451" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
											<Property name="Name" value="AABBMAXX" />
											<Property name="Value" value="0.216451" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
											<Property name="Name" value="AABBMAXY" />
											<Property name="Value" value="0.216451" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
											<Property name="Name" value="AABBMAXZ" />
											<Property name="Value" value="0.216451" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
											<Property name="Name" value="HASH" />
											<Property name="Value" value="10389707764465766558" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
											<Property name="Name" value="MATERIAL" />
											<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT1.MATERIAL.MBIN" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
											<Property name="Name" value="MESHLINK" />
											<Property name="Value" value="PlanetShape1" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
											<Property name="Name" value="ATTACHMENT" />
											<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateUberFast.ENTITY.MBIN" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
								<Property name="Children" value="TkSceneNodeData" _index="1">
									<Property name="Name" value="Oribt5" />
									<Property name="NameHash" value="4256521617" />
									<Property name="Type" value="MESH" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="0.000000" />
										<Property name="TransY" value="0.000000" />
										<Property name="TransZ" value="0.000000" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="-170.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="BATCHSTARTPHYSI" />
											<Property name="Value" value="48456" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="VERTRSTARTPHYSI" />
											<Property name="Value" value="11161" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="VERTRENDPHYSICS" />
											<Property name="Value" value="11456" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="BATCHSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="BATCHCOUNT" />
											<Property name="Value" value="864" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
											<Property name="Name" value="VERTRSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
											<Property name="Name" value="VERTRENDGRAPHIC" />
											<Property name="Value" value="295" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
											<Property name="Name" value="FIRSTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
											<Property name="Name" value="LASTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
											<Property name="Name" value="LODLEVEL" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
											<Property name="Name" value="BOUNDHULLST" />
											<Property name="Value" value="552" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
											<Property name="Name" value="BOUNDHULLED" />
											<Property name="Value" value="568" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
											<Property name="Name" value="AABBMINX" />
											<Property name="Value" value="-0.476947" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
											<Property name="Name" value="AABBMINY" />
											<Property name="Value" value="-0.004335" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
											<Property name="Name" value="AABBMINZ" />
											<Property name="Value" value="-0.476947" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
											<Property name="Name" value="AABBMAXX" />
											<Property name="Value" value="0.476947" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
											<Property name="Name" value="AABBMAXY" />
											<Property name="Value" value="0.004335" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
											<Property name="Name" value="AABBMAXZ" />
											<Property name="Value" value="0.476947" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
											<Property name="Name" value="HASH" />
											<Property name="Value" value="12681247750838141863" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
											<Property name="Name" value="MATERIAL" />
											<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT2.MATERIAL.MBIN" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
											<Property name="Name" value="MESHLINK" />
											<Property name="Value" value="OribtShape5" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
											<Property name="Name" value="ATTACHMENT" />
											<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateVeryFast.ENTITY.MBIN" />
										</Property>
									</Property>
									<Property name="Children">
										<Property name="Children" value="TkSceneNodeData" _index="0">
											<Property name="Name" value="Moon3" />
											<Property name="NameHash" value="2788756428" />
											<Property name="Type" value="MESH" />
											<Property name="Transform" value="TkTransformData">
												<Property name="TransX" value="3.150237" />
												<Property name="TransY" value="0.000000" />
												<Property name="TransZ" value="0.042879" />
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
													<Property name="Name" value="BATCHSTARTPHYSI" />
													<Property name="Value" value="49320" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
													<Property name="Name" value="VERTRSTARTPHYSI" />
													<Property name="Value" value="11457" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
													<Property name="Name" value="VERTRENDPHYSICS" />
													<Property name="Value" value="12416" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
													<Property name="Name" value="BATCHSTARTGRAPH" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
													<Property name="Name" value="BATCHCOUNT" />
													<Property name="Value" value="4608" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
													<Property name="Name" value="VERTRSTARTGRAPH" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
													<Property name="Name" value="VERTRENDGRAPHIC" />
													<Property name="Value" value="959" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
													<Property name="Name" value="FIRSTSKINMAT" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
													<Property name="Name" value="LASTSKINMAT" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
													<Property name="Name" value="LODLEVEL" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
													<Property name="Name" value="BOUNDHULLST" />
													<Property name="Value" value="568" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
													<Property name="Name" value="BOUNDHULLED" />
													<Property name="Value" value="600" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
													<Property name="Name" value="AABBMINX" />
													<Property name="Value" value="-2.710184" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
													<Property name="Name" value="AABBMINY" />
													<Property name="Value" value="-0.032657" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
													<Property name="Name" value="AABBMINZ" />
													<Property name="Value" value="-0.069102" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
													<Property name="Name" value="AABBMAXX" />
													<Property name="Value" value="-2.644868" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
													<Property name="Name" value="AABBMAXY" />
													<Property name="Value" value="0.032657" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
													<Property name="Name" value="AABBMAXZ" />
													<Property name="Value" value="-0.003787" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
													<Property name="Name" value="HASH" />
													<Property name="Value" value="3230671674936874211" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
													<Property name="Name" value="MATERIAL" />
													<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT1.MATERIAL.MBIN" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
													<Property name="Name" value="MESHLINK" />
													<Property name="Value" value="MoonShape3" />
												</Property>
											</Property>
											<Property name="Children">
												<Property name="Children" value="TkSceneNodeData" _index="0">
													<Property name="Name" value="pCube12_5" />
													<Property name="NameHash" value="3583522428" />
													<Property name="Type" value="MESH" />
													<Property name="Transform" value="TkTransformData">
														<Property name="TransX" value="0.000000" />
														<Property name="TransY" value="0.000000" />
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
															<Property name="Name" value="BATCHSTARTPHYSI" />
															<Property name="Value" value="53928" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
															<Property name="Name" value="VERTRSTARTPHYSI" />
															<Property name="Value" value="12417" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
															<Property name="Name" value="VERTRENDPHYSICS" />
															<Property name="Value" value="13376" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
															<Property name="Name" value="BATCHSTARTGRAPH" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
															<Property name="Name" value="BATCHCOUNT" />
															<Property name="Value" value="4608" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
															<Property name="Name" value="VERTRSTARTGRAPH" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
															<Property name="Name" value="VERTRENDGRAPHIC" />
															<Property name="Value" value="959" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
															<Property name="Name" value="FIRSTSKINMAT" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
															<Property name="Name" value="LASTSKINMAT" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
															<Property name="Name" value="LODLEVEL" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
															<Property name="Name" value="BOUNDHULLST" />
															<Property name="Value" value="600" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
															<Property name="Name" value="BOUNDHULLED" />
															<Property name="Value" value="632" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
															<Property name="Name" value="AABBMINX" />
															<Property name="Value" value="-2.706699" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
															<Property name="Name" value="AABBMINY" />
															<Property name="Value" value="-0.029173" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
															<Property name="Name" value="AABBMINZ" />
															<Property name="Value" value="-0.065617" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
															<Property name="Name" value="AABBMAXX" />
															<Property name="Value" value="-2.648353" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
															<Property name="Name" value="AABBMAXY" />
															<Property name="Value" value="0.029173" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
															<Property name="Name" value="AABBMAXZ" />
															<Property name="Value" value="-0.007272" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
															<Property name="Name" value="HASH" />
															<Property name="Value" value="5638356435367441528" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
															<Property name="Name" value="MATERIAL" />
															<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\TRANSBACKGROND_MAT.MATERIAL.MBIN" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
															<Property name="Name" value="MESHLINK" />
															<Property name="Value" value="pCubeShape12" />
														</Property>
													</Property>
													<Property name="Children" />
												</Property>
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Children" value="TkSceneNodeData" _index="2">
									<Property name="Name" value="Oribt6" />
									<Property name="NameHash" value="3915855093" />
									<Property name="Type" value="MESH" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="0.000000" />
										<Property name="TransY" value="0.000000" />
										<Property name="TransZ" value="0.000000" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="53.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="BATCHSTARTPHYSI" />
											<Property name="Value" value="58536" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="VERTRSTARTPHYSI" />
											<Property name="Value" value="13377" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="VERTRENDPHYSICS" />
											<Property name="Value" value="13672" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="BATCHSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="BATCHCOUNT" />
											<Property name="Value" value="864" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
											<Property name="Name" value="VERTRSTARTGRAPH" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
											<Property name="Name" value="VERTRENDGRAPHIC" />
											<Property name="Value" value="295" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
											<Property name="Name" value="FIRSTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
											<Property name="Name" value="LASTSKINMAT" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
											<Property name="Name" value="LODLEVEL" />
											<Property name="Value" value="0" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
											<Property name="Name" value="BOUNDHULLST" />
											<Property name="Value" value="632" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
											<Property name="Name" value="BOUNDHULLED" />
											<Property name="Value" value="648" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
											<Property name="Name" value="AABBMINX" />
											<Property name="Value" value="-0.614534" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
											<Property name="Name" value="AABBMINY" />
											<Property name="Value" value="-0.005585" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
											<Property name="Name" value="AABBMINZ" />
											<Property name="Value" value="-0.614533" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
											<Property name="Name" value="AABBMAXX" />
											<Property name="Value" value="0.614534" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
											<Property name="Name" value="AABBMAXY" />
											<Property name="Value" value="0.005585" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
											<Property name="Name" value="AABBMAXZ" />
											<Property name="Value" value="0.614534" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
											<Property name="Name" value="HASH" />
											<Property name="Value" value="2009986400464660372" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
											<Property name="Name" value="MATERIAL" />
											<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT2.MATERIAL.MBIN" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
											<Property name="Name" value="MESHLINK" />
											<Property name="Value" value="OribtShape6" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
											<Property name="Name" value="ATTACHMENT" />
											<Property name="Value" value="MODELS\JMZ\ENTITIES\TKRotateFast.ENTITY.MBIN" />
										</Property>
									</Property>
									<Property name="Children">
										<Property name="Children" value="TkSceneNodeData" _index="0">
											<Property name="Name" value="Moon2" />
											<Property name="NameHash" value="3085152033" />
											<Property name="Type" value="MESH" />
											<Property name="Transform" value="TkTransformData">
												<Property name="TransX" value="3.150237" />
												<Property name="TransY" value="0.000000" />
												<Property name="TransZ" value="0.042879" />
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
													<Property name="Name" value="BATCHSTARTPHYSI" />
													<Property name="Value" value="59400" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
													<Property name="Name" value="VERTRSTARTPHYSI" />
													<Property name="Value" value="13673" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
													<Property name="Name" value="VERTRENDPHYSICS" />
													<Property name="Value" value="14632" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
													<Property name="Name" value="BATCHSTARTGRAPH" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
													<Property name="Name" value="BATCHCOUNT" />
													<Property name="Value" value="4608" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
													<Property name="Name" value="VERTRSTARTGRAPH" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
													<Property name="Name" value="VERTRENDGRAPHIC" />
													<Property name="Value" value="959" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
													<Property name="Name" value="FIRSTSKINMAT" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
													<Property name="Name" value="LASTSKINMAT" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
													<Property name="Name" value="LODLEVEL" />
													<Property name="Value" value="0" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
													<Property name="Name" value="BOUNDHULLST" />
													<Property name="Value" value="648" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
													<Property name="Name" value="BOUNDHULLED" />
													<Property name="Value" value="680" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
													<Property name="Name" value="AABBMINX" />
													<Property name="Value" value="-2.574579" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
													<Property name="Name" value="AABBMINY" />
													<Property name="Value" value="-0.033418" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
													<Property name="Name" value="AABBMINZ" />
													<Property name="Value" value="-0.068006" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
													<Property name="Name" value="AABBMAXX" />
													<Property name="Value" value="-2.507744" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
													<Property name="Name" value="AABBMAXY" />
													<Property name="Value" value="0.033418" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
													<Property name="Name" value="AABBMAXZ" />
													<Property name="Value" value="-0.001171" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
													<Property name="Name" value="HASH" />
													<Property name="Value" value="11316718238521647932" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
													<Property name="Name" value="MATERIAL" />
													<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\SCANLINES_MAT1.MATERIAL.MBIN" />
												</Property>
												<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
													<Property name="Name" value="MESHLINK" />
													<Property name="Value" value="MoonShape2" />
												</Property>
											</Property>
											<Property name="Children">
												<Property name="Children" value="TkSceneNodeData" _index="0">
													<Property name="Name" value="pCube12_6" />
													<Property name="NameHash" value="3282211473" />
													<Property name="Type" value="MESH" />
													<Property name="Transform" value="TkTransformData">
														<Property name="TransX" value="0.000000" />
														<Property name="TransY" value="0.000000" />
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
															<Property name="Name" value="BATCHSTARTPHYSI" />
															<Property name="Value" value="64008" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
															<Property name="Name" value="VERTRSTARTPHYSI" />
															<Property name="Value" value="14633" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
															<Property name="Name" value="VERTRENDPHYSICS" />
															<Property name="Value" value="15592" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
															<Property name="Name" value="BATCHSTARTGRAPH" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
															<Property name="Name" value="BATCHCOUNT" />
															<Property name="Value" value="4608" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
															<Property name="Name" value="VERTRSTARTGRAPH" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
															<Property name="Name" value="VERTRENDGRAPHIC" />
															<Property name="Value" value="959" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
															<Property name="Name" value="FIRSTSKINMAT" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
															<Property name="Name" value="LASTSKINMAT" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
															<Property name="Name" value="LODLEVEL" />
															<Property name="Value" value="0" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
															<Property name="Name" value="BOUNDHULLST" />
															<Property name="Value" value="680" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
															<Property name="Name" value="BOUNDHULLED" />
															<Property name="Value" value="712" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
															<Property name="Name" value="AABBMINX" />
															<Property name="Value" value="-2.571013" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
															<Property name="Name" value="AABBMINY" />
															<Property name="Value" value="-0.029852" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
															<Property name="Name" value="AABBMINZ" />
															<Property name="Value" value="-0.064441" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
															<Property name="Name" value="AABBMAXX" />
															<Property name="Value" value="-2.511309" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
															<Property name="Name" value="AABBMAXY" />
															<Property name="Value" value="0.029852" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
															<Property name="Name" value="AABBMAXZ" />
															<Property name="Value" value="-0.004736" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
															<Property name="Name" value="HASH" />
															<Property name="Value" value="5399084952104726436" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
															<Property name="Name" value="MATERIAL" />
															<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\TRANSBACKGROND_MAT.MATERIAL.MBIN" />
														</Property>
														<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
															<Property name="Name" value="MESHLINK" />
															<Property name="Value" value="pCubeShape12" />
														</Property>
													</Property>
													<Property name="Children" />
												</Property>
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
</Data>
]]
    },
  },
}