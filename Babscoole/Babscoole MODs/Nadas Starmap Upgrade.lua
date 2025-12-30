NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Nadas Starmap Upgrade",
["MOD_AUTHOR"]      = "Exosolar & Babscoole",
["LUA_AUTHOR"]      = "Makto & Updated by Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Makes various tweaks to the starmap including a re-color of stars",
["MODIFICATIONS"]   =
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
                {"PathToTargetIndicatorTimeFactor",       "0.400000"},
                {"PathUISelectionMultiplierMouse",        "0.800000"},
                {"ShowPopupAtCameraMinDistance",          "5.000000"},
                {"GalacticPathPreferGuideStarsTillJump",  "30.000000"},
                {"IntroFadeInRate",                       "0.065000"},
                {"IntroTitleFadeTrigger",                 "4.500000"},
                {"IntroTitleHoldTime",                    "1.000000"},
                {"IntroFadeOutRate",                      "0.800000"},
                {"IntroCameraLookSmoothRate",             "4.000000"},
                {"Transition Time",                       "1.000000"},
                {"IntroCameraLookSmoothRate",             "4.000000"},
                {"Path Rendering Selected Start Alpha",   "0.700000"},
                {"Path Rendering Selected End Alpha",     "0.010000"},
                {"Star Blur Max Distance From Camera",    "0.010000"},
                {"Star Blur Max Blur Length",             "0.010000"},
                {"Star Blur Size Multiplier",             "0.010000"},
                {"Star Blur Line Width",                  "0.010000"},
                {"Star Blur Intro Multiplier",            "0.010000"},
                {"Anostreak Alpha",                       "1.000000"},
                {"Fade Game Out Time",                    "0.250000"},
                {"Fade Map In Time",                      "0.400000"},
                {"Fade Map Out Time",                     "0.220000"},
                {"Fade Game In Time",                     "0.350000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Visited", "GcGalaxyMarkerSettings"},
              ["PRECEDING_KEY_WORDS"] = {"IconSize"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "45.000000"},
                {"Y", "45.000000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Yellow"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.870000"},
                {"B", "0.460000"},
                {"A", "0.200000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Green"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.300000"},
                {"G", "1.000000"},
                {"B", "0.075000"},
                {"A", "0.850000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Blue"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.0960000"},
                {"G", "0.321000"},
                {"B", "1.000000"},
                {"A", "0.650000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Purple"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.563000"},
                {"G", "0.246000"},
                {"B", "1.000000"},
                {"A", "0.650000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"BaseStarProtanopiaColours", "Yellow"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.320000"},
                {"B", "0.180000"},
                {"A", "0.700000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Camera"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Movement Blend Rate Locked",      "2.000000"},
                {"Movement Blend Rate Look Locked", "10.000000"},
                {"Free Pan Speed",                  "1.000000"},
                {"Free Pan Speed Turbo",            "3.500000"},
                {"Free Rotate Speed",               "1.800000"},
                {"Free Elevation Blend Rate",       "0.660000"},
                {"Zoom Out Elevation",              "0.100000"},
                {"Zoom Out Rate",                   "0.660000"},
                {"Zoom In Rate",                    "6.000000"},
                {"MinZoomDIstance",                 "3.000000"},
                {"MaxZoomDistance",                 "150.000000"},
                {"MinPushingZoomDistance",          "80.000000"},
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
                {"A", "1.000000"}
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
                {"A", "1.000000"}
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
                {"B", "0.874510"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.925490"},
                {"G", "0.517647"},
                {"B", "0.956863"},
                {"A", "1.000000"}
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
                {"B", "0.549020"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.835294"},
                {"G", "0.050980"},
                {"B", "0.282353"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
              ["SECTION_ACTIVE"] = 8,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.133333"},
                {"G", "0.600000"},
                {"B", "0.733333"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.980392"},
                {"B", "0.168627"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.823529"},
                {"G", "1.000000"},
                {"B", "0.125490"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.701961"},
                {"G", "0.250980"},
                {"B", "0.635294"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.525490"},
                {"B", "0.050980"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.329412"},
                {"G", "0.474510"},
                {"B", "0.854902"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 5,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.933333"},
                {"G", "0.925490"},
                {"B", "0.901961"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.474510"},
                {"G", "0.870588"},
                {"B", "0.941176"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 8,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.450980"},
                {"G", "0.054902"},
                {"B", "0.772549"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
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
                {"A", "1.000000"}
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
                {"A", "1.000000"}
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
                {"B", "0.874510"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.925490"},
                {"G", "0.517647"},
                {"B", "0.956863"},
                {"A", "1.000000"}
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
                {"B", "0.549020"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.835294"},
                {"G", "0.050980"},
                {"B", "0.282353"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Primary Default Colours"},
              ["SECTION_ACTIVE"] = 8,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.133333"},
                {"G", "0.600000"},
                {"B", "0.733333"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.980392"},
                {"B", "0.168627"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.823529"},
                {"G", "1.000000"},
                {"B", "0.125490"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.701961"},
                {"G", "0.250980"},
                {"B", "0.635294"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.525490"},
                {"B", "0.050980"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.329412"},
                {"G", "0.474510"},
                {"B", "0.854902"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 5,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.933333"},
                {"G", "0.925490"},
                {"B", "0.901961"},
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.474510"},
                {"G", "0.870588"},
                {"B", "0.941176"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FinalAnimationRenderSetup", "GcGalaxyRenderSetupData"},
              ["PRECEDING_KEY_WORDS"] = {"Map Large Area Secondary Default Colours"},
              ["SECTION_ACTIVE"] = 8,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.450980"},
                {"G", "0.054902"},
                {"B", "0.772549"},
                {"A", "1.000000"}
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
                {"A", "1.000000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetParameters"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FirstOrbitRadiusMin",   "52.000000"},
                {"FirstOrbitRadiusMax",   "200.000000"},
                {"OrbitRadiusOffsetMin",  "62.000000"},
                {"OrbitRadiusOffsetMax",  "300.000000"},
                {"OrbitRotationSpeedMin", "24.000000"},
                {"OrbitRotationSpeedMax", "48.000000"},
                {"OrbitLineWidth",        "0.400000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "MoonParameters"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FirstOrbitRadiusMin",   "14.000000"},
                {"FirstOrbitRadiusMax",   "17.000000"},
                {"OrbitRadiusOffsetMin",  "7.000000"},
                {"OrbitRadiusOffsetMax",  "11.000000"},
                {"OrbitRotationSpeedMin", "55.000000"},
                {"OrbitRotationSpeedMax", "350.000000"},
                {"OrbitLineWidth",        "0.330000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetRadii"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Large",  "11.000000"},
                {"Medium", "8.500000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SystemTilt",            "12.000000"},
                {"NonVisitedPlanetAlpha", "0.555000"}
              }
            },
          }
        }
      }
    }
  }
}