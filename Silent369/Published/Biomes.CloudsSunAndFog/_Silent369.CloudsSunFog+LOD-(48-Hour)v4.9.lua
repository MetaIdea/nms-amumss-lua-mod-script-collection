local modfilename = "CloudsSunFog+LOD-(48-Hour)"
local lua_author  = "Silent"
local lua_version = "4.9"
local mod_author  = "Silent369"
local nms_version = "5.74"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Realtime (NMS time) Day Length (Optional), Better Detailed Clouds, Slower Cloud Animation,
Sun Properties and Planet Fog Adjustments. Lens Dirt Removal and Disables Bloom Effects.

]]

--Modifies The Following:
--GCGRAPHICSGLOBALS.GLOBAL.MBIN
--GCENVIRONMENTGLOBALS.GLOBAL.MBIN
--GCSKYGLOBALS.GLOBALS.MBIN
--PIPELINES\PIPELINEDEFERRED.BIN
--PIPELINES\PIPELINEDEFERREDVR.BIN

--Time Ratios
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

local m_Day_Length = 172800 --Original "1800"

--Cloud Anim Speed
local m_Anim_Scale = 10    --Original "50"

----------------------------------------------------------------------------------------------------
--------------------------- SHOULD LEAVE THESE VALUES ALONE - PROBABLY!  ---------------------------
----------------------------------------------------------------------------------------------------

--Terrain
local m_UncachedTerrain         = true  --Original "False"
local m_VariableUpdates         = false --Original "True"

--Sun Brightness
local m_LUTDFMult               = 0    --Original "0"
local m_Intensity               = 4.2  --Original "3"
local m_MaxSpaceFogStrength     = 0.2  --Original "0.5"
local m_ReflectionStrength      = 0.2  --Original "0.3"
local m_DOFFarStrengthWater     = 0    --Original "0"
local m_WeatherFilterSTCTime    = 5    --Original "10"

--Storm Settings
local m_StormWarningTime        = 15   --Original "25"
local m_StormTransitionTime     = 20   --Original "25"
local m_MaxCloudCover           = 0.89 --Original "0.8"
local m_MaxStormCloudCover      = 0.99 --Original "0.8"
local m_CloudCoverSmoothTime    = 20   --Original "10"
local m_CloudRatioSmoothTime    = 16   --Original "4"
local m_StormCloudSmoothTime    = 3.2  --Original "0.8"

--Storm Settings
local m_MinStormLengthLow       = 60   --Original "120"
local m_MaxStormLengthLow       = 90   --Original "180"
local m_MinStormLengthHigh      = 75   --Original "150"
local m_MaxStormLengthHigh      = 160  --Original "320"
local m_MinTBSExtremeFallback   = 2400 --Original "240"
local m_MaxTBSExtremeFallback   = 6200 --Original "620"

local m_ExtremeAudioLevel       = 0.2  --Original "0.3"
local m_StormAudioLevel         = 0.4  --Original "0.5"

--Cloud Ratio
local m_CloudRatio              = 0.59  --Original "0.5-0.6"
local m_CloudRatioPrime         = 0.69  --Original "0.5-0.6"

--Cloud Settings
local m_LightScalar             = 5    --Original "5"
local m_AmbientScalar           = 1.72 --Original "1.721854"
local m_SunRayLength            = 80   --Original "50"
local m_Density                 = 10   --Original "1"
local m_AmbientDensity          = 5    --Original "0.1"
local m_ForwardScatteringG      = 0.75 --Original "0.9"
local m_BackwardScatteringG     = 0.15 --Original "0.3"
local m_BaseScale               = 1    --Original "1"
local m_SampleScalar            = 3    --Original "5"
local m_SampleThreshold         = 0.3  --Original "0.25"
local m_CloudBottomFade         = 1    --Original "1"
local m_DetailScale             = 7    --Original "6"
local m_ErosionEdgeSize         = 0.75 --Original "0.5"
local m_CloudDistortion         = 79   --Original "50"
local m_CloudDistortionScale    = 1.15 --Original "1"
local m_MaxIterations           = 128  --Original "128"

--Horizon
local m_HorizonFadeStartAlpha   = -0.3 --Original "0"
local m_HorizonFadeScalar       = 0.2  --Original "0.25"
local m_HorizonDistance         = 23165 --Original "11165"

--Cloud Heights
local m_CloudHeightMin          = 2400  --Original "650"
local m_CloudHeightMax          = 2500  --Original "900"
local m_SkyAtmosphereHeight     = 7400 --Original "6000"
local m_StratosphereHeight      = 5400 --Original "4000"

local m_CloudHeightMinP         = 3400 --Original "2400"
local m_CloudHeightMaxP         = 3500 --Original "2500"
local m_SkyAtmosphereHeightP    = 8400 --Original "7400"
local m_StratosphereHeightP     = 6400 --Original "5400"

