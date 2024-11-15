local modfilename = "Biomes.CloudsSunFog+LOD-(3.0-Hour)"
local lua_author  = "Silent"
local lua_version = "4.5"
local mod_author  = "Silent369"
local nms_version = "5.26"
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

_Day_Length              = 10800 --Original "1800"

--CLOUD ANIM SPEED
_Anim_Scale              = 30    --Original "50" wtf!

----------------------------------------------------------------------------------------------------
--------------------------- SHOULD LEAVE THESE VALUES ALONE - PROBABLY!  ---------------------------
----------------------------------------------------------------------------------------------------

--SUN BRIGHTNESS
_LUTDFMult               = 1    --Original "0"
_Intensity               = 3.2  --Original "3"
_MaxSpaceFogStrength     = 0.2  --Original "0.5"
_ReflectionStrength      = 0.2  --Original "0.3"
_DOFFarStrengthWater     = 0    --Original "0"
_WeatherFilterSTCTime    = 5    --Original "10"

--STORM SETTINGS
_StormWarningTime        = 20   --Original "25"
_StormTransitionTime     = 20   --Original "25"
_MaxCloudCover           = 0.89 --Original "0.8"
_MaxStormCloudCover      = 0.99 --Original "0.8"
_CloudCoverSmoothTime    = 20   --Original "10"
_CloudRatioSmoothTime    = 5    --Original "4"
_StormCloudSmoothTime    = 1    --Original "0.8"

--STORM SETTINGS
_MinStormLengthLow       = 60   --Original "120"
_MaxStormLengthLow       = 90   --Original "180"
_MinStormLengthHigh      = 75   --Original "150"
_MaxStormLengthHigh      = 160  --Original "320"
_ExtremeAudioLevel       = 0.2  --Original "0.3"
_StormAudioLevel         = 0.4  --Original "0.5"

--CLOUD RATIO
_CloudRatio              = 0.59  --Original "0.5-0.6"
_CloudRatioPrime         = 0.69  --Original "0.5-0.6"

--CLOUD SETTINGS
_LightScalar             = 5    --Original "5"
_AmbientScalar           = 1.72 --Original "1.721854"
_SunRayLength            = 80   --Original "50"
_Density                 = 10   --Original "1"
_AmbientDensity          = 5    --Original "0.1"
_ForwardScatteringG      = 1.0  --Original "0.9"
_BackwardScatteringG     = 0.7  --Original "0.3"
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

--Curve types that make sense with cloud animations
--Linear
--SmoothInOut
--Logarithmic
--SmootherStep
--EaseInOutExpo
--EaseInOutSine
--EaseInOutQuad

_Curve                   = "Logarithmic" --Original "Linear"

--WIND OFFSET
WindOffsetX              = 0.1  --Original "0.5"
WindOffsetY              = 0.1  --Original "0.5"

--STRATOSPHERE WIND OFFSET
SWindOffsetX             = -0.15 --Original "-0.5"
SWindOffsetY             = 0.15  --Original "0.5"

--CLOUD GRADIENT
Cloud01X                 = 0.08  --Original "0.1"
Cloud01Y                 = 0.12  --Original "0.15"
Cloud01Z                 = 0.10  --Original "0.15"
Cloud01T                 = 0.15  --Original "0.2"

Cloud02X                 = 0     --Original "0"
Cloud02Y                 = 0.12  --Original "0.1"
Cloud02Z                 = 0.15  --Original "0.3"
Cloud02T                 = 0.3   --Original "0.6"

Cloud03X                 = 0     --Original "0"
Cloud03Y                 = 0.12  --Original "0.2"
Cloud03Z                 = 0.2   --Original "0.3"
Cloud03T                 = 0.4   --Original "1"

--FOG HEIGHT
_HeightFogHeightMin      = -3   --Original "100"
_WaterAlphaHeightMin     = 20   --Original "40"

--PLANET FOG
_PPF_FogStrength         = 0.03 --Original "0.04"
_PPF_FogMax              = 0.7  --Original "1"
_PPF_FogColourStrength   = 0.8  --Original "10"
_PPF_HeightFogStrength   = 0.10 --Original "0.08"
_PPF_HeightFogFOStrength = 0.12 --Original "0.25"
_PPF_HeightFogMax        = 0.65 --Original "0.8"
_PPF_FogHeight           = 96   --Original "128"

