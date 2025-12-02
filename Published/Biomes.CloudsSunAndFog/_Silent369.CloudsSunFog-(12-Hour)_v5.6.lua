local modfilename = "CloudsSunAndFog-(12-Hour)"
local lua_author  = "Silent"
local lua_version = "5.6"
local mod_author  = "Silent369"
local nms_version = "6.18"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Realtime (NMS time) Day Length (Optional), Better Detailed Clouds, Cloud Animations,
Sun Properties and Planet Fog Adjustments. Lens Dirt Removal and disables the Bloom
Effect.

Modifies:
GCBUILDINGGLOBALS.GLOBAL.MBIN
GCDEBUGOPTIONS.GLOBAL.MBIN
GCENVIRONMENTGLOBALS.GLOBAL.MBIN
GCGRAPHICSGLOBALS.GLOBAL.MBIN
GCSKYGLOBALS.GLOBALS.MBIN
PIPELINES\PIPELINEDEFERRED.BIN
PIPELINES\PIPELINEDEFERREDVR.BIN

]]

--======================================================================================--
-- 1. MOD CONFIGURATION
--======================================================================================--

--Time Ratios
--30 Mn =   1800
--01 Hr =   3600
--03 Hr =  10800
--06 Hr =  21600
--09 Hr =  32400
--12 Hr =  43200
--24 Hr =  86400
--48 Hr = 172800

local m_Day_Length = 43200

--Cloud Anim Speed
local m_Anim_Scale = 100

--Fog Height/Strength Control
--Valid ranges: (0.0-1.0)
local m_FogSControl = 0.6  -- Fog Strength
local m_FogHControl = 0.7  -- Fog Height

--Building LOD Distance Multiplier
local bldLODdistance = 2

--======================================================================================--
-- 2. VARIABLE CONFIGURATION
--======================================================================================--

--Sun Brightness
local m_LUTDFMult               = 1    --Original "0"
local m_Intensity               = 3.6  --Original "3"

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

-- AtmosphereThickness          (10% thickness reduction)
local m_AtmosphereThickness     = 0.031911 --Original "0.319115"

--Cloud Ratio
local m_CloudRatio              = 0.55  --Original "0.5-0.6"
local m_CloudRatioPrime         = 0.65  --Original "0.5-0.6"

--Cloud Settings
local m_SunRayLength            = 60    --Original "50"
local m_AmbientDensity          = 0.5   --Original "0.1"
local m_SampleScalar            = 3.5   --Original "5"
local m_SampleThreshold         = 0.15  --Original "0.25"
local m_DetailScale             = 7     --Original "6"
local m_ErosionEdgeSize         = 0.65  --Original "0.5"
local m_CloudDistortion         = 79    --Original "50"
local m_CloudDistortionScale    = 1.15  --Original "1"
local m_MaxIterations           = 128   --Original "128"

--Horizon
local m_HorizonFadeStartAlpha   = -0.1  --Original "0"
local m_HorizonFadeScalar       = 0.15   --Original "0.25"
local m_HorizonDistance         = 10165 --Original "11165"

--Curve types that make sense with cloud animations
--Linear
--SmoothInOut
--Logarithmic
--SmootherStep

local m_Curve                   = "SmootherStep" --Original "Linear"

--Wind Offset
local m_WindOffsetX             = 0.1   --Original "0.5"
local m_WindOffsetY             = 0.1   --Original "0.5"

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
local m_HeightFogHeightMin      = 100  * m_FogSControl  --Original "100"
local m_WaterAlphaHeightMin     = 40   * m_FogSControl  --Original "40"

--Planet Fog
local m_PPF_FogStrength         = 0.04 * m_FogSControl --Original "0.04"
local m_PPF_FogMax              = 1    * m_FogSControl --Original "1"
local m_PPF_FogColourStrength   = 10   * m_FogSControl --Original "10"
local m_PPF_HeightFogStrength   = 0.08 * m_FogHControl --Original "0.08"
local m_PPF_HeightFogFOStrength = 0.25 * m_FogHControl --Original "0.25"
local m_PPF_HeightFogMax        = 0.8  * m_FogHControl --Original "0.8"
local m_PPF_FogHeight           = 128  * m_FogHControl --Original "128"

