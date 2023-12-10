local modfilename = "Biomes.CloudsSunAndFog-(48-Hour)"
local lua_author  = "Silent"
local lua_version = "2.5"
local mod_author  = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Realtime (NMS time) Day Length (Optional), Better Detailed Clouds, Slower Cloud Animation,
Sun Properties and Planet Fog Adjustments. LOD Adjustments, Optional Lens Dirt Removal.
Also disables all Bloom effects but leaves lensing effects intact.

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

_Day_Length              = 172800 --Original "1800"

--CLOUD ANIM SPEED
_Anim_Scale              = 25   --Original "50" wtf!

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
_StormWarningTime        = 25   --Original "25"
_StormTransitionTime     = 20   --Original "25"
_MaxCloudCover           = 0.79 --Original "0.8"
_MaxStormCloudCover      = 0.89 --Original "0.8"
_CloudCoverSmoothTime    = 20   --Original "10"
_CloudRatioSmoothTime    = 15   --Original "4"
_StormCloudSmoothTime    = 15   --Original "0.8"

--Storm Settings
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
_Density                 = 2    --Original "1"
_AmbientDensity          = 0.1  --Original "0.1"
_BaseScale               = 1    --Original "1"
_SampleScalar            = 3    --Original "5"
_SampleThreshold         = 0.3  --Original "0.25"
_CloudBottomFade         = 1    --Original "1"
_DetailScale             = 7    --Original "6"
_ErosionEdgeSize         = 0.65 --Original "0.5"
_CloudDistortion         = 69   --Original "50"
_CloudDistortionScale    = 0.85 --Original "1"
_MaxIterations           = 256  --Original "128"

--Horizon
_HorizonFadeStartAlpha   = -0.3 --Original "0"
_HorizonFadeScalar       = 0.2  --Original "0.25"
_HorizonDistance         = 23165 --Original "11165"

--Cloud Heights
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

_Curve                   = "SmoothInOut" --Original "Linear"

--Wind Offset
WindOffsetX              = 0.1  --Original "0.5"
WindOffsetY              = 0.1  --Original "0.5"

--Stratosphere Wind Offset
SWindOffsetX             = -0.15 --Original "-0.5"
SWindOffsetY             = 0.15  --Original "0.5"

--Cloud Gradient (Width,Height,Breadth)
Cloud01X                 = 0.08  --Original "0.1"
Cloud01Y                 = 0.12   --Original "0.15"
Cloud01Z                 = 0.10  --Original "0.15"
Cloud01T                 = 0.15  --Original "0.2"

Cloud02X                 = 0     --Original "0"
Cloud02Y                 = 0.12   --Original "0.1"
Cloud02Z                 = 0.15  --Original "0.3"
Cloud02T                 = 0.3   --Original "0.6"

Cloud03X                 = 0     --Original "0"
Cloud03Y                 = 0.12   --Original "0.2"
Cloud03Z                 = 0.2   --Original "0.3"
Cloud03T                 = 0.4   --Original "1"

--Height Fog Height
_HeightFogHeightMin      = -3   --Original "100"
_WaterAlphaHeightMin     = 3    --Original "40"

--Planet Fog
_PPF_FogStrength         = 0.03 --Original "0.04"
_PPF_FogMax              = 0.7  --Original "1"
_PPF_FogColourStrength   = 0.8  --Original "10"
_PPF_HeightFogStrength   = 0.10 --Original "0.08"
_PPF_HeightFogFOStrength = 0.12 --Original "0.25"
_PPF_HeightFogMax        = 0.65 --Original "0.8"
_PPF_FogHeight           = 96   --Original "128"

--Planet Flight Fog
_PFF_FogStrength         = 0.03 --Original "0.04"
_PFF_FogMax              = 0.7  --Original "1"
_PFF_FogColourStrength   = 0.8  --Original "10"
_PFF_HeightFogStrength   = 0.10 --Original "0.08"
_PFF_HeightFogFOStrength = 0.12 --Original "0.25"
_PFF_HeightFogMax        = 0.65 --Original "0.8"
_PFF_FogHeight           = 96   --Original "128"

--Planet Extreme Fog
_PXF_FogStrength         = 0.4  --Original "0.5"
_PXF_FogMax              = 0.6  --Original "0.9"
_PXF_FogColourStrength   = 0.8  --Original "6"
_PXF_HeightFogStrength   = 0.10 --Original "0.3"
_PXF_HeightFogFOStrength = 0.05 --Original "0.1"
_PXF_HeightFogMax        = 0.4  --Original "0.6"
_PXF_FogHeight           = 6    --Original "8"

