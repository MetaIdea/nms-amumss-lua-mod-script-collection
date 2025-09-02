NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Exosolar's Starmap Upgrade",
["MOD_AUTHOR"]              = "Exosolar & Babscoole",
["LUA_AUTHOR"]              = "Makto & Updated by Babscoole",
["NMS_VERSION"]             = "5.73",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PathToTargetIndicatorTimeFactor",       "0.4"},
                                {"PathUISelectionMultiplierMouse",        "0.8"},
                                {"ShowPopupAtCameraMinDistance",          "5"},
                                {"GalacticPathPreferGuideStarsTillJump",  "30"},
                                {"IntroFadeInRate",                       "0.065"},
                                {"IntroTitleFadeTrigger",                 "4.5"},
                                {"IntroTitleHoldTime",                    "1"},
                                {"IntroFadeOutRate",                      "0.8"},
                                {"IntroCameraLookSmoothRate",             "4"},
                                {"Transition Time",                       "1"},
                                {"IntroCameraLookSmoothRate",             "4"},
                                {"Path Rendering Selected Start Alpha",   "0.7"},
                                {"Path Rendering Selected End Alpha",     "0.01"},
                                {"Star Blur Max Distance From Camera",    "0.01"},
                                {"Star Blur Max Blur Length",             "0.01"},
                                {"Star Blur Size Multiplier",             "0.01"},
                                {"Star Blur Line Width",                  "0.01"},
                                {"Star Blur Intro Multiplier",            "0.01"},
                                {"Anostreak Alpha",                       "1"},
                                {"Fade Game Out Time",                    "0.25"},
                                {"Fade Map In Time",                      "0.4"},
                                {"Fade Map Out Time",                     "0.22"},
                                {"Fade Game In Time",                     "0.35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Visited", "GcGalaxyMarkerSettings"},
                            ["PRECEDING_KEY_WORDS"] = {"IconSize"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "45"},
                                {"y", "45"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Yellow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.87"},
                                {"B", "0.46"},
                                {"A", "0.2"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Green"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.3"},
                                {"G", "1"},
                                {"B", "0.075"},
                                {"A", "0.85"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Blue"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.096"},
                                {"G", "0.321"},
                                {"B", "1"},
                                {"A", "0.65"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Purple"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.563"},
                                {"G", "0.246"},
                                {"B", "1"},
                                {"A", "0.65"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BaseStarProtanopiaColours", "Yellow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.32"},
                                {"B", "0.18"},
                                {"A", "0.7"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Camera"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Movement Blend Rate Locked",      "2"},
                                {"Movement Blend Rate Look Locked", "10"},
                                {"Free Pan Speed",                  "1"},
                                {"Free Pan Speed Turbo",            "3.5"},
                                {"Free Rotate Speed",               "1.8"},
                                {"Free Elevation Blend Rate",       "0.66"},
                                {"Zoom Out Elevation",              "0.1"},
                                {"Zoom Out Rate",                   "0.66"},
                                {"Zoom In Rate",                    "6"},
                                {"MinZoomDIstance",                 "3"},
                                {"MaxZoomDistance",                 "150"},
                                {"MinPushingZoomDistance",          "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 0,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.992157"},
                                {"G", "0.682353"},
                                {"B", "0.039216"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.027451"},
                                {"G", "0.686275"},
                                {"B", "0.588235"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.615686"},
                                {"G", "0.615686"},
                                {"B", "0.87451"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.92549"},
                                {"G", "0.517647"},
                                {"B", "0.956863"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.717647"},
                                {"G", "0.156863"},
                                {"B", "0.54902"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.772549"},
                                {"G", "0.670588"},
                                {"B", "0.670588"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.835294"},
                                {"G", "0.05098"},
                                {"B", "0.282353"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.576471"},
                                {"G", "0.776471"},
                                {"B", "0.992157"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.133333"},
                                {"G", "0.6"},
                                {"B", "0.733333"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 9,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.321569"},
                                {"G", "0.596078"},
                                {"B", "0.341176"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 0,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.980392"},
                                {"B", "0.168627"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.823529"},
                                {"G", "1"},
                                {"B", "0.12549"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.701961"},
                                {"G", "0.25098"},
                                {"B", "0.635294"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.52549"},
                                {"B", "0.05098"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.329412"},
                                {"G", "0.47451"},
                                {"B", "0.854902"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.933333"},
                                {"G", "0.92549"},
                                {"B", "0.901961"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.47451"},
                                {"G", "0.870588"},
                                {"B", "0.941176"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.411765"},
                                {"G", "0.709804"},
                                {"B", "0.141176"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.45098"},
                                {"G", "0.054902"},
                                {"B", "0.772549"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 9,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.039216"},
                                {"G", "0.470588"},
                                {"B", "0.058824"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 0,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.992157"},
                                {"G", "0.682353"},
                                {"B", "0.039216"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.027451"},
                                {"G", "0.686275"},
                                {"B", "0.588235"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.615686"},
                                {"G", "0.615686"},
                                {"B", "0.87451"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.92549"},
                                {"G", "0.517647"},
                                {"B", "0.956863"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.717647"},
                                {"G", "0.156863"},
                                {"B", "0.54902"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.772549"},
                                {"G", "0.670588"},
                                {"B", "0.670588"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.835294"},
                                {"G", "0.05098"},
                                {"B", "0.282353"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.576471"},
                                {"G", "0.776471"},
                                {"B", "0.992157"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.133333"},
                                {"G", "0.6"},
                                {"B", "0.733333"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
                            ["SECTION_ACTIVE"] = 9,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.321569"},
                                {"G", "0.596078"},
                                {"B", "0.341176"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 0,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.980392"},
                                {"B", "0.168627"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.823529"},
                                {"G", "1"},
                                {"B", "0.12549"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.701961"},
                                {"G", "0.25098"},
                                {"B", "0.635294"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.52549"},
                                {"B", "0.05098"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.329412"},
                                {"G", "0.47451"},
                                {"B", "0.854902"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.933333"},
                                {"G", "0.92549"},
                                {"B", "0.901961"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.47451"},
                                {"G", "0.870588"},
                                {"B", "0.941176"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.411765"},
                                {"G", "0.709804"},
                                {"B", "0.141176"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.45098"},
                                {"G", "0.054902"},
                                {"B", "0.772549"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
                            ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
                            ["SECTION_ACTIVE"] = 9,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.039216"},
                                {"G", "0.470588"},
                                {"B", "0.058824"},
                                {"A", "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetParameters"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FirstOrbitRadiusMin",   "52"},
                                {"FirstOrbitRadiusMax",   "200"},
                                {"OrbitRadiusOffsetMin",  "62"},
                                {"OrbitRadiusOffsetMax",  "300"},
                                {"OrbitRotationSpeedMin", "24"},
                                {"OrbitRotationSpeedMax", "48"},
                                {"OrbitLineWidth",        "0.4"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "MoonParameters"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FirstOrbitRadiusMin",   "14"},
                                {"FirstOrbitRadiusMax",   "17"},
                                {"OrbitRadiusOffsetMin",  "7"},
                                {"OrbitRadiusOffsetMax",  "11"},
                                {"OrbitRotationSpeedMin", "55"},
                                {"OrbitRotationSpeedMax", "350"},
                                {"OrbitLineWidth",        "0.33"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetRadii"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Large",  "11"},
                                {"Medium", "8.5"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SystemTilt",            "12"},
                                {"NonVisitedPlanetAlpha", "0.555"}
                            }
                        },
                    }
                }
            }
        }
    }
}