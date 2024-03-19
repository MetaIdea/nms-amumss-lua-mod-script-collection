NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_ExocraftMechanics_v452-A.pak",
["MOD_AUTHOR"]              = "JasonDude7116",
["LUA_AUTHOR"]              = "Babscoole and Wbertro",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",     "1"},
                                {"UpMinDistance",       "1"},
                                {"VertRotationMin",     "-44.99"},
                                {"VertRotationMax",     "-44.99"},
                                {"VertMaxSpring",       "1"},
                                {"LookStickLimitAngle", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechFirstPersonCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "0.5"},
                                {"BackMinDistance",     "1"},
                                {"UpMinDistance",       "1"},
                                {"VertRotationMin",     "-41"},
                                {"VertRotationMax",     "-41"},
                                {"LookStickLimitAngle", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",                    "1.5"},
                                {"BackMinDistance",            "12"},
                                {"BackMaxDistance",            "17"},
                                {"VertRotationMin",            "-30"},
                                {"VertRotationMax",            "40"},
                                {"VertRotationOffset",         "0"},
                                {"VertRotationOffsetMinAngle", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamMedium", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",                    "1.75"},
                                {"BackMinDistance",            "15"},
                                {"BackMaxDistance",            "20"},
                                {"VertRotationMin",            "-30"},
                                {"VertRotationMax",            "40"},
                                {"VertRotationOffset",         "0"},
                                {"VertRotationOffsetMinAngle", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamLarge", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",                    "2"},
                                {"BackMinDistance",            "20"},
                                {"BackMaxDistance",            "25"},
                                {"VertRotationMin",            "-30"},
                                {"VertRotationMax",            "40"},
                                {"VertRotationOffset",         "0"},
                                {"VertRotationOffsetMinAngle", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamHuge", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",                    "2.25"},
                                {"BackMinDistance",            "30"},
                                {"BackMaxDistance",            "35"},
                                {"VertRotationMin",            "-30"},
                                {"VertRotationMax",            "40"},
                                {"VertRotationOffset",         "0"},
                                {"VertRotationOffsetMinAngle", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuggyFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "2.25"},
                                {"BackMinDistance", "17"},
                                {"UpMinDistance",   "1"},
                                {"UpMaxDistance",   "1"},
                                {"PanFar",          "-3"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "3.35"},
                                {"OffsetYAlt",      "5"},
                                {"BackMinDistance", "15"},
                                {"BackMaxDistance", "17"},
                                {"UpMinDistance",   "0.3"},
                                {"UpMaxDistance",   "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BikeFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "0.35"},
                                {"OffsetYAlt",      "3"},
                                {"BackMinDistance", "16"},
                                {"UpMinDistance",   "2"},
                                {"UpMaxDistance",   "2"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WheeledBikeFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "-0.75"},
                                {"OffsetYAlt",      "2.5"},
                                {"BackMinDistance", "18"},
                                {"BackMaxDistance", "22"},
                                {"UpMinDistance",   "2"},
                                {"UpMaxDistance",   "2"},
                                {"PanNear",         "-1.5"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TruckFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "22"},
                                {"UpMinDistance",   "1"},
                                {"UpMaxDistance",   "1"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "0.2"},
                                {"BackMinDistance", "11"},
                                {"UpMinDistance",   "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "11"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechJetpackCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "0"},
                                {"BackMinDistance", "11"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpecialVehicleMouseRecentreTime", "5"},
                                {"UnderwaterCameraSurfaceOffset",   "5"},
                                {"MechCameraArmShootOffsetY",       "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MechFirstPersonTurretThrottleLookThreshold", "8"},
                                {"VehicleFuelRate",                            "0.35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BIKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WheelSuspensionForce",         "12"},
                                {"TopSpeedForward",              "15"},
                                {"TopSpeedReverse",              "4"},
                                {"WheelMaxAccelForceForward",    "2.75"},
                                {"WheelMaxAccelForceReverse",    "2.75"},
                                {"WheelMaxDecelForceNonBraking", "0.5"},
                                {"WheelMaxDecelForceBraking",    "2"},
                                {"HardStopSpeedThreshold",       "0.025"},
                                {"WheelFrontFrictionDynamic",    "3.2"},
                                {"WheelFrontFrictionStatic",     "3.2"},
                                {"WheelSideFrictionDynamic",     "2.25"},
                                {"WheelSideFrictionStatic",      "2.25"},
                                {"VehicleBoostMaxSpeed",         "28"},
                                {"VehicleBoostRechargeTime",     "9"},
                                {"VehicleLinearDampingGround",   "0.25"},
                                {"VehicleLinearDampingWater",    "0.25"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MED_BUGGY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WheelSuspensionForce",         "12"},
                                {"WheelSuspensionDamping",       "0"},
                                {"TopSpeedForward",              "14"},
                                {"TopSpeedReverse",              "4"},
                                {"WheelMaxAccelForceForward",    "2.75"},
                                {"WheelMaxAccelForceReverse",    "2.75"},
                                {"WheelMaxDecelForceNonBraking", "1.15"},
                                {"WheelMaxDecelForceBraking",    "25"},
                                {"HardStopSpeedThreshold",       "0.025"},
                                {"WheelFrontFrictionDynamic",    "3.4"},
                                {"WheelFrontFrictionStatic",     "3.4"},
                                {"WheelSideFrictionDynamic",     "3.4"},
                                {"WheelSideFrictionStatic",      "3.4"},
                                {"VehicleBoostMaxSpeed",         "24"},
                                {"VehicleBoostRechargeTime",     "9"},
                                {"VehicleLinearDampingWater",    "2.25"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUCK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WheelSuspensionForce",      "12"},
                                {"WheelSuspensionDamping",    "0"},
                                {"TopSpeedReverse",           "3"},
                                {"WheelMaxAccelForceForward", "2.25"},
                                {"WheelMaxAccelForceReverse", "2.25"},
                                {"WheelMaxDecelForceBraking", "2.5"},
                                {"HardStopSpeedThreshold",    "0.025"},
                                {"WheelFrontFrictionDynamic", "1.8"},
                                {"WheelFrontFrictionStatic",  "1.9"},
                                {"WheelSideFrictionDynamic",  "1.8"},
                                {"WheelSideFrictionStatic",   "1.9"},
                                {"VehicleBoostMaxSpeed",      "16"},
                                {"VehicleBoostRechargeTime",  "9"},
                                {"VehicleLinearDampingWater", "2.25"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WHEELEDBIKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WheelSuspensionForce",         "9"},
                                {"WheelSuspensionDamping",       "0"},
                                {"TopSpeedForward",              "16"},
                                {"TopSpeedReverse",              "4"},
                                {"WheelMaxAccelForceForward",    "2.75"},
                                {"WheelMaxAccelForceReverse",    "2.75"},
                                {"WheelMaxDecelForceNonBraking", "1.15"},
                                {"WheelMaxDecelForceBraking",    "10"},
                                {"HardStopSpeedThreshold",       "0.025"},
                                {"WheelFrontFrictionDynamic",    "3.2"},
                                {"WheelFrontFrictionStatic",     "3.2"},
                                {"WheelSideFrictionDynamic",     "3.25"},
                                {"WheelSideFrictionStatic",      "3.25"},
                                {"VehicleBoostForce",            "400"},
                                {"VehicleBoostMaxSpeed",         "30"},
                                {"VehicleBoostRechargeTime",     "9"},
                                {"VehicleLinearDampingWater",    "2.25"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUBMARINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnderwaterEnginePower",    "3"},
                                {"UnderwaterEngineMaxSpeed", "12"},
                                {"TopSpeedForward",          "12"},
                                {"TopSpeedReverse",          "5"},
                                {"VehicleBoostMaxSpeed",     "20"},
                                {"VehicleBoostRechargeTime", "9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeadlightIntensity", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["PRECEDING_KEY_WORDS"] = {"CockpitHeadlightNames", "NMSString0x100.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "cockpitSpotLight1s"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["PRECEDING_KEY_WORDS"] = {"CockpitHeadlightNames", "NMSString0x100.xml", "NMSString0x100.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "cockpitSpotLight2s"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\BIKE\BIKEPRES.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight4"},
                                {"Name", "spotLight5"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20.62733"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "75.275394"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "45000.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="spotLight4" />
              <Property name="NameHash" value="2728205036" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="180" />
                <Property name="ScaleX" value="23.548" />
                <Property name="ScaleY" value="23.548" />
                <Property name="ScaleZ" value="23.548" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="50.797997" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="quadratic" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="20000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20.62733"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "75.275394"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "45000.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="spotLight5" />
              <Property name="NameHash" value="3025124945" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="180" />
                <Property name="ScaleX" value="23.548" />
                <Property name="ScaleY" value="23.548" />
                <Property name="ScaleZ" value="23.548" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="50.797997" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="quadratic" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="20000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\BUGGY\BUGGYPRES.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1"},
                                {"Name", "spotLight2"},
                                {"Name", "spotLight3"},
                                {"Name", "spotLight4"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RearLight"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.502999" />
            <Property name="TransY" value="1.10516" />
            <Property name="TransZ" value="2.461668" />
            <Property name="RotX" value="-20.62733" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="75.275394" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="linear" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="45000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="spotLight3" />
              <Property name="NameHash" value="282392410" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="180" />
                <Property name="ScaleX" value="23.548" />
                <Property name="ScaleY" value="23.548" />
                <Property name="ScaleZ" value="23.548" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="50.797997" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="quadratic" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="20000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight2" />
          <Property name="NameHash" value="4278932423" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.502999" />
            <Property name="TransY" value="1.10516" />
            <Property name="TransZ" value="2.461668" />
            <Property name="RotX" value="-20.62733" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="75.275394" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="linear" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="45000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="spotLight4" />
              <Property name="NameHash" value="2728205036" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="180" />
                <Property name="ScaleX" value="23.548" />
                <Property name="ScaleY" value="23.548" />
                <Property name="ScaleZ" value="23.548" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="50.797997" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="quadratic" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="20000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "75.275394"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "45000.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
                      <Property name="Children">
                        <Property value="TkSceneNodeData.xml">
                          <Property name="Name" value="Lights_spotLight1" />
                          <Property name="NameHash" value="3822722958" />
                          <Property name="Type" value="LIGHT" />
                          <Property name="Transform" value="TkTransformData.xml">
                            <Property name="TransX" value="0" />
                            <Property name="TransY" value="0" />
                            <Property name="TransZ" value="0" />
                            <Property name="RotX" value="0" />
                            <Property name="RotY" value="0" />
                            <Property name="RotZ" value="180" />
                            <Property name="ScaleX" value="23.547716" />
                            <Property name="ScaleY" value="23.547716" />
                            <Property name="ScaleZ" value="23.547716" />
                          </Property>
                          <Property name="Attributes">
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="FOV" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="50.275394" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="FALLOFF" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="quadratic" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="FALLOFF_RATE" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="2.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="INTENSITY" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="20000.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COL_R" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COL_G" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COL_B" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COOKIE_IDX" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="-1" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="VOLUMETRIC" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="MATERIAL" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "0.426958"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "75.275394"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "45000.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
                      <Property name="Children">
                        <Property value="TkSceneNodeData.xml">
                          <Property name="Name" value="Lights_spotLight2" />
                          <Property name="NameHash" value="1370651453" />
                          <Property name="Type" value="LIGHT" />
                          <Property name="Transform" value="TkTransformData.xml">
                            <Property name="TransX" value="0" />
                            <Property name="TransY" value="0" />
                            <Property name="TransZ" value="0" />
                            <Property name="RotX" value="0" />
                            <Property name="RotY" value="0" />
                            <Property name="RotZ" value="180" />
                            <Property name="ScaleX" value="23.547716" />
                            <Property name="ScaleY" value="23.547716" />
                            <Property name="ScaleZ" value="23.547716" />
                          </Property>
                          <Property name="Attributes">
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="FOV" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="50.275394" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="FALLOFF" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="quadratic" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="FALLOFF_RATE" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="2.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="INTENSITY" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="20000.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COL_R" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COL_G" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COL_B" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="COOKIE_IDX" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="-1" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="VOLUMETRIC" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="1.000000" />
                            </Property>
                            <Property value="TkSceneNodeAttributeData.xml">
                              <Property name="Name" value="MATERIAL" />
                              <Property name="AltID" value="" />
                              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT_COCKPIT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "cockpitSpotLight1s"},
                                {"Name", "cockpitSpotLight2s"},
                                {"Name", "cockpitSpotLight1"},
                                {"Name", "cockpitSpotLight2"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Mesh"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="cockpitSpotLight1" />
      <Property name="NameHash" value="4104855990" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.6" />
        <Property name="TransY" value="-0.2" />
        <Property name="TransZ" value="-2.5" />
        <Property name="RotX" value="-12" />
        <Property name="RotY" value="18" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="23.547716" />
        <Property name="ScaleY" value="23.547716" />
        <Property name="ScaleZ" value="23.547716" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="75.335918" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="55000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="cockpitSpotLight1s" />
          <Property name="NameHash" value="1548811781" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.18" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="40.335918" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="100.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.400000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.400000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.400000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="cockpitSpotLight2" />
      <Property name="NameHash" value="3839787549" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.6" />
        <Property name="TransY" value="-0.2" />
        <Property name="TransZ" value="-2.5" />
        <Property name="RotX" value="-12" />
        <Property name="RotY" value="-18" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="23.547716" />
        <Property name="ScaleY" value="23.547716" />
        <Property name="ScaleZ" value="23.547716" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="75.335918" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="55000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="cockpitSpotLight2s" />
          <Property name="NameHash" value="57263980" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.18" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="40.335918" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="100.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.400000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.400000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.400000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\ROVER\ROVERCOCKPIT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SideMonitor1_R_Ref"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Lights_spotLight1" />
      <Property name="NameHash" value="3822722958" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.648775" />
        <Property name="TransY" value="-1.145884" />
        <Property name="TransZ" value="3.07" />
        <Property name="RotX" value="-20.62733" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="23.547716" />
        <Property name="ScaleY" value="23.547716" />
        <Property name="ScaleZ" value="23.547716" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="90.275394" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Lights_spotLight2" />
          <Property name="NameHash" value="1370651453" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="50.275394" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Lights_spotLight3" />
      <Property name="NameHash" value="1065637601" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.648775" />
        <Property name="TransY" value="-1.145884" />
        <Property name="TransZ" value="3.07" />
        <Property name="RotX" value="-20.62733" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="23.547716" />
        <Property name="ScaleY" value="23.547716" />
        <Property name="ScaleZ" value="23.547716" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="90.275394" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Lights_spotLight4" />
          <Property name="NameHash" value="756462086" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="50.275394" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\ROVER\ROVERPRES.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight3"},
                                {"Name", "spotLight4"},
                                {"Name", "spotLight5"},

                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20.62733"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "90.275394"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "45000.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE", 
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight4" />
          <Property name="NameHash" value="2728205036" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="23.548" />
            <Property name="ScaleY" value="23.548" />
            <Property name="ScaleZ" value="23.548" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="65.797997" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
                            ["ADD_OPTION"] = "ADDafterSECTION", 
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="spotLight3" />
      <Property name="NameHash" value="282392410" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.648775" />
        <Property name="TransY" value="1.945884" />
        <Property name="TransZ" value="3.68018" />
        <Property name="RotX" value="-20.62733" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="23.547716" />
        <Property name="ScaleY" value="23.547716" />
        <Property name="ScaleZ" value="23.547716" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="90.275394" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight5" />
          <Property name="NameHash" value="3025124945" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="23.548" />
            <Property name="ScaleY" value="23.548" />
            <Property name="ScaleZ" value="23.548" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="65.797997" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]     = "MODELS\COMMON\VEHICLES\WHEELEDBIKE\WHEELEDBIKEPRES.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight2"},
                                {"Name", "spotLight3"},

                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight5"},
                            ["LINE_OFFSET"] = "-2",
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="spotLight2" />
      <Property name="NameHash" value="4278932423" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.229029" />
        <Property name="TransY" value="1.342419" />
        <Property name="TransZ" value="0.647816" />
        <Property name="RotX" value="-20.62733" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="23.547716" />
        <Property name="ScaleY" value="23.547716" />
        <Property name="ScaleZ" value="23.547716" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="75.275394" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="50.275394" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="15000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="spotLight3" />
      <Property name="NameHash" value="282392410" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.243155" />
        <Property name="TransY" value="1.342419" />
        <Property name="TransZ" value="0.647816" />
        <Property name="RotX" value="-20.62733" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="23.547716" />
        <Property name="ScaleY" value="23.547716" />
        <Property name="ScaleZ" value="23.547716" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="75.275394" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight4" />
          <Property name="NameHash" value="2728205036" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="23.547716" />
            <Property name="ScaleY" value="23.547716" />
            <Property name="ScaleZ" value="23.547716" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="50.275394" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="15000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    },
                },
            }
        }
    }
}