--Planet Flight Fog
local m_PFF_FogStrength         = 0.04 * m_FogSControl --Original "0.04"
local m_PFF_FogMax              = 1    * m_FogSControl --Original "1"
local m_PFF_FogColourStrength   = 10   * m_FogSControl --Original "10"
local m_PFF_HeightFogStrength   = 0.08 * m_FogHControl --Original "0.08"
local m_PFF_HeightFogFOStrength = 0.25 * m_FogHControl --Original "0.25"
local m_PFF_HeightFogMax        = 0.8  * m_FogHControl --Original "0.8"
local m_PFF_FogHeight           = 128  * m_FogHControl --Original "128"

--Planet Extreme Fog
local m_PXF_FogStrength         = 0.5  * m_FogSControl --Original "0.5"
local m_PXF_FogMax              = 0.9  * m_FogSControl --Original "0.9"
local m_PXF_FogColourStrength   = 6    * m_FogSControl --Original "6"
local m_PXF_HeightFogStrength   = 0.3  * m_FogHControl --Original "0.3"
local m_PXF_HeightFogFOStrength = 0.1  * m_FogHControl --Original "0.1"
local m_PXF_HeightFogMax        = 0.6  * m_FogHControl --Original "0.6"
local m_PXF_FogHeight           = 8    * m_FogHControl --Original "8"

--Planet Storm Fog
local m_PSF_FogStrength         = 1.5  * m_FogSControl --Original "1.5"
local m_PSF_FogMax              = 0.95 * m_FogSControl --Original "0.95"
local m_PSF_FogColourStrength   = 2.5  * m_FogSControl --Original "2.5"
local m_PSF_HeightFogStrength   = 0.5  * m_FogHControl --Original "0.5"
local m_PSF_HeightFogFOStrength = 0.3  * m_FogHControl --Original "0.3"
local m_PSF_HeightFogMax        = 0.6  * m_FogHControl --Original "0.6"
local m_PSF_FogHeight           = 4    * m_FogHControl --Original "4"

--======================================================================================--
-- 2.1 LOD-RELATED VARIABLES
--======================================================================================--

-- Files for LOD changes (Do NOT change order)
local cfgFiles = {
    [[GCENVIRONMENTGLOBALS.GLOBAL.MXML]], -- Id 1
    [[GCDEBUGOPTIONS.GLOBAL.MXML]],       -- Id 2
    [[GCBUILDINGGLOBALS.GLOBAL.MXML]],    -- Id 3
    [[GCGRAPHICSGLOBALS.GLOBAL.MXML]]     -- Id 4
}

local cfgLODAdjust = {
    Low    = {1.0},
    Medium = {1.1},
    High   = {1.2},
    Ultra  = {1.5}
}

local cfgToolKit = {
    LODOverride = {1},
}

local cfgEnvProps = {
    PlanetObjectSwitch        = {150},
    PlanetLodSwitch0          = {600},
    PlanetLodSwitch0Elevation = {1400},
    PlanetLodSwitch1          = {4000},
    PlanetLodSwitch2          = {20000},
    PlanetLodSwitch3          = {40000}
}

local cfgEnvPrimeProps = {
    PlanetObjectSwitch        = {250},
    PlanetLodSwitch0          = {4000},
    PlanetLodSwitch0Elevation = {4000},
    PlanetLodSwitch1          = {4000},
    PlanetLodSwitch2          = {20000},
    PlanetLodSwitch3          = {40000}
}

local cfgEnvGasGiantProps = {
    PlanetObjectSwitch        = {250},
    PlanetLodSwitch0          = {4000},
    PlanetLodSwitch0Elevation = {4000},
    PlanetLodSwitch1          = {4000},
    PlanetLodSwitch2          = {20000},
    PlanetLodSwitch3          = {40000}
}