local m_CloudHeightMinG         = 2400 --Original "1500"
local m_CloudHeightMaxG         = 2500 --Original "1500"
local m_SkyAtmosphereHeightG    = 7400 --Original "7200"
local m_StratosphereHeightG     = 5400 --Original "5200"

--Curve types that make sense with cloud animations
--Linear
--SmoothInOut
--Logarithmic
--SmootherStep
--EaseInOutExpo
--EaseInOutSine
--EaseInOutQuad

local m_Curve                   = "SmootherStep" --Original "Linear"

--Wind Offset
local m_WindOffsetX             = 0.1  --Original "0.5"
local m_WindOffsetY             = 0.1  --Original "0.5"

--Stratosphere Wind Offset
local m_SWindOffsetX            = -0.15 --Original "-0.5"
local m_SWindOffsetY            = 0.15  --Original "0.5"

--Cloud Gradient
local m_Cloud01X                = 0.08  --Original "0.1"
local m_Cloud01Y                = 0.12  --Original "0.15"
local m_Cloud01Z                = 0.10  --Original "0.15"
local m_Cloud01T                = 0.15  --Original "0.2"

local m_Cloud02X                = 0     --Original "0"
local m_Cloud02Y                = 0.12  --Original "0.1"
local m_Cloud02Z                = 0.15  --Original "0.3"
local m_Cloud02T                = 0.3   --Original "0.6"

local m_Cloud03X                = 0     --Original "0"
local m_Cloud03Y                = 0.12  --Original "0.2"
local m_Cloud03Z                = 0.2   --Original "0.3"
local m_Cloud03T                = 0.4   --Original "1"

--Fog Height
local m_HeightFogHeightMin      = -3   --Original "100"
local m_WaterAlphaHeightMin     = 20   --Original "40"

--Planet Fog
local m_PPF_FogStrength         = 0.03 --Original "0.04"
local m_PPF_FogMax              = 0.7  --Original "1"
local m_PPF_FogColourStrength   = 0.8  --Original "10"
local m_PPF_HeightFogStrength   = 0.06 --Original "0.08"
local m_PPF_HeightFogFOStrength = 0.12 --Original "0.25"
local m_PPF_HeightFogMax        = 0.65 --Original "0.8"
local m_PPF_FogHeight           = 96   --Original "128"

--Planet Flight Fog
local m_PFF_FogStrength         = 0.03 --Original "0.04"
local m_PFF_FogMax              = 0.7  --Original "1"
local m_PFF_FogColourStrength   = 0.8  --Original "10"
local m_PFF_HeightFogStrength   = 0.06 --Original "0.08"
local m_PFF_HeightFogFOStrength = 0.12 --Original "0.25"
local m_PFF_HeightFogMax        = 0.65 --Original "0.8"
local m_PFF_FogHeight           = 96   --Original "128"

--Planet Extreme Fog
local m_PXF_FogStrength         = 0.4  --Original "0.5"
local m_PXF_FogMax              = 0.6  --Original "0.9"
local m_PXF_FogColourStrength   = 0.8  --Original "6"
local m_PXF_HeightFogStrength   = 0.06 --Original "0.3"
local m_PXF_HeightFogFOStrength = 0.05 --Original "0.1"
local m_PXF_HeightFogMax        = 0.4  --Original "0.6"
local m_PXF_FogHeight           = 6    --Original "8"

--Planet Storm Fog
local m_PSF_FogStrength         = 0.85 --Original "1.5"
local m_PSF_FogMax              = 0.7  --Original "0.95"
local m_PSF_FogColourStrength   = 0.8  --Original "2.5"
local m_PSF_HeightFogStrength   = 0.06 --Original "0.5"
local m_PSF_HeightFogFOStrength = 0.15 --Original "0.3"
local m_PSF_HeightFogMax        = 0.4  --Original "0.6"
local m_PSF_FogHeight           = 2    --Original "4"

--Sun Clamp
local m_SunClmHMin              = 300  --Original "300"
local m_SunClmHMax              = 390  --Original "390"
local m_SunClampAngle           = 55   --Original "55"
local m_SunFactorMin            = 0.4  --Original "0.4"

--Star Chance
local m_BinaryStarChance        = 0.2  --Original "0.2"
local m_TernaryStarChance       = 0.05 --Original "0.05"