--PLANET FLIGHT FOG
_PFF_FogStrength         = 0.03 --Original "0.04"
_PFF_FogMax              = 0.7  --Original "1"
_PFF_FogColourStrength   = 0.8  --Original "10"
_PFF_HeightFogStrength   = 0.10 --Original "0.08"
_PFF_HeightFogFOStrength = 0.12 --Original "0.25"
_PFF_HeightFogMax        = 0.65 --Original "0.8"
_PFF_FogHeight           = 96   --Original "128"

--PLANET EXTREME FOG
_PXF_FogStrength         = 0.4  --Original "0.5"
_PXF_FogMax              = 0.6  --Original "0.9"
_PXF_FogColourStrength   = 0.8  --Original "6"
_PXF_HeightFogStrength   = 0.10 --Original "0.3"
_PXF_HeightFogFOStrength = 0.05 --Original "0.1"
_PXF_HeightFogMax        = 0.4  --Original "0.6"
_PXF_FogHeight           = 6    --Original "8"

--PLANET STORM FOG
_PSF_FogStrength         = 0.85 --Original "1.5"
_PSF_FogMax              = 0.7  --Original "0.95"
_PSF_FogColourStrength   = 0.8  --Original "2.5"
_PSF_HeightFogStrength   = 0.10 --Original "0.5"
_PSF_HeightFogFOStrength = 0.15 --Original "0.3"
_PSF_HeightFogMax        = 0.4  --Original "0.6"
_PSF_FogHeight           = 2    --Original "4"

--SUN CLAMP
_SunClmHMin              = 300  --Original "300"
_SunClmHMax              = 390  --Original "390"
_SunClampAngle           = 55   --Original "55"
_SunFactorMin            = 0.4  --Original "0.4"

--STAR CHANCE
_BinaryStarChance        = 0.2  --Original "0.2"
_TernaryStarChance       = 0.05 --Original "0.05"

--Original
--  <Property name="SpacePlanetFogStrength">
--    <Property value="5" />
--    <Property value="5" />
--    <Property value="5" />
--    <Property value="5" />
--  </Property>

