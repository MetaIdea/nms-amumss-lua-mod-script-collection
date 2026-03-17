NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_ExocraftMechanics_v624-C",
["MOD_AUTHOR"]              = "JasonDude7116",
["LUA_AUTHOR"]              = "Babscoole and Wbertro",
["NMS_VERSION"]             = "6.24",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",     "1"},
                                {"UpMinDistance",       "1"},
                                {"VertRotationMin",     "-45"},
                                {"VertRotationMax",     "-45"},
                                {"VertMaxSpring",       "1"},
                                {"LookStickLimitAngle", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechFirstPersonCam", "GcCameraFollowSettings"},
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
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCam", "GcCameraFollowSettings"},
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
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamMedium", "GcCameraFollowSettings"},
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
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamLarge", "GcCameraFollowSettings"},
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
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamHuge", "GcCameraFollowSettings"},
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
                            ["SPECIAL_KEY_WORDS"] = {"BuggyFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "0.5"},
                                {"OffsetYAlt",      "2"},
                                {"BackMinDistance", "17"},
                                {"UpMinDistance",   "-0.5"},
                                {"UpMaxDistance",   "-0.5"},
                                {"PanFar",          "-3"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "0.8"},
                                {"OffsetYAlt",      "5"},
                                {"BackMinDistance", "15"},
                                {"BackMaxDistance", "17"},
                                {"UpMinDistance",   "0.3"},
                                {"UpMaxDistance",   "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCamSurface", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "3.35"},
                                {"OffsetYAlt",      "5"},
                                {"UpMinDistance",   "0.3"},
                                {"UpMaxDistance",   "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BikeFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "-1"},
                                {"OffsetYAlt",      "2"},
                                {"BackMinDistance", "19"},
                                {"BackMaxDistance", "24"},
                                {"UpMinDistance",   "1"},
                                {"UpMaxDistance",   "1"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WheeledBikeFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "-0.75"},
                                {"OffsetYAlt",      "2.5"},
                                {"BackMinDistance", "18"},
                                {"BackMaxDistance", "22"},
                                {"UpMinDistance",   "1.5"},
                                {"UpMaxDistance",   "1.5"},
                                {"PanNear",         "-1.5"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TruckFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "24"},
                                {"BackMaxDistance", "30"},
                                {"UpMinDistance",   "1"},
                                {"UpMaxDistance",   "1"},
                                {"VertRotationMin", "-50"},
                                {"VertRotationMax", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlatbedFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpeedRange",                       "14.000000"},
                                {"OffsetY",                          "2.100000"},
                                {"OffsetYSlopeExtra",                "0.500000"},
                                {"OffsetZFlat",                      "3.300000"},
                                {"BackMinDistance",                  "24.000000"},
                                {"BackMaxDistance",                  "30.000000"},
                                {"UpMinDistance",                    "1.000000"},
                                {"UpMaxDistance",                    "1.000000"},
                                {"VertRotationMin",                  "-50.000000"},
                                {"VertRotationMax",                  "50.000000"},
                                {"VertRotationOffset",               "1.000000"},
                                {"VertRotationOffsetMinAngle",       "-20.000000"},
                                {"VertRotationOffsetMaxAngle",       "20.000000"},
                                {"VertResetRotationOverrideEnabled", "false"},
                                {"VertResetRotationOverride",        "0.000000"},
                                {"CenterStartTime",                  "1.500000"},
                                {"CenterBlendTime",                  "1.500000"},
                                {"LRProbesRange",                    "31.000000"},
                                {"LRProbesRadius",                   "0.200000"},
                                {"UDProbesRange",                    "15.000000"},
                                {"ProbeCenterY",                     "0.500000"},
                                {"PushForwardDropoffLR",             "0.200000"},
                                {"PushForwardDropoffUD",             "0.200000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "0.2"},
                                {"BackMinDistance", "11"},
                                {"UpMinDistance",   "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechCombatCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "11"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechJetpackCam", "GcCameraFollowSettings"},
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
                                {"MechCameraArmShootOffsetY",       "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarpSettings", "GcCameraWarpSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetZFrequency_1", "1.1"},
                                {"OffsetZFrequency_2", "0.9"},
                                {"OffsetZBias",        "2"},
                                {"OffsetZRange",       "1.5"},
                                {"OffsetYFrequency_1", "1.1"},
                                {"OffsetYFrequency_2", "0.9"},
                                {"OffsetYRange",       "0.75"},
                                {"OffsetXFrequency",   "0.25"},
                                {"OffsetXRange",       "3.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CorvetteWarpSettings", "GcCameraWarpSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetZFrequency_1", "1.1"},
                                {"OffsetZFrequency_2", "0.9"},
                                {"OffsetZBias",        "2"},
                                {"OffsetZRange",       "2.5"},
                                {"OffsetYFrequency_1", "1.1"},
                                {"OffsetYFrequency_2", "0.9"},
                                {"OffsetYRange",       "0.75"},
                                {"OffsetXFrequency",   "0.25"},
                                {"OffsetXRange",       "3.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FreighterWarpSettings", "GcCameraWarpSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetZBias",  "-11"},
                                {"OffsetZRange", "200"},
                                {"OffsetYRange", "150"},
                                {"OffsetXRange", "350"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateFreighterWarpSettings", "GcCameraWarpSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetZBias",  "-11"},
                                {"OffsetZRange", "700"},
                                {"OffsetXRange", "350"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                                {"WheelSuspensionDamping",       "0.1"},
                                {"TopSpeedForward",              "18"},
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
                                {"VehicleBoostMaxSpeed",         "32"},
                                {"VehicleBoostRechargeTime",     "9"},
                                {"VehicleLinearDampingGround",   "0.25"},
                                {"VehicleLinearDampingWater",    "0.25"},
                                {"VehicleGravity",              "15.000000"},
                                {"VehicleBoostForce",           "300.000000"},
                                {"VehicleBoostTime",            "1.500000"},
                                {"VehicleJumpAirRotateXAmount", "0.000000"},
                                {"VehicleJumpAirRotateZAmount", "0.000000"},
                                {"VehicleJumpAirRotateTimeMin", "0.000000"},
                                {"VehicleJumpAirRotateTimeMax", "0.000000"},
                                {"VehicleJumpAirMaxTorque",     "500.000000"},
                                {"HeadlightIntensity",          "150.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MED_BUGGY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WheelSuspensionlength",        "2.5"},
                                {"WheelSuspensionForce",         "25"},
                                {"WheelSuspensionDamping",       "0.1"},
                                {"TopSpeedForward",              "16"},
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
                                {"VehicleBoostMaxSpeed",         "28"},
                                {"VehicleBoostRechargeTime",     "9"},
                                {"VehicleLinearDampingWater",    "2.25"},
                                {"VehicleGravity",              "15.000000"},
                                {"VehicleJumpAirRotateXAmount", "0.000000"},
                                {"VehicleJumpAirRotateZAmount", "0.000000"},
                                {"VehicleJumpAirRotateTimeMin", "0.000000"},
                                {"VehicleJumpAirRotateTimeMax", "0.000000"},
                                {"VehicleJumpAirMaxTorque",     "500.000000"},
                                {"HeadlightIntensity",          "150.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUCK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WheelSuspensionlength",        "2.0"},
                                {"WheelSuspensionForce",         "20"},
                                {"WheelSuspensionDamping",       "0.25"},
                                {"TopSpeedReverse",              "3"},
                                {"WheelMaxAccelForceForward",    "2.25"},
                                {"WheelMaxAccelForceReverse",    "2.25"},
                                {"WheelMaxDecelForceNonBraking", "0.2"},
                                {"WheelMaxDecelForceBraking",    "2.5"},
                                {"HardStopSpeedThreshold",       "0.025"},
                                {"WheelFrontFrictionDynamic",    "1.8"},
                                {"WheelFrontFrictionStatic",     "1.9"},
                                {"WheelSideFrictionDynamic",     "1.8"},
                                {"WheelSideFrictionStatic",      "1.9"},
                                {"VehicleBoostMaxSpeed",         "16"},
                                {"VehicleBoostRechargeTime",     "9"},
                                {"VehicleLinearDampingWater",    "2.25"},
                                {"VehicleGravity",               "16.000000"},
                                {"VehicleBoostForce",            "99000.000000"},
                                {"VehicleBoostMaxSpeed",         "26.000000"},
                                {"VehicleBoostTime",             "1.500000"},
                                {"VehicleJumpForce",             "180000.000000"},
                                {"VehicleJumpAirRotateXAmount",  "0.000000"},
                                {"VehicleJumpAirRotateZAmount",  "0.000000"},
                                {"VehicleJumpAirRotateTimeMin",  "0.000000"},
                                {"VehicleJumpAirRotateTimeMax",  "0.000000"},
                                {"VehicleJumpAirMaxTorque",      "500.000000"},
                                {"HeadlightIntensity",           "150.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WHEELEDBIKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WheelSuspensionlength",        "1.500000"},
                                {"WheelSuspensionForce",         "20.000000"},
                                {"WheelSuspensionDamping",       "1.000000"},
                                {"TopSpeedForward",              "19"},
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
                                {"VehicleBoostMaxSpeed",         "32"},
                                {"VehicleBoostRechargeTime",     "9"},
                                {"VehicleLinearDampingWater",    "2.25"},
                                {"VehicleGravity",               "15.000000"},
                                {"VehicleBoostForce",            "300.000000"},
                                {"VehicleBoostTime",             "1.500000"},
                                {"VehicleJumpAirRotateXAmount",  "0.000000"},
                                {"VehicleJumpAirRotateZAmount",  "0.000000"},
                                {"VehicleJumpAirRotateTimeMin",  "0.000000"},
                                {"VehicleJumpAirRotateTimeMax",  "0.000000"},
                                {"VehicleJumpAirMaxTorque",      "500.000000"},
                                {"HeadlightIntensity",           "150.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "HOVERCRAFT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeadlightIntensity", "150.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUBMARINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnderwaterEnginePower",      "2.5"},
                                {"UnderwaterEnginePowerVR",    "2.5"},
                                {"UnderwaterEngineMaxSpeed",   "12"},
                                {"UnderwaterEngineMaxSpeedVR", "12"},
                                {"UnderwaterEngineFalloff",    "0.700000"},
                                {"TopSpeedForward",            "15"},
                                {"TopSpeedReverse",            "5"},
                                {"VehicleGravity",             "90"},
                                {"VehicleBoostMaxSpeed",       "20"},
                                {"VehicleBoostRechargeTime",   "9"},
                                {"VehicleLinearDampingWater",  "0.150000"},
                                {"HeadlightIntensity",         "150.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeadlightIntensity", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["PRECEDING_KEY_WORDS"] = {"CockpitHeadlightNames"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CockpitHeadlightNames", "DUDcockpitDummy1"},
                                {"CockpitHeadlightNames", "DUDcockpitDummy2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUCK"},
                            ["PRECEDING_KEY_WORDS"] = {"CockpitHeadlightNames"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CockpitHeadlightNames", ""},
                                {"CockpitHeadlightNames", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\BIKE\BIKEPRES.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                                {"RotX", "-10.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1", "Name", "RADIUS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight1"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="spotLight4" />
              <Property name="NameHash" value="2728205036" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="-10.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="180.000000" />
                <Property name="ScaleX" value="23.548000" />
                <Property name="ScaleY" value="23.548000" />
                <Property name="ScaleZ" value="23.548000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="FOV" />
                  <Property name="Value" value="50.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="Value" value="15.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="15.000000" />
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
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-10.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2", "Name", "RADIUS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lights_spotLight2"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="spotLight5" />
              <Property name="NameHash" value="3025124945" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="-10.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="180.000000" />
                <Property name="ScaleX" value="23.548000" />
                <Property name="ScaleY" value="23.548000" />
                <Property name="ScaleZ" value="23.548000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="FOV" />
                  <Property name="Value" value="50.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="Value" value="15.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="15.000000" />
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
          </Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\BUGGY\BUGGYPRES.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-0.502999" />
            <Property name="TransY" value="1.105160" />
            <Property name="TransZ" value="2.461668" />
            <Property name="RotX" value="-10.000000" />
            <Property name="RotY" value="180.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="23.5477161" />
            <Property name="ScaleY" value="23.5477161" />
            <Property name="ScaleZ" value="23.5477161" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="60.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="150.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="150.000000" />
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
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="spotLight3" />
              <Property name="NameHash" value="282392410" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="-10.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="180.000000" />
                <Property name="ScaleX" value="23.548000" />
                <Property name="ScaleY" value="23.548000" />
                <Property name="ScaleZ" value="23.548000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="FOV" />
                  <Property name="Value" value="50.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="Value" value="15.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="15.000000" />
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
          </Property>
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="spotLight2" />
          <Property name="NameHash" value="4278932423" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.502999" />
            <Property name="TransY" value="1.105160" />
            <Property name="TransZ" value="2.461668" />
            <Property name="RotX" value="-10.000000" />
            <Property name="RotY" value="180.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="23.5477161" />
            <Property name="ScaleY" value="23.5477161" />
            <Property name="ScaleZ" value="23.5477161" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="60.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="150.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="150.000000" />
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
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="spotLight4" />
              <Property name="NameHash" value="2728205036" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="-10.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="180.000000" />
                <Property name="ScaleX" value="23.548000" />
                <Property name="ScaleY" value="23.548000" />
                <Property name="ScaleZ" value="23.548000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="FOV" />
                  <Property name="Value" value="50.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="Value" value="15.000000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="15.000000" />
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
          </Property>
        </Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "RADIUS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="Lights_spotLight1" />
                          <Property name="NameHash" value="3822722958" />
                          <Property name="Type" value="LIGHT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="180.000000" />
                            <Property name="ScaleX" value="23.5477161" />
                            <Property name="ScaleY" value="23.5477161" />
                            <Property name="ScaleZ" value="23.5477161" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="FOV" />
                              <Property name="Value" value="50.000000" />
                            </Property>
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                              <Property name="Name" value="FALLOFF" />
                              <Property name="Value" value="2.000000" />
                            </Property>
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                              <Property name="Name" value="INTENSITY" />
                              <Property name="Value" value="10.000000" />
                            </Property>
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                              <Property name="Name" value="RADIUS" />
                              <Property name="Value" value="15.000000" />
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
                                {"Value", "60.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3", "Name", "RADIUS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "150.000000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="Lights_spotLight2" />
                          <Property name="NameHash" value="1370651453" />
                          <Property name="Type" value="LIGHT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="180.000000" />
                            <Property name="ScaleX" value="23.5477161" />
                            <Property name="ScaleY" value="23.5477161" />
                            <Property name="ScaleZ" value="23.5477161" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="FOV" />
                              <Property name="Value" value="50.000000" />
                            </Property>
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                              <Property name="Name" value="FALLOFF" />
                              <Property name="Value" value="2.000000" />
                            </Property>
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                              <Property name="Name" value="INTENSITY" />
                              <Property name="Value" value="10.000000" />
                            </Property>
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                              <Property name="Name" value="RADIUS" />
                              <Property name="Value" value="15.000000" />
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
                      </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT_COCKPIT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                            ["SECTION_ACTIVE"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="65">
			<Property name="Name" value="DUDcockpitDummy1" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="23.5477161" />
				<Property name="ScaleY" value="23.5477161" />
				<Property name="ScaleZ" value="23.5477161" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="0.000000" />
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
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="cockpitSpotLight1" />
					<Property name="NameHash" value="4104855990" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.800000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="23.5477161" />
						<Property name="ScaleY" value="23.5477161" />
						<Property name="ScaleZ" value="23.5477161" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="60.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="150.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="150.000000" />
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
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="cockpitSpotLight1s" />
							<Property name="NameHash" value="1548811781" />
							<Property name="Type" value="LIGHT" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="0.000000" />
								<Property name="TransZ" value="0.000000" />
								<Property name="RotX" value="-12.000000" />
								<Property name="RotY" value="0.000000" />
								<Property name="RotZ" value="0.000000" />
								<Property name="ScaleX" value="23.5477161" />
								<Property name="ScaleY" value="23.5477161" />
								<Property name="ScaleZ" value="23.5477161" />
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
									<Property name="Name" value="INTENSITY" />
									<Property name="Value" value="60.000000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="RADIUS" />
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
					</Property>
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="66">
			<Property name="Name" value="DUDcockpitDummy2" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="23.5477161" />
				<Property name="ScaleY" value="23.5477161" />
				<Property name="ScaleZ" value="23.5477161" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="0.000000" />
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
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="cockpitSpotLight2" />
					<Property name="NameHash" value="3839787549" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.800000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="23.5477161" />
						<Property name="ScaleY" value="23.5477161" />
						<Property name="ScaleZ" value="23.5477161" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="60.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="150.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="150.000000" />
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
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="cockpitSpotLight2s" />
							<Property name="NameHash" value="57263980" />
							<Property name="Type" value="LIGHT" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="0.000000" />
								<Property name="TransZ" value="0.000000" />
								<Property name="RotX" value="-12.000000" />
								<Property name="RotY" value="0.000000" />
								<Property name="RotZ" value="0.000000" />
								<Property name="ScaleX" value="23.5477161" />
								<Property name="ScaleY" value="23.5477161" />
								<Property name="ScaleZ" value="23.5477161" />
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
									<Property name="Name" value="INTENSITY" />
									<Property name="Value" value="60.000000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="RADIUS" />
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
					</Property>
				</Property>
			</Property>
		</Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_Meshs"},
                                {"Name", "_Meshs_2"},
                                {"Name", "_Mesh"},
                                {"Name", "_Mesh_2"},
                            },
                            ["EXML_INDEX"] = "0",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\ROVER\ROVERCOCKPIT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SideMonitor1_R_Ref"},
                            },
                            ["EXML_INDEX"] = "22",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\ROVER\ROVER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1_2_3"},
                                {"Name", "spotLight1_2_2_2"},
                                {"Name", "spotLight3_2_2_2"},
                                {"Name", "spotLight4_2_2_2"},
                                {"Name", "spotLight5_2_2_2"},
                                {"Name", "spotLight4_2_2_1"},
                                {"Name", "spotLight5_2_2_1"},
                                {"Name", "spotLight1_2_1"},
                                {"Name", "spotLight5_2_1"},
                                {"Name", "spotLight3_2_3"},
                                {"Name", "spotLight4_2_3"},
                                {"Name", "spotLight5_2_3"},

                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "FrontGrill"},
                                {"Name", "SquareCabMesh2"},
                            },
                            ["EXML_INDEX"] = "3",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "CabBase"},
                                {"Name", "_DecalPosC_Right_02"},
                            },
                            ["EXML_INDEX"] = "4",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "COCKPITPOS_01"},
                                {"Name", "_DecalPosA_Front_03"},
                            },
                            ["EXML_INDEX"] = "5",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "MODELS\COMMON\VEHICLES\ROVER\ROVER|Collision"},
                                {"Name", "COCKPITPOS_03"},
                            },
                            ["EXML_INDEX"] = "6",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_DecalPosA_Front_02"},
                                {"Name", "MODELS\COMMON\VEHICLES\ROVER\ROVER|Collision2"},
                            },
                            ["EXML_INDEX"] = "7",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SquareCabMesh1"},
                            ["EXML_INDEX"] = "2",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "COCKPITPOS_02"},
                            ["EXML_INDEX"] = "8",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\VEHICLES\ROVER\ROVER|Collision1"},
                            ["EXML_INDEX"] = "9",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Rover3_2_3"},
                            ["EXML_INDEX"] = "10",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Rover3_2_4"},
                            ["EXML_INDEX"] = "11",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Rover_GRP"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="spotLight1" />
			<Property name="NameHash" value="422545419" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-0.648775" />
				<Property name="TransY" value="1.945884" />
				<Property name="TransZ" value="3.680180" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="23.5477161" />
				<Property name="ScaleY" value="23.5477161" />
				<Property name="ScaleZ" value="23.5477161" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="60.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="150.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="150.000000" />
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
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="spotLight4" />
					<Property name="NameHash" value="2728205036" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="23.548000" />
						<Property name="ScaleY" value="23.548000" />
						<Property name="ScaleZ" value="23.548000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="55.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="20.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="15.000000" />
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
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
			<Property name="Name" value="spotLight3" />
			<Property name="NameHash" value="282392410" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.648775" />
				<Property name="TransY" value="1.945884" />
				<Property name="TransZ" value="3.680180" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="23.5477161" />
				<Property name="ScaleY" value="23.5477161" />
				<Property name="ScaleZ" value="23.5477161" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="60.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="150.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="150.000000" />
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
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="spotLight5" />
					<Property name="NameHash" value="3025124945" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="23.548000" />
						<Property name="ScaleY" value="23.548000" />
						<Property name="ScaleZ" value="23.548000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="55.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="20.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="15.000000" />
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
			</Property>
		</Property>
]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\WHEELEDBIKE\WHEELEDBIKEPRES.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_DecalPosD_Back" },
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="11">
			<Property name="Name" value="spotLight2" />
			<Property name="NameHash" value="4278932423" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-0.229029" />
				<Property name="TransY" value="1.342419" />
				<Property name="TransZ" value="0.647816" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="23.5477161" />
				<Property name="ScaleY" value="23.5477161" />
				<Property name="ScaleZ" value="23.5477161" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="60.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="150.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="150.000000" />
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
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="spotLight1" />
					<Property name="NameHash" value="422545419" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="23.5477161" />
						<Property name="ScaleY" value="23.5477161" />
						<Property name="ScaleZ" value="23.5477161" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="45.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="15.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="15.000000" />
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
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="12">
			<Property name="Name" value="spotLight3" />
			<Property name="NameHash" value="282392410" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.243155" />
				<Property name="TransY" value="1.342419" />
				<Property name="TransZ" value="0.647816" />
				<Property name="RotX" value="-10.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="23.5477161" />
				<Property name="ScaleY" value="23.5477161" />
				<Property name="ScaleZ" value="23.5477161" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="60.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="150.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="150.000000" />
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
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="spotLight4" />
					<Property name="NameHash" value="2728205036" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="-10.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="23.5477161" />
						<Property name="ScaleY" value="23.5477161" />
						<Property name="ScaleZ" value="23.5477161" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="45.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="15.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="15.000000" />
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