-----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = [[PIPELINES\PIPELINEDEFERRED.BIN]],
                    MXML_CT =
                    {
                        {
                            REPLACE_TYPE = "RAW",
                            VCT =
                            {
                                {[[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="0.5" allowDcc="false" />]], [[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="1.0" allowDcc="false" />]]},
                                {[[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="0.5" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" />]], [[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="1.0" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" />]]},
                                {[[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="1.0" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="1.0" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="1.0" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="1.0" applyDrs="true" allowDcc="NEXT" />]]},
                            }
                        },
                        {
                            REPLACE_TYPE = "RAW",
                            VCT =
                            {
                                {"<Stage id=\"LensSun\">", "<Stage id=\"LensSun\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomBright\" enabled=\"true\">", "<Stage id=\"NewBloomBright\" enabled=\"false\">"},
                                {"<Stage id=\"Effects\" enabled=\"true\">", "<Stage id=\"Effects\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomPre\" enabled=\"true\">", "<Stage id=\"NewBloomPre\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomPost\" enabled=\"true\">", "<Stage id=\"NewBloomPost\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomResolve\" enabled=\"true\">", "<Stage id=\"NewBloomResolve\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomExposure\" enabled=\"true\">", "<Stage id=\"NewBloomExposure\" enabled=\"false\">"},
                                {"<Stage id=\"NoBloom\" enabled=\"false\">", "<Stage id=\"NoBloom\" enabled=\"true\">"},
                                {"<Stage id=\"LensFlare\">", "<Stage id=\"LensFlare\" enabled=\"false\">"},
                                {"<Stage id=\"LensFlareAnamorphic\">", "<Stage id=\"LensFlareAnamorphic\" enabled=\"false\">"},
                            }
                        }
                    }
                },
                {
                    MBIN_FS  = [[PIPELINES\PIPELINEDEFERREDVR.BIN]],
                    MXML_CT =
                    {
                        {
                            REPLACE_TYPE = "RAW",
                            VCT =
                            {
                                {[[    <RenderTarget id="CLOUDS_MRT"         platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="0.5"  applyDrs="true" pointSampleColBuf0="false" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]], [[    <RenderTarget id="CLOUDS_MRT"         platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="1.0"  applyDrs="true" pointSampleColBuf0="false" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]]},
                                {[[    <RenderTarget id="CLOUDS_COLOUR"      platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="RGBA16F"   scale="0.5"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]], [[    <RenderTarget id="CLOUDS_COLOUR"      platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="RGBA16F"   scale="1.0"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]]},
                                {[[    <RenderTarget id="CLOUDS_DEPTH"       platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="R32FG32F"  scale="0.5"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]], [[    <RenderTarget id="CLOUDS_DEPTH"       platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="R32FG32F"  scale="1.0"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]]},
                                {[[    <RenderTarget id="CLOUDS_HISTORY"     platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="RGBA16F"   scale="0.5"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]], [[    <RenderTarget id="CLOUDS_HISTORY"     platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="RGBA16F"   scale="1.0"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]]},
                                {[[    <RenderTarget id="CLOUDS_FINAL"       platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="RGBA16F"   scale="0.5"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]], [[    <RenderTarget id="CLOUDS_FINAL"       platforms="PS5,PC,ORBIS" depthBuf="false"  numColBufs="1" format="RGBA16F"   scale="1.0"   applyDrs="true" allowDcc="NEXT" numUniformBuffers="3" numSlices="2" />]]},
                                {[[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"  numColBufs="1" format="RED8"   scale="0.5"  applyDrs="true" allowDcc="false" numUniformBuffers="3" numSlices="2" />]], [[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"  numColBufs="1" format="RED8"   scale="1.0"  applyDrs="true" allowDcc="false" numUniformBuffers="3" numSlices="2" />]]},
                            }
                        },
                        {
                            REPLACE_TYPE = "RAW",
                            VCT =
                            {
                                {"<Stage id=\"LensFlare\">", "<Stage id=\"LensFlare\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomBright\" enabled=\"true\">", "<Stage id=\"NewBloomBright\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloom\" enabled=\"true\">", "<Stage id=\"NewBloom\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomResolve\" enabled=\"true\">", "<Stage id=\"NewBloomResolve\" enabled=\"false\">"},
                                {"<Stage id=\"NewBloomExposure\" enabled=\"true\">", "<Stage id=\"NewBloomExposure\" enabled=\"false\">"},
                                {"<Stage id=\"NoBloom\" enabled=\"false\">", "<Stage id=\"NoBloom\" enabled=\"true\">"},
                            }
                        }
                    }
                },
                {
                    MBIN_FS = [[GCGRAPHICSGLOBALS.GLOBAL.MBIN]],
                    MXML_CT =
                    {
                        ----------------------------------------------------------------------------
                        --Sun Light Settings
                        ----------------------------------------------------------------------------
                        {
                            VCT = {
                                {"LUTDistanceFlightMultiplier",   m_LUTDFMult}, --Original "0"
                                {"Sun Light Intensity",          m_Intensity }, --Original "3"
                                {"MaxSpaceFogStrength", m_MaxSpaceFogStrength}, --Original "0.5"
                                {"ReflectionStrength",   m_ReflectionStrength}, --Original "0.3"
                                {"DOFFarStrengthWater", m_DOFFarStrengthWater}, --Original "0"

                                {"ShadowLength",         "800"}, --Original "400"
                                {"ShadowLengthStation", "2000"}, --Original "1300"

                                ----------------------------------------------------------------------------
                                --Lens Dirt Options
                                ----------------------------------------------------------------------------

                                {"LensScale",     "0"}, --Original "0.3"
                                {"LensDirt",      "0"}, --Original "0.3"
                                {"LensScaleCave", "0"}, --Original "4"
                                {"LensDirtCave",  "0"}, --Original "0.4"

                                ----------------------------------------------------------------------------
                                --LOD Value Changes
                                ----------------------------------------------------------------------------

                                {"ForceUncachedTerrain", m_UncachedTerrain}, --Original "False"
                                {"EnableVariableUpdate", m_VariableUpdates}, --Original "True"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --Light Shaft Properties
                        ----------------------------------------------------------------------------

                        {
                            PKW = {"LightShaftProperties",},
                            VCT = {
                                {"LightShaft Scattering", "2E-06"}, --Original "0.55"
                                {"LightShaft Strength",     "0.4"}, --Original "2"
                                {"LightShaft Bottom",     "0.002"}, --Original "0"
                                {"LightShaft Top",          "0.1"}, --Original "0.75"
                            }
                        },
                        {
                            PKW = {"LightShaftProperties", "LightShaftColourBottom",},
                            VCT = {
                                {"R",  "0.1"}, --Original "0.263"
                                {"G",  "0.1"}, --Original "0.263"
                                {"B", "0.13"}, --Original "0.263"
                                {"A",  "0.5"}, --Original "1"
                            }
                        },
                        {
                            PKW = {"LightShaftProperties", "LightShaftColourTop",},
                            VCT = {
                                {"R",  "0.1"}, --Original "0.387"
                                {"G",  "0.1"}, --Original "0.341"
                                {"B", "0.13"}, --Original "0.253"
                                {"A",  "0.5"}, --Original "1"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Storm Light Shaft Properties
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"StormLightShaftProperties",},
                            VCT = {
                                {"LightShaft Scattering", "4E-06"}, --Original "0.55"
                                {"LightShaft Strength",     "0.4"}, --Original "25"
                                {"LightShaft Bottom",     "0.002"}, --Original "0"
                                {"LightShaft Top",          "0.1"}, --Original "0.25"
                            }
                        },
                        {
                            PKW = {"StormLightShaftProperties", "LightShaftColourBottom",},
                            VCT = {
                                {"R",  "0.1"}, --Original "0.531"
                                {"G",  "0.1"}, --Original "0.493"
                                {"B", "0.13"}, --Original "0.443"
                                {"A",  "0.5"}, --Original "1"
                            }
                        },
                        {
                            PKW = {"StormLightShaftProperties", "LightShaftColourTop",},
                            VCT = {
                                {"R",  "0.1"}, --Original "0.04"
                                {"G",  "0.1"}, --Original "0.034"
                                {"B", "0.13"}, --Original "0.03"
                                {"A",  "0.5"}, --Original "1"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Wind Direction
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"WindDir1",},
                            VCT = {
                                {"X",  "0.3"}, --Original "1"
                                {"Y",  "0.3"}, --Original "0.5"
                            }
                        },
                        {
                            PKW = {"WindDir2",},
                            VCT = {
                                {"X",  "0.3"}, --Original "1"
                                {"Y", "-0.3"}, --Original "-0.75"
                            }
                        },
                    }
                },

                ----------------------------------------------------------------------------
                --Gc Environment Globals
                ----------------------------------------------------------------------------

                {
                    MBIN_FS = [[GCENVIRONMENTGLOBALS.GLOBAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"IndoorsLightingTransitionTime",          "3.2"}, --Original "1.2"
                                {"HeightFogHeightMin",      m_HeightFogHeightMin}, --Original "100"
                                {"WaterAlphaHeightMin",    m_WaterAlphaHeightMin}, --Original "40"
                                {"SunClampHeightMin",               m_SunClmHMin}, --Original "300"
                                {"SunClampHeightMax",               m_SunClmHMax}, --Original "390"
                                {"SunFactorMin",                  m_SunFactorMin}, --Original "0.4"
                                {"InteractionRadius",                     "0.30"}, --Original "0.15"

                                ----------------------------------------------------------------------------
                                --LOD Value Changes
                                ----------------------------------------------------------------------------

                                {"TerrainFadeTime",         "1"}, -- Original "2"
                                {"TerrainFadeTimeInShip",   "1"}, -- Original "2"
                                {"CreatureFadeTime",      "0.7"}, -- Original "1.5"
                                {"FloraFadeTimeMin",      "0.3"}, -- Original "0.6"
                                {"FloraFadeTimeMax",        "1"}  -- Original "2.25"
                            }
                        },

                                ----------------------------------------------------------------------------
                                --No Asteroids while pulsing
                                ----------------------------------------------------------------------------
                        {
                            SKW = {
                              {"Low",    "TkLODSettingsData"},
                              {"Medium", "TkLODSettingsData"},
                              {"High",   "TkLODSettingsData"},
                              {"Ultra",  "TkLODSettingsData"},
                            },
                            VCT = {
                                {"MaxAsteroidGenerationPerFramePulseJump", "0"},
                            },
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
                                {"PlanetObjectSwitch",          "6000"}, -- Original "700"
                                {"PlanetLodSwitch0",            "3000"}, -- Original "300"
                                {"PlanetLodSwitch0Elevation",   "6000"}, -- Original "700"
                                {"PlanetLodSwitch1",           "10000"}, -- Original "2000"
                                {"PlanetLodSwitch2",           "50000"}, -- Original "10000"
                                {"PlanetLodSwitch3",          "100000"}, -- Original "20000"
                            }
                        },
                        {
                            PKW = {"EnvironmentPrimeProperties"},
                            VCT = {
                                {"PlanetObjectSwitch",          "6000"}, -- Original "2000"
                                {"PlanetLodSwitch0",            "3000"}, -- Original "2000"
                                {"PlanetLodSwitch0Elevation",   "6000"}, -- Original "2000"
                                {"PlanetLodSwitch1",           "10000"}, -- Original "2000"
                                {"PlanetLodSwitch2",           "60000"}, -- Original "10000"
                                {"PlanetLodSwitch3",          "100000"}, -- Original "20000"
                            }
                        },
                        {
                            PKW = {"EnvironmentGasGiantProperties"},
                            VCT = {
                                {"PlanetObjectSwitch",          "6000"}, -- Original "2000"
                                {"PlanetLodSwitch0",            "3000"}, -- Original "2000"
                                {"PlanetLodSwitch0Elevation",   "6000"}, -- Original "2000"
                                {"PlanetLodSwitch1",           "10000"}, -- Original "2000"
                                {"PlanetLodSwitch2",           "60000"}, -- Original "10000"
                                {"PlanetLodSwitch3",          "100000"}, -- Original "20000"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --Environment Properties
                        ----------------------------------------------------------------------------
                        ----------------------------------------------------------------------------
                        --Cloud Settings Normal
                        ----------------------------------------------------------------------------
                        {
                            PKW = "EnvironmentProperties",
                            VCT = {
                                {"CloudHeightMin",             m_CloudHeightMin}, --Original "650"
                                {"CloudHeightMax",             m_CloudHeightMax}, --Original "900"
                                {"SkyAtmosphereHeight",   m_SkyAtmosphereHeight}, --Original "6000"
                                {"StratosphereHeight",     m_StratosphereHeight}, --Original "4000"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Cloud Settings Prime
                        ----------------------------------------------------------------------------
                        {
                            PKW = "EnvironmentPrimeProperties",
                            VCT = {
                                {"CloudHeightMin",            m_CloudHeightMinP}, --Original "1500"
                                {"CloudHeightMax",            m_CloudHeightMaxP}, --Original "1500"
                                {"SkyAtmosphereHeight",  m_SkyAtmosphereHeightP}, --Original "7200"
                                {"StratosphereHeight",    m_StratosphereHeightP}, --Original "5200"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Cloud Settings Gas
                        ----------------------------------------------------------------------------
                        {
                            PKW = "EnvironmentGasGiantProperties",
                            VCT = {
                                {"CloudHeightMin",            m_CloudHeightMinG}, --Original "1500"
                                {"CloudHeightMax",            m_CloudHeightMaxG}, --Original "1500"
                                {"SkyAtmosphereHeight",  m_SkyAtmosphereHeightG}, --Original "7200"
                                {"StratosphereHeight",    m_StratosphereHeightG}, --Original "5200"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Primary Cloud Properties
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"CloudProperties", "GcCloudProperties"},
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"LightScalar",                    m_LightScalar}, --Original "5"
                                {"AmbientScalar",                m_AmbientScalar}, --Original "1.721854"
                                {"SunRayLength",                  m_SunRayLength}, --Original "50"
                                {"AnimationScale",                  m_Anim_Scale}, --Original "50"
                                {"Density",                            m_Density}, --Original "1"
                                {"AmbientDensity",              m_AmbientDensity}, --Original "0.1"
                                {"ForwardScatteringG",      m_ForwardScatteringG}, --Original "0.9"
                                {"BackwardScatteringG",    m_BackwardScatteringG}, --Original "0.3"
                                {"BaseScale",                        m_BaseScale}, --Original "1"
                                {"SampleScalar",                  m_SampleScalar}, --Original "5"
                                {"SampleThreshold",            m_SampleThreshold}, --Original "0.25"
                                {"CloudBottomFade",            m_CloudBottomFade}, --Original "1"
                                {"DetailScale",                    m_DetailScale}, --Original "6"
                                {"ErosionEdgeSize",            m_ErosionEdgeSize}, --Original "0.5"
                                {"CloudDistortion",            m_CloudDistortion}, --Original "50"
                                {"CloudDistortionScale",  m_CloudDistortionScale}, --Original "1"
                                {"MaxIterations",                m_MaxIterations}, --Original "128"
                                {"HorizonFadeStartAlpha",m_HorizonFadeStartAlpha}, --Original "0.25"
                                {"HorizonFadeScalar",        m_HorizonFadeScalar}, --Original "0.25"
                                {"HorizonDistance",            m_HorizonDistance}, --Original "11165"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Cloud Gradient Settings
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"CloudHeightGradient1"},
                            VCT = {
                                {"X", m_Cloud01X}, --Original "0.1"
                                {"Y", m_Cloud01Y}, --Original "0.15"
                                {"Z", m_Cloud01Z}, --Original "0.15"
                                {"W", m_Cloud01T}, --Original "0.2"
                            }
                        },
                        {
                            PKW = {"CloudHeightGradient2"},
                            VCT = {
                                {"X", m_Cloud02X}, --Original "0"
                                {"Y", m_Cloud02Y}, --Original "0.1"
                                {"Z", m_Cloud02Z}, --Original "0.3"
                                {"W", m_Cloud02T}, --Original "0.6"
                            }
                        },
                        {
                            PKW = {"CloudHeightGradient3"},
                            VCT = {
                                {"X", m_Cloud03X}, --Original "0"
                                {"Y", m_Cloud03Y}, --Original "0.2"
                                {"Z", m_Cloud03Z}, --Original "0.3"
                                {"W", m_Cloud03T}, --Original "1"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Wind Offset Settings
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"Wind Offset"},
                            VCT = {
                                {"X", m_WindOffsetX}, --Original "0.5"
                                {"Y", m_WindOffsetY}, --Original "0.5"
                            }
                        },
                        {
                            PKW = {"Stratosphere Wind Offset"},
                            VCT = {
                                {"X", m_SWindOffsetX},
                                {"Y", m_SWindOffsetY},
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Wind Shear Settings
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"ShearWindSettings", "Octave0"},
                            VCT = {
                                {"MinStrength",  "0.05"}, --Original "0.1"
                                {"MaxStrength", "0.075"}, --Original "0.15"
                            }
                        },
                    },
                },

                ----------------------------------------------------------------------------
                --Sky Globals Settings
                ----------------------------------------------------------------------------

                {
                    MBIN_FS = {"GCSKYGLOBALS.GLOBALS.MBIN"},
                    MXML_CT =
                    {
                        {
                            VCT = {
                                {"DayLength",                          m_Day_Length}, --Original "1800"
                                {"SunClampAngle",                   m_SunClampAngle}, --Original "55"
                                {"StormWarningTime",             m_StormWarningTime}, --Original "25"
                                {"StormTransitionTime",       m_StormTransitionTime}, --Original "25"
                                {"MaxCloudCover",                   m_MaxCloudCover}, --Original "0.8"
                                {"MaxStormCloudCover",         m_MaxStormCloudCover}, --Original "0.8"
                                {"CloudCoverSmoothTime",     m_CloudCoverSmoothTime}, --Original "10"
                                {"CloudRatioSmoothTime",     m_CloudRatioSmoothTime}, --Original "4"
                                {"StormCloudSmoothTime",     m_StormCloudSmoothTime}, --Original "0.8"
                                {"WeatherFilterSpaceTransitionChangeTime", m_WeatherFilterSTCTime}, --Original "10"
                                {"MinStormLengthLow",           m_MinStormLengthLow}, --Original "120"
                                {"MaxStormLengthLow",           m_MaxStormLengthLow}, --Original "180"
                                {"MinStormLengthHigh",         m_MinStormLengthHigh}, --Original "150"
                                {"MaxStormLengthHigh",         m_MaxStormLengthHigh}, --Original "320"
                                {"MinTimeBetweenStormsExtremeFallback", m_MinTBSExtremeFallback}, --Original "240"
                                {"MaxTimeBetweenStormsExtremeFallback", m_MaxTBSExtremeFallback}, --Original "620"
                                {"ExtremeAudioLevel",           m_ExtremeAudioLevel}, --Original "0.3"
                                {"StormAudioLevel",               m_StormAudioLevel}, --Original "0.5"
                                {"BinaryStarChance",             m_BinaryStarChance}, --Original "0.2"
                                {"TernaryStarChance",           m_TernaryStarChance}, --Original "0.05"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --Sun Properties
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"PlanetProperties", "GcPlanetSkyProperties"},
                            PKW = {"PlanetSky"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"AtmosphereThickness","0.1595575"}, --Original "0.319115"
                                {"SunSize",                  "0.1"}, --Original "0.25"
                                {"SunSurroundSize",         "0.01"}, --Original "10"
                                {"SunSurroundStrength",     "0.01"}, --Original "12"
                            }
                        },
                        {
                            SKW = {"PlanetPrimeProperties", "GcPlanetSkyProperties"},
                            PKW = {"PlanetSky"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"AtmosphereThickness","0.1595575"}, --Original "0.319115"
                                {"SunSize",                  "0.1"}, --Original "0.25"
                                {"SunSurroundSize",         "0.01"}, --Original "10"
                                {"SunSurroundStrength",     "0.01"}, --Original "12"
                            }
                        },
                        {
                            SKW = {"SpaceSkyMin", "GcSpaceSkyProperties"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"SunSize",               "0.0001"}, --Original "0.005"
                                {"StarVisibility",          "0.50"}, --Original "0.82"
                                {"CenterPower",                "2"}, --Original "2.5"
                                {"AtmosphereThickness",     "0.14"}, --Original "0.28"
                                {"SpaceFogStrength",           "0"}, --Original "0.04"
                            }
                        },
                        {
                            SKW = {"SpaceSkyMax", "GcSpaceSkyProperties"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"SunSize",               "0.0001"}, --Original "0.005"
                                {"StarVisibility",          "0.50"}, --Original "0.82"
                                {"CenterPower",                "2"}, --Original "2.5"
                                {"AtmosphereThickness",     "0.14"}, --Original "0.28"
                                {"SpaceFogStrength",           "0"}, --Original "0.04"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --Global Properties
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"DayLightColour"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"R",    "1"}, --Original "1"
                                {"G",    "1"}, --Original "1"
                                {"B", "0.91"}, --Original "0.904"
                                {"A",    "1"}, --Original "1"
                            }
                        },
                        {
                            SKW = {"NightSkyColours", "GcPlanetWeatherColourData"},
                            PKW = {"HeightFogColour"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VCT = {
                                {"R", "0.007"}, --Original "207"
                                {"G", "0.007"}, --Original "207"
                                {"B", "0.007"}, --Original "207"
                                {"A",     "1"}, --Original "1"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --Photo Mode Vignette
                        ----------------------------------------------------------------------------
                        {
                            PKW = {"PhotoModeVignette"},
                            VCT = {
                                {"X", "1.0"}, --Original "0.9"
                                {"Y", "1.0"}, --Original "0.3"
                            }
                        },

                        ----------------------------------------------------------------------------
                        --Fog Properties
                        ----------------------------------------------------------------------------
                        {
                            SKW = {
                                {"PlanetProperties",         "GcPlanetSkyProperties", "PlanetFog", "GcFogProperties"},
                                {"PlanetPrimeProperties",    "GcPlanetSkyProperties", "PlanetFog", "GcFogProperties"},
                                {"PlanetGasGiantProperties", "GcPlanetSkyProperties", "PlanetFog", "GcFogProperties"},
                            },
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              m_PPF_FogStrength},
                                {"FogMax",                   m_PPF_FogMax},
                                {"FogColourStrength",        m_PPF_FogColourStrength},
                                {"HeightFogStrength",        m_PPF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", m_PPF_HeightFogFOStrength},
                                {"HeightFogMax",             m_PPF_HeightFogMax},
                                {"FogHeight",                m_PPF_FogHeight},
                            }
                        },
                        {
                            SKW = {
                                {"PlanetProperties",         "GcPlanetSkyProperties", "PlanetExtremeFog", "GcFogProperties"},
                                {"PlanetPrimeProperties",    "GcPlanetSkyProperties", "PlanetExtremeFog", "GcFogProperties"},
                                {"PlanetGasGiantProperties", "GcPlanetSkyProperties", "PlanetExtremeFog", "GcFogProperties"},
                            },
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              m_PXF_FogStrength},
                                {"FogMax",                   m_PXF_FogMax},
                                {"FogColourStrength",        m_PXF_FogColourStrength},
                                {"HeightFogStrength",        m_PXF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", m_PXF_HeightFogFOStrength},
                                {"HeightFogMax",             m_PXF_HeightFogMax},
                                {"FogHeight",                m_PXF_FogHeight},
                            }
                        },
                        {
                            SKW = {
                                {"PlanetProperties",         "GcPlanetSkyProperties", "PlanetStormFog", "GcFogProperties"},
                                {"PlanetPrimeProperties",    "GcPlanetSkyProperties", "PlanetStormFog", "GcFogProperties"},
                                {"PlanetGasGiantProperties", "GcPlanetSkyProperties", "PlanetStormFog", "GcFogProperties"},
                            },
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              m_PSF_FogStrength},
                                {"FogMax",                   m_PSF_FogMax},
                                {"FogColourStrength",        m_PSF_FogColourStrength},
                                {"HeightFogStrength",        m_PSF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", m_PSF_HeightFogFOStrength},
                                {"HeightFogMax",             m_PSF_HeightFogMax},
                                {"FogHeight",                m_PSF_FogHeight},
                            }
                        },
                        {
                            SKW = {
                                {"PlanetProperties",         "GcPlanetSkyProperties", "PlanetFlightFog", "GcFogProperties"},
                                {"PlanetPrimeProperties",    "GcPlanetSkyProperties", "PlanetFlightFog", "GcFogProperties"},
                                {"PlanetGasGiantProperties", "GcPlanetSkyProperties", "PlanetFlightFog", "GcFogProperties"},
                            },
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              m_PFF_FogStrength},
                                {"FogMax",                   m_PFF_FogMax},
                                {"FogColourStrength",        m_PFF_FogColourStrength},
                                {"HeightFogStrength",        m_PFF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", m_PFF_HeightFogFOStrength},
                                {"HeightFogMax",             m_PFF_HeightFogMax},
                                {"FogHeight",                m_PFF_FogHeight},
                            }
                        },
                        {
                            SKW = {"AbandonedFreighterFog", "GcFogProperties"},
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"FogStrength",              m_PFF_FogStrength},
                                {"FogMax",                   m_PFF_FogMax},
                                {"FogColourStrength",        m_PFF_FogColourStrength},
                                {"HeightFogStrength",        m_PFF_HeightFogStrength},
                                {"HeightFogFadeOutStrength", m_PFF_HeightFogFOStrength},
                                {"HeightFogMax",             m_PFF_HeightFogMax},
                                {"FogHeight",                m_PFF_FogHeight},
                            }
                        },

                        ----------------------------------------------------------------------------
                        --Cloud Adjust Curve
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"CloudAdjust", "GcPhotoModeAdjustData", "AdjustMaxCurve", "TkCurveType"},
                            VCT = {
                                {"Curve", m_Curve}, --Original "Linear"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Cloud Ratio Properties
                        ----------------------------------------------------------------------------
                        {
                            PKW = "PlanetProperties",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"CloudRatio", m_CloudRatio}, --Original "0.5-0.6"
                            }
                        },
                        {
                            PKW = "PlanetPrimeProperties",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"CloudRatio", m_CloudRatioPrime}, --Original "0.5-0.6"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Cloud Coverage Properties
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"PlanetCloudsMin", "GcPlanetCloudProperties"},
                            VCT = {
                                {"Coverage1",                 "1"}, --Original "0.5"
                                {"Coverage2",                 "2"}, --Original "1"
                                {"Coverage3",                 "3"}, --Original "1"
                                {"Offset1",                   "1"}, --Original "0"
                                {"Offset2",                   "3"}, --Original "0"
                                {"Offset3",                   "5"}, --Original "0"
                                {"RateOfChange",           "0.01"}, --Original "0.1"
                                {"SecondaryRateOfChange", "0.025"}, --Original "0.15"
                                {"Cloudiness",            "CloudyWithClearSpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
                            }
                        },
                        {
                            SKW = {"PlanetCloudsMax", "GcPlanetCloudProperties"},
                            VCT = {
                                {"Coverage1",                 "6"}, --Original "3"
                                {"Coverage2",                 "9"}, --Original "6"
                                {"Coverage3",                "12"}, --Original "9"
                                {"Offset2",                   "5"}, --Original "5"
                                {"Offset2",                  "10"}, --Original "5"
                                {"Offset3",                  "15"}, --Original "5"
                                {"RateOfChange",           "0.01"}, --Original "0.1"
                                {"SecondaryRateOfChange", "0.045"}, --Original "0.15"
                                {"Cloudiness",            "CloudyWithClearSpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
                            }
                        },
                        ----------------------------------------------------------------------------
                        --Heavey Air Setings
                        ----------------------------------------------------------------------------
                        {
                            SKW = {"Settings", "GcHeavyAirSettingValues"},
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"Thickness", "0.1"}, --Original "1"
                                {"Alpha1",    "0.1"}, --Original "1"
                                {"Alpha2",    "0.1"}, --Original "1"
                            }
                        },
                    }
                },
            }
        },
    }
}
