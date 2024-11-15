local modfilename = "Biomes.CloudsSunFog+LOD-(1.0-Hour)"
local lua_author  = "Silent"
local lua_version = "4.1"
local mod_author  = "Silent369"
local nms_version = "5.12"
local maintenance = mod_author
local description = [[

Realtime (NMS time) Day Length (Optional), Better Detailed Clouds, Slower Cloud Animation,
Sun Properties and Planet Fog Adjustments. Optional Lens Dirt Removal. Also disables all
Bloom effects but leaves lensing effects intact.

]]

--modifies the following:
--GCGRAPHICSGLOBALS.GLOBAL.MBIN
--GCENVIRONMENTGLOBALS.GLOBAL.MBIN
--GCSKYGLOBALS.GLOBALS.MBIN
--PIPELINES\PIPELINEDEFERRED.BIN
--PIPELINES\PIPELINEDEFERREDVR.BIN

--TIME RATIOS
--30 Mn =   1800
--01 Hr =   3600
--03 Hr =  10800
--06 Hr =  21600
--09 Hr =  32400
--12 Hr =  43200
--24 Hr =  86400
--48 Hr = 172800
--96 Hr = 345600
--192Hr = 691200

_Day_Length              = 3600 --Original "1800"

--CLOUD ANIM SPEED
_Anim_Scale              = 35    --Original "50" wtf!

----------------------------------------------------------------------------------------------------
--------------------------- SHOULD LEAVE THESE VALUES ALONE - PROBABLY!  ---------------------------
----------------------------------------------------------------------------------------------------

--SUN BRIGHTNESS
_LUTDFMult               = 1    --Original "0"
_Intensity               = 3.2  --Original "3"
_MaxSpaceFogStrength     = 0.2  --Original "0.5"
_ReflectionStrength      = 0.2  --Original "0.3"
_DOFFarStrengthWater     = 0    --Original "0"
_WeatherFilterSTCTime    = 2    --Original "10"

--STORM AUDIO
_ExtremeAudioLevel       = 0.2  --Original "0.3"
_StormAudioLevel         = 0.4  --Original "0.5"

--CLOUD RATIO
_CloudRatio              = 0.59  --Original "0.5-0.6"
_CloudRatioPrime         = 0.69  --Original "0.5-0.6"

--CLOUD SETTINGS
_LightScalar             = 5    --Original "5"
_AmbientScalar           = 1.72 --Original "1.721854"
_Density                 = 3    --Original "1"
_AmbientDensity          = 0.1  --Original "0.1"
_BaseScale               = 1    --Original "1"
_SampleScalar            = 3    --Original "5"
_SampleThreshold         = 0.3  --Original "0.25"
_CloudBottomFade         = 1    --Original "1"
_DetailScale             = 7    --Original "6"
_ErosionEdgeSize         = 0.75 --Original "0.5"
_CloudDistortion         = 79   --Original "50"
_CloudDistortionScale    = 1.15 --Original "1"
_MaxIterations           = 256  --Original "128"

--HORIZON
_HorizonFadeStartAlpha   = -0.3 --Original "0"
_HorizonFadeScalar       = 0.2  --Original "0.25"
_HorizonDistance         = 23165 --Original "11165"

--CLOUD HEIGHTS
_CloudHeightMin          = 2750  --Original "650"
_CloudHeightMax          = 2950  --Original "900"
_SkyAtmosphereHeight     = 6300 --Original "6000"
_StratosphereHeight      = 4300 --Original "4000"

_CloudHeightMinP         = 2400 --Original "1500"
_CloudHeightMaxP         = 2500 --Original "1500"
_SkyAtmosphereHeightP    = 7400 --Original "7200"
_StratosphereHeightP     = 5400 --Original "5200"

--Curve types that make sense with cloud animations.
--Although the effect varies quite alot depending on
--the curve type chosen.
--Linear
--SmoothInOut
--Logarithmic
--SmootherStep
--EaseInOutExpo
--EaseInOutSine
--EaseInOutQuad

_Curve                   = "Logarithmic" --Original "Linear"

--HEIGHT FOG HEIGHT
_HeightFogHeightMin      = -3   --Original "100"
_WaterAlphaHeightMin     = 30   --Original "40"

