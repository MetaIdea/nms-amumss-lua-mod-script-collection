NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_ShipHeadlightsPlus_v624-C",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\DROPSHIP_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Cockpit_S13xNEVER"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="10">
					<Property name="Name" value="Contrail" />
					<Property name="NameHash" value="328066744" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="4.000000" />
						<Property name="TransZ" value="9.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FrameLOD1"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FrameLOD2"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FrameLOD3"},
              ["EXML_INDEX"] = "6",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1"},
                {"Name", "spotLight2"},
                {"Name", "spotLight3"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSA\SUBWINGSA_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSA\SUBWINGSA_RIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSE\SUBWINGSE_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSE\SUBWINGSE_RIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSI\SUBWINGSI_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSI\SUBWINGSI_RIGHT.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail"},
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSB\SUBWINGSB_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSB\SUBWINGSB_RIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSC\SUBWINGSC_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSC\SUBWINGSC_RIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSD\SUBWINGSD_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSD\SUBWINGSD_RIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSF\SUBWINGSF_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSF\SUBWINGSF_RIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSG\SUBWINGSG_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSG\SUBWINGSG_RIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSH\SUBWINGSH_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSH\SUBWINGSH_RIGHT.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail"},
                {"Name", "Contrail1"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTER_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_K"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="18">
					<Property name="Name" value="Contrail" />
					<Property name="NameHash" value="328066744" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="4.000000" />
						<Property name="TransZ" value="8.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERCLASSICGOLD.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_A"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="Contrail" />
					<Property name="NameHash" value="328066744" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="4.000000" />
						<Property name="TransZ" value="8.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="100">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="8.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\VRSPEEDER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFLamp_4"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="23">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="8.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WRACER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail1"},
                {"Name", "Contrail2"},
                {"Name", "Contrail3"},
                {"Name", "Contrail4"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WRCockpitData"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="31">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="8.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WRACERSE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail1"},
                {"Name", "Contrail2"},
                {"Name", "Contrail3"},
                {"Name", "Contrail4"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WRSECockpitData"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="31">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="8.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\ACCA.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "Contrail1"},
                },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\HEADLAMP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "StandingLight1"},
                  {"Name", "spotLight1"},
                },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\SPECIALHEADLAMP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight1"},
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPIT_E.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1"},
                {"Name", "spotLight3"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPTF.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "spotLight3"},
                  {"Name", "spotLight4"},
                },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\WINGS_A.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail1"},
                {"Name", "Contrail2"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref"},
              ["EXML_INDEX"] = "17",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref1"},
              ["EXML_INDEX"] = "18",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_B\WINGSB.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail3"},
                {"Name", "Contrail4"},
                {"Name", "Contrail5"},
                {"Name", "Contrail6"},
                {"Name", "Contrail15"},
                {"Name", "Contrail16"},
                {"Name", "Contrail11"},
                {"Name", "Contrail12"},
                {"Name", "Contrail13"},
                {"Name", "Contrail14"},
                {"Name", "Contrail7"},
                {"Name", "Contrail8"},
                {"Name", "Contrail9"},
                {"Name", "Contrail10"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_D\WINGSD.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail1"},
                {"Name", "Contrail2"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref1"},
              ["EXML_INDEX"] = "8",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_E\WINGSE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail2"},
                {"Name", "Contrail3"},
                {"Name", "Contrail4"},
                {"Name", "Contrail5"},
                {"Name", "Contrail6"},
                {"Name", "Contrail7"},
                {"Name", "Contrail8"},
                {"Name", "Contrail9"},
                {"Name", "Contrail10"},
                {"Name", "Contrail11"},
                {"Name", "Contrail12"},
                {"Name", "Contrail13"},
                {"Name", "Contrail14"},
                {"Name", "Contrail15"},
                {"Name", "Contrail16"},
                {"Name", "Contrail17"},
                {"Name", "Contrail18"},
                {"Name", "Contrail19"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\WINGS_F.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail2"},
                {"Name", "Contrail3"},
                {"Name", "Contrail4"},
                {"Name", "Contrail5"},
                {"Name", "Contrail6"},
                {"Name", "Contrail7"},
                {"Name", "Contrail8"},
                {"Name", "Contrail9"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_G\WINGSG.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail"},
                {"Name", "Contrail1"},
                {"Name", "Contrail3"},
                {"Name", "Contrail4"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "stage1"},
              ["EXML_INDEX"] = "16",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "stage2"},
              ["EXML_INDEX"] = "17",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTurbineAL"},
              ["EXML_INDEX"] = "88",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTurbineAR"},
              ["EXML_INDEX"] = "19",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref1"},
              ["EXML_INDEX"] = "20",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref2"},
              ["EXML_INDEX"] = "21",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_H\WINGSH.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_H\ANIM\WINGS_H_IDLE.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail2"},
                {"Name", "Contrail3"},
                {"Name", "Contrail12"},
                {"Name", "Contrail13"},
                {"Name", "Contrail14"},
                {"Name", "Contrail4"},
                {"Name", "Contrail5"},
                {"Name", "Contrail6"},
                {"Name", "Contrail7"},
                {"Name", "Contrail8"},
                {"Name", "Contrail9"},
                {"Name", "Contrail10"},
                {"Name", "Contrail11"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_I\WINGSI.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail1"},
                {"Name", "Contrail2"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref1"},
              ["EXML_INDEX"] = "9",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref2"},
              ["EXML_INDEX"] = "10",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrail12"},
                {"Name", "Contrail13"},
                {"Name", "Contrail3"},
                {"Name", "Contrail4"},
                {"Name", "Contrail2"},
                {"Name", "Contrail5"},
                {"Name", "Contrail6"},
                {"Name", "Contrail7"},
                {"Name", "Contrail9"},
                {"Name", "Contrail10"},
                {"Name", "Contrail8"},
                {"Name", "Contrail11"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrails145"},
                {"Name", "Contrails235"},
                {"Name", "Contrails44"},
                {"Name", "Contrails3"},
                {"Name", "Contrails4"},
                {"Name", "Contrails236"},
                {"Name", "Contrails6"},
                {"Name", "Contrails7L"},
                {"Name", "Contrails8L"},
                {"Name", "Contrails8"},
                {"Name", "Contrails7"},
                {"Name", "Contrails237"},
                {"Name", "Contrails17"},
                {"Name", "Contrails238"},
                {"Name", "Contrails11"},
                {"Name", "Contrails239"},
                {"Name", "Contrails240"},
                {"Name", "Contrails13"},
                {"Name", "Contrails14"},
                {"Name", "ContrailsSail"},
                {"Name", "ContrailsSail1"},
                {"Name", "ContrailsSail2"},
                {"Name", "ContrailsSail3"},
                {"Name", "ContrailsSail4"},
                {"Name", "ContrailsSail5"},
                {"Name", "ContrailsSail11L"},
                {"Name", "ContrailsSail10R"},
                {"Name", "ContrailsSail14"},
                {"Name", "ContrailsSail15"},
                {"Name", "ContrailsSail16"},
                {"Name", "ContrailsSail17"},
                {"Name", "ContrailsSail18"},
                {"Name", "ContrailsSail19"},
                {"Name", "ContrailsSail20"},
                {"Name", "ContrailsSail21"},
                {"Name", "ContrailsSail22"},
                {"Name", "ContrailsSail23"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref3"},
              ["EXML_INDEX"] = "9",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref2"},
              ["EXML_INDEX"] = "10",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent4"},
              ["EXML_INDEX"] = "11",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal18"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent159"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent160"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight30"},
              ["EXML_INDEX"] = "9",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight10"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage210"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage110"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRSpike5"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRBack4"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal17"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent162"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent161"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight31"},
              ["EXML_INDEX"] = "9",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRBack8"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRSpike6"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal15"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight45"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRBack5"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRSpike1"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal16"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight32"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRBack6L"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent153L"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal13"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRSpike8"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight33"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight34"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage212"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage112"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts12"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent154"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal14"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight35"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight36"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1L23"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2L23"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L5"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal6"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight37"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage141"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage263"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L4"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal7"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight38"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal10"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L1"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight39"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L2"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight40"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRSpike7"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRBack9"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent158"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "decals_Decal12"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight41"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight42"},
              ["EXML_INDEX"] = "9",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRSpike4"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SpinningpartRBack7"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent16"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight43"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight44"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RoundTop"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "TriSailsTop"},
              ["EXML_INDEX"] = "1",
            },
           {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_C"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="24">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="8.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPBODY_C.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrails1"},
                {"Name", "Contrails2"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref3"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref2"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent4"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSharedCockpit"},
              ["EXML_INDEX"] = "8",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPBODY_F.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrails3"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent9"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref8"},
              ["EXML_INDEX"] = "9",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref9"},
              ["EXML_INDEX"] = "10",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent10"},
              ["EXML_INDEX"] = "11",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent11"},
              ["EXML_INDEX"] = "12",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent12"},
              ["EXML_INDEX"] = "13",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSharedCockpit"},
              ["EXML_INDEX"] = "14",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPSAIL_B.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPSAIL_C.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrails"},
                {"Name", "Contrails1"},
                {"Name", "Contrails2"},
                {"Name", "Contrails3"},
                {"Name", "Contrails4"},
                {"Name", "Contrails5"},
                {"Name", "Contrails6"},
                {"Name", "Contrails7"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPWINGS_B.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrails5"},
                {"Name", "Contrails6"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight8"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
              ["EXML_INDEX"] = "8",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPWINGS_C.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrails9"},
                {"Name", "Contrails10"},
                {"Name", "Contrails7"},
                {"Name", "Contrails8"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight13"},
              ["EXML_INDEX"] = "11",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight10"},
              ["EXML_INDEX"] = "10",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "blinkinglight11"},
              ["EXML_INDEX"] = "11",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_CUTOMISER.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_LANDING.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_LOWFLIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_TAKEOFF.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_TUCKIN.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrails145"},
                {"Name", "Contrails235"},
                {"Name", "Contrails44"},
                {"Name", "Contrails3"},
                {"Name", "Contrails4"},
                {"Name", "Contrails236"},
                {"Name", "Contrails6"},
                {"Name", "Contrails7L"},
                {"Name", "Contrails8L"},
                {"Name", "Contrails8"},
                {"Name", "Contrails7"},
                {"Name", "Contrails237"},
                {"Name", "Contrails17"},
                {"Name", "Contrails238"},
                {"Name", "Contrails11"},
                {"Name", "Contrails239"},
                {"Name", "Contrails240"},
                {"Name", "Contrails13"},
                {"Name", "Contrails14"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_A"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_B"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_C"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref3"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref2"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent4"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent159"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent160"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage210"},
              ["EXML_INDEX"] = "0",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage110"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent162"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent161"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent153L"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage212"},
              ["EXML_INDEX"] = "0",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage112"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts12"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent154"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1L23"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2L23"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L5"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage141"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage263"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L4"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L1"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L2"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent158"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent16"},
              ["EXML_INDEX"] = "3",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SAILSUNFOLD.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Contrails145"},
                {"Name", "Contrails235"},
                {"Name", "Contrails44"},
                {"Name", "Contrails3"},
                {"Name", "Contrails4"},
                {"Name", "Contrails236"},
                {"Name", "Contrails6"},
                {"Name", "Contrails7L"},
                {"Name", "Contrails8L"},
                {"Name", "Contrails8"},
                {"Name", "Contrails7"},
                {"Name", "Contrails237"},
                {"Name", "Contrails17"},
                {"Name", "Contrails238"},
                {"Name", "Contrails11"},
                {"Name", "Contrails239"},
                {"Name", "Contrails240"},
                {"Name", "Contrails13"},
                {"Name", "Contrails14"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_A"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_B"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_C"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref3"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref2"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefSailShipAirVent4"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage210"},
              ["EXML_INDEX"] = "0",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage110"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent153L"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage212"},
              ["EXML_INDEX"] = "0",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage112"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts12"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent154"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1L23"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2L23"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L5"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage141"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage263"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L4"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L1"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail105L2"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent158"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WingsRefSailShipAirVent16"},
              ["EXML_INDEX"] = "3",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SCIENTIFIC_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Cockpit_DRoot"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="Contrail" />
					<Property name="NameHash" value="328066744" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="4.000000" />
						<Property name="TransZ" value="5.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LAMP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "StandingLight2"},
                  {"Name", "spotLight1"},
                },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"TransX", "1.03424"},
                  {"TransY", "1.568754"},
                  {"RotX",   "0.000000"},
                },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail1"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"TransX", "-1.034242"},
                  {"TransY", "1.568754"},
                  {"RotX",   "0.000000"},
                },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail1"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"TransY", "1.869246"},
                  {"TransZ", "-2.01901"},
                  {"RotX",   "0.000000"},
                },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Trail"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"TransY", "1.869246"},
                  {"TransZ", "-2.01901"},
                  {"RotX",   "0.000000"},
                },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSC\WINGCLEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSC\WINGCRIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSE\WINGELEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSE\WINGERIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSF\WINGFLEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSF\WINGFRIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSG\WINGGLEFT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSG\WINGGRIGHT.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_RIGHT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
              ["EXML_INDEX"] = "2",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Data"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing1_L"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing2_L"},
              ["EXML_INDEX"] = "6",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Data"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing1_R"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing2_R"},
              ["EXML_INDEX"] = "6",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSD\WINGDLEFT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing2_L2"},
              ["EXML_INDEX"] = "11",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing1_L1"},
              ["EXML_INDEX"] = "12",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSD\WINGDRIGHT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing1_L1"},
              ["EXML_INDEX"] = "11",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing2_L2"},
              ["EXML_INDEX"] = "12",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSD\WINGDRIGHTXNEVER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing1_R1"},
              ["EXML_INDEX"] = "11",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing2_R2"},
              ["EXML_INDEX"] = "12",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\S-CLASS_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Inventory_Medium"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
						<Property name="Children" value="TkSceneNodeData" _index="5">
							<Property name="Name" value="Contrail" />
							<Property name="NameHash" value="328066744" />
							<Property name="Type" value="LOCATOR" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="4.000000" />
								<Property name="TransZ" value="13.000000" />
								<Property name="RotX" value="-10.000000" />
								<Property name="RotY" value="180.000000" />
								<Property name="RotZ" value="0.000000" />
								<Property name="ScaleX" value="1.000000" />
								<Property name="ScaleY" value="1.000000" />
								<Property name="ScaleZ" value="1.000000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="ATTACHMENT" />
									<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Inventory_Medium1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
						<Property name="Children" value="TkSceneNodeData" _index="5">
							<Property name="Name" value="Contrail" />
							<Property name="NameHash" value="328066744" />
							<Property name="Type" value="LOCATOR" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="4.000000" />
								<Property name="TransZ" value="13.000000" />
								<Property name="RotX" value="-10.000000" />
								<Property name="RotY" value="180.000000" />
								<Property name="RotZ" value="0.000000" />
								<Property name="ScaleX" value="1.000000" />
								<Property name="ScaleY" value="1.000000" />
								<Property name="ScaleZ" value="1.000000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="ATTACHMENT" />
									<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOFIGHTER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail7"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RFinJNT"},
              ["EXML_INDEX"] = "0",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "LFinJNT"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "OrbJNT"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "engineaREF"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="73">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="10.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail7"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_engine_bREF"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="53">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="10.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\TOPWING\TOPWING_A.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\TOPWING\TOPWING_B.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "Contrail"},
                  {"Name", "spotLight1"},
                  {"Name", "spotLight2"},
                },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
              ["EXML_INDEX"] = "13",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
              ["EXML_INDEX"] = "14",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A.SCENE.MBIN",
            "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_C.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "Contrail3"},
                  {"Name", "Contrail2"},
                },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_B.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "Contrail2"},
                  {"Name", "Contrail3"},
                },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
              ["EXML_INDEX"] = "7",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "Contrail2"},
                  {"Name", "Contrail3"},
                  {"Name", "Contrail4"},
                },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CockpitPos"},
              ["EXML_INDEX"] = "23",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\NOSESECTION\NOSESECTION_A.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1"},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_B"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="10">
					<Property name="Name" value="Contrail" />
					<Property name="NameHash" value="328066744" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="4.000000" />
						<Property name="TransZ" value="8.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\SHUTTLE_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Shuttle_Single"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="_Headlights" />
					<Property name="NameHash" value="0" />
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
							<Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\HEADLIGHTS\SHUTHEADLIGHTS.SCENE.MBIN" />
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
              ["SPECIAL_KEY_WORDS"] = {"Name", "SLOT_WINGS1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="6">
			<Property name="Name" value="Contrail" />
			<Property name="NameHash" value="328066744" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="8.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\HEADLAMP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight1"},
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYA.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "spotLight3"},
                  {"Name", "spotLight2"},
                  {"Name", "spotLight1"},
                },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYB.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
                {
                  {"Name", "spotLight6"},
                  {"Name", "spotLight5"},
                  {"Name", "spotLight4"},
                },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACECRAFT\SHIELDSPHERE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Data"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="AISpotlight1" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="4.000000" />
				<Property name="TransZ" value="13.000000" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="55" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="600.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="600.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="1.0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="1.0" />
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
					<Property name="Value" value="MATERIALS/LIGHTFE.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACECRAFT\SHIELDSPHERE\ENTITIES\SHIELDSPHERE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Components"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
		<Property name="Components" value="GcTriggerActionComponentData" _index="0">
			<Property name="GcTriggerActionComponentData">
				<Property name="HideModel" value="false" />
				<Property name="StartInactive" value="false" />
				<Property name="States">
					<Property name="States" value="GcActionTriggerState" _index="0">
						<Property name="StateID" value="BOOT" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="0.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcNodeActivationAction" _index="0">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Deactivate" />
											<Property name="Name" value="AISpotlight1" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState" _index="1">
						<Property name="StateID" value="TAKEOFF" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="1.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcNodeActivationAction" _index="0">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Activate" />
											<Property name="Name" value="AISpotlight1" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState" _index="2">
						<Property name="StateID" value="LANDING" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="0.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcNodeActivationAction" _index="0">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Deactivate" />
											<Property name="Name" value="AISpotlight1" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Persistent" value="false" />
				<Property name="PersistentState" value="" />
				<Property name="ResetShotTimeOnStateChange" value="false" />
				<Property name="LinkStateToBaseGrid" value="false" />
			</Property>
		</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcSpaceshipShieldComponentData"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkSketchComponentData"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkPhysicsComponentData"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShootableComponentData"},
              ["EXML_INDEX"] = "4",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\CONTRAILTRAIL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "COLOUR"},
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "TERRAIN\TRAIL"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="PlayerSpotlight1" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
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
					<Property name="Name" value="FOV" />
					<Property name="Value" value="55" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="475.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="900.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="1.0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="1.0" />
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
					<Property name="Value" value="MATERIALS/LIGHTFE.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
      }
    },
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "MODELS\EFFECTS\TRAILS\SPACECRAFT\CONTRAIL\ENTITIES\PLAYERHEADLIGHTS.ENTITY.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
	<Property name="AdditionalData" />
	<Property name="Components">
		<Property name="Components" value="GcTriggerActionComponentData" _index="0">
			<Property name="GcTriggerActionComponentData">
				<Property name="HideModel" value="false" />
				<Property name="StartInactive" value="false" />
				<Property name="States">
					<Property name="States" value="GcActionTriggerState" _index="0">
						<Property name="StateID" value="BOOT" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="0.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcNodeActivationAction" _index="0">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Deactivate" />
											<Property name="Name" value="Contrail" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState" _index="1">
						<Property name="StateID" value="TAKEOFF" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="1.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcNodeActivationAction" _index="0">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Activate" />
											<Property name="Name" value="Contrail" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState" _index="2">
						<Property name="StateID" value="LANDING" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="0.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcNodeActivationAction" _index="0">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Deactivate" />
											<Property name="Name" value="Contrail" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Persistent" value="false" />
				<Property name="PersistentState" value="" />
				<Property name="ResetShotTimeOnStateChange" value="false" />
				<Property name="LinkStateToBaseGrid" value="false" />
			</Property>
		</Property>
	</Property>
	<Property name="LodDistances">
		<Property name="LodDistances" value="0.000000" _index="0" />
		<Property name="LodDistances" value="50.000000" _index="1" />
		<Property name="LodDistances" value="80.000000" _index="2" />
		<Property name="LodDistances" value="150.000000" _index="3" />
		<Property name="LodDistances" value="500.000000" _index="4" />
	</Property>
</Data>
]]
    },
  }
}