_SpacePlanetFogStrength =
[[
    <Property name="SpacePlanetFogStrength">
      <Property value="5" />
      <Property value="5" />
      <Property value="6" />
      <Property value="7" />
    </Property>
]]

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
                    MBIN_FS = [[GCGRAPHICSGLOBALS.GLOBAL.MBIN]],
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
                                --LOD Value Changes
                                ----------------------------------------------------------------------------

                                {"ForceUncachedTerrain",             "True"}, --Original "False"
                                {"EnableVariableUpdate",            "False"}, --Original "True"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --LIGHT SHAFT PROPERTIES
                        ----------------------------------------------------------------------------

                        {
                            PKW = {"LightShaftProperties",},
                            ITF = "FORCE",
                            VCT = {
                                {"LightShaftScattering",   "2E-06"}, --Original "0.55"
                                {"LightShaftStrength",       "0.4"}, --Original "2"
                                {"LightShaftBottom",       "0.002"}, --Original "0"
                                {"LightShaftTop",            "0.1"}, --Original "0.75"
                            }
                        },
                        {
                            PKW = {"LightShaftProperties", "LightShaftColourBottom",},
                            ITF = "FORCE",
                            VCT = {
                                {"R",                        "0.1"}, --Original "0.263"
                                {"G",                        "0.1"}, --Original "0.263"
                                {"B",                       "0.13"}, --Original "0.263"
                                {"A",                        "0.5"}, --Original "1"
                            }
                        },
                        {
                            PKW = {"LightShaftProperties", "LightShaftColourTop",},
                            ITF = "FORCE",
                            VCT = {
                                {"R",                        "0.1"}, --Original "0.387"
                                {"G",                        "0.1"}, --Original "0.341"
                                {"B",                       "0.13"}, --Original "0.253"
                                {"A",                        "0.5"}, --Original "1"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --STORM LIGHT SHAFT PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"StormLightShaftProperties",},
                            ITF = "FORCE",
                            VCT = {
                                {"LightShaftScattering",   "4E-06"}, --Original "0.55"
                                {"LightShaftStrength",       "0.4"}, --Original "25"
                                {"LightShaftBottom",       "0.002"}, --Original "0"
                                {"LightShaftTop",            "0.1"}, --Original "0.25"
                            }
                        },
                        {
                            PKW = {"StormLightShaftProperties", "LightShaftColourBottom",},
                            ITF = "FORCE",
                            VCT = {
                                {"R",                        "0.1"}, --Original "0.531"
                                {"G",                        "0.1"}, --Original "0.493"
                                {"B",                       "0.13"}, --Original "0.443"
                                {"A",                        "0.5"}, --Original "1"
                            }
                        },
                        {
                            PKW = {"StormLightShaftProperties", "LightShaftColourTop",},
                            ITF = "FORCE",
                            VCT = {
                                {"R",                        "0.1"}, --Original "0.04"
                                {"G",                        "0.1"}, --Original "0.034"
                                {"B",                       "0.13"}, --Original "0.03"
                                {"A",                        "0.5"}, --Original "1"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --WIND DIRECTION
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"WindDir1",},
                            ITF = "FORCE",
                            VCT = {
                                {"x",                        "0.3"}, --Original "1"
                                {"y",                        "0.3"}, --Original "0.5"
                            }
                        },
                        {
                            PKW = {"WindDir2",},
                            ITF = "FORCE",
                            VCT = {
                                {"x",                        "0.3"}, --Original "1"
                                {"y",                        "-0.3"}, --Original "-0.75"
                            }
                        },
                    }
                },

                ----------------------------------------------------------------------------
                --GC ENVIRONMENT GLOBALS
                ----------------------------------------------------------------------------

                {
                    MBIN_FS = [[GCENVIRONMENTGLOBALS.GLOBAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            REPLACE_TYPE = "ALL",
                            ITF = "FORCE",
                            VCT = {
                                {"IndoorsLightingTransitionTime",         "3.2"}, --Original "1.2"
                                {"HeightFogHeightMin",      _HeightFogHeightMin}, --Original "100"
                                {"WaterAlphaHeightMin",    _WaterAlphaHeightMin}, --Original "40"
                                {"SunClampHeightMin",               _SunClmHMin}, --Original "300"
                                {"SunClampHeightMax",               _SunClmHMax}, --Original "390"
                                {"SunFactorMin",                  _SunFactorMin}, --Original "0.4"
                                {"InteractionRadius",                    "0.30"}, --Original "0.15"

                                ----------------------------------------------------------------------------
                                --No Asteroids while pulsing
                                ----------------------------------------------------------------------------

                                {"MaxAsteroidGenerationPerFramePulseJump",  "0"}, --Original "1000"

                                ----------------------------------------------------------------------------
                                --LOD Value Changes
                                ----------------------------------------------------------------------------

                                {"TerrainFadeTime",                         "1"}, -- Original "2"
                                {"TerrainFadeTimeInShip",                   "1"}, -- Original "2"
                                {"CreatureFadeTime",                      "0.7"}, -- Original "1.5"
                                {"FloraFadeTimeMin",                      "0.3"}, -- Original "0.6"
                                {"FloraFadeTimeMax",                        "1"}  -- Original "2.25"
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
                                {"PlanetObjectSwitch",                    "150"}, -- Original "700"
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
                        ----------------------------------------------------------------------------
                        --CLOUD SETTINGS NORMAL
                        ----------------------------------------------------------------------------
                        {
                            PKW = "EnvironmentProperties",
                            ITF = "FORCE",
                            VCT = {
                                {"CloudHeightMin",             _CloudHeightMin}, --Original "650"
                                {"CloudHeightMax",             _CloudHeightMax}, --Original "900"
                                {"SkyAtmosphereHeight",   _SkyAtmosphereHeight}, --Original "6000"
                                {"StratosphereHeight",     _StratosphereHeight}, --Original "4000"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD SETTINGS PRIME
                        ----------------------------------------------------------------------------
                        {
                            PKW = "EnvironmentPrimeProperties",
                            ITF = "FORCE",
                            VCT = {
                                {"CloudHeightMin",            _CloudHeightMinP}, --Original "1500"
                                {"CloudHeightMax",            _CloudHeightMaxP}, --Original "1500"
                                {"SkyAtmosphereHeight",  _SkyAtmosphereHeightP}, --Original "7200"
                                {"StratosphereHeight",    _StratosphereHeightP}, --Original "5200"
                            }
                        },
                        {
                            PKW = "SpacePlanetFogStrength",
                            REPLACE_TYPE = "ALL",
                            REMOVE = "SECTION",
                        },
                        {
                            SKW = {"MinWaterReflections", "0.2"},
                            LINE_OFFSET = "+0",
                            ADD = _SpacePlanetFogStrength,
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
                                {"SunRayLength",                   _SunRayLength}, --Original "50"
                                {"AnimationScale",                   _Anim_Scale}, --Original "50"
                                {"Density",                             _Density}, --Original "1"
                                {"AmbientDensity",               _AmbientDensity}, --Original "0.1"
                                {"ForwardScatteringG",       _ForwardScatteringG}, --Original "0.9"
                                {"BackwardScatteringG",     _BackwardScatteringG}, --Original "0.3"
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
                        --CLOUD GRADIENT SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"CloudHeightGradient1"},
                            ITF = "FORCE",
                            VCT = {
                                {"x",                   Cloud01X}, --Original "0.1"
                                {"y",                   Cloud01Y}, --Original "0.15"
                                {"z",                   Cloud01Z}, --Original "0.15"
                                {"t",                   Cloud01T}, --Original "0.2"
                            }
                        },
                        {
                            PKW = {"CloudHeightGradient2"},
                            ITF = "FORCE",
                            VCT = {
                                {"x",                   Cloud02X}, --Original "0"
                                {"y",                   Cloud02Y}, --Original "0.1"
                                {"z",                   Cloud02Z}, --Original "0.3"
                                {"t",                   Cloud02T}, --Original "0.6"
                            }
                        },
                        {
                            PKW = {"CloudHeightGradient3"},
                            ITF = "FORCE",
                            VCT = {
                                {"x",                   Cloud03X}, --Original "0"
                                {"y",                   Cloud03Y}, --Original "0.2"
                                {"z",                   Cloud03Z}, --Original "0.3"
                                {"t",                   Cloud03T}, --Original "1"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --WIND OFFSET SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"WindOffset"},
                            ITF = "FORCE",
                            VCT = {
                                {"x",                   WindOffsetX}, --Original "0.5"
                                {"y",                   WindOffsetY}, --Original "0.5"
                            }
                        },
                        {
                            PKW = {"StratosphereWindOffset"},
                            ITF = "FORCE",
                            VCT = {
                                {"x",                   SWindOffsetX},
                                {"y",                   SWindOffsetY},
                            }
                        },
                        ----------------------------------------------------------------------------
                        --WIND SHEAR SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"ShearWindSettings", "Octave0"},
                            ITF = "FORCE",
                            VCT = {
                                {"MinStrength",            "0.05"}, --Original "0.1"
                                {"MaxStrength",           "0.075"}, --Original "0.15"
                            }
                        },
                    },
                },

                ----------------------------------------------------------------------------
                --SKY GLOBALS SETTINGS
                ----------------------------------------------------------------------------

                {
                    MBIN_FS = [[GCSKYGLOBALS.GLOBALS.MBIN]],
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

                                --STORM SETTINGS
                                {"StormWarningTime",              _StormWarningTime}, --Original "25"
                                {"StormTransitionTime",        _StormTransitionTime}, --Original "25"
                                {"MaxCloudCover",                    _MaxCloudCover}, --Original "0.8"
                                {"MaxStormCloudCover",          _MaxStormCloudCover}, --Original "0.8"
                                {"CloudCoverSmoothTime",      _CloudCoverSmoothTime}, --Original "10"
                                {"CloudRatioSmoothTime",      _CloudRatioSmoothTime}, --Original "4"
                                {"StormCloudSmoothTime",      _StormCloudSmoothTime}, --Original "0.8"
                                {"WeatherFilterSpaceTransitionChangeTime", _WeatherFilterSTCTime}, --Original "10"

                                {"MinStormLengthLow",            _MinStormLengthLow}, --Original "120"
                                {"MaxStormLengthLow",            _MaxStormLengthLow}, --Original "180"
                                {"MinStormLengthHigh",          _MinStormLengthHigh}, --Original "150"
                                {"MaxStormLengthHigh",          _MaxStormLengthHigh}, --Original "320"

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
                        --FOG PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            SKW = {
                                {"PlanetProperties",      "GcPlanetSkyProperties.xml", "PlanetFog", "GcFogProperties.xml"},
                                {"PlanetPrimeProperties", "GcPlanetSkyProperties.xml", "PlanetFog", "GcFogProperties.xml"},
                            },
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              _PPF_FogStrength},
                                {"FogMax",                   _PPF_FogMax},
                                {"FogColourStrength",        _PPF_FogColourStrength},
                                {"HeightFogStrength",        _PPF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", _PPF_HeightFogFOStrength},
                                {"HeightFogMax",             _PPF_HeightFogMax},
                                {"FogHeight",                _PPF_FogHeight},
                            }
                        },
                        {
                            SKW = {
                                {"PlanetProperties",      "GcPlanetSkyProperties.xml", "PlanetExtremeFog", "GcFogProperties.xml"},
                                {"PlanetPrimeProperties", "GcPlanetSkyProperties.xml", "PlanetExtremeFog", "GcFogProperties.xml"},
                            },
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              _PXF_FogStrength},
                                {"FogMax",                   _PXF_FogMax},
                                {"FogColourStrength",        _PXF_FogColourStrength},
                                {"HeightFogStrength",        _PXF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", _PXF_HeightFogFOStrength},
                                {"HeightFogMax",             _PXF_HeightFogMax},
                                {"FogHeight",                _PXF_FogHeight},
                            }
                        },
                        {
                            SKW = {
                                {"PlanetProperties",      "GcPlanetSkyProperties.xml", "PlanetStormFog", "GcFogProperties.xml"},
                                {"PlanetPrimeProperties", "GcPlanetSkyProperties.xml", "PlanetStormFog", "GcFogProperties.xml"},
                            },
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              _PSF_FogStrength},
                                {"FogMax",                   _PSF_FogMax},
                                {"FogColourStrength",        _PSF_FogColourStrength},
                                {"HeightFogStrength",        _PSF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", _PSF_HeightFogFOStrength},
                                {"HeightFogMax",             _PSF_HeightFogMax},
                                {"FogHeight",                _PSF_FogHeight},
                            }
                        },
                        {
                            SKW = {
                                {"PlanetProperties",      "GcPlanetSkyProperties.xml", "PlanetFlightFog", "GcFogProperties.xml"},
                                {"PlanetPrimeProperties", "GcPlanetSkyProperties.xml", "PlanetFlightFog", "GcFogProperties.xml"},
                            },
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              _PFF_FogStrength},
                                {"FogMax",                   _PFF_FogMax},
                                {"FogColourStrength",        _PFF_FogColourStrength},
                                {"HeightFogStrength",        _PFF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", _PFF_HeightFogFOStrength},
                                {"HeightFogMax",             _PFF_HeightFogMax},
                                {"FogHeight",                _PFF_FogHeight},
                            }
                        },
                        {
                            SKW = {"AbandonedFreighterFog", "GcFogProperties.xml"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              _PFF_FogStrength},
                                {"FogMax",                   _PFF_FogMax},
                                {"FogColourStrength",        _PFF_FogColourStrength},
                                {"HeightFogStrength",        _PFF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", _PFF_HeightFogFOStrength},
                                {"HeightFogMax",             _PFF_HeightFogMax},
                                {"FogHeight",                _PFF_FogHeight},
                            }
                        },

                        ----------------------------------------------------------------------------
                        --CLOUD ADJUST CURVE
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"CloudAdjust", "AdjustMaxCurve"},
                            VCT = {
                                {"Curve",           _Curve}, --Original "Linear"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD RATIO PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            PKW = "PlanetProperties",
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"CloudRatio",      _CloudRatio}, --Original "0.5-0.6"
                            }
                        },
                        {
                            PKW = "PlanetPrimeProperties",
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"CloudRatio",      _CloudRatioPrime}, --Original "0.5-0.6"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD COVERAGE PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            PKW = "PlanetCloudsMin",
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"Coverage1",                   "1"}, --Original "0.5"
                                {"Coverage2",                   "2"}, --Original "1"
                                {"Coverage3",                   "3"}, --Original "1"
                                {"Offset1",                     "1"}, --Original "0"
                                {"Offset2",                     "3"}, --Original "0"
                                {"Offset3",                     "5"}, --Original "0"
                                {"RateOfChange",             "0.01"}, --Original "0.1"
                                {"SecondaryRateOfChange",   "0.025"}, --Original "0.15"
                                {"Cloudiness",              "CloudyWithClearSpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
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
                                {"Cloudiness",              "CloudyWithClearSpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --HEAVEY AIR SETINGS
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"HeavyAir", "GcHeavyAirSetting.xml"},
                            PKW = {"Settings", "GcHeavyAirSettingValues.xml"},
                            SECTION_UP = 1,
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"Thickness",                 "0.1"}, --Original "1"
                                {"Alpha1",                    "0.1"}, --Original "1"
                                {"Alpha2",                    "0.1"}, --Original "1"
                            }
                        },
                    }
                },
            }
        },
    }
}