local cfgFadeTimes = {
    TerrainFadeTime           = {1.0},
    TerrainFadeTimeInShip     = {1.0},
    CreatureFadeTime          = {0.7},
    FloraFadeTimeMin          = {0.3},
    FloraFadeTimeMax          = {1.0},
    HeavyAirFadeDistance      = {100},
    HeavyAirFadeInTime        = {0.7},
    HeavyAirFadeOutTime       = {0.7},
}

--======================================================================================--
-- 3. TABLE ENTRIES
--======================================================================================--

local function getPipelineDeferred()
    return {
        MBIN_FS = [[PIPELINES\PIPELINEDEFERRED.BIN]],
        MXML_CT = {
            {
                REPLACE_TYPE = "RAW",
                VCT = {
                    {[[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="0.5" allowDcc="false" />]], [[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="1.0" allowDcc="false" />]]},
                    {[[    <RenderTarget id="CLOUDS_MRT"         titles="legacy"   depthBuf="false"        numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="0.5" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" />]], [[    <RenderTarget id="CLOUDS_MRT"         titles="legacy"   depthBuf="false"        numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="1.0" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" />]]},
                    {[[    <RenderTarget id="CLOUDS_COLOUR"      titles="legacy"   depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" shareTarget0="RGBA16F_HR_BUF_0" />]], [[    <RenderTarget id="CLOUDS_COLOUR"      titles="legacy"   depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="1.0" applyDrs="true" allowDcc="NEXT" shareTarget0="RGBA16F_HR_BUF_0" />]]},
                    {[[    <RenderTarget id="CLOUDS_DEPTH"       titles="legacy"   depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_DEPTH"       titles="legacy"   depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="1.0" applyDrs="true" allowDcc="NEXT" />]]},
                    {[[    <RenderTarget id="CLOUDS_HISTORY"     titles="legacy"   depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_HISTORY"     titles="legacy"   depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="1.0" applyDrs="true" allowDcc="NEXT" />]]},
                    {[[    <RenderTarget id="CLOUDS_FINAL"       titles="legacy"   depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_FINAL"       titles="legacy"   depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="1.0" applyDrs="true" allowDcc="NEXT" />]]},
                }
            },
            {
                REPLACE_TYPE = "RAW",
                VCT = {
                    {"<Stage id=\"NewBloomBright\" enabled=\"true\">", "<Stage id=\"NewBloomBright\" enabled=\"false\">"},
                    {"<Stage id=\"NewBloomPre\" enabled=\"true\">", "<Stage id=\"NewBloomPre\" enabled=\"false\">"},
                    {"<Stage id=\"NewBloomPost\" enabled=\"true\">", "<Stage id=\"NewBloomPost\" enabled=\"false\">"},
                    {"<Stage id=\"NewBloomResolve\" enabled=\"true\">", "<Stage id=\"NewBloomResolve\" enabled=\"false\">"},
                    {"<Stage id=\"NewBloomExposure\" enabled=\"true\">", "<Stage id=\"NewBloomExposure\" enabled=\"false\">"},
                    {"<Stage id=\"NoBloom\" enabled=\"false\">", "<Stage id=\"NoBloom\" enabled=\"true\">"},
                    --{"<Stage id=\"SpeedLines\">", "<Stage id=\"SpeedLines\" enabled=\"false\">"},
                }
            }
        }
    }
end

local function getPipelineDeferredVr()
    return {
        MBIN_FS  = [[PIPELINES\PIPELINEDEFERREDVR.BIN]],
        MXML_CT = {
            {
                REPLACE_TYPE = "RAW",
                VCT = {
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
                VCT = {
                    {"<Stage id=\"NewBloomBright\" enabled=\"true\">", "<Stage id=\"NewBloomBright\" enabled=\"false\">"},
                    {"<Stage id=\"NewBloom\" enabled=\"true\">", "<Stage id=\"NewBloom\" enabled=\"false\">"},
                    {"<Stage id=\"NewBloomResolve\" enabled=\"true\">", "<Stage id=\"NewBloomResolve\" enabled=\"false\">"},
                    {"<Stage id=\"NewBloomExposure\" enabled=\"true\">", "<Stage id=\"NewBloomExposure\" enabled=\"false\">"},
                    {"<Stage id=\"NoBloom\" enabled=\"false\">", "<Stage id=\"NoBloom\" enabled=\"true\">"},
                    --{"<Stage id=\"SpeedLines\">", "<Stage id=\"SpeedLines\" enabled=\"false\">"},
                }
            }
        }
    }
end

local function getGraphicsGlobals()
    return {
        MBIN_FS = [[GCGRAPHICSGLOBALS.GLOBAL.MXML]],
        MXML_CT = {
            ----------------------------------------------------------------------------
            --Sun Light Settings
            ----------------------------------------------------------------------------
            {
                VCT = {
                    {"LUTDistanceFlightMultiplier", m_LUTDFMult}, --Original "0"
                    {"Sun Light Intensity",         m_Intensity}, --Original "3"
                    {"ShadowLength",         "800"}, --Original "400"
                    {"ShadowLengthStation", "2000"}, --Original "1300"
                    ----------------------------------------------------------------------------
                    --Lens Dirt Options
                    ----------------------------------------------------------------------------
                    {"LensScale",     "0"}, --Original "0.3"
                    {"LensDirt",      "0"}, --Original "0.3"
                    {"LensScaleCave", "0"}, --Original "4"
                    {"LensDirtCave",  "0"}, --Original "0.4"
                }
            },
            ----------------------------------------------------------------------------
            --Light Shaft Properties
            ----------------------------------------------------------------------------
            {
                PKW = {"LightShaftProperties",},
                VCT = {
                    {"LightShaft Scattering",  "0.35"}, --Original "0.55"
                    {"LightShaft Strength",     "0.8"}, --Original "2"
                    {"LightShaft Bottom",     "0.002"}, --Original "0"
                    {"LightShaft Top",         "0.35"}, --Original "0.75"
                }
            },
            {
                PKW = {"LightShaftProperties", "LightShaftColourBottom",},
                VCT = {
                    {"R",  "0.1"}, --Original "0.263"
                    {"G",  "0.1"}, --Original "0.263"
                    {"B", "0.13"}, --Original "0.263"
                    {"A", "0.75"}, --Original "1"
                }
            },
            {
                PKW = {"LightShaftProperties", "LightShaftColourTop",},
                VCT = {
                    {"R",  "0.1"}, --Original "0.387"
                    {"G",  "0.1"}, --Original "0.341"
                    {"B", "0.13"}, --Original "0.253"
                    {"A", "0.75"}, --Original "1"
                }
            },
            ----------------------------------------------------------------------------
            --Storm Light Shaft Properties
            ----------------------------------------------------------------------------
            {
                PKW = {"StormLightShaftProperties",},
                VCT = {
                    {"LightShaft Scattering",  "0.35"}, --Original "0.55"
                    {"LightShaft Strength",    "10.0"}, --Original "25"
                    {"LightShaft Bottom",     "0.002"}, --Original "0"
                    {"LightShaft Top",         "0.15"}, --Original "0.25"
                }
            },
            {
                PKW = {"StormLightShaftProperties", "LightShaftColourBottom",},
                VCT = {
                    {"R",  "0.1"}, --Original "0.531"
                    {"G",  "0.1"}, --Original "0.493"
                    {"B", "0.13"}, --Original "0.443"
                    {"A", "0.75"}, --Original "1"
                }
            },
            {
                PKW = {"StormLightShaftProperties", "LightShaftColourTop",},
                VCT = {
                    {"R",  "0.1"}, --Original "0.04"
                    {"G",  "0.1"}, --Original "0.034"
                    {"B", "0.13"}, --Original "0.03"
                    {"A", "0.75"}, --Original "1"
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
    }
end

local function getEnvironmentGlobals()
    return {
        MBIN_FS = [[GCENVIRONMENTGLOBALS.GLOBAL.MXML]],
        MXML_CT = {
            {
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"IndoorsLightingTransitionTime",         "0.75"}, --Original "1.2"
                    {"HeightFogHeightMin",      m_HeightFogHeightMin}, --Original "100"
                    {"WaterAlphaHeightMin",    m_WaterAlphaHeightMin}, --Original "40"
                    {"InteractionRadius",                     "0.30"}, --Original "0.15"
                }
            },

            ----------------------------------------------------------------------------
            --Undergound Lighting Transition
            ----------------------------------------------------------------------------
            {
                VCT = {
                    {"IblUndergroundLightIntensity", 8},
                    {"IblUndergroundLightDirectionHorizonBias", 0.5},
                    {"IblUndergroundFadeSpeed", 0.1},
                }
            },
            ----------------------------------------------------------------------------
            --Primary Cloud Properties
            ----------------------------------------------------------------------------
            {
                SKW = {"CloudProperties", "GcCloudProperties"},
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"SunRayLength",                   m_SunRayLength}, --Original "50"
                    {"AnimationScale",                   m_Anim_Scale}, --Original "50"
                    {"AmbientDensity",               m_AmbientDensity}, --Original "0.1"
                    {"SampleScalar",                   m_SampleScalar}, --Original "5"
                    {"SampleThreshold",             m_SampleThreshold}, --Original "0.25"
                    {"DetailScale",                     m_DetailScale}, --Original "6"
                    {"ErosionEdgeSize",             m_ErosionEdgeSize}, --Original "0.5"
                    {"CloudDistortion",             m_CloudDistortion}, --Original "50"
                    {"CloudDistortionScale",   m_CloudDistortionScale}, --Original "1"
                    {"MaxIterations",                 m_MaxIterations}, --Original "128"
                    {"HorizonFadeStartAlpha", m_HorizonFadeStartAlpha}, --Original "0.25"
                    {"HorizonFadeScalar",         m_HorizonFadeScalar}, --Original "0.25"
                    {"HorizonDistance",             m_HorizonDistance}, --Original "11165"
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
    }
end

local function getSkyGlobals()
    return {
        MBIN_FS = {"GCSKYGLOBALS.GLOBALS.MXML"},
        MXML_CT = {
            {
                VCT = {
                    {"DayLength",                                      m_Day_Length}, --Original "1800"
                    {"StormWarningTime",                         m_StormWarningTime}, --Original "25"
                    {"StormTransitionTime",                   m_StormTransitionTime}, --Original "25"
                    {"MaxCloudCover",                               m_MaxCloudCover}, --Original "0.8"
                    {"MaxStormCloudCover",                     m_MaxStormCloudCover}, --Original "0.8"
                    {"CloudCoverSmoothTime",                 m_CloudCoverSmoothTime}, --Original "10"
                    {"CloudRatioSmoothTime",                 m_CloudRatioSmoothTime}, --Original "4"
                    {"StormCloudSmoothTime",                 m_StormCloudSmoothTime}, --Original "0.8"
                    {"MinStormLengthLow",                       m_MinStormLengthLow}, --Original "120"
                    {"MaxStormLengthLow",                       m_MaxStormLengthLow}, --Original "180"
                    {"MinStormLengthHigh",                     m_MinStormLengthHigh}, --Original "150"
                    {"MaxStormLengthHigh",                     m_MaxStormLengthHigh}, --Original "320"
                    {"MinTimeBetweenStormsExtremeFallback", m_MinTBSExtremeFallback}, --Original "240"
                    {"MaxTimeBetweenStormsExtremeFallback", m_MaxTBSExtremeFallback}, --Original "620"
                    {"ExtremeAudioLevel",                       m_ExtremeAudioLevel}, --Original "0.3"
                    {"StormAudioLevel",                           m_StormAudioLevel}, --Original "0.5"
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
                    {"AtmosphereThickness", m_AtmosphereThickness}, --Original "0.319115"
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
                    {"AtmosphereThickness", m_AtmosphereThickness}, --Original "0.319115"
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
                    {"SpaceFogStrength",        "0.02"}, --Original "0.04"
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
                    {"SpaceFogStrength",        "0.02"}, --Original "0.04"
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
                REPLACE_TYPE = "ALLINSECTION",
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
                REPLACE_TYPE = "ALLINSECTION",
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
                REPLACE_TYPE = "ALLINSECTION",
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
                REPLACE_TYPE = "ALLINSECTION",
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
                REPLACE_TYPE = "ALLINSECTION",
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
        }
    }
end

--======================================================================================--
-- 3. BUILD LOD VCT ENTRIES
--======================================================================================--

-- Build vct entries
local function buildLodVctEntries()
    -- LODAdjust entries
    local vct_entries_lod_adjust = {}
    for property, value in pairs(cfgLODAdjust) do
        table.insert(vct_entries_lod_adjust, {
            SKW = {property, "TkLODSettingsData"},
            REPLACE_TYPE = "ALL",
            VCT = {{"LODAdjust", value[1]}}
        })
    end
    -- No asteroids during pulse
    table.insert(vct_entries_lod_adjust, {
        REPLACE_TYPE = "ALL",
        VCT = {{"MaxAsteroidGenerationPerFramePulseJump", 0},}
    })

    -- Planet object switch / fade times
    local vct_entries_planet_switch = {}
    for property, value in pairs(cfgEnvProps) do
        table.insert(vct_entries_planet_switch, {
            PKW = {"EnvironmentProperties"},
            VCT = {{property, value[1]}}
        })
    end
    for property, value in pairs(cfgEnvPrimeProps) do
        table.insert(vct_entries_planet_switch, {
            PKW = {"EnvironmentPrimeProperties"},
            VCT = {{property, value[1]}}
        })
    end
    for property, value in pairs(cfgEnvGasGiantProps) do
        table.insert(vct_entries_planet_switch, {
            PKW = {"EnvironmentGasGiantProperties"},
            VCT = {{property, value[1]}}
        })
    end
    for property, value in pairs(cfgFadeTimes) do
        table.insert(vct_entries_planet_switch, {
            VCT = {{property, value[1]}}
        })
    end

    -- Lod override Toolkit
    local vct_entries_lod_override = {}
    for property, value in pairs(cfgToolKit) do
        table.insert(vct_entries_lod_override, {
            SKW = {"ToolkitGlobals", "TkGlobals"},
            VCT = {{property, value[1]}}
        })
    end

    -- Building LOD adjustments
    local vct_entries_building_lod = {}
    for property, value in pairs(cfgLODAdjust) do
        table.insert(vct_entries_building_lod, {
            SKW = {property, "TkLODDistances"},
            MATH_OP = "*",
            REPLACE_TYPE = "ALL",
            VCT = {{"Distances", value[1]*bldLODdistance}}
        })
    end

    -- Force Uncached Terrain (graphics)
    local vct_entries_graphics = {}
    table.insert(vct_entries_graphics, {
        VCT = {{"ForceUncachedTerrain", true},}
    })

    -- Return as a table keyed to target MBIN files for appending
    return {
        { MBIN_FS = cfgFiles[1], MXML_CT = vct_entries_lod_adjust },
        { MBIN_FS = cfgFiles[1], MXML_CT = vct_entries_planet_switch },
        { MBIN_FS = cfgFiles[2], MXML_CT = vct_entries_lod_override },
        { MBIN_FS = cfgFiles[3], MXML_CT = vct_entries_building_lod },
        { MBIN_FS = cfgFiles[4], MXML_CT = vct_entries_graphics },
    }
end

--======================================================================================--
-- 4. BUILD COMBINED MODIFICATIONS
--======================================================================================--

local function buildModifications()
    local modifications = {}

    -- Add Clouds/Sun/Fog core modifications
    table.insert(modifications, getPipelineDeferred())
    table.insert(modifications, getPipelineDeferredVr())
    table.insert(modifications, getGraphicsGlobals())
    table.insert(modifications, getEnvironmentGlobals())
    table.insert(modifications, getSkyGlobals())

    -- Append LOD-related modifications
    local lod_entries = buildLodVctEntries()
    for _, entry in ipairs(lod_entries) do
        table.insert(modifications, entry)
    end

    return modifications
end

--======================================================================================--
-- 5. MOD DEFINITION CONTAINER
--======================================================================================--

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_MAINTENANCE = maintenance,
    MOD_DESCRIPTION = description,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = {{ MBIN_CT = buildModifications() }}
}