--SUN CLAMP
_SunClmHMin              = 300  --Original "300"
_SunClmHMax              = 390  --Original "390"
_SunClampAngle           = 55   --Original "55"
_SunFactorMin            = 0.4  --Original "0.4"

--STAR CHANCE - Reverted to default!
_BinaryStarChance        = 0.2  --Original "0.2"
_TernaryStarChance       = 0.05 --Original "0.05"

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = {"GCGRAPHICSGLOBALS.GLOBAL.MBIN"},
                    EXML_CT =
                    {
                        ----------------------------------------------------------------------------
                        --SUN LIGHT SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            PKW = "",
                            ITF = "FORCE",
                            VCT = {
                                {"LUTDistanceFlightMultiplier",  _LUTDFMult}, --Original "0"
                                {"SunLightIntensity",           _Intensity }, --Original "3"
                                {"MaxSpaceFogStrength",_MaxSpaceFogStrength}, --Original "0.5"
                                {"ReflectionStrength",  _ReflectionStrength}, --Original "0.3"
                                {"DOFFarStrengthWater",_DOFFarStrengthWater}, --Original "0"
                                {"ShadowLength",                      "800"}, --Original "400"
                                {"ShadowLengthStation",              "2000"}, --Original "1300"
                                ----------------------------------------------------------------------------
                                --Lens Dirt Options
                                ----------------------------------------------------------------------------
                                {"LensScale",                           "0"}, --Original "0.3"
                                {"LensDirt",                            "0"}, --Original "0.3"
                                {"LensScaleCave",                       "0"}, --Original "4"
                                {"LensDirtCave",                        "0"}, --Original "0.4"
                                ----------------------------------------------------------------------------
                                --LOD Value Changes --DISABLED FOR NOW, TOO MANY PERFORMANCE CAVEATS
                                ----------------------------------------------------------------------------
                                {"ForceUncachedTerrain",            "False"} -- Original "False"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --WIND DIRECTION
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"WindDir1",},
                            ITF = "FORCE",
                            VCT = {
                                {"x", "0.3"}, --Original "1"
                                {"y", "0.3"}, --Original "0.5"
                            }
                        },
                        {
                            PKW = {"WindDir2",},
                            ITF = "FORCE",
                            VCT = {
                                {"x", "0.3"}, --Original "1"
                                {"y", "-0.3"}, --Original "-0.75"
                            }
                        },
                    }
                },
                ----------------------------------------------------------------------------
                --GCENVIRONMENT GLOBALS
                ----------------------------------------------------------------------------
                {
                    MBIN_FS = {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
                    EXML_CT =
                    {
                        {
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            SECTION_UP = 1,
                            VCT = {
                                {"HeightFogHeightMin",      _HeightFogHeightMin}, --Original "100"
                                {"WaterAlphaHeightMin",    _WaterAlphaHeightMin}, --Original "40"
                                {"SunClampHeightMin",               _SunClmHMin}, --Original "300"
                                {"SunClampHeightMax",               _SunClmHMax}, --Original "390"
                                {"SunFactorMin",                  _SunFactorMin}, --Original "0.4"
                                {"InteractionRadius",                      0.60}, --Original "0.15"
                                ----------------------------------------------------------------------------
                                --Indoor Lighting
                                ----------------------------------------------------------------------------
                                {"IndoorsLightingWeightAround",            "2"}, --Original "0.8"
                                {"IndoorsLightingWeightOverhead",          "3"}, --Original "1.7"
                                {"IndoorsLightingWeightTowardsSun",      "0.1"}, --Original "0.2"
                                {"IndoorsLightingWeightGround",          "0.2"}, --Original "0.3"
                                {"IndoorsLightingTransitionTime",        "0.5"}, --Original "1.2"
                                {"IndoorsLightingThreshold",             "0.6"}, --Original "0.8"
                                {"IndoorsLightingPlanetMax",             "0.5"}, --Original "0.42"
                                {"IndoorsLightingAbandonedFreighterMax",   "5"}, --Original "1"
                                {"IndoorsLightingNexusMax",                "5"}, --Original "1"
                                {"IndoorsLightingFreighterMax",            "5"}, --Original "1"
                                {"IndoorsLightingSpaceStationMax",         "5"}, --Original "1"
                                ----------------------------------------------------------------------------
                                --No Asteroids while pulsing
                                ----------------------------------------------------------------------------
                                {"MaxAsteroidGenerationPerFramePulseJump", "0"}, --Original "1000"
                                ----------------------------------------------------------------------------
                                --LOD Value Changes
                                ----------------------------------------------------------------------------
                                {"TerrainFadeTime",                        "1"}, -- Original "2"
                                {"TerrainFadeTimeInShip",                  "1"}, -- Original "2"
                                {"CreatureFadeTime",                     "0.7"}, -- Original "1.5"
                                {"FloraFadeTimeMin",                     "0.3"}, -- Original "0.6"
                                {"FloraFadeTimeMax",                       "1"}  -- Original "2.25"
                            }
                        },
                        {
                            PKW = {"IndoorAmbientColour"},
                            ITF = "FORCE",
                            VCT = {
                                {"R",                                        1}, --Original "0"
                                {"G",                                        1}, --Original "0"
                                {"B",                                        1}, --Original "0"
                                {"A",                                      0.1}, --Original "0"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --LOD Value Changes
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"LODAdjust"},
                            SECTION_ACTIVE = {4},
                            REPLACE_TYPE = "ALLINSIDESECTION",
                            VCT = {{"IGNORE", "3"},} -- Original "1"
                        },
                        {
                            PKW = {"EnvironmentProperties"},
                            VCT = {
                                {"PlanetObjectSwitch",                    "175"}, -- Original "700"
                                {"PlanetLodSwitch0",                      "600"}, -- Original "300"
                                {"PlanetLodSwitch0Elevation",            "1400"}, -- Original "700"
                                {"PlanetLodSwitch1",                     "4000"}, -- Original "2000"
                                {"PlanetLodSwitch2",                    "20000"}, -- Original "10000"
                                {"PlanetLodSwitch3",                    "40000"}, -- Original "20000"
                            }
                        },
                        {
                            PKW = {"EnvironmentPrimeProperties"},
                            VCT = {
                                {"PlanetObjectSwitch",                    "500"}, -- Original "2000"
                                {"PlanetLodSwitch0",                     "4000"}, -- Original "2000"
                                {"PlanetLodSwitch0Elevation",            "4000"}, -- Original "2000"
                                {"PlanetLodSwitch1",                     "4000"}, -- Original "2000"
                                {"PlanetLodSwitch2",                    "20000"}, -- Original "10000"
                                {"PlanetLodSwitch3",                    "40000"}, -- Original "20000"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --ENVIRONMENT PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            PKW = "EnvironmentProperties",
                            ITF = "FORCE",
                            VCT = {
                                ----------------------------------------------------------------------------
                                --CLOUD SETTINGS NORMAL
                                ----------------------------------------------------------------------------
                                {"CloudHeightMin",             _CloudHeightMin}, --Original "650"
                                {"CloudHeightMax",             _CloudHeightMax}, --Original "900"
                                {"SkyAtmosphereHeight",   _SkyAtmosphereHeight}, --Original "6000"
                                {"StratosphereHeight",     _StratosphereHeight}, --Original "4000"
                            }
                        },
                        {
                            PKW = "EnvironmentPrimeProperties",
                            ITF = "FORCE",
                            VCT = {
                                ----------------------------------------------------------------------------
                                --CLOUD SETTINGS PRIME
                                ----------------------------------------------------------------------------
                                {"CloudHeightMin",            _CloudHeightMinP}, --Original "1500"
                                {"CloudHeightMax",            _CloudHeightMaxP}, --Original "1500"
                                {"SkyAtmosphereHeight",  _SkyAtmosphereHeightP}, --Original "7200"
                                {"StratosphereHeight",    _StratosphereHeightP}, --Original "5200"
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = {"SpacePlanetFogStrength"},
                            REPLACE_TYPE = "ALL",
                            LINE_OFFSET = "+1",
                            VCT = {
                                {"IGNORE", "3"},
                                {"IGNORE", "3"},
                                {"IGNORE", "4"},
                                {"IGNORE", "5"}
                            },
                        },
                        ----------------------------------------------------------------------------
                        --PRIMARY CLOUD PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"CloudProperties", "GcCloudProperties.xml"},
                            REPLACE_TYPE = "ALL",
                            ITF = "FORCE",
                            VCT = {
                                {"LightScalar",                     _LightScalar}, --Original "5"
                                {"AmbientScalar",                 _AmbientScalar}, --Original "1.721854"
                                {"AnimationScale",                   _Anim_Scale}, --Original "50"
                                {"Density",                             _Density}, --Original "1"
                                {"AmbientDensity",               _AmbientDensity}, --Original "0.1"
                                {"BaseScale",                         _BaseScale}, --Original "1"
                                {"SampleScalar",                   _SampleScalar}, --Original "5"
                                {"SampleThreshold",             _SampleThreshold}, --Original "0.25"
                                {"CloudBottomFade",             _CloudBottomFade}, --Original "1"
                                {"DetailScale",                     _DetailScale}, --Original "6"
                                {"ErosionEdgeSize",             _ErosionEdgeSize}, --Original "0.5"
                                {"CloudDistortion",             _CloudDistortion}, --Original "50"
                                {"CloudDistortionScale",   _CloudDistortionScale}, --Original "1"
                                {"MaxIterations",                 _MaxIterations}, --Original "128"
                                {"HorizonFadeStartAlpha", _HorizonFadeStartAlpha}, --Original "0.25"
                                {"HorizonFadeScalar",         _HorizonFadeScalar}, --Original "0.25"
                                {"HorizonDistance",             _HorizonDistance}, --Original "11165"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD COLOUR \ GRADIENT SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"CloudProperties", "GcCloudProperties.xml"},
                            PKW = {"CloudBaseColour"},
                            ITF = "FORCE",
                            VCT = {
                                {"R", 0.01}, --Original "0.026"
                                {"G",  0.1}, --Original "0.151"
                                {"B", 0.15}, --Original "0.275"
                            }
                        },
                        {
                            SKW = {"CloudProperties", "GcCloudProperties.xml"},
                            PKW = {"CloudTopColour"},
                            ITF = "FORCE",
                            VCT = {
                                {"R", 0.990}, --Original "0.982"
                                {"G", 0.999}, --Original "0.999"
                                {"B", 1},     --Original "1"
                            }
                        },
                    },
                },
                ----------------------------------------------------------------------------
                --SKY GLOBALS SETTINGS
                ----------------------------------------------------------------------------
                {
                    MBIN_FS = { "GCSKYGLOBALS.GLOBALS.MBIN" },
                    EXML_CT =
                    {
                        ----------------------------------------------------------------------------
                        --SUN PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"PlanetProperties", "PlanetSky"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"AtmosphereThickness","0.1595575"}, --Original "0.319115"
                                {"SunSize",                  "0.1"}, --Original "0.25"
                                {"SunSurroundSize",         "0.01"}, --Original "10"
                                {"SunSurroundStrength",     "0.01"}, --Original "12"
                            }
                        },
                        {
                            PKW = {"PlanetPrimeProperties", "PlanetSky"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"AtmosphereThickness","0.1595575"}, --Original "0.319115"
                                {"SunSize",                  "0.1"}, --Original "0.25"
                                {"SunSurroundSize",         "0.01"}, --Original "10"
                                {"SunSurroundStrength",     "0.01"}, --Original "12"
                            }
                        },
                        -- Sun size in space, provides a better sense of distance by making it smaller
                        {
                            SKW = {"SpaceSkyMin", "GcSpaceSkyProperties.xml"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"SunSize",               "0.0001"}, --Original "0.005"
                                {"StarVisibility",          "0.50"}, --Original "0.82"
                                {"CenterPower",                "2"}, --Original "2.5"
                                {"AtmosphereThickness",     "0.14"}, --Original "0.28"
                            }
                        },
                        {
                            SKW = {"SpaceSkyMax", "GcSpaceSkyProperties.xml"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"SunSize",               "0.0001"}, --Original "0.005"
                                {"StarVisibility",          "0.50"}, --Original "0.82"
                                {"CenterPower",                "2"}, --Original "2.5"
                                {"AtmosphereThickness",     "0.14"}, --Original "0.28"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --GLOBAL PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            ITF = "FORCE",
                            VCT = {
                                --DAY / NIGHT CYCLE LENGTH
                                {"DayLength",                           _Day_Length}, --Original "1800"
                                --SKY PROPERTIES--
                                {"SunClampAngle",                    _SunClampAngle}, --Original "55"
                                {"RainbowWidth",                             "0.15"}, --Original "0.13"
                                {"RainbowAlpha",                             "0.05"}, --Original "0.1"
                                {"RainbowStormAlpha",                        "0.01"}, --Original ""
                                {"ExtremeAudioLevel",            _ExtremeAudioLevel}, --Original "0.3"
                                {"StormAudioLevel",                _StormAudioLevel}, --Original "0.5"
                                --STAR CHANCE--
                                {"BinaryStarChance",              _BinaryStarChance}, --Original "0.2"
                                {"TernaryStarChance",            _TernaryStarChance}, --Original "0.05"
                                --SPACE FOG--
                                {"SpaceFogStrength",                            "0"}, --Original "0.04"
                            }
                        },
                        {
                            PKW = {"DayLightColour",},
                            VCT = {
                                {"R",                           "1"}, --Original "1"
                                {"G",                           "1"}, --Original "1"
                                {"B",                        "0.91"}, --Original "0.904"
                                {"A",                           "1"}, --Original "1"
                            }
                        },
                        {
                            PKW = {"NightSkyColours", "HeightFogColour",},
                            VCT = {
                                {"R",                       "0.007"}, --Original "207"
                                {"G",                       "0.007"}, --Original "207"
                                {"B",                       "0.007"}, --Original "207"
                                {"A",                           "1"}, --Original "1"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --PHOTO MODE VIGNETTE
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"PhotoModeVignette", "Vector2f.xml"},
                            VCT = {
                                {"x",                         "1.0"}, --Original "0.9"
                                {"y",                         "1.0"}, --Original "0.3"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD ADJUST CURVE
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"CloudAdjust", "AdjustMaxCurve"},
                            VCT = {{"Curve", _Curve},} --Original "Linear"
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD RATIO PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            PKW = "PlanetProperties",
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"CloudRatio", _CloudRatio},}  --Original "0.5-0.6"
                        },
                        {
                            PKW = "PlanetPrimeProperties",
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"CloudRatio", _CloudRatioPrime},} --Original "0.5-0.6"
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD COVERAGE PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            PKW = "PlanetCloudsMin",
                            ITF = "FORCE",
                            REPLACE_TYPE        = "ALL",
                            VCT = {
                                {"Coverage1",                   "1"}, --Original "0.5"
                                {"Coverage2",                   "2"}, --Original "1"
                                {"Coverage3",                   "3"}, --Original "1"
                                {"Offset1",                     "1"}, --Original "0"
                                {"Offset2",                     "3"}, --Original "0"
                                {"Offset3",                     "5"}, --Original "0"
                                {"RateOfChange",             "0.01"}, --Original "0.1"
                                {"SecondaryRateOfChange",   "0.025"}, --Original "0.15"
                                {"Cloudiness",              "ClearWithCloudySpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
                            }
                        },
                        {
                            PKW = "PlanetCloudsMax",
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"Coverage1",                   "6"}, --Original "3"
                                {"Coverage2",                   "9"}, --Original "6"
                                {"Coverage3",                  "12"}, --Original "9"
                                {"Offset2",                     "5"}, --Original "5"
                                {"Offset2",                    "10"}, --Original "5"
                                {"Offset3",                    "15"}, --Original "5"
                                {"RateOfChange",             "0.01"}, --Original "0.1"
                                {"SecondaryRateOfChange",   "0.045"}, --Original "0.15"
                                {"Cloudiness",              "ClearWithCloudySpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --HEAVEY AIR SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"HeavyAir", "GcHeavyAirSetting.xml"},
                            PKW = {"Settings", "GcHeavyAirSettingValues.xml"},
                            SECTION_UP = 1,
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"Thickness",                   "0"}, --Original "1"
                                {"Alpha1",                      "0"}, --Original "1"
                                {"Alpha2",                      "0"}, --Original "1"
                            }
                        },
                    }
                },
            }
        },
    }
}