--Planet Storm Fog
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
_SunFactorMin            = 0.4 --Original "0.4"

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

--Original
--      <Property name="LODAdjust">
--        <Property value="1" />
--        <Property value="1" />
--        <Property value="1" />
--        <Property value="1" />
--        <Property value="1" />
--      </Property>

_LODAdjust =
[[
      <Property name="LODAdjust">
        <Property value="3" />
        <Property value="3" />
        <Property value="3" />
        <Property value="3" />
        <Property value="3" />
      </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    ["LUA_AUTHOR"]              = lua_author,
    ["MOD_AUTHOR"]              = mod_author,
    ["NMS_VERSION"]             = nms_version,
    ["MOD_DESCRIPTION"]         = description,
    ["MOD_MAINTENANCE"]         = maintenance,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"GCGRAPHICSGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        ----------------------------------------------------------------------------
                        --SUN LIGHT SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"LUTDistanceFlightMultiplier",  _LUTDFMult}, --Original "0"
                                {"SunLightIntensity",           _Intensity }, --Original "3"
                                {"MaxSpaceFogStrength",_MaxSpaceFogStrength}, --Original "0.5"
                                {"ReflectionStrength",  _ReflectionStrength}, --Original "0.3"
                                {"DOFFarStrengthWater",_DOFFarStrengthWater}, --Original "0"

                                {"ShadowLength",                      "800"}, --Original "400"
                                {"ShadowLengthStation",              "2000"}, --Original "1300"

                                {"HBAOBias",                          "0.2"}, --Original "0.1"
                                {"HBAORadius",                          "5"}, --Original "2"
                                {"HBAOIntensity",                     "1.0"}, --Original "5"

                                ----------------------------------------------------------------------------
                                --Lens Dirt Options
                                ----------------------------------------------------------------------------

                                {"LensScale",                           "0"}, --Original "0.3"
                                {"LensDirt",                            "0"}, --Original "0.3"
                                {"LensScaleCave",                       "0"}, --Original "4"
                                {"LensDirtCave",                        "0"}, --Original "0.4"

                                ----------------------------------------------------------------------------
                                --LOD / TAA Adjustments
                                ----------------------------------------------------------------------------

                                --For LOD settings
                                {"ForceUncachedTerrain",             "True"}, --Original "False"

                                --LOD Adjustments
                                {"TerrainDroppedMipsLow",               "0"}, --Original "1"
                                {"TerrainDroppedMipsMed",               "0"}, --Original "1"
                                {"TerrainMipBiasLow",                   "0"}, --Original "0.5"

                                ----TAA Settings
                                {"TaaLowFreqConstant",                "100"}, --Original "0.5"
                                {"TaaHighFreqConstant",               "100"}, --Original "100"
                                {"TaaAccumDelay",                    "1.05"}, --Original "0.9"
                                {"FrustumJitterAmount",                 "0"}, --Original "0.6"
                                --{"FrustumJitterAmountDLSS",             "0"}, --Original "1"
                                --{"UseTaaResolve",                   "False"}, --Original "False"
                                --{"ApplyTaaTest",                    "False"}, --Original "False"
                                --{"ShowTaaBuf",                      "False"}, --Original "False"
                                --{"TonemapInLuminance",              "False"}, --Original "False"
                                --{"ShowTaaVarianceBuf",              "False"}, --Original "False"
                                --{"ShowTaaNVarianceBuf",             "False"}, --Original "False"
                                --{"ShowTaaCVarianceBuf",             "False"}, --Original "False"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --TAA SETTINGS (Shimmer Fix)
                        ----------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"TaaSettings", "Vector4f.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                          "1"}, --Original "0.263"
                                {"y",                       "0.99"}, --Original "0.263"
                                {"z",               "-0.909999967"}, --Original "0.263"
                                {"t",                        "-10"}, --Original "1"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --LIGHT SHAFT PROPERTIES
                        ----------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = {"LightShaftProperties",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"LightShaftScattering",   "2E-06"}, --Original "0.55"
                                {"LightShaftStrength",       "0.4"}, --Original "2"
                                {"LightShaftBottom",       "0.002"}, --Original "0"
                                {"LightShaftTop",            "0.1"}, --Original "0.75"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LightShaftProperties", "LightShaftColourBottom",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"R",                        "0.1"}, --Original "0.263"
                                {"G",                        "0.1"}, --Original "0.263"
                                {"B",                       "0.13"}, --Original "0.263"
                                {"A",                        "0.5"}, --Original "1"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LightShaftProperties", "LightShaftColourTop",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["PRECEDING_KEY_WORDS"] = {"StormLightShaftProperties",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"LightShaftScattering",   "4E-06"}, --Original "0.55"
                                {"LightShaftStrength",       "0.4"}, --Original "25"
                                {"LightShaftBottom",       "0.002"}, --Original "0"
                                {"LightShaftTop",            "0.1"}, --Original "0.25"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StormLightShaftProperties", "LightShaftColourBottom",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"R",                        "0.1"}, --Original "0.531"
                                {"G",                        "0.1"}, --Original "0.493"
                                {"B",                       "0.13"}, --Original "0.443"
                                {"A",                        "0.5"}, --Original "1"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StormLightShaftProperties", "LightShaftColourTop",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["PRECEDING_KEY_WORDS"] = {"WindDir1",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                        "0.3"}, --Original "1"
                                {"y",                        "0.3"}, --Original "0.5"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WindDir2",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                    ["MBIN_FILE_SOURCE"]   = {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]  =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                                --LOD Adjustments (reduce pop-in)
                                ----------------------------------------------------------------------------

                                {"AnimationScale",                         "10"}, --Original "50"
                                {"TerrainFadeTime",                         "1"}, --Original "2"
                                {"TerrainFadeTimeInShip",                   "1"}, --Original "2"
                                {"CreatureFadeTime",                      "0.7"}, --Original "1.5"
                                {"FloraFadeTimeMin",                        "1"}, --Original "0.6"
                                {"FloraFadeTimeMax",                      "1.5"}  --Original "2.25"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --LOD SETTINGS LOW
                        ----------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Low", "TkLODSettingsData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"LODAdjust"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Low", "TkLODSettingsData.xml"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = _LODAdjust,
                        },

                        ----------------------------------------------------------------------------
                        --LOD SETTINGS MEDIUM
                        ----------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Medium", "TkLODSettingsData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"LODAdjust"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Medium", "TkLODSettingsData.xml"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = _LODAdjust,
                        },

                        ----------------------------------------------------------------------------
                        --LOD SETTINGS HIGH
                        ----------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"High", "TkLODSettingsData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"LODAdjust"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"High", "TkLODSettingsData.xml"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = _LODAdjust,
                        },

                        ----------------------------------------------------------------------------
                        --LOD SETTINGS ULTRA
                        ----------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Ultra", "TkLODSettingsData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"LODAdjust"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Ultra", "TkLODSettingsData.xml"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = _LODAdjust,
                        },

                        ----------------------------------------------------------------------------
                        --ENVIRONMENT PROPERTIES
                        ----------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = "EnvironmentProperties",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                ----------------------------------------------------------------------------
                                --LOD SETTINGS NORMAL
                                ----------------------------------------------------------------------------

                                {"PlanetObjectSwitch",                  "2100"}, -- Original "700"
                                {"PlanetLodSwitch0",                     "900"}, -- Original "300"
                                {"PlanetLodSwitch0Elevation",           "2100"}, -- Original "700"
                                {"PlanetLodSwitch1",                    "6000"}, -- Original "2000"
                                {"PlanetLodSwitch2",                   "30000"}, -- Original "10000"
                                {"PlanetLodSwitch3",                   "60000"}, -- Original "20000"

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
                            ["PRECEDING_KEY_WORDS"] = "EnvironmentPrimeProperties",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                ----------------------------------------------------------------------------
                                --LOD SETTINGS PRIME
                                ----------------------------------------------------------------------------

                                {"PlanetObjectSwitch",                  "6000"}, -- Original "2000"
                                {"PlanetLodSwitch0",                    "6000"}, -- Original "2000"
                                {"PlanetLodSwitch0Elevation",           "6000"}, -- Original "2000"
                                {"PlanetLodSwitch1",                    "6000"}, -- Original "2000"
                                {"PlanetLodSwitch2",                   "30000"}, -- Original "10000"
                                {"PlanetLodSwitch3",                   "60000"}, -- Original "20000"

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
                            ["PRECEDING_KEY_WORDS"] = "SpacePlanetFogStrength",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MinWaterReflections", "0.2"},
                            ["LINE_OFFSET"]       = "+0",
                            ["ADD"]               = _SpacePlanetFogStrength,
                        },

                        ----------------------------------------------------------------------------
                        --PRIMARY CLOUD PROPERTIES
                        ----------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"CloudProperties", "GcCloudProperties.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                        --CLOUD GRADIENT SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient1"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                   Cloud01X}, --Original "0.1"
                                {"y",                   Cloud01Y}, --Original "0.15"
                                {"z",                   Cloud01Z}, --Original "0.15"
                                {"t",                   Cloud01T}, --Original "0.2"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient2"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                   Cloud02X}, --Original "0"
                                {"y",                   Cloud02Y}, --Original "0.1"
                                {"z",                   Cloud02Z}, --Original "0.3"
                                {"t",                   Cloud02T}, --Original "0.6"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient3"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["PRECEDING_KEY_WORDS"] = {"WindOffset"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                   WindOffsetX}, --Original "0.5"
                                {"y",                   WindOffsetY}, --Original "0.5"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StratosphereWindOffset"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                   SWindOffsetX},
                                {"y",                   SWindOffsetY},
                            }
                        },
                        ----------------------------------------------------------------------------
                        --WIND SHEAR SETTINGS
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShearWindSettings", "Octave0"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                    ["MBIN_FILE_SOURCE"]   = { "GCSKYGLOBALS.GLOBALS.MBIN" },
                    ["EXML_CHANGE_TABLE"]  =
                    {
                        ----------------------------------------------------------------------------
                        --SUN PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetSky"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"SunSize",              "0.00001"}, --Original "0.25"
                                {"SunSurroundSize",         "0.02"}, --Original "10"
                                {"SunSurroundStrength",     "0.02"}, --Original "12"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetSky"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"SunSize",              "0.00001"}, --Original "0.25"
                                {"SunSurroundSize",         "0.02"}, --Original "10"
                                {"SunSurroundStrength",     "0.02"}, --Original "12"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceSkyMin"},
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"SunSize",              "0.00001"}, --Original "0.005"
                                {"StarVisibility",          "0.50"}, --Original "0.82"
                                {"CenterPower",                "2"}, --Original "2.5"
                                {"AtmosphereThickness",     "0.26"}, --Original "0.28"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceSkyMax"},
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"SunSize",               "0.0001"}, --Original "0.005"
                                {"StarVisibility",          "0.50"}, --Original "0.82"
                                {"CenterPower",                "2"}, --Original "2.5"
                                {"AtmosphereThickness",     "0.26"}, --Original "0.28"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --GLOBAL PROPERTIES
                        ----------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                --DAY / NIGHT CYCLE LENGTH
                                {"DayLength",                           _Day_Length}, --Original "1800"

                                --SKY PROPERTIES--
                                {"SunClampAngle",                    _SunClampAngle}, --Original "55"
                                {"RainbowWidth",                             "0.15"}, --Original "0.13"
                                {"RainbowAlpha",                             "0.01"}, --Original "0.1"
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
                            ["PRECEDING_KEY_WORDS"] = {"DayLightColour",},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"R",                           "1"}, --Original "1"
                                {"G",                           "1"}, --Original "1"
                                {"B",                        "0.91"}, --Original "0.904"
                                {"A",                           "1"}, --Original "1"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"NightSkyColours", "HeightFogColour",},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["SPECIAL_KEY_WORDS"]   = {"PhotoModeVignette", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                         "1"}, --Original "0.9"
                                {"y",                         "1"}, --Original "0.3"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --FOG PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFog",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFlightFog",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetExtremeFog",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetStormFog",},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"FogStrength",              _PSF_FogStrength},
                                {"FogMax",                   _PSF_FogMax},
                                {"FogColourStrength",        _PSF_FogColourStrength},
                                {"HeightFogStrength",        _PSF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", _PSF_HeightFogFOStrength},
                                {"HeightFogMax",             _PSF_HeightFogMax},
                                {"FogHeight",                _PSF_FogHeight},
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD ADJUST CURVE
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CloudAdjust", "AdjustMaxCurve"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Curve",           _Curve}, --Original "Linear"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD RATIO PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = "PlanetProperties",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CloudRatio",      _CloudRatio}, --Original "0.5-0.6"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "PlanetPrimeProperties",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CloudRatio",      _CloudRatioPrime}, --Original "0.5-0.6"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --CLOUD COVERAGE PROPERTIES
                        ----------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = "PlanetCloudsMin",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                            ["PRECEDING_KEY_WORDS"] = "PlanetCloudsMax",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
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
                    }
                },
            }
        },
    }
}

