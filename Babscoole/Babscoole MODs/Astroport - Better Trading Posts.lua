NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Astroport - Better Trading Posts",
["MOD_AUTHOR"]    = "AstronautinOrbit and Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFTradingPost_Common", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONKORVAX.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTTRADER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
              ["SEC_SAVE_TO"] = "SaveInt",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFTradingPost_Common"},
              ["SEC_SAVE_TO"] = "SaveCommon",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SEC_EDIT"] = "SaveCommon",
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFTradingPost_Common", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONGEK.SCENE.MBIN"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["SEC_ADD_NAMED"] = "SaveCommon",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["SEC_ADD_NAMED"] = "SaveInt",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTWARRIOR.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
              ["SEC_SAVE_TO"] = "SaveInt",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFTradingPost_Common"},
              ["SEC_SAVE_TO"] = "SaveCommon",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SEC_EDIT"] = "SaveCommon",
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFTradingPost_Common", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONVYKEEN.SCENE.MBIN"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["SEC_ADD_NAMED"] = "SaveCommon",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["SEC_ADD_NAMED"] = "SaveInt",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\SCIENTIFIC_BUILDING.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
              ["SEC_SAVE_TO"] = "SaveInt",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["SEC_ADD_NAMED"] = "SaveInt",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD.SCENE.MBIN", "MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN",},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD.SCENE.MBIN", "MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN",
            "MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\LANDINGPAD1"},
                {"NameHash", "3028871014"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD|Collision1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "-0.301410"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD|Collision1", "Attributes", "TkSceneNodeAttributeData"},
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD|Collision1"},
              ["PRECEDING_KEY_WORDS"] = {"Attributes"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Box" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="WIDTH" />
							<Property name="Value" value="12.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="HEIGHT" />
							<Property name="Value" value="0.602820" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="DEPTH" />
							<Property name="Value" value="12.000000" />
						</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SummonShip"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "-5.500000"},
                {"TransY", "2.200000"},
                {"TransZ", "-5.000000"},
                {"RotY",   "-90.000000"},
                {"ScaleY", "3.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Dock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.576257"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EXIT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "-0.422150"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD|Collision"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.297177"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD|Collision", "Attributes", "TkSceneNodeAttributeData"},
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD|Collision"},
              ["PRECEDING_KEY_WORDS"] = {"Attributes"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Cylinder" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="6.060060" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="HEIGHT" />
							<Property name="Value" value="0.249945" />
						</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\LANDINGPAD2"},
                {"NameHash", "2731164649"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SummonShip"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransZ", "5.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN", "MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\LANDINGPAD_BOTTOM"},
                {"NameHash", "3471243879"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALL.SCENE.MBIN", "MODELS\ASTROSTATION\RAILING.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSTATION\RAILING.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\RAILING"},
                {"NameHash", "1080808632"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\MAINROOM.SCENE.MBIN", "MODELS\ASTROSTATION\GEK\GEKFRAME.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSTATION\GEK\GEKFRAME.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\GEK\GEKFRAME"},
                {"NameHash", "672067245"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Sockets"},
                {"Name", "WireSupport"},
                {"Name", "SnapPoint_Planter8"},
                {"Name", "SnapPoint_Planter7"},
                {"Name", "SnapPoint_Planter6"},
                {"Name", "SnapPoint_Planter5"},
                {"Name", "SnapPoint_Planter4"},
                {"Name", "SnapPoint_Planter3"},
                {"Name", "SnapPoint_Planter2"},
                {"Name", "SnapPoint_Planter1"},
                {"Name", "RefPowerIndicator"},
                {"Name", "RefPowerIndicator4"},
                {"Name", "RefPowerIndicator3"},
                {"Name", "RefPowerIndicator2"},
                {"Name", "RefPowerIndicator1"},
                {"Name", "SnapGroup_ConnectN"},
                {"Name", "SnapGroup_DoorConnectN"},
                {"Name", "SnapGroup_PanelN"},
                {"Name", "SnapGroup_DoorConnectE"},
                {"Name", "SnapGroup_DoorConnectS"},
                {"Name", "SnapGroup_DoorConnectW"},
                {"Name", "SnapGroup_PanelNE"},
                {"Name", "SnapGroup_PanelSE"},
                {"Name", "SnapGroup_PanelSW"},
                {"Name", "SnapGroup_PanelNW"},
                {"Name", "SnapGroup_MoonPool_"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SnapGroup_ConnectS"},
                {"Name", "SnapGroup_ConnectW"},
                {"Name", "SnapGroup_ConnectE"},
              },
              ["SECTION_ACTIVE"] = {"1",},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SnapGroup_PanelE"},
                {"Name", "SnapGroup_PanelS"},
                {"Name", "SnapGroup_PanelW"},
              },
              ["SECTION_ACTIVE"] = {"2",},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SnapGroup_RoomRoof"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="SnapGroup_ConnectN" />
      <Property name="NameHash" value="3631338615" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.500000" />
				<Property name="TransZ" value="-5.750000" />
        <Property name="RotX" value="0.000000" />
				<Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_CORRIDORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
        </Property>
			</Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="SnapGroup_DoorConnectS" />
      <Property name="NameHash" value="3047906044" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="5.750000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_DOORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="SnapGroup_ConnectE" />
      <Property name="NameHash" value="1405405991" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="5.750000" />
				<Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
				<Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_CORRIDORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
      </Property>
			</Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="SnapGroup_ConnectW" />
      <Property name="NameHash" value="562751152" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-5.750000" />
				<Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_CORRIDORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
      </Property>
			</Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="SnapGroup_PanelNE1" />
      <Property name="NameHash" value="3726306212" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\PANELGLASSGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
      </Property>
			</Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="SnapGroup_PanelNW1" />
      <Property name="NameHash" value="4105766296" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\PANELGLASSGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="38">
      <Property name="Name" value="SnapGroup_PanelSE1" />
      <Property name="NameHash" value="3451910839" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\PANELGLASSGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="39">
      <Property name="Name" value="SnapGroup_PanelSW1" />
      <Property name="NameHash" value="2257443976" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\PANELGLASSGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="40">
      <Property name="Name" value="GEKWINDOWMODULES" />
      <Property name="NameHash" value="3912857051" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_WINDOWMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="41">
      <Property name="Name" value="GEKWINDOWMODULEN" />
      <Property name="NameHash" value="2887121813" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_WINDOWMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="42">
      <Property name="Name" value="GEKWINDOWMODULEE" />
      <Property name="NameHash" value="3778635239" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_WINDOWMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="43">
      <Property name="Name" value="GEKWINDOWMODULEE" />
      <Property name="NameHash" value="3778635239" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_WINDOWMODULE.SCENE.MBIN" />
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
              ["SPECIAL_KEY_WORDS"] = {"Name", "SnapGroup_RoomFloor"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN", "MODELS\ASTROSTATION\KORVAX\BRIDGE_GLASSWALL.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSTATION\KORVAX\BRIDGE_GLASSWALL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\KORVAX\BRIDGE_GLASSWALL"},
                {"NameHash", "95783057"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB1WallLOD0", "Name", "MATERIAL"},
                {"Name", "SUB1WallLOD1", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL\PANEL_DOORCONNECT_TILINGTEXTURE_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Glass2", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL\GLASSREFRACTIONMAT1.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Glass1", "Name", "LODLEVEL"},
                {"Name", "Glass2", "Name", "LODLEVEL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "WATERPROXYMESH"},
              },
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOMCUBE_FRAME.SCENE.MBIN", "MODELS\ASTROSTATION\VYKEEN\MAINROOMCUBE_FRAME_VYKEEN.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSTATION\VYKEEN\MAINROOMCUBE_FRAME_VYKEEN.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\VYKEEN\MAINROOMCUBE_FRAME_VYKEEN"},
                {"NameHash", "2233434247"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefPowerIndicator1", "Name", "SCENEGRAPH"},
                {"Name", "RefPowerIndicator2", "Name", "SCENEGRAPH"},
                {"Name", "RefPowerIndicator3", "Name", "SCENEGRAPH"},
                {"Name", "RefPowerIndicator4", "Name", "SCENEGRAPH"},
                {"Name", "RefPowerIndicator",  "Name", "SCENEGRAPH"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\POWERINDICATOR.SCENE.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefSnapScene5", "Name", "SCENEGRAPH"},
                {"Name", "RefSnapScene6", "Name", "SCENEGRAPH"},
                {"Name", "RefSnapScene7", "Name", "SCENEGRAPH"},
                {"Name", "RefSnapScene8", "Name", "SCENEGRAPH"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\POWERLINE_CONNECTOR.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\CEILINGLIGHT_RING.SCENE.MBIN", "MODELS\ASTROSTATION\KORVAX\FLOOR_RING.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSTATION\KORVAX\FLOOR_RING.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSTATION\KORVAX\FLOOR_RING"},
                {"NameHash", "313769167"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CeilingLight_Ring", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SHIPSHOP\FLOORDARK_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\CEILINGLIGHT_RING|Collision"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.000000"},
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
      ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC" />
  <Property name="NameHash" value="3987281947" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTOUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="insideitems" />
          <Property name="NameHash" value="1473603830" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="33.000000" />
            <Property name="TransY" value="15.600000" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAXINTERIOR.SCENE.MBIN" />
            </Property>
				    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
				    	<Property name="Name" value="EMBEDGEOMETRY" />
				    	<Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="NPCHIREABLE_" />
          <Property name="NameHash" value="2107447564" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="29.491160" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-2.255497" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="61.315784" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="NPCHIREABLE_1" />
          <Property name="NameHash" value="2574621709" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="28.343597" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-2.917552" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-164.709350" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="NPCHIREABLE_2" />
          <Property name="NameHash" value="2637210499" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="25.255030" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="7.426561" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="94.334900" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="4">
          <Property name="Name" value="NPCHIREABLE_3" />
          <Property name="NameHash" value="2304670691" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.129670" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="2.144895" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="131.13927" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="NPCHIREABLE_4" />
          <Property name="NameHash" value="455548790" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="33.972920" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="2.507774" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-122.546776" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="NPCHIREABLE_5" />
          <Property name="NameHash" value="1692316388" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.014507" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="3.219764" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="60.641434" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="7">
          <Property name="Name" value="NPCHIREABLE_6" />
          <Property name="NameHash" value="1989498449" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="38.964220" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="2.323426" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-25.240747" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="8">
          <Property name="Name" value="NPCHIREABLE_7" />
          <Property name="NameHash" value="577809925" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="31.560808" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-12.495872" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="7.664297" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="9">
          <Property name="Name" value="NPCHIREABLE_8" />
          <Property name="NameHash" value="842419600" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="31.135838" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-13.239573" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-137.085630" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="10">
          <Property name="Name" value="NPCHIREABLE_9" />
          <Property name="NameHash" value="2079580426" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="39.616623" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-8.050994" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="86.870890" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="11">
          <Property name="Name" value="NPCHIREABLE_10" />
          <Property name="NameHash" value="635767593" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.000916" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-3.099721" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="122.839820" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="12">
          <Property name="Name" value="NPCHIREABLE_11" />
          <Property name="NameHash" value="942780354" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="39.808113" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="7.085682" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="20.666512" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="13">
          <Property name="Name" value="NPCHIREABLE_12" />
          <Property name="NameHash" value="3004474746" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="27.963585" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="6.132593" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-125.012146" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="14">
          <Property name="Name" value="NPCHIREABLE_13" />
          <Property name="NameHash" value="3278259741" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="29.616623" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-8.050994" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="86.870890" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="15">
          <Property name="Name" value="NPCHIREABLE_14" />
          <Property name="NameHash" value="3733552227" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="27.723402" />
            <Property name="TransY" value="15.600000" />
            <Property name="TransZ" value="-6.750359" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="46.453495" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_TRADER.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_TRADER" />
  <Property name="NameHash" value="4184735333" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_TRADER.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTOUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="insideitems" />
          <Property name="NameHash" value="1473603830" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="33.000000" />
            <Property name="TransY" value="16.300000" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEKINTERIOR.SCENE.MBIN" />
            </Property>
				    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
				    	<Property name="Name" value="EMBEDGEOMETRY" />
				    	<Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="NPCHIREABLE_" />
          <Property name="NameHash" value="2107447564" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="28.288070" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="6.562894" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-125.012146" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="NPCHIREABLE_1" />
          <Property name="NameHash" value="2574621709" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="29.465776" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="5.693749" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="117.675270" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="NPCHIREABLE_2" />
          <Property name="NameHash" value="2637210499" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="32.837930" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="6.601063" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="125.809166" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="4">
          <Property name="Name" value="NPCHIREABLE_3" />
          <Property name="NameHash" value="2304670691" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="36.255030" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="6.426561" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="94.334900" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="NPCHIREABLE_4" />
          <Property name="NameHash" value="455548790" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="38.964220" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="2.323426" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-25.240747" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="NPCHIREABLE_5" />
          <Property name="NameHash" value="1692316388" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="28.343597" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="-2.917552" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-164.709350" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="7">
          <Property name="Name" value="NPCHIREABLE_6" />
          <Property name="NameHash" value="1989498449" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="29.491160" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="-2.255497" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="61.315784" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="8">
          <Property name="Name" value="NPCHIREABLE_7" />
          <Property name="NameHash" value="577809925" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.014507" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="3.219764" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="60.641434" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="9">
          <Property name="Name" value="NPCHIREABLE_8" />
          <Property name="NameHash" value="842419600" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.129670" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="2.144895" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="131.139270" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="10">
          <Property name="Name" value="NPCHIREABLE_9" />
          <Property name="NameHash" value="2079580426" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="33.972920" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="2.507774" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-122.546776" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="11">
          <Property name="Name" value="NPCHIREABLE_10" />
          <Property name="NameHash" value="635767593" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.000916" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="-3.099721" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="122.839820" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="12">
          <Property name="Name" value="NPCHIREABLE_11" />
          <Property name="NameHash" value="942780354" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="31.560808" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="-6.495872" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="7.664297" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="13">
          <Property name="Name" value="NPCHIREABLE_12" />
          <Property name="NameHash" value="3004474746" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="31.135838" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="-7.239573" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-137.085630" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="14">
          <Property name="Name" value="NPCHIREABLE_13" />
          <Property name="NameHash" value="3278259741" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="39.616623" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="-8.050994" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="86.870890" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="15">
          <Property name="Name" value="NPCHIREABLE_14" />
          <Property name="NameHash" value="3733552227" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.723400" />
            <Property name="TransY" value="16.320000" />
            <Property name="TransZ" value="-6.750359" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="46.453495" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_WARRIOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_WARRIOR" />
  <Property name="NameHash" value="809230121" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_WARRIOR.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTOUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="insideitems" />
          <Property name="NameHash" value="1473603830" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="33.000000" />
            <Property name="TransY" value="16.200000" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEENINTERIOR.SCENE.MBIN" />
            </Property>
				    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
				    	<Property name="Name" value="EMBEDGEOMETRY" />
				    	<Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="NPCHIREABLE_" />
          <Property name="NameHash" value="2107447564" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="29.465776" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="8.693749" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="117.675270" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="NPCHIREABLE_1" />
          <Property name="NameHash" value="2574621709" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="28.288070" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="7.562894" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-125.012146" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="NPCHIREABLE_2" />
          <Property name="NameHash" value="2637210499" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="26.837929" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="8.601063" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="125.809166" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="4">
          <Property name="Name" value="NPCHIREABLE_3" />
          <Property name="NameHash" value="2304670691" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="36.255030" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="7.426561" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="94.334900" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="NPCHIREABLE_4" />
          <Property name="NameHash" value="455548790" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.014507" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="3.219764" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="60.641434" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="NPCHIREABLE_5" />
          <Property name="NameHash" value="1692316388" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.129670" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="2.144895" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="131.139270" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="7">
          <Property name="Name" value="NPCHIREABLE_6" />
          <Property name="NameHash" value="1989498449" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="33.972920" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="2.507774" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-122.546776" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="8">
          <Property name="Name" value="NPCHIREABLE_7" />
          <Property name="NameHash" value="577809925" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="35.000916" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="-3.099721" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="122.839820" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="9">
          <Property name="Name" value="NPCHIREABLE_8" />
          <Property name="NameHash" value="842419600" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="29.491160" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="-2.255497" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="61.315784" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="10">
          <Property name="Name" value="NPCHIREABLE_9" />
          <Property name="NameHash" value="2079580426" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="38.343597" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="-2.917552" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-164.709350" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="11">
          <Property name="Name" value="NPCHIREABLE_10" />
          <Property name="NameHash" value="635767593" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="33.964220" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="2.323426" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-25.240747" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="12">
          <Property name="Name" value="NPCHIREABLE_11" />
          <Property name="NameHash" value="942780354" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="31.560808" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="-7.495872" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="7.664297" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="13">
          <Property name="Name" value="NPCHIREABLE_12" />
          <Property name="NameHash" value="3004474746" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="31.135838" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="-7.239573" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-137.085630" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="14">
          <Property name="Name" value="NPCHIREABLE_13" />
          <Property name="NameHash" value="3278259741" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="29.616623" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="-8.050994" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="86.870890" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="15">
          <Property name="Name" value="NPCHIREABLE_14" />
          <Property name="NameHash" value="3733552227" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="37.723400" />
            <Property name="TransY" value="16.200000" />
            <Property name="TransZ" value="-6.750359" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="46.453495" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONGEK.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONGEK" />
  <Property name="NameHash" value="2844749346" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="GekFrame" />
      <Property name="NameHash" value="403487981" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="15.900000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEKFRAME.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Data" />
      <Property name="NameHash" value="2810148397" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="Layout_" />
      <Property name="NameHash" value="591504117" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="TriggerVolume" />
      <Property name="NameHash" value="3846031098" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.475500" />
        <Property name="TransY" value="19.279720" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="NAV_NODE11" />
      <Property name="NameHash" value="1551864077" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="NAV_NODE10" />
      <Property name="NameHash" value="964119293" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="NAV_NODE9" />
      <Property name="NameHash" value="432856537" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="NAV_NODE8" />
      <Property name="NameHash" value="666466738" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="NAV_NODE7" />
      <Property name="NameHash" value="3723355672" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="NAV_NODE6" />
      <Property name="NameHash" value="2896233343" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="31.3105659" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="NAV_NODE5" />
      <Property name="NameHash" value="2231972944" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="27.285940" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="NAV_NODE4" />
      <Property name="NameHash" value="3545714923" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.513680" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="NAV_NODE3" />
      <Property name="NameHash" value="2845638007" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="30.160534" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="NAV_NODE2" />
      <Property name="NameHash" value="2009143744" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="34.856890" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="NAV_NODE1" />
      <Property name="NameHash" value="730038586" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="28.866188" />
        <Property name="TransY" value="14.756432" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="NAV_NODE12" />
      <Property name="NameHash" value="3401543051" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="NAV_NODE13" />
      <Property name="NameHash" value="2147637266" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="NAV_NODE14" />
      <Property name="NameHash" value="1856779622" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="NAV_NODE15" />
      <Property name="NameHash" value="3993154573" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="NAV_NODE16" />
      <Property name="NameHash" value="3703837072" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="NAV_NODE17" />
      <Property name="NameHash" value="307330218" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="NAV_NODE18" />
      <Property name="NameHash" value="59760423" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="NAV_NODE19" />
      <Property name="NameHash" value="665724771" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="5.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="NAV_NODE20" />
      <Property name="NameHash" value="3427595866" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="NAV_NODE21" />
      <Property name="NameHash" value="3197295334" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="NAV_NODE22" />
      <Property name="NameHash" value="4020550929" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="NAV_NODE23" />
      <Property name="NameHash" value="826425431" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="NAV_NODE24" />
      <Property name="NameHash" value="1669932260" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.599998" />
				<Property name="TransY" value="13.0126562" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="NAV_NODE25" />
      <Property name="NameHash" value="1436748056" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="5.373250" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="30">
      <Property name="Name" value="NAV_NODE26" />
      <Property name="NameHash" value="2280058271" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="7.805585" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="31">
      <Property name="Name" value="NAV_NODE27" />
      <Property name="NameHash" value="2077742465" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="8.008348" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="NAV_NODE28" />
      <Property name="NameHash" value="2881566035" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="5.298176" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="NAV_NODE29" />
      <Property name="NameHash" value="2642876639" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="-4.263331" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="NAV_NODE30" />
      <Property name="NameHash" value="384404754" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="-1.236030" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="NAV_NODE31" />
      <Property name="NameHash" value="1121903856" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="-6.863419" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="NAV_NODE32" />
      <Property name="NameHash" value="1351712853" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="-3.255348" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="NAV_NODE33" />
      <Property name="NameHash" value="1845738297" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="-2.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="38">
      <Property name="Name" value="NAV_NODE34" />
      <Property name="NameHash" value="2074990221" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.012655" />
        <Property name="TransZ" value="3.015660" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="39">
      <Property name="Name" value="NAV_NODE35" />
      <Property name="NameHash" value="2341369422" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.012540" />
        <Property name="TransY" value="16.229134" />
        <Property name="TransZ" value="-0.015651" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="40">
			<Property name="Name" value="RefTradingPost_SupportN" />
			<Property name="NameHash" value="1950080726" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="41">
      <Property name="Name" value="RefTradingPost_SupportS" />
      <Property name="NameHash" value="377758572" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="42">
      <Property name="Name" value="RefTradingPost_SupportE" />
      <Property name="NameHash" value="1562947768" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="43">
      <Property name="Name" value="RefTradingPost_SupportW" />
      <Property name="NameHash" value="4014658806" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="44">
      <Property name="Name" value="RefTradingPost_SupportNE" />
      <Property name="NameHash" value="1491750916" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="45">
      <Property name="Name" value="RefTradingPost_SupportNW" />
      <Property name="NameHash" value="2944531742" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-32.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="46">
      <Property name="Name" value="RefTradingPost_SupportSE" />
      <Property name="NameHash" value="1631510489" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="47">
      <Property name="Name" value="RefTradingPost_SupportSW" />
      <Property name="NameHash" value="821821164" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="32.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="48">
      <Property name="Name" value="SUPPORTCENTERNorth" />
      <Property name="NameHash" value="2974141034" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="-25.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="49">
      <Property name="Name" value="SUPPORTCENTERSouth" />
      <Property name="NameHash" value="620256212" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="25.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="50">
      <Property name="Name" value="SUPPORTCENTEREast" />
      <Property name="NameHash" value="2297775329" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="58.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="51">
      <Property name="Name" value="SUPPORTCENTERWest" />
      <Property name="NameHash" value="3988567309" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="8.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="52">
      <Property name="Name" value="CorridorN" />
      <Property name="NameHash" value="4189230506" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="53">
      <Property name="Name" value="CorridorS" />
      <Property name="NameHash" value="1376503411" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="54">
      <Property name="Name" value="CorridorE" />
      <Property name="NameHash" value="3562621712" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="55">
      <Property name="Name" value="CorridorW" />
      <Property name="NameHash" value="2579060173" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="56">
      <Property name="Name" value="GEKLANDINGTUBEMODULEE" />
      <Property name="NameHash" value="1650912515" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\GEK\GEKLANDINGTUBEMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="57">
      <Property name="Name" value="GEKLANDINGTUBEMODULEW" />
      <Property name="NameHash" value="683932054" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="31.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\GEK\GEKLANDINGTUBEMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="58">
      <Property name="Name" value="LandingPadNL_BOTTOM_N" />
      <Property name="NameHash" value="3701198399" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="17.000000" />
        <Property name="TransY" value="16.200000" />
        <Property name="TransZ" value="-52.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="8.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="59">
      <Property name="Name" value="LandingPadNL_BOTTOM_S" />
      <Property name="NameHash" value="579787304" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="17.000000" />
        <Property name="TransY" value="16.200000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="8.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="60">
      <Property name="Name" value="LandingPadN" />
      <Property name="NameHash" value="2371677110" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK1LANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="61">
      <Property name="Name" value="LandingPadS" />
      <Property name="NameHash" value="1346728328" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK1LANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="62">
      <Property name="Name" value="LandingPadEast" />
      <Property name="NameHash" value="4041078957" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK3LANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="63">
      <Property name="Name" value="LandingPadWest" />
      <Property name="NameHash" value="830689122" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK3LANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="64">
      <Property name="Name" value="RefLadder3" />
      <Property name="NameHash" value="312023998" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.800000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="42.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.980000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="65">
      <Property name="Name" value="RefLadder" />
      <Property name="NameHash" value="4249009587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.800000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-42.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.980000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONKORVAX.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONKORVAX" />
  <Property name="NameHash" value="1717657301" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="KORVAXFRAME" />
      <Property name="NameHash" value="2721678894" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="15.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAXFRAME.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Main_Floor" />
      <Property name="NameHash" value="2583260791" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="15.100000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="180.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_FLOOR_3.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Data" />
      <Property name="NameHash" value="2810148397" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="Layout_" />
      <Property name="NameHash" value="591504117" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="TriggerVolume" />
      <Property name="NameHash" value="3846031098" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.475500" />
        <Property name="TransY" value="19.279720" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="NAV_NODE11" />
      <Property name="NameHash" value="1551864077" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="NAV_NODE10" />
      <Property name="NameHash" value="964119293" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="NAV_NODE9" />
      <Property name="NameHash" value="432856537" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="NAV_NODE8" />
      <Property name="NameHash" value="666466738" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="NAV_NODE7" />
      <Property name="NameHash" value="3723355672" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="NAV_NODE6" />
      <Property name="NameHash" value="2896233343" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="31.3105659" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="NAV_NODE5" />
      <Property name="NameHash" value="2231972944" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="27.285940" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="NAV_NODE4" />
      <Property name="NameHash" value="3545714923" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.513680" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="NAV_NODE3" />
      <Property name="NameHash" value="2845638007" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="30.160534" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="NAV_NODE2" />
      <Property name="NameHash" value="2009143744" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="34.856890" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="NAV_NODE1" />
      <Property name="NameHash" value="730038586" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="8.866189" />
				<Property name="TransY" value="14.7564316" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="NAV_NODE12" />
      <Property name="NameHash" value="3401543051" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="NAV_NODE13" />
      <Property name="NameHash" value="2147637266" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="NAV_NODE14" />
      <Property name="NameHash" value="1856779622" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="NAV_NODE15" />
      <Property name="NameHash" value="3993154573" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="NAV_NODE16" />
      <Property name="NameHash" value="3703837072" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.8808956" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="NAV_NODE17" />
      <Property name="NameHash" value="307330218" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="NAV_NODE18" />
      <Property name="NameHash" value="59760423" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="NAV_NODE19" />
      <Property name="NameHash" value="665724771" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="5.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="NAV_NODE20" />
      <Property name="NameHash" value="3427595866" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="NAV_NODE21" />
      <Property name="NameHash" value="3197295334" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="NAV_NODE22" />
      <Property name="NameHash" value="4020550929" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="NAV_NODE23" />
      <Property name="NameHash" value="826425431" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="NAV_NODE24" />
      <Property name="NameHash" value="1669932260" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.599998" />
				<Property name="TransY" value="13.0126562" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="30">
      <Property name="Name" value="NAV_NODE25" />
      <Property name="NameHash" value="1436748056" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="5.373250" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="31">
      <Property name="Name" value="NAV_NODE26" />
      <Property name="NameHash" value="2280058271" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.805585" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="NAV_NODE27" />
      <Property name="NameHash" value="2077742465" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="8.008348" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="NAV_NODE28" />
      <Property name="NameHash" value="2881566035" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="5.298176" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="NAV_NODE29" />
      <Property name="NameHash" value="2642876639" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-4.263331" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="NAV_NODE30" />
      <Property name="NameHash" value="384404754" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-1.236030" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="NAV_NODE31" />
      <Property name="NameHash" value="1121903856" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-6.863419" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="NAV_NODE32" />
      <Property name="NameHash" value="1351712853" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.255348" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="38">
      <Property name="Name" value="NAV_NODE33" />
      <Property name="NameHash" value="1845738297" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-2.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="39">
      <Property name="Name" value="NAV_NODE34" />
      <Property name="NameHash" value="2074990221" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="3.015660" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="40">
      <Property name="Name" value="NAV_NODE35" />
      <Property name="NameHash" value="2341369422" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="32.012539" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-0.015651" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="41">
      <Property name="Name" value="RefTradingPost_SupportN" />
			<Property name="NameHash" value="1950080726" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="42">
      <Property name="Name" value="RefTradingPost_SupportS" />
      <Property name="NameHash" value="377758572" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="43">
      <Property name="Name" value="RefTradingPost_SupportE" />
      <Property name="NameHash" value="1562947768" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="44">
      <Property name="Name" value="RefTradingPost_SupportW" />
      <Property name="NameHash" value="4014658806" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="45">
      <Property name="Name" value="RefTradingPost_SupportNE" />
      <Property name="NameHash" value="1491750916" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="46">
      <Property name="Name" value="RefTradingPost_SupportNW" />
      <Property name="NameHash" value="2944531742" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="47">
      <Property name="Name" value="RefTradingPost_SupportSE" />
      <Property name="NameHash" value="1631510489" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="48">
      <Property name="Name" value="RefTradingPost_SupportSW" />
      <Property name="NameHash" value="821821164" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="49">
      <Property name="Name" value="SUPPORTCENTERNE" />
      <Property name="NameHash" value="1258573977" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="50">
      <Property name="Name" value="SUPPORTCENTERNW" />
      <Property name="NameHash" value="3685904895" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="51">
      <Property name="Name" value="SUPPORTCENTERSE" />
      <Property name="NameHash" value="2283098250" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="52">
      <Property name="Name" value="SUPPORTCENTERSW" />
      <Property name="NameHash" value="2051585317" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="53">
      <Property name="Name" value="CorridorN" />
      <Property name="NameHash" value="4189230506" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="54">
      <Property name="Name" value="CorridorS" />
      <Property name="NameHash" value="1376503411" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="55">
      <Property name="Name" value="CorridorE" />
      <Property name="NameHash" value="3562621712" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="56">
      <Property name="Name" value="CorridorW" />
      <Property name="NameHash" value="2579060173" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="57">
      <Property name="Name" value="CorridorSW" />
      <Property name="NameHash" value="1210415204" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="58">
      <Property name="Name" value="CorridorSE" />
      <Property name="NameHash" value="752337377" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="59">
      <Property name="Name" value="CorridorNE" />
      <Property name="NameHash" value="3349768886" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="60">
      <Property name="Name" value="CorridorNW" />
      <Property name="NameHash" value="433655576" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="61">
      <Property name="Name" value="LandingPadN" />
      <Property name="NameHash" value="2371677110" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="62">
      <Property name="Name" value="LandingPadS" />
      <Property name="NameHash" value="1346728328" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="63">
      <Property name="Name" value="LandingPadE" />
      <Property name="NameHash" value="1253402212" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="64">
      <Property name="Name" value="LandingPadW" />
      <Property name="NameHash" value="2283069686" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="64">
      <Property name="Name" value="LandingPadNE" />
      <Property name="NameHash" value="285443822" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="66">
      <Property name="Name" value="LandingPadNW" />
      <Property name="NameHash" value="268895473" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="67">
      <Property name="Name" value="LandingPadSE" />
      <Property name="NameHash" value="22701680" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="68">
      <Property name="Name" value="LandingPadSW" />
      <Property name="NameHash" value="4023698221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="69">
      <Property name="Name" value="RefLadder3" />
      <Property name="NameHash" value="312023998" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="62.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.900000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="70">
      <Property name="Name" value="RefLadder" />
      <Property name="NameHash" value="4249009587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-62.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.900000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONVYKEEN.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMONVYKEEN" />
  <Property name="NameHash" value="2970747332" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="VykeenFrame" />
      <Property name="NameHash" value="3344930221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="15.800000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEENFRAME.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Data" />
      <Property name="NameHash" value="2810148397" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="Layout_" />
      <Property name="NameHash" value="591504117" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="TriggerVolume" />
      <Property name="NameHash" value="3846031098" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.475500" />
        <Property name="TransY" value="19.279720" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="NAV_NODE11" />
      <Property name="NameHash" value="1551864077" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="NAV_NODE10" />
      <Property name="NameHash" value="964119293" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="NAV_NODE9" />
      <Property name="NameHash" value="432856537" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="NAV_NODE8" />
      <Property name="NameHash" value="666466738" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="NAV_NODE7" />
      <Property name="NameHash" value="3723355672" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.487710" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="NAV_NODE6" />
      <Property name="NameHash" value="2896233343" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="31.3105659" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="NAV_NODE5" />
      <Property name="NameHash" value="2231972944" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="27.285940" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="NAV_NODE4" />
      <Property name="NameHash" value="3545714923" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.513680" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="NAV_NODE3" />
      <Property name="NameHash" value="2845638007" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="30.160534" />
        <Property name="TransY" value="16.903710" />
				<Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="NAV_NODE2" />
      <Property name="NameHash" value="2009143744" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="34.856890" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="NAV_NODE1" />
      <Property name="NameHash" value="730038586" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="28.866188" />
        <Property name="TransY" value="14.756432" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="NAV_NODE12" />
      <Property name="NameHash" value="3401543051" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="NAV_NODE13" />
      <Property name="NameHash" value="2147637266" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="NAV_NODE14" />
      <Property name="NameHash" value="1856779622" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="NAV_NODE15" />
      <Property name="NameHash" value="3993154573" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="28.3173752" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="NAV_NODE16" />
      <Property name="NameHash" value="3703837072" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="NAV_NODE17" />
      <Property name="NameHash" value="307330218" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="NAV_NODE18" />
      <Property name="NameHash" value="59760423" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="NAV_NODE19" />
      <Property name="NameHash" value="665724771" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="25.880896" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="5.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="NAV_NODE20" />
      <Property name="NameHash" value="3427595866" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.062418" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="NAV_NODE21" />
      <Property name="NameHash" value="3197295334" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-7.277036" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="NAV_NODE22" />
      <Property name="NameHash" value="4020550929" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="2.706280" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="NAV_NODE23" />
      <Property name="NameHash" value="826425431" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="38.334630" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.192095" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="NAV_NODE24" />
      <Property name="NameHash" value="1669932260" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.599998" />
				<Property name="TransY" value="13.0126562" />
        <Property name="TransZ" value="0.067042" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="NAV_NODE25" />
      <Property name="NameHash" value="1436748056" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="5.373250" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="30">
      <Property name="Name" value="NAV_NODE26" />
      <Property name="NameHash" value="2280058271" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="7.805585" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="31">
      <Property name="Name" value="NAV_NODE27" />
      <Property name="NameHash" value="2077742465" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="8.008348" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="NAV_NODE28" />
      <Property name="NameHash" value="2881566035" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="5.298176" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="NAV_NODE29" />
      <Property name="NameHash" value="2642876639" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-4.263331" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="NAV_NODE30" />
      <Property name="NameHash" value="384404754" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-1.236030" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="NAV_NODE31" />
      <Property name="NameHash" value="1121903856" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-6.863419" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="NAV_NODE32" />
      <Property name="NameHash" value="1351712853" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-3.255348" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="NAV_NODE33" />
      <Property name="NameHash" value="1845738297" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-25.599998" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-2.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="38">
      <Property name="Name" value="NAV_NODE34" />
      <Property name="NameHash" value="2074990221" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-35.600000" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="3.015660" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="39">
      <Property name="Name" value="NAV_NODE35" />
      <Property name="NameHash" value="2341369422" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.012540" />
        <Property name="TransY" value="16.903710" />
        <Property name="TransZ" value="-0.015651" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="40">
      <Property name="Name" value="RefTradingPost_SupportSLeft" />
      <Property name="NameHash" value="3248446587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="24.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="41">
      <Property name="Name" value="RefTradingPost_SupportSRight" />
      <Property name="NameHash" value="2340831448" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="42.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="42">
      <Property name="Name" value="RefTradingPost_SupportNLeft" />
      <Property name="NameHash" value="4082229363" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="24.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="43">
      <Property name="Name" value="RefTradingPost_SupportNRight" />
      <Property name="NameHash" value="1926549662" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="42.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="44">
      <Property name="Name" value="RefTradingPost_SupportETop" />
      <Property name="NameHash" value="3642400582" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="45">
      <Property name="Name" value="RefTradingPost_SupportEBottom" />
      <Property name="NameHash" value="559395810" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="46">
      <Property name="Name" value="RefTradingPost_SupportWTop" />
      <Property name="NameHash" value="561662143" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="39.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="47">
      <Property name="Name" value="RefTradingPost_SupportWBottom" />
      <Property name="NameHash" value="2407624252" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="39.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="48">
      <Property name="Name" value="SUPPORTCENTERNorth" />
      <Property name="NameHash" value="2974141034" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="-25.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="49">
      <Property name="Name" value="SUPPORTCENTERSouth" />
      <Property name="NameHash" value="620256212" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="25.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="50">
      <Property name="Name" value="SUPPORTCENTEREast" />
      <Property name="NameHash" value="2297775329" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="58.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="51">
      <Property name="Name" value="SUPPORTCENTERWest" />
      <Property name="NameHash" value="3988567309" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="8.000000" />
        <Property name="TransY" value="-5.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="52">
      <Property name="Name" value="VYKEENDOORMODULEN" />
      <Property name="NameHash" value="275716942" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="53">
      <Property name="Name" value="VYKEENDOORMODULES" />
      <Property name="NameHash" value="2357531516" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="54">
      <Property name="Name" value="VYKEENDOORMODULEE" />
      <Property name="NameHash" value="3016843792" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="55">
      <Property name="Name" value="VYKEENDOORMODULEW" />
      <Property name="NameHash" value="2915021" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="56">
      <Property name="Name" value="CorridorNL" />
      <Property name="NameHash" value="784906483" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="24.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="57">
      <Property name="Name" value="CorridorNR" />
      <Property name="NameHash" value="3778223565" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="42.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="58">
      <Property name="Name" value="CorridorSL" />
      <Property name="NameHash" value="4196031571" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="24.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="59">
      <Property name="Name" value="CorridorSR" />
      <Property name="NameHash" value="322866839" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="42.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="60">
      <Property name="Name" value="CorridorEUp" />
      <Property name="NameHash" value="452302127" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="61">
      <Property name="Name" value="CorridorEDown" />
      <Property name="NameHash" value="636474686" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="62">
      <Property name="Name" value="CorridorWUp" />
      <Property name="NameHash" value="1433907553" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="63">
      <Property name="Name" value="CorridorWDown" />
      <Property name="NameHash" value="2282062927" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="64">
      <Property name="Name" value="LandingPadN" />
      <Property name="NameHash" value="2371677110" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEENLANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="65">
      <Property name="Name" value="LandingPadS" />
      <Property name="NameHash" value="1346728328" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="16.400000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEENLANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="66">
      <Property name="Name" value="LandingPadE" />
      <Property name="NameHash" value="1253402212" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEENLANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="67">
      <Property name="Name" value="LandingPadW" />
      <Property name="NameHash" value="2283069686" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="33.000000" />
        <Property name="TransY" value="16.400000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEENLANDINGPAD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="68">
      <Property name="Name" value="LandingPadNL" />
      <Property name="NameHash" value="3021196580" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="17.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="-52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="69">
      <Property name="Name" value="LandingPadNR" />
      <Property name="NameHash" value="3584200745" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="49.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="-52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="70">
      <Property name="Name" value="LandingPadSL" />
      <Property name="NameHash" value="1411681255" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="17.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="71">
      <Property name="Name" value="LandingPadSR" />
      <Property name="NameHash" value="3972906271" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="49.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="72">
      <Property name="Name" value="LandingPadEUp" />
      <Property name="NameHash" value="3615399198" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="86.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="-16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="73">
      <Property name="Name" value="LandingPadEdown" />
      <Property name="NameHash" value="1391576519" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="86.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="74">
      <Property name="Name" value="LandingPadWUp" />
      <Property name="NameHash" value="2034728741" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-19.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="-16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="75">
      <Property name="Name" value="LandingPadWDown" />
      <Property name="NameHash" value="3855571662" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-19.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="76">
      <Property name="Name" value="RefLadder3" />
      <Property name="NameHash" value="312023998" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="42.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.980000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="77">
      <Property name="Name" value="RefLadder" />
      <Property name="NameHash" value="4249009587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-42.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.980000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\ANIMATEDDOORMODULE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\ANIMATEDDOORMODULE" />
  <Property name="NameHash" value="3300670830" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="ANIMATEDDOORROUND" />
      <Property name="NameHash" value="1742008929" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.700000" />
        <Property name="TransZ" value="15.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\ANIMATEDDOOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE" />
  <Property name="NameHash" value="4213764579" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="ANIMATEDDOORSQ" />
      <Property name="NameHash" value="1271375230" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="15.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.400000" />
        <Property name="ScaleY" value="1.300000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\WARRIORPARTS\ANIMATEDDOOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\LANDINGPAD1_LOCATOR" />
  <Property name="NameHash" value="3656970458" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="LANDINGPAD1" />
      <Property name="NameHash" value="672080112" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="15.550000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="LANDINGPADBOTTOM" />
      <Property name="NameHash" value="2226881760" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-17.000000" />
        <Property name="TransY" value="15.200000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="8.500000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="LANDINGpadRailingFrontR" />
      <Property name="NameHash" value="1652419650" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="8.800000" />
        <Property name="TransY" value="15.500000" />
        <Property name="TransZ" value="57.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.700000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="LANDINGpadRailingFrontL" />
      <Property name="NameHash" value="3297849443" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-8.800000" />
        <Property name="TransY" value="15.500000" />
        <Property name="TransZ" value="57.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.700000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="LANDINGpadRailingRightside" />
      <Property name="NameHash" value="1183760843" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="15.500000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="7.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="LANDINGpadRailingLeftside" />
      <Property name="NameHash" value="4047066669" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="15.500000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="7.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="LANDINGpadRailingBack" />
      <Property name="NameHash" value="692609239" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="15.500000" />
        <Property name="TransZ" value="87.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\LANDINGPAD2_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\LANDINGPAD2_LOCATOR" />
  <Property name="NameHash" value="1842776746" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="LANDINGPAD2" />
      <Property name="NameHash" value="403603695" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="15.550000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="LANDINGPADBOTTOM" />
      <Property name="NameHash" value="2226881760" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="15.230000" />
        <Property name="TransZ" value="56.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="8.500000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK1LANDINGPAD_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK1LANDINGPAD_LOCATOR" />
  <Property name="NameHash" value="158816082" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="LANDINGPAD1" />
      <Property name="NameHash" value="672080112" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.550000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="LANDINGPADBOTTOM" />
      <Property name="NameHash" value="2226881760" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.230000" />
        <Property name="TransZ" value="36.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="8.500000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="LANDINGpadRailingFrontR" />
      <Property name="NameHash" value="1652419650" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="8.200000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="36.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.400000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="LANDINGpadRailingFrontL" />
      <Property name="NameHash" value="3297849443" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-8.200000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="36.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.400000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="LANDINGpadRailingRightside" />
      <Property name="NameHash" value="1183760843" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="15.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="53.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="LANDINGpadRailingLeftside" />
      <Property name="NameHash" value="4047066669" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-15.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="53.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="LANDINGpadRailingBack" />
      <Property name="NameHash" value="692609239" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="70.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="7.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK3LANDINGPAD_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK3LANDINGPAD_LOCATOR" />
  <Property name="NameHash" value="3219059809" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="LandingPad3Left" />
      <Property name="NameHash" value="2932225097" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-32.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="-52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="LandingPad3Middle" />
      <Property name="NameHash" value="2776337888" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="-52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="LandingPad3Right" />
      <Property name="NameHash" value="1386028295" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="-52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="LandingPadNL_BOTTOM_E" />
      <Property name="NameHash" value="3066987221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-48.000000" />
        <Property name="TransY" value="16.150000" />
        <Property name="TransZ" value="-52.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="24.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="LANDINGpadRailingFrontR" />
      <Property name="NameHash" value="1652419650" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="24.700000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="36.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="11.700000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="LANDINGpadRailingFrontL" />
      <Property name="NameHash" value="3297849443" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-24.700000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="36.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="11.700000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="LANDINGpadRailingRightside" />
      <Property name="NameHash" value="1183760843" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="48.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="51.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="LANDINGpadRailingLeftside" />
      <Property name="NameHash" value="4047066669" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-48.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="51.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="LANDINGpadRailingBack" />
      <Property name="NameHash" value="692609239" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.500000" />
        <Property name="TransZ" value="67.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="24.200000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEKINTERIOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEKINTERIOR" />
  <Property name="NameHash" value="2236404636" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="TERMINAL" />
      <Property name="NameHash" value="1937015077" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.300000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_TADINGPOST.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="MonitorN" />
      <Property name="NameHash" value="3557624526" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="MonitorS" />
      <Property name="NameHash" value="89287924" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="MonitorE" />
      <Property name="NameHash" value="1887585206" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="MonitorW" />
      <Property name="NameHash" value="1314520834" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="HEALTH" />
      <Property name="NameHash" value="3831097008" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="139.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_HEALTH_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="SHIELD" />
      <Property name="NameHash" value="863301283" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="131.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_SHIELD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="savepoint" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="120.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_SAVEPOINT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="SHIPSALVAGE" />
      <Property name="NameHash" value="2411574526" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="8.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="8.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="CUSTOMIZER" />
      <Property name="NameHash" value="3025946560" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-8.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="8.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="ENGINE" />
      <Property name="NameHash" value="3787129635" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="6.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\SPACE\POI\PARTS\ENGINEREACTOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="ANIMATEDDOORNORTH" />
      <Property name="NameHash" value="1908951268" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="ANIMATEDDOOREAST" />
      <Property name="NameHash" value="3143715036" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="ANIMATEDDOORSOUTH" />
      <Property name="NameHash" value="53488837" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="ANIMATEDDOORWEST" />
      <Property name="NameHash" value="1732690248" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="CHAIR1" />
      <Property name="NameHash" value="1292270299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEK_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="pointLightL" />
      <Property name="NameHash" value="2599933111" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="pointLightR" />
      <Property name="NameHash" value="605873915" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="pointLightFront" />
      <Property name="NameHash" value="821068762" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.000000" />
        <Property name="TransZ" value="-15.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="pointLightBack" />
      <Property name="NameHash" value="2348932709" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.000000" />
        <Property name="TransZ" value="15.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEKLANDINGTUBEMODULE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEKLANDINGTUBEMODULE" />
  <Property name="NameHash" value="1752514342" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="CorridorNE1" />
      <Property name="NameHash" value="2479006367" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-6.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.650000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="CorridorNET" />
      <Property name="NameHash" value="2244609702" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="16.000000" />
        <Property name="TransZ" value="-12.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_TSHAPE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="CorridorNE2" />
      <Property name="NameHash" value="313139312" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="1.300000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.230000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="CorridorNEX" />
      <Property name="NameHash" value="1549579244" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="16.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_XSHAPE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="CorridorSE1" />
      <Property name="NameHash" value="1713172842" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-3.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.360000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="CorridorSET" />
      <Property name="NameHash" value="1296777167" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="16.000000" />
        <Property name="TransZ" value="19.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_TSHAPE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="CorridorSE2" />
      <Property name="NameHash" value="3420372212" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="37.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="14.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.550000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK_CHAIR_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK_CHAIR_LOCATOR" />
  <Property name="NameHash" value="2100545963" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Chair1" />
      <Property name="NameHash" value="1292270299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="1.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="11.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Table" />
      <Property name="NameHash" value="1473230115" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="11.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\SMALLHEXTABLE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Chair2" />
      <Property name="NameHash" value="1533056911" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-1.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="11.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK_HEALTH_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK_HEALTH_LOCATOR" />
  <Property name="NameHash" value="4085131307" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="HEALTH" />
      <Property name="NameHash" value="3831097008" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="10.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\HEALTHSTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SHIELDBack" />
      <Property name="NameHash" value="3194146854" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="10.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="WALLPANEL" />
      <Property name="NameHash" value="600212025" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="10.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK_MONITORSTATION_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK_MONITORSTATION_LOCATOR" />
  <Property name="NameHash" value="4217569664" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="MONITORSTATION" />
      <Property name="NameHash" value="1066161749" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="4.500000" />
        <Property name="TransZ" value="13.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="180.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="2.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK_PLATFORM.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK_PLATFORM" />
  <Property name="NameHash" value="2941561011" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Light" />
      <Property name="NameHash" value="3575991963" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="18.1076126" />
        <Property name="TransY" value="9.051993" />
				<Property name="TransZ" value="12.6288452" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6336" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3434" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3501" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1788" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1804" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="3575991963" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="LightShape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
            <Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Light1" />
      <Property name="NameHash" value="3820849344" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="23.6489525" />
				<Property name="TransY" value="16.6624565" />
				<Property name="TransZ" value="12.7217979" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6516" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3502" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3569" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1804" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1820" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
					<Property name="Value" value="3820849344" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Light1Shape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
            <Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Light2" />
      <Property name="NameHash" value="689640314" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="23.6489525" />
				<Property name="TransY" value="16.6624565" />
				<Property name="TransZ" value="-12.7292566" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6696" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3570" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3637" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1820" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1836" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
					<Property name="Value" value="689640314" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Light2Shape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
						<Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="Light3" />
      <Property name="NameHash" value="444495425" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="18.1076126" />
        <Property name="TransY" value="9.051993" />
				<Property name="TransZ" value="-12.6311092" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6876" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3638" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3705" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1836" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1852" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
					<Property name="Value" value="444495425" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Light3Shape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
            <Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="Data" />
      <Property name="NameHash" value="2810148397" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|Collision2" />
					<Property name="NameHash" value="4029056343" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="21.8507175" />
            <Property name="TransY" value="0.956589" />
						<Property name="TransZ" value="12.9872942" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="180.000000" />
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
              <Property name="Value" value="Mesh" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="BATCHSTART" />
              <Property name="Value" value="2592" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="276" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="VERTRSTART" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTREND" />
              <Property name="Value" value="127" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="128" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|collision1" />
					<Property name="NameHash" value="32352485" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="21.8507175" />
            <Property name="TransY" value="0.956589" />
						<Property name="TransZ" value="-12.9872913" />
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
              <Property name="Value" value="Mesh" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="BATCHSTART" />
              <Property name="Value" value="2316" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="276" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="VERTRSTART" />
              <Property name="Value" value="128" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTREND" />
              <Property name="Value" value="255" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="128" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="256" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|collision" />
					<Property name="NameHash" value="3579039919" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="13.3508015" />
            <Property name="TransY" value="0.963270" />
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
              <Property name="Value" value="Mesh" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="BATCHSTART" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="2316" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="VERTRSTART" />
              <Property name="Value" value="256" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTREND" />
              <Property name="Value" value="1615" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="256" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="1616" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="Layout_" />
      <Property name="NameHash" value="591504117" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="TriggerVolume" />
      <Property name="NameHash" value="3846031098" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.475500" />
        <Property name="TransY" value="19.279720" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|CollisionBox" />
					<Property name="NameHash" value="152462705" />
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
              <Property name="Value" value="Box" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="17.848999" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="5.661149" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="28.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="RefTradingPost_SupportN" />
      <Property name="NameHash" value="1950080726" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="RefTradingPost_SupportS" />
      <Property name="NameHash" value="377758572" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="RefTradingPost_SupportNE" />
      <Property name="NameHash" value="1491750916" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="RefTradingPost_SupportE" />
      <Property name="NameHash" value="1562947768" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="RefTradingPost_SupportSE" />
      <Property name="NameHash" value="1631510489" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="RefTradingPost_SupportNW" />
      <Property name="NameHash" value="2944531742" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-32.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="RefTradingPost_SupportW" />
      <Property name="NameHash" value="4014658806" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="RefTradingPost_SupportSW" />
      <Property name="NameHash" value="821821164" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-2.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="SUPPORTCENTERNE" />
      <Property name="NameHash" value="1258573977" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="SUPPORTCENTERNW" />
      <Property name="NameHash" value="3685904895" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="SUPPORTCENTERSE" />
      <Property name="NameHash" value="2283098250" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="SUPPORTCENTERSW" />
      <Property name="NameHash" value="2051585317" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="CorridorN" />
      <Property name="NameHash" value="4189230506" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="CorridorS" />
      <Property name="NameHash" value="1376503411" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="CorridorE" />
      <Property name="NameHash" value="3562621712" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="CorridorW" />
      <Property name="NameHash" value="2579060173" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="GEKLANDINGTUBEMODULEE" />
      <Property name="NameHash" value="1650912515" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEKLANDINGTUBEMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="GEKLANDINGTUBEMODULEW" />
      <Property name="NameHash" value="683932054" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\GEK\GEKLANDINGTUBEMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="LandingPadNL_BOTTOM_N" />
      <Property name="NameHash" value="3701198399" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="-72.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="8.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="LandingPadNL_BOTTOM_S" />
      <Property name="NameHash" value="579787304" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="8.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="LandingPadNL_BOTTOM_E" />
      <Property name="NameHash" value="3066987221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="72.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="-48.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="24.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="LandingPadNL_BOTTOM_W" />
      <Property name="NameHash" value="1503414334" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-72.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="-48.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="24.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="30">
      <Property name="Name" value="LandingPadN" />
      <Property name="NameHash" value="2371677110" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="-72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="31">
      <Property name="Name" value="LandingPadS" />
      <Property name="NameHash" value="1346728328" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="LandingPadE" />
      <Property name="NameHash" value="1253402212" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="LandingPadW" />
      <Property name="NameHash" value="2283069686" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="LandingPadNE" />
      <Property name="NameHash" value="285443822" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="-32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="LandingPadNW" />
      <Property name="NameHash" value="268895473" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="-32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="LandingPadSE" />
      <Property name="NameHash" value="22701680" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="LandingPadSW" />
      <Property name="NameHash" value="4023698221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="32.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="38">
      <Property name="Name" value="RefLadder4" />
      <Property name="NameHash" value="406464256" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="22.3750534" />
        <Property name="TransY" value="9.000000" />
				<Property name="TransZ" value="12.7689209" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="39">
      <Property name="Name" value="RefLadder3" />
      <Property name="NameHash" value="312023998" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="17.0618668" />
        <Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="12.6386585" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="40">
      <Property name="Name" value="RefLadder2" />
      <Property name="NameHash" value="2216525509" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="22.3750534" />
        <Property name="TransY" value="9.000000" />
				<Property name="TransZ" value="-12.7596169" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="41">
      <Property name="Name" value="RefLadder" />
      <Property name="NameHash" value="4249009587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="17.0618668" />
        <Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="-12.6037226" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\LADDER.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK_SAVEPOINT_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK_SAVEPOINT_LOCATOR" />
  <Property name="NameHash" value="190132921" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SAVEPOINT" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="10.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.900000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.900000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK_SHIELD_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK_SHIELD_LOCATOR" />
  <Property name="NameHash" value="423659891" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SHIELD" />
      <Property name="NameHash" value="863301283" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="10.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\SHIELDSTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SHIELDBack" />
      <Property name="NameHash" value="3194146854" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="10.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="WALLPANEL" />
      <Property name="NameHash" value="600212025" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="10.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GEK_WINDOWMODULE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GEK_WINDOWMODULE" />
  <Property name="NameHash" value="296917848" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="GLASS1" />
      <Property name="NameHash" value="1806993771" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.800000" />
        <Property name="TransY" value="1.900000" />
        <Property name="TransZ" value="2.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="90.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.480000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="GLASS2" />
      <Property name="NameHash" value="2638179456" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.800000" />
        <Property name="TransY" value="1.900000" />
        <Property name="TransZ" value="-0.80000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="90.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.480000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="GLASSCENTER" />
      <Property name="NameHash" value="3088221904" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.800000" />
        <Property name="TransY" value="2.580000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.400000" />
        <Property name="ScaleY" value="0.360000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\GLASSTUNNELGEK_LOCATOR" />
  <Property name="NameHash" value="737589876" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="GLASSTUNNELGEK" />
      <Property name="NameHash" value="1941357865" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.350000" />
        <Property name="TransZ" value="25.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="5.550000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\CORRIDOR_STRAIGHT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\GEK\PANELGLASSGEK_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\GEK\PANELGLASSGEK_LOCATOR" />
  <Property name="NameHash" value="2382602546" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">>
      <Property name="Name" value="PANELGLASSGEK" />
      <Property name="NameHash" value="523679054" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="6.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\CORRIDORCONNECTORKORVAX_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\CORRIDORCONNECTORKORVAX_LOCATOR" />
  <Property name="NameHash" value="2920327382" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="2569483507" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="CORRIDORCONNECTKORVAX" />
          <Property name="NameHash" value="2802320285" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="5.500000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="90.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="0.100000" />
            <Property name="ScaleY" value="0.400000" />
            <Property name="ScaleZ" value="0.400000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\CORRIDORKORVAX_LOCATOR" />
  <Property name="NameHash" value="3379494115" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="CORRIDOR" />
      <Property name="NameHash" value="3739456601" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="15.500000" />
        <Property name="TransZ" value="24.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="5.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.900000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="CORRIDOR" />
      <Property name="NameHash" value="3739456601" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="15.500000" />
        <Property name="TransZ" value="44.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.100000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.900000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\KORVAXFRAME.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\KORVAXFRAME" />
  <Property name="NameHash" value="2999107432" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SnapGroup_WallN" />
      <Property name="NameHash" value="2486569120" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="2.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="RefBiomeRoom_Wall3" />
          <Property name="NameHash" value="735860893" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\BRIDGE_GLASSWALL.SCENE.MBIN" />
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
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SnapGroup_WallS" />
      <Property name="NameHash" value="361433928" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="2.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="RefBiomeRoom_WallS" />
          <Property name="NameHash" value="3860909359" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\BRIDGE_GLASSWALL.SCENE.MBIN" />
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
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="SnapGroup_WallE" />
      <Property name="NameHash" value="946098426" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="2.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="RefBiomeRoom_Wall2" />
          <Property name="NameHash" value="496614424" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\BRIDGE_GLASSWALL.SCENE.MBIN" />
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
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="SnapGroup_WallW" />
      <Property name="NameHash" value="791428714" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="2.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="RefBiomeRoom_WallW" />
          <Property name="NameHash" value="552256194" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\BRIDGE_GLASSWALL.SCENE.MBIN" />
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
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="Audio_BioDome" />
      <Property name="NameHash" value="2010029680" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM\ENTITIES\AUDIO_BIODOME.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="Interaction" />
      <Property name="NameHash" value="2476508076" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="2.493333" />
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
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM\ENTITIES\INTERACTION.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM" />
          <Property name="NameHash" value="2419627813" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="40.000000" />
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
              <Property name="Value" value="0.654391" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="SnapGroup_Door1clockwise" />
      <Property name="NameHash" value="2587731029" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-22.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="SnapGroup_Door2" />
      <Property name="NameHash" value="2489952414" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-67.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="SnapGroup_DoorE" />
      <Property name="NameHash" value="188225077" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-112.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="SnapGroup_DoorW" />
      <Property name="NameHash" value="671993820" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-157.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="SnapGroup_DoorNW" />
      <Property name="NameHash" value="825273855" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="157.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="SnapGroup_DoorNE" />
      <Property name="NameHash" value="3205286325" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="112.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="SnapGroup_DoorSW" />
      <Property name="NameHash" value="4235117460" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="67.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="SnapGroup_DoorSE" />
      <Property name="NameHash" value="2361320478" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="22.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="doorGlassUpper1" />
      <Property name="NameHash" value="208248168" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="doorGlassUpper" />
      <Property name="NameHash" value="4087366599" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="doorGlassUpper" />
      <Property name="NameHash" value="4087366599" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="doorGlassUpper" />
      <Property name="NameHash" value="4087366599" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="doorGlassUpper" />
      <Property name="NameHash" value="4087366599" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="doorGlassUpper" />
      <Property name="NameHash" value="4087366599" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="doorGlassUpper" />
      <Property name="NameHash" value="4087366599" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="doorGlassUpper" />
      <Property name="NameHash" value="4087366599" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="Floor Ring" />
      <Property name="NameHash" value="90838373" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.080000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.050000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\KORVAX\FLOOR_RING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="Floor Ring 2" />
      <Property name="NameHash" value="1083711612" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.080000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="0.050000" />
        <Property name="ScaleZ" value="1.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSTATION\KORVAX\FLOOR_RING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="pattern floor1" />
      <Property name="NameHash" value="3327848943" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.100000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.300000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_FLOOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\KORVAXINTERIOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\KORVAXINTERIOR" />
  <Property name="NameHash" value="2392830737" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="TERMINAL" />
      <Property name="NameHash" value="1937015077" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.300000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_TADINGPOST.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="MonitorN" />
      <Property name="NameHash" value="3557624526" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="MonitorS" />
      <Property name="NameHash" value="89287924" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="MonitorE" />
      <Property name="NameHash" value="1887585206" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="MonitorW" />
      <Property name="NameHash" value="1314520834" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="HEALTH" />
      <Property name="NameHash" value="3831097008" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-112.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_HEALTH_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="SHIELD" />
      <Property name="NameHash" value="863301283" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-105.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_SHIELD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="savepoint" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-120.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_SAVEPOINT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="SHIPSALVAGE" />
      <Property name="NameHash" value="2411574526" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="10.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-157.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="CUSTOMIZER" />
      <Property name="NameHash" value="3025946560" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="10.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="157.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="ENGINE" />
      <Property name="NameHash" value="3787129635" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="6.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\SPACE\POI\PARTS\ENGINEREACTOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="ANIMATEDDOORNORTH" />
      <Property name="NameHash" value="1908951268" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="ANIMATEDDOORNorthEAST" />
      <Property name="NameHash" value="1347869345" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="ANIMATEDDOOREAST" />
      <Property name="NameHash" value="3143715036" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="ANIMATEDDOORSouthEAST" />
      <Property name="NameHash" value="2993671243" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="ANIMATEDDOORSOUTH" />
      <Property name="NameHash" value="53488837" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="ANIMATEDDOORSouthWEST" />
      <Property name="NameHash" value="94578487" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="ANIMATEDDOORWEST" />
      <Property name="NameHash" value="1732690248" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="ANIMATEDDOORNorthWEST" />
      <Property name="NameHash" value="893507306" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="CHAIR1" />
      <Property name="NameHash" value="1292270299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="163.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="CHAIR2" />
      <Property name="NameHash" value="1533056911" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="158.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="CHAIR3" />
      <Property name="NameHash" value="2983380082" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="153.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="CHAIR4" />
      <Property name="NameHash" value="3482320876" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-163.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="CHAIR5" />
      <Property name="NameHash" value="2523794857" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-158.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="CHAIR6" />
      <Property name="NameHash" value="2753800468" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-153.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="CHAIR7" />
      <Property name="NameHash" value="3248940050" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-73.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="CHAIR8" />
      <Property name="NameHash" value="3486875767" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-68.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="CHAIR9" />
      <Property name="NameHash" value="2789354825" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-63.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="CHAIR10" />
      <Property name="NameHash" value="529245522" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="118.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="CHAIR11" />
      <Property name="NameHash" value="289507518" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="113.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="30">
      <Property name="Name" value="CHAIR12" />
      <Property name="NameHash" value="2196892701" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="108.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="31">
      <Property name="Name" value="CHAIR13" />
      <Property name="NameHash" value="1987892019" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="73.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="CHAIR14" />
      <Property name="NameHash" value="1764079749" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="68.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="CHAIR15" />
      <Property name="NameHash" value="1509366312" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="63.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="pointLightL" />
      <Property name="NameHash" value="2599933111" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="pointLightR" />
      <Property name="NameHash" value="605873915" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="pointLightFront" />
      <Property name="NameHash" value="821068762" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.000000" />
        <Property name="TransZ" value="-15.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="pointLightBack" />
      <Property name="NameHash" value="2348932709" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.000000" />
        <Property name="TransZ" value="15.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\KORVAX_CHAIR_LOCATOR" />
  <Property name="NameHash" value="272221330" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Chair1" />
      <Property name="NameHash" value="1292270299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="14.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\KORVAX_HEALTH_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\KORVAX_HEALTH_LOCATOR" />
  <Property name="NameHash" value="342511919" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="HEALTH" />
      <Property name="NameHash" value="3831097008" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\HEALTHSTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SHIELDBack" />
      <Property name="NameHash" value="3194146854" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="13.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="WALLPANEL" />
      <Property name="NameHash" value="600212025" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\KORVAX_MONITORSTATION_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\KORVAX_MONITORSTATION_LOCATOR" />
  <Property name="NameHash" value="3758623833" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="MONITORSTATION" />
      <Property name="NameHash" value="1066161749" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="7.000000" />
        <Property name="TransZ" value="13.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="180.000000" />
        <Property name="ScaleX" value="2.700000" />
        <Property name="ScaleY" value="2.700000" />
        <Property name="ScaleZ" value="2.700000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\KORVAX_SAVEPOINT_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\KORVAX_SAVEPOINT_LOCATOR" />
  <Property name="NameHash" value="3118407952" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SAVEPOINT" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="12.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.900000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.900000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\KORVAX_SHIELD_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\KORVAX_SHIELD_LOCATOR" />
  <Property name="NameHash" value="2508438360" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SHIELD" />
      <Property name="NameHash" value="863301283" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\SHIELDSTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SHIELDBack" />
      <Property name="NameHash" value="3194146854" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="13.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="WALLPANEL" />
      <Property name="NameHash" value="600212025" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSKORVAX" />
  <Property name="NameHash" value="150076754" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="PANELGLASSKORVAX" />
      <Property name="NameHash" value="3455471165" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.100000" />
        <Property name="TransZ" value="6.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.780000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\PANELGLASSUPPERKORVAX_LOCATOR" />
  <Property name="NameHash" value="1283993559" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="PANELGLASSUPPERKORVAX" />
      <Property name="NameHash" value="1194341559" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.200000" />
        <Property name="TransZ" value="5.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.350000" />
        <Property name="ScaleY" value="0.400000" />
        <Property name="ScaleZ" value="0.100000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\KORVAX\SUPPORTKORVAX_LOCATOR" />
  <Property name="NameHash" value="4127601267" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SUPPORT" />
      <Property name="NameHash" value="3338011294" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.900000" />
        <Property name="TransZ" value="58.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.200000" />
        <Property name="ScaleY" value="1.200000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_SUPPORT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\LOCATORS\SUPPORTCENTER_LOCATOR" />
  <Property name="NameHash" value="391432284" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SUPPORTCENTER" />
      <Property name="NameHash" value="2845658126" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.500000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="1.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_SUPPORT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\LOCATORS\SUPPORT_LOCATOR" />
  <Property name="NameHash" value="497439163" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SUPPORT" />
      <Property name="NameHash" value="3338011294" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.500000" />
        <Property name="TransZ" value="40.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.200000" />
        <Property name="ScaleY" value="1.200000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_SUPPORT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR" />
  <Property name="NameHash" value="1391534545" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="CORRIDOR" />
      <Property name="NameHash" value="3739456601" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="31.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.850000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\PANELGLASSVYKEEN_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\PANELGLASSVYKEEN_LOCATOR" />
  <Property name="NameHash" value="1853730606" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="PANELGLASS" />
      <Property name="NameHash" value="2744578156" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="6.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR" />
  <Property name="NameHash" value="2468856063" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SUPPORT" />
      <Property name="NameHash" value="3338011294" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.500000" />
        <Property name="TransZ" value="38.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.200000" />
        <Property name="ScaleY" value="1.200000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_SUPPORT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEENFRAME.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEENFRAME" />
  <Property name="NameHash" value="3972666002" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\MAINROOMCUBE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SnapGroup_ConnectN" />
      <Property name="NameHash" value="3631338615" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.520000" />
        <Property name="TransZ" value="-5.750000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.200000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.400000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_CORRIDORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SnapGroup_ConnectS" />
      <Property name="NameHash" value="1451511970" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.520000" />
        <Property name="TransZ" value="5.750000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.200000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.400000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_CORRIDORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="SnapGroup_ConnectE" />
      <Property name="NameHash" value="1405405991" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="5.750000" />
        <Property name="TransY" value="0.520000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.200000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.400000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_CORRIDORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="SnapGroup_ConnectW" />
      <Property name="NameHash" value="562751152" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.750000" />
        <Property name="TransY" value="0.520000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.200000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.400000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_CORRIDORCONNECT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="VYKEENWINDOWMODULES" />
      <Property name="NameHash" value="267199257" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_WINDOWMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="VYKEENWINDOWMODULEN" />
      <Property name="NameHash" value="1460482392" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_WINDOWMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="VYKEENWINDOWMODULEE" />
      <Property name="NameHash" value="3597053961" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_WINDOWMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="VYKEENWINDOWMODULEE" />
      <Property name="NameHash" value="3597053961" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_WINDOWMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="SnapGroup_PanelNE" />
      <Property name="NameHash" value="3303348508" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.693020" />
        <Property name="TransY" value="0.507004" />
        <Property name="TransZ" value="-4.693020" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANELCORNER_DEFAULT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="SnapGroup_PanelNW" />
      <Property name="NameHash" value="1146951710" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.693020" />
        <Property name="TransY" value="0.507004" />
        <Property name="TransZ" value="-4.693020" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANELCORNER_DEFAULT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="SnapGroup_PanelSE" />
      <Property name="NameHash" value="893105776" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.693025" />
        <Property name="TransY" value="0.507004" />
        <Property name="TransZ" value="4.693025" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANELCORNER_DEFAULT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="SnapGroup_PanelSW" />
      <Property name="NameHash" value="1967339142" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.693025" />
        <Property name="TransY" value="0.507004" />
        <Property name="TransZ" value="4.693025" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANELCORNER_DEFAULT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="MainRoomCube" />
      <Property name="NameHash" value="891654678" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\MAINROOMCUBE_FRAME_VYKEEN.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="Roof" />
      <Property name="NameHash" value="3929222343" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROMM_ROOF.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="RoomFloor" />
      <Property name="NameHash" value="1272914528" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.270000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.100000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.100000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM_FLOOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="CeilingCap" />
      <Property name="NameHash" value="2090476231" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="4.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_CIELINGCAP.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="SnapGroup_RoomLadderHatch2" />
      <Property name="NameHash" value="359409074" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="4.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LADDERHATCH.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEENINTERIOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEENINTERIOR" />
  <Property name="NameHash" value="4171559612" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="TERMINAL" />
      <Property name="NameHash" value="1937015077" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.300000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_TADINGPOST.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="MonitorN" />
      <Property name="NameHash" value="3557624526" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="MonitorS" />
      <Property name="NameHash" value="89287924" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="MonitorE" />
      <Property name="NameHash" value="1887585206" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="MonitorW" />
      <Property name="NameHash" value="1314520834" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_MONITORSTATION_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="HEALTH" />
      <Property name="NameHash" value="3831097008" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="145.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_HEALTH_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="SHIELD" />
      <Property name="NameHash" value="863301283" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_SHIELD_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="savepoint" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="125.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_SAVEPOINT_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="SHIPSALVAGE" />
      <Property name="NameHash" value="2411574526" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="8.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="8.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="CUSTOMIZER" />
      <Property name="NameHash" value="3025946560" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-8.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="8.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="ENGINE" />
      <Property name="NameHash" value="3787129635" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="6.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\SPACE\POI\PARTS\ENGINEREACTOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="ANIMATEDDOORNORTH" />
      <Property name="NameHash" value="1908951268" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="ANIMATEDDOOREAST" />
      <Property name="NameHash" value="3143715036" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="ANIMATEDDOORSOUTH" />
      <Property name="NameHash" value="53488837" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="ANIMATEDDOORWEST" />
      <Property name="NameHash" value="1732690248" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\ANIMATEDDOORSQMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="CHAIR1" />
      <Property name="NameHash" value="1292270299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="4.100000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="CHAIR2" />
      <Property name="NameHash" value="1533056911" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-4.100000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="CHAIR3" />
      <Property name="NameHash" value="2983380082" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="4.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="CHAIR4" />
      <Property name="NameHash" value="3482320876" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-4.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="CHAIR5" />
      <Property name="NameHash" value="2523794857" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.100000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="CHAIR6" />
      <Property name="NameHash" value="2753800468" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.100000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="CHAIR7" />
      <Property name="NameHash" value="3248940050" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.100000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="CHAIR8" />
      <Property name="NameHash" value="3486875767" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.100000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="pointLightL" />
      <Property name="NameHash" value="2599933111" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="pointLightR" />
      <Property name="NameHash" value="605873915" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="pointLightFront" />
      <Property name="NameHash" value="821068762" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.000000" />
        <Property name="TransZ" value="-15.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="pointLightBack" />
      <Property name="NameHash" value="2348932709" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="20.000000" />
        <Property name="TransZ" value="15.000000" />
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
          <Property name="Value" value="linear" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="50000.000000" />
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
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="shipstatuesilver" />
      <Property name="NameHash" value="3707321638" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="5.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="5.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STATUE_SHIP_S.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="shipstatuegold" />
      <Property name="NameHash" value="25662179" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="5.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="5.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STATUE_SHIP_G.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="shipstatuebronze" />
      <Property name="NameHash" value="139444940" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="5.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="5.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STATUE_SHIP_B.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEENLANDINGPAD_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEENLANDINGPAD_LOCATOR" />
  <Property name="NameHash" value="3932586101" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="LandingPadSL" />
      <Property name="NameHash" value="1411681255" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="17.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="LandingPadSR" />
      <Property name="NameHash" value="3972906271" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-17.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="LandingPadNL_BOTTOM_S" />
      <Property name="NameHash" value="579787304" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-32.000000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="16.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="LANDINGpadRailingFrontR" />
      <Property name="NameHash" value="1652419650" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="21.300000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="37.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="5.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="LANDINGpadRailingcenter" />
      <Property name="NameHash" value="2370269683" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="37.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.900000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="LANDINGpadRailingFrontL" />
      <Property name="NameHash" value="3297849443" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-21.300000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="37.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="5.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="LANDINGpadRailingRightside" />
      <Property name="NameHash" value="1183760843" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="7.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="LANDINGpadRailingLeftside" />
      <Property name="NameHash" value="4047066669" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-32.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="52.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="7.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="LANDINGpadRailingBack" />
      <Property name="NameHash" value="692609239" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.200000" />
        <Property name="TransZ" value="67.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="16.000000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\RAILING.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_CHAIR_LOCATOR" />
  <Property name="NameHash" value="1378535092" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Chair1" />
      <Property name="NameHash" value="1292270299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="1.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="12.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Table" />
      <Property name="NameHash" value="1473230115" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="12.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\SMALLHEXTABLE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Chair2" />
      <Property name="NameHash" value="1533056911" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-1.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="12.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE" />
  <Property name="NameHash" value="79069214" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="DOORCORRIDORL1" />
      <Property name="NameHash" value="2749760734" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="23.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.600000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="LSHAPEL" />
      <Property name="NameHash" value="342034301" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="19.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_LSHAPE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="DOORCORRIDORL2" />
      <Property name="NameHash" value="3053988130" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.500000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="19.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.600000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="TSHAPE" />
      <Property name="NameHash" value="3860348219" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="19.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_TSHAPE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="doorcorr" />
      <Property name="NameHash" value="3330471114" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="15.600000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="DOORCORRIDORR" />
      <Property name="NameHash" value="3797864639" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.500000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="19.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.600000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="LSHAPER" />
      <Property name="NameHash" value="3291834143" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="19.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_LSHAPE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="DOORCORRIDORR1" />
      <Property name="NameHash" value="2945261460" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.000000" />
        <Property name="TransY" value="16.400000" />
        <Property name="TransZ" value="23.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.600000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CORRIDOR_STRAIGHT_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_HEALTH_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_HEALTH_LOCATOR" />
  <Property name="NameHash" value="1528528285" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="HEALTH" />
      <Property name="NameHash" value="3831097008" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\HEALTHSTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SHIELDBack" />
      <Property name="NameHash" value="3194146854" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="13.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="WALLPANEL" />
      <Property name="NameHash" value="600212025" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_MONITORSTATION_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_MONITORSTATION_LOCATOR" />
  <Property name="NameHash" value="2445077719" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="MONITORSTATION" />
      <Property name="NameHash" value="1066161749" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="4.500000" />
        <Property name="TransZ" value="13.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="180.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="2.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_PLATFORM.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_PLATFORM" />
  <Property name="NameHash" value="1947275968" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Light" />
      <Property name="NameHash" value="3575991963" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="18.1076126" />
        <Property name="TransY" value="9.051993" />
				<Property name="TransZ" value="12.6288452" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6336" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3434" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3501" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1788" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1804" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
					<Property name="Value" value="3575991963" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="LightShape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
            <Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Light1" />
      <Property name="NameHash" value="3820849344" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="23.6489525" />
				<Property name="TransY" value="16.6624565" />
				<Property name="TransZ" value="12.7217979" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6516" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3502" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3569" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1804" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1820" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
					<Property name="Value" value="3820849344" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Light1Shape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
            <Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Light2" />
      <Property name="NameHash" value="689640314" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="23.6489525" />
				<Property name="TransY" value="16.6624565" />
				<Property name="TransZ" value="-12.7292566" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6696" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3570" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3637" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1820" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1836" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
					<Property name="Value" value="689640314" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Light2Shape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
            <Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="Light3" />
      <Property name="NameHash" value="444495425" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="18.1076126" />
        <Property name="TransY" value="9.051993" />
				<Property name="TransZ" value="-12.6311092" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.048913" />
        <Property name="ScaleY" value="0.021477" />
        <Property name="ScaleZ" value="0.255941" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="6876" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3638" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3705" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="180" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="67" />
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
          <Property name="Value" value="1836" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1852" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.346563" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.346602" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.346577" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
					<Property name="Value" value="444495425" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\PHONG37.MATERIAL.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Light3Shape" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.232708" />
            <Property name="TransY" value="13.744730" />
            <Property name="TransZ" value="0.022668" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="20.444330" />
            <Property name="ScaleY" value="46.562088" />
            <Property name="ScaleZ" value="3.907145" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="9000.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.211700" />
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
      </Property>
    </Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="Data" />
      <Property name="NameHash" value="2810148397" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|Collision2" />
					<Property name="NameHash" value="4029056343" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="21.8507175" />
            <Property name="TransY" value="0.956589" />
						<Property name="TransZ" value="12.9872942" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="180.000000" />
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
              <Property name="Value" value="Mesh" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="BATCHSTART" />
              <Property name="Value" value="2592" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="276" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="VERTRSTART" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTREND" />
              <Property name="Value" value="127" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="128" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|collision1" />
					<Property name="NameHash" value="32352485" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="21.8507175" />
            <Property name="TransY" value="0.956589" />
						<Property name="TransZ" value="-12.9872913" />
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
              <Property name="Value" value="Mesh" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="BATCHSTART" />
              <Property name="Value" value="2316" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="276" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="VERTRSTART" />
              <Property name="Value" value="128" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTREND" />
              <Property name="Value" value="255" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="128" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="256" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|collision" />
					<Property name="NameHash" value="3579039919" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="13.3508015" />
            <Property name="TransY" value="0.963270" />
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
              <Property name="Value" value="Mesh" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="BATCHSTART" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="2316" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="VERTRSTART" />
              <Property name="Value" value="256" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTREND" />
              <Property name="Value" value="1615" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="256" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="1616" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="Layout_" />
      <Property name="NameHash" value="591504117" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="TriggerVolume" />
      <Property name="NameHash" value="3846031098" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="32.475500" />
        <Property name="TransY" value="19.279720" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON|CollisionBox" />
					<Property name="NameHash" value="152462705" />
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
              <Property name="Value" value="Box" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="17.848999" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="5.661149" />
            </Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="28.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="NAV_NODE4" />
      <Property name="NameHash" value="3545714923" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.000000" />
        <Property name="TransY" value="16.000000" />
        <Property name="TransZ" value="2.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="NAV_NODE3" />
      <Property name="NameHash" value="2845638007" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.000000" />
        <Property name="TransY" value="16.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="NAV_NODE2" />
      <Property name="NameHash" value="2009143744" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.000000" />
        <Property name="TransY" value="16.000000" />
        <Property name="TransZ" value="-2.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="NAV_NODE1" />
      <Property name="NameHash" value="730038586" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.000000" />
        <Property name="TransY" value="16.000000" />
        <Property name="TransZ" value="-4.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="50.000000" />
        <Property name="ScaleY" value="50.000000" />
        <Property name="ScaleZ" value="50.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="RefTradingPost_SupportN" />
      <Property name="NameHash" value="1950080726" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="RefTradingPost_SupportS" />
      <Property name="NameHash" value="377758572" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="RefTradingPost_SupportE" />
      <Property name="NameHash" value="1562947768" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="RefTradingPost_SupportW" />
      <Property name="NameHash" value="4014658806" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="RefTradingPost_SupportNE" />
      <Property name="NameHash" value="1491750916" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="RefTradingPost_SupportNW" />
      <Property name="NameHash" value="2944531742" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="RefTradingPost_SupportSE" />
      <Property name="NameHash" value="1631510489" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="RefTradingPost_SupportSW" />
      <Property name="NameHash" value="821821164" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="SUPPORTCENTERNE" />
      <Property name="NameHash" value="1258573977" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="SUPPORTCENTERNW" />
      <Property name="NameHash" value="3685904895" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="SUPPORTCENTERSE" />
      <Property name="NameHash" value="2283098250" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="SUPPORTCENTERSW" />
      <Property name="NameHash" value="2051585317" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\SUPPORTCENTER_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="VYKEENDOORMODULES" />
      <Property name="NameHash" value="2357531516" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="VYKEENDOORMODULEN" />
      <Property name="NameHash" value="275716942" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="VYKEENDOORMODULEE" />
      <Property name="NameHash" value="3016843792" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="VYKEENDOORMODULEE" />
      <Property name="NameHash" value="3016843792" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_DOORMODULE.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="CorridorNL" />
      <Property name="NameHash" value="784906483" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="CorridorNR" />
      <Property name="NameHash" value="3778223565" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="30">
      <Property name="Name" value="CorridorSL" />
      <Property name="NameHash" value="4196031571" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="31">
      <Property name="Name" value="CorridorSR" />
      <Property name="NameHash" value="322866839" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="CorridorEUp" />
      <Property name="NameHash" value="452302127" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="CorridorEDown" />
      <Property name="NameHash" value="636474686" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="CorridorWUp" />
      <Property name="NameHash" value="1433907553" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="CorridorWDown" />
      <Property name="NameHash" value="2282062927" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="9.000000" />
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
          <Property name="Value" value="MODELS\ASTROSTATION\VYKEEN\CORRIDORVYKEEN_LOCATOR.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="LandingPadNL_BOTTOM_N" />
      <Property name="NameHash" value="3701198399" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-32.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="-72.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="16.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="LandingPadNL_BOTTOM_S" />
      <Property name="NameHash" value="579787304" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-32.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="16.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="38">
      <Property name="Name" value="LandingPadNL_BOTTOM_E" />
      <Property name="NameHash" value="3066987221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="72.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="-32.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="16.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="39">
      <Property name="Name" value="LandingPadNL_BOTTOM_W" />
      <Property name="NameHash" value="1503414334" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-72.000000" />
        <Property name="TransY" value="20.200000" />
        <Property name="TransZ" value="-32.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="8.000000" />
        <Property name="ScaleY" value="16.000000" />
        <Property name="ScaleZ" value="4.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD_BOTTOM.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="40">
      <Property name="Name" value="LandingPadNL" />
      <Property name="NameHash" value="3021196580" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="-72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="41">
      <Property name="Name" value="LandingPadNR" />
      <Property name="NameHash" value="3584200745" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="-72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="42">
      <Property name="Name" value="LandingPadSL" />
      <Property name="NameHash" value="1411681255" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="43">
      <Property name="Name" value="LandingPadSR" />
      <Property name="NameHash" value="3972906271" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="72.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="44">
      <Property name="Name" value="LandingPadEUp" />
      <Property name="NameHash" value="3615399198" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="-16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="45">
      <Property name="Name" value="LandingPadEdown" />
      <Property name="NameHash" value="1391576519" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="46">
      <Property name="Name" value="LandingPadWUp" />
      <Property name="NameHash" value="2034728741" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="-16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD1.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="47">
      <Property name="Name" value="LandingPadWDown" />
      <Property name="NameHash" value="3855571662" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-72.000000" />
        <Property name="TransY" value="20.500000" />
        <Property name="TransZ" value="16.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSTATION\LANDINGPAD2.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_SAVEPOINT_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_SAVEPOINT_LOCATOR" />
  <Property name="NameHash" value="3041704481" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SAVEPOINT" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="12.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.900000" />
        <Property name="ScaleY" value="0.900000" />
        <Property name="ScaleZ" value="0.900000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_SHIELD_LOCATOR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_SHIELD_LOCATOR" />
  <Property name="NameHash" value="3945046925" />
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
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SHIELD" />
      <Property name="NameHash" value="863301283" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\SHIELDSTATION.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="SHIELDBack" />
      <Property name="NameHash" value="3194146854" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="13.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="WALLPANEL" />
      <Property name="NameHash" value="600212025" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="13.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSTATION\VYKEEN\VYKEEN_WINDOWMODULE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSTATION\VYKEEN\VYKEEN_WINDOWMODULE" />
  <Property name="NameHash" value="212135710" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="GLASS1" />
      <Property name="NameHash" value="1806993771" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.800000" />
        <Property name="TransY" value="1.900000" />
        <Property name="TransZ" value="2.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="90.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.480000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="GLASS2" />
      <Property name="NameHash" value="2638179456" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.800000" />
        <Property name="TransY" value="1.900000" />
        <Property name="TransZ" value="-0.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="90.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="0.480000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="GLASSCENTER" />
      <Property name="NameHash" value="3088221904" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.800000" />
        <Property name="TransY" value="2.580000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.400000" />
        <Property name="ScaleY" value="0.360000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS.SCENE.MBIN" />
        </Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
  },
}