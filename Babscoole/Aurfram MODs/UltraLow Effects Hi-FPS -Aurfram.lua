NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "UltraLow Effects Hi-FPS -Aurfram.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "Aurfram",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SphereLodTextureScale", "1024"},
                                {"SunFactorMin",          "0.1"},
                                {"SpaceRadiation",        "0"},
                                {"TerrainFadeTime",       "0"},
                                {"TerrainFadeTimeInShip", "0"},
                                {"CreatureFadeTime",      "0"},
                                {"FloraFadeTimeMin",      "0"},
                                {"FloraFadeTimeMax",      "0"},
                                {"TerrainFlattenMin",     "0"},
                                {"TerrainFlattenMax",     "0"},
                                {"HeightFogHeightMin",    "0"},
                                {"WaterFogHeightMax",     "0"},
                                {"WaterAlphaHeightMin",   "0"},
                                {"WaterAlphaHeightMax",   "0"},
                                {"DoFHeightMin",          "0"},
                                {"DoFHeightMax",          "0"},
                                {"SunClampHeightMin",     "0"},
                                {"SunClampHeightMax",     "0"},
                                {"HeavyAirFadeDistance",  "0"},
                                {"HeavyAirFadeInTime",    "0"},
                                {"HeavyAirFadeOutTime",   "0"},
                                {"AsteroidFadeHeightMin", "0"},
                                {"AsteroidFadeHeightMax", "0"},
                                {"AsteroidMaxRotate",     "0"},
                                {"MinWaterReflections",   "0"},
                                {"SkyAtmospherePower",    "0"},
                                {"EnableWind",            "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Low", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier",            "0"},
                                {"MaxAsteroidGenerationPerFrame",          "1000"},
                                {"MaxAsteroidGenerationPerFramePulseJump", "200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Medium", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Ultra", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CloudProperties", "GcCloudProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimationScale",       "5"},
                                {"CloudBottomFade",      "0"},
                                {"CloudDistortion",      "0"},
                                {"CloudDistortionScale", "0"},
                                {"HorizonFadeScalar",    "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND"},
                                {"Name", "STRONGWIND"},
                                {"Name", "UNDERWATER"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OverallWindStrength",       "0"},
                                {"LdsWindStrength",           "0"},
                                {"LdsWindSpeed",              "0"},
                                {"ShearWindSpeed",            "0"},
                                {"WindShearVertpushStrength", "0"},
                                {"WindShearGradientStrength", "0"},
                                {"WindShearToDotLdsFactor",   "0"},
                                {"WindStrengthToVertpush",    "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave0", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave0", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave0", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinStrength",           "0"},
                                {"MaxStrength",           "0"},
                                {"StrengthVariationFreq", "0"},
                                {"WaveSize",              "0"},
                                {"WaveFrequency",         "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave1", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave1", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave1", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinStrength",           "0"},
                                {"MaxStrength",           "0"},
                                {"StrengthVariationFreq", "0"},
                                {"WaveSize",              "0"},
                                {"WaveFrequency",         "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave2", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave2", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave2", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinStrength",   "0"},
                                {"MaxStrength",   "0"},
                                {"WaveSize",      "0"},
                                {"WaveFrequency", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave3", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave3", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave3", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxStrength",           "0"},
                                {"StrengthVariationFreq", "0"},
                                {"WaveSize",              "0"},
                                {"WaveFrequency",         "0"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeHeightMin", "0"},
                                {"AsteroidFadeHeightMax", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCGRAPHICSGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            { 
                                {"LightShaftProperties",      "GcLightShaftProperties.xml"},
                                {"StormLightShaftProperties", "GcLightShaftProperties.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LightShaftScattering", "0"},
                                {"LightShaftStrength",   "0"},
                                {"LightShaftTop",        "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SunRayDensity",                                 "0"},
                                {"SunRayDecay",                                   "0"},
                                {"SunRayExposure",                                "0"},
                                {"SunRayWeight",                                  "0"},
                                {"Redo_LightIntensity",                           "0"},
                                {"Redo_SkyIntensity",                             "0"},
                                {"Redo_BounceIntensity",                          "0"},
                                {"New_BounceLightWarp",                           "0"},
                                {"New_BounceLightPower",                          "0"},
                                {"New_BounceLightIntensity",                      "0"},
                                {"New_SkyLightWarp",                              "0"},
                                {"New_SkyLightPower",                             "0"},
                                {"New_SkyLightIntensity",                         "0"},
                                {"New_SideRimWarp",                               "0"},
                                {"Old_BounceLightWarp",                           "0"},
                                {"Old_BounceLightPower",                          "0"},
                                {"Old_BounceLightIntensity",                      "0"},
                                {"Old_SkyLightWarp",                              "0"},
                                {"Old_SkyLightPower",                             "0"},
                                {"Old_SkyLightIntensity",                         "0"},
                                {"ShadowMapSize",                                 "0"},
                                {"ShadowLength",                                  "0"},
                                {"ShadowLengthShip",                              "0"},
                                {"ShadowLengthSpace",                             "0"},
                                {"ShadowLengthStation",                           "0"},
                                {"ShadowLengthFreighter",                         "0"},
                                {"ShadowLengthFreighterAbandoned",                "0"},
                                {"ShadowLengthCameraView",                        "0"},
                                {"ShadowQuantized",                               "False"},
                                {"FoliageValueMin",                               "0.01"},
                                {"FoliageValueMax",                               "0.01"},
                                {"GrassValueMin",                                 "0.01"},
                                {"GrassValueMax",                                 "0.01"},
                                {"SkyValueMin",                                   "0.01"},
                                {"SkyValueMax",                                   "0.01"},
                                {"MaxSpaceFogStrength",                           "0"},
                                {"ReflectionStrength",                            "0"},
                                {"AlphaCutoutMin",                                "0"},
                                {"AlphaCutoutMax",                                "10"},
                                {"WaterValue",                                    "0.01"},
                                {"MaxParticleRenderRange",                        "0"},
                                {"MaxParticleRenderRangeSpace",                   "0"},
                                {"TerrainAnisoLow",                               "0"},
                                {"TerrainAnisoMed",                               "0"},
                                {"TerrainAnisoHi",                                "0"},
                                {"TerrainAnisoUlt",                               "0"},
                                {"TerrainBlocksPerFrameLow",                      "1"},
                                {"MinPixelSizeOfObjectsInShadowsSpace",           "0"},
                                {"MinPixelSizeOfObjectsInShadowsPlanet",          "0"},
                                {"MinPixelSizeOfObjectsInShadowsCockpitOnPlanet", "0"},
                                {"TargetTextureMemUsageMB",                       "64"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCSKYGLOBALS.GLOBALS.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudRatio",          "0.1"},
                                {"AtmosphereThickness", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            { 
                                {"SpaceSkyMin", "GcSpaceSkyProperties.xml"},
                                {"SpaceSkyMax", "GcSpaceSkyProperties.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceFogStrength",         "0"},
                                {"SpaceFogMax",              "0"},
                                {"SpaceFogPlanetMax",        "0"},
                                {"NebulaFrequency",          "0"},
                                {"NebulaSparseness",         "0"},
                                {"NebulaWispyness",          "0"},
                                {"NebulaWispyness1",         "0"},
                                {"NebulaBrightness",         "0"},
                                {"NebulaCloudStrength1",     "0"},
                                {"NebulaNoiseFrequency",     "0"},
                                {"NebulaTurbulenceStrength", "0"},
                                {"NebulaFBMStrength",        "0"},
                                {"NebulaFBMStrength1",       "0"},
                                {"NebulaDistortionStrength", "0"},
                                {"NebulaSeed",               "0"},
                                {"NebulaTendrilStrength",    "0"},
                                {"NebulaFogAmount",          "0"},
                                {"NebulaCloudStrength",      "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCWATERGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaveHeight",            "0"},
                                {"WaveFrequency",         "0"},
                                {"WaveChoppiness",        "0"},
                                {"WaveCutoff",            "0"},
                                {"FresnelPow",            "0"},
                                {"FresnelMul",            "0"},
                                {"FresnelAlpha",          "0"},
                                {"FresnelBelowPow",       "0"},
                                {"FresnelBelowMul",       "0"},
                                {"FresnelBelowAlpha",     "0"},
                                {"WaterColourStrength",   "0.001"},
                                {"WaterMultiplyStrength", "0.01"},
                                {"WaterMultiplyMax",      "0.01"},
                                {"FresnelPower",          "0"},
                                {"FresnelMin",            "0"},
                                {"FresnelMax",            "0"},
                                {"Wave1Scale",            "0"},
                                {"Wave1Height",           "0"},
                                {"Wave1Speed",            "0"},
                                {"Wave2Scale",            "0"},
                                {"Wave2Height",           "0"},
                                {"Wave2Speed",            "0"},
                                {"NormalMap1Scale",       "0"},
                                {"NormalMap1Speed",       "0"},
                                {"NormalMap2Scale",       "0"},
                                {"NormalMap2Speed",       "0"},
                                {"FoamFadeHeight",        "0"},
                                {"Foam1Scale",            "0"},
                                {"Foam1Speed",            "0"},
                                {"Foam2Scale",            "0"},
                                {"Foam2Speed",            "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "PIPELINES\PIPELINEDEFERRED.BIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "RAW",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {[[    <Stage id="Shadow_0_Clear" enabled="false">]], [[    <Stage id="Shadow_0_Clear" enabled="true">]]},
                                {[[    <Stage id="Shadow_1_Clear" enabled="false">]], [[    <Stage id="Shadow_1_Clear" enabled="true">]]},
                                {[[    <Stage id="Shadow_2_Clear" enabled="false">]], [[    <Stage id="Shadow_2_Clear" enabled="true">]]},
                                {[[    <Stage id="SkyClear" enabled="false">]], [[    <Stage id="SkyClear" enabled="true">]]},
                                {[[    <Stage id="SpotlightsTiled" enabled="false">]], [[    <Stage id="SpotlightsTiled" enabled="True">]]},
                                {[[    <Stage id="RefractionsCleanup" enabled="false">]], [[    <Stage id="RefractionsCleanup" enabled="true">]]},
                                {[[    <Stage id="NewBloomBright" enabled="true">]], [[    <Stage id="NewBloomBright" enabled="false">]]},
                                {[[    <Stage id="Effects" enabled="true">]], [[    <Stage id="Effects" enabled="false">]]},
                                {[[    <Stage id="SpotlightsVolumetric" enabled="true">]], [[    <Stage id="SpotlightsVolumetric" enabled="false">]]},
                                {[[    <Stage id="PointlightsVolumetric" enabled="true">]], [[    <Stage id="PointlightsVolumetric" enabled="false">]]},
                                {[[    <Stage id="NewBloomPre" enabled="true">]], [[    <Stage id="NewBloomPre" enabled="false">]]},
                                {[[    <Stage id="ApplyPostTaa" enabled="true" >]], [[    <Stage id="ApplyPostTaa" enabled="false" >]]},
                                {[[    <Stage id="NewBloomPost" enabled="true"> ]], [[    <Stage id="NewBloomPost" enabled="false"> ]]},
                                {[[    <Stage id="NewBloomResolve" enabled="true">]], [[    <Stage id="NewBloomResolve" enabled="false">]]},
                                {[[    <Stage id="NewBloomExposure" enabled="true">]], [[    <Stage id="NewBloomExposure" enabled="false">]]},
                                {[[    <Stage id="NoBloom" enabled="false">]], [[    <Stage id="NoBloom" enabled="true">]]},
                            }
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "PIPELINES\PIPELINEDEFERREDVR.BIN",
            ["FILE_CONTENT"] =
[[
<!-- High Dynamic Range (HDR) utf-8Shading Pipeline -->
<Pipeline>
  <Setup>
    <ScaleInfo resScalingDefault="true" />
    
    <!--Shadow Targets-->
    <RenderTarget id="SHADOWBUF"          depthBuf="true"   numColBufs="0"  format="RGBA8" depthFormat="DEPTH16" scale="1.0" width="5376" height="1792" shadow="true" hasMips="false" numUniformBuffers="3" crossPipeShareId="SHADOW_SHARED" />

    <!--GBuffer Targets-->
    <RenderTarget id="GBUFFER"            platforms="NEXT,PC,PS4"  depthBuf="false" numColBufs="4"  format0="RGBA8" format1="RG16" format2="RGB10A2" format3="RGBA8" scale="1.0" applyDrs="true" pointSampleColBuf1="true" pointSampleColBuf2="true" pointSampleColBuf3="true"  crossPipeShareId="GBUFFER_SHARED" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="GBUFFER"            platforms="HHELD"   depthBuf="false" numColBufs="4"  format0="RGBA8" format1="RG8"  format2="RGB10A2" format3="RGBA8" scale="1.0" applyDrs="true" pointSampleColBuf1="true" pointSampleColBuf2="true" pointSampleColBuf3="true"  crossPipeShareId="GBUFFER_SHARED" numUniformBuffers="3" numSlices="2" />

    <!--TAA Targets-->
    <RenderTarget id="TAA_FRONT"          platforms="ALL|!PS5"  depthBuf="false"  numColBufs="3"  format0="R11FG11FB10F" format1="R11FG11FB10F" format2="RGBA8" scale="1.0" applyDrs="true" shareTarget0="HDRBUF_1"  shareBuffer0="0" shareTarget1="HDRBUF_3" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="TAA_BACK"           platforms="ALL|!PS5"  depthBuf="false"  numColBufs="3"  format0="R11FG11FB10F" format1="R11FG11FB10F" format2="RGBA8" scale="1.0" applyDrs="true" shareTarget0="HDRBUF_1"  shareBuffer0="0" shareTarget1="HDRBUF_4" allowDcc="false" numUniformBuffers="3" numSlices="2" />

    <!--FSR2 Targets-->
    <RenderTargetGroup id="FSR2" platforms="PC|PS5">
    <RenderTarget id="FSR2_AccumulationOut1"              numColBufs="3"  format0="R11FG11FB10F" format1="RGBA16F" format2="R11FG11FB10F"  scale="1.0" applyDrs="false"  allowDcc0="true"  allowDcc1="false"  allowDcc2="true" postUpscale="true" shareTarget0="UPS_OUT_0" shareTarget1="FSR2_InternalUpscaled1" shareTarget2="FSR2_LockStatus1" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_AccumulationOut2"              numColBufs="3"  format0="R11FG11FB10F" format1="RGBA16F" format2="R11FG11FB10F"  scale="1.0" applyDrs="false"  allowDcc0="true"  allowDcc1="false"  allowDcc2="true" postUpscale="true" shareTarget0="UPS_OUT_0" shareTarget1="FSR2_InternalUpscaled2" shareTarget2="FSR2_LockStatus2" numUniformBuffers="3" numSlices="2" />

    <RenderTarget id="FSR2_PreparedInputColor"               depthBuf="false"        numColBufs="1"  format="RGBA16F"        scale="1.0" applyDrs="true"   allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_ReconstructedPrevNearestDepth"    depthBuf="false"        numColBufs="1"  format="RED32UI"        scale="1.0" applyDrs="true"   allowDcc="false" numUniformBuffers="3" numSlices="2" pointSampleColBuf0="true" />
    <RenderTarget id="FSR2_DilatedVelocity"                  depthBuf="false"        numColBufs="1"  format="RG16"           scale="1.0" applyDrs="true"   allowDcc="true"  numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_DilatedDepth"                     depthBuf="false"        numColBufs="1"  format="RED16F"         scale="1.0" applyDrs="true"   allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_DepthClip"                        depthBuf="false"        numColBufs="1"  format="RED8"           scale="1.0" applyDrs="true"   allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_LockStatus1"                      depthBuf="false"        numColBufs="1"  format="R11FG11FB10F"   scale="1.0" applyDrs="false"  allowDcc="true"  numUniformBuffers="3" numSlices="2" postUpscale="true" />
    <RenderTarget id="FSR2_LockStatus2"                      depthBuf="false"        numColBufs="1"  format="R11FG11FB10F"   scale="1.0" applyDrs="false"  allowDcc="true"  numUniformBuffers="3" numSlices="2" postUpscale="true" />
    <RenderTarget id="FSR2_InternalUpscaled1"                depthBuf="false"        numColBufs="1"  format="RGBA16F"        scale="1.0" applyDrs="false"  allowDcc="false" numUniformBuffers="3" numSlices="2" postUpscale="true" />
    <RenderTarget id="FSR2_InternalUpscaled2"                depthBuf="false"        numColBufs="1"  format="RGBA16F"        scale="1.0" applyDrs="false"  allowDcc="false" numUniformBuffers="3" numSlices="2" postUpscale="true" />
    <RenderTarget id="FSR2_LumaHistory1"                     depthBuf="false"        numColBufs="1"  format="RGBA8"          scale="1.0" applyDrs="true"   allowDcc="true"  numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_LumaHistory2"                     depthBuf="false"        numColBufs="1"  format="RGBA8"          scale="1.0" applyDrs="true"   allowDcc="true"  numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_ReactiveMaskMax"                  depthBuf="false"        numColBufs="1"  format="RG8"            scale="1.0" applyDrs="true"   allowDcc="true"  numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_ExposureMips"                     depthBuf="false"        numColBufs="1"  format="RED16F"         scale="0.5" applyDrs="true"   allowDcc="false" hasMips="true"  autoGenMips="false" mipsSRVs="true" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="FSR2_DefaultTrasparencyMask"           depthBuf="false"        numColBufs="1"  format="RED8"           scale="1.0" allowDcc="false" width="1"   height="1"  numUniformBuffers="3" numSlices="2" />
    </RenderTargetGroup>

    <RenderTarget id="LUM_BUF_OP"                            platforms="PS5|PC"    depthBuf="false"        numColBufs="1"  format="RED8"           scale="1.0" applyDrs="true" numUniformBuffers="3" numSlices="2"/>
    <RenderTarget id="LUM_BUF_TR"                            platforms="PS5|PC"    depthBuf="false"        numColBufs="1"  format="RED8"           scale="1.0" applyDrs="true" numUniformBuffers="3" numSlices="2"/>

    <!--Misc Targets-->
    <RenderTarget id="SUNOUT_0"                               depthBuf="false"  numColBufs="2"  format0="R11FG11FB10F" format1="R11FG11FB10F" scale="1.0" applyDrs="true" shareTarget0="HDRBUF_0"  shareBuffer0="0"  shareTarget1="HDRBUF_1"  shareBuffer1="0" numUniformBuffers="3" numSlices="2" allowDcc0="true" allowDcc1="true"  />
    <RenderTarget id="BLENDED_ABOVE"                          depthBuf="false"  numColBufs="2"  format0="R11FG11FB10F" format1="RED8"         scale="1.0" applyDrs="true" shareTarget0="HDRBUF_0"  shareBuffer0="0"  shareTarget1="LUT_MASK"  shareBuffer1="0" numUniformBuffers="3" numSlices="2" allowDcc0="true" allowDcc1="PS5" />
    <RenderTarget id="UPS_OUT_0"          platforms="PC|PS5|ORBIS"  depthBuf="false"  numColBufs="1"  format="R11FG11FB10F"                         scale="1.0" applyDrs="false" postUpscale="true" pointSampleColBuf0="true"  numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="UPS_OUT_1"          platforms="PC|ORBIS"  depthBuf="false"  numColBufs="1"  format="R11FG11FB10F"                         scale="1.0" applyDrs="false" postUpscale="true" pointSampleColBuf0="true"  numUniformBuffers="3" numSlices="2" />

    <!--LUT Targets-->
    <RenderTarget id="LUT_MASK"           depthBuf="false"  numColBufs="1"  format="RED8" scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2"   shareTarget="RED8_BUF_0" allowDcc="PS5"  />

    <!--SSR Targets-->
    <RenderTarget id="SSR_HIT_TRACE"      platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="3"  scale="0.5" applyDrs="true"     format0="R11FG11FB10F"  format1="RG16" format2="RED8" shareTarget0="SSR_HIT_RAD" shareBuffer0="0"  shareTarget1="SSR_HIT_UVS" shareBuffer1="0" shareTarget2="SSR_HIT_PDF" shareBuffer2="0" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_HIT_RAD"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="0.5" applyDrs="true"     format="R11FG11FB10F"   pointSampleColBuf0="true" numUniformBuffers="3" numSlices="2" allowDcc="false" />
    <RenderTarget id="SSR_HIT_UVS"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="0.5" applyDrs="true"     format="RG16"           pointSampleColBuf0="true" numUniformBuffers="3" numSlices="2" allowDcc="false" />
    <RenderTarget id="SSR_HIT_PDF"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="0.5" applyDrs="true"     format="RED8"           pointSampleColBuf0="true" numUniformBuffers="3" numSlices="2" allowDcc="false" />
    <RenderTarget id="SSR_REFL_0"         platforms="NEXT|XB1X"   hasMips="true"   autoGenMips="false" depthBuf="false" numColBufs="1"  scale="0.5" applyDrs="true"     format="R11FG11FB10F"   numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="SSR_REFL_1"         platforms="NEXT|XB1X"   hasMips="true"   autoGenMips="false" depthBuf="false" numColBufs="1"  scale="0.5" applyDrs="true"     format="R11FG11FB10F"   numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="SSR_RESOLVE"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="1.0" applyDrs="true"     format="R11FG11FB10F"   numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="SSR_TEMPORAL_F"     platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="3"  scale="1.0" applyDrs="true"     format0="R11FG11FB10F"  format1="RED8" format2="RED8" shareTarget0="SSR_RAD_T_F"  shareBuffer0="0" shareTarget1="SSR_VAR_T_F" shareBuffer1="0" shareTarget2="SSR_MOT_T_F" shareBuffer2="0" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_TEMPORAL_H"     platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="3"  scale="1.0" applyDrs="true"     format0="R11FG11FB10F"  format1="RED8" format2="RED8" shareTarget0="SSR_RAD_T_H"  shareBuffer0="0" shareTarget1="SSR_VAR_T_F" shareBuffer1="0" shareTarget2="SSR_MOT_T_H" shareBuffer2="0" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_RAD_T_H"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="1.0" applyDrs="true"     format="R11FG11FB10F"   pointSampleColBuf0="false" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_RAD_T_F"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="1.0" applyDrs="true"     format="R11FG11FB10F"   pointSampleColBuf0="false" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_VAR_T_H"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="0.5" applyDrs="true"     format="RED8"           pointSampleColBuf0="false" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_VAR_T_F"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="1.0" applyDrs="true"     format="RED8"           pointSampleColBuf0="false" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_MOT_T_H"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="1.0" applyDrs="true"     format="RED8"           pointSampleColBuf0="false" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <RenderTarget id="SSR_MOT_T_F"        platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="1.0" applyDrs="true"     format="RED8"           pointSampleColBuf0="false" numUniformBuffers="3" numSlices="2"  allowDcc="false" />
    <!-- SSR Debug Targets    
    <RenderTarget id="SSR_VIS"            platforms="NEXT|XB1X"   hasMips="false"  autoGenMips="false" depthBuf="false" numColBufs="1"  scale="0.5"     format="RED16F"       pointSampleColBuf0="true" />
    -->

    <!--GTAO Targets-->
    <RenderTarget id="GTAO_FRAME_0"       depthBuf="false"  numColBufs="1"  format="RED8" pointSampleColBuf0="true"   scale="0.5" scale3="1.0" applyDrs="true" scaleGroup="AmbientOcclusion"  allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="GTAO_FRAME_1"       depthBuf="false"  numColBufs="1"  format="RED8" pointSampleColBuf0="true"   scale="0.5" scale3="1.0" applyDrs="true" scaleGroup="AmbientOcclusion"  allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="GTAO_HISTORY_0"     depthBuf="false"  numColBufs="1"  format="RG8"  pointSampleColBuf0="true"   scale="0.5" scale3="1.0" applyDrs="true" scaleGroup="AmbientOcclusion"  allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="GTAO_HISTORY_1"     depthBuf="false"  numColBufs="1"  format="RG8"  pointSampleColBuf0="true"   scale="0.5" scale3="1.0" applyDrs="true" scaleGroup="AmbientOcclusion"  allowDcc="false" numUniformBuffers="3" numSlices="2" />    
    <RenderTarget id="GTAO_FINAL"         depthBuf="false"  numColBufs="1"  format="RED8" pointSampleColBuf0="false"  scale="1.0" applyDrs="true"                                           allowDcc="false" numUniformBuffers="3" numSlices="2" />

    <!--Volume Targets-->
    <RenderTarget id="VOLUME"             platforms="!PS5,PC,PS4" depthBuf="false"  numColBufs="2"  format0="RGBA16F" format1="RED16F" scale="0.5" applyDrs="true" pointSampleColBuf0="true" pointSampleColBuf1="true"   numUniformBuffers="3" numSlices="2" shareTarget1="LIGHTSHAFT" shareBuffer1="0" />
    <RenderTarget id="BLUR1"              platforms="!PS5,PC,PS4" depthBuf="false"  numColBufs="1"  format="RGBA16F"  scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" shareTarget0="HDRBUF_DOWN_16_0" />
    <RenderTarget id="BLUR1_REDONLY"      platforms="!PS5,PC,PS4" depthBuf="false"  numColBufs="1"  format="RED16F"   scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" allowDcc="false"  />
    <RenderTarget id="LIGHTSHAFT"         platforms="!PS5,PC,PS4" depthBuf="false"  numColBufs="1"  format="RED16F"   scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" />

    <RenderTarget id="VOLUME"             platforms="PS5" depthBuf="false"  numColBufs="2"  format0="R11FG11FB10F" format1="RED16F" scale="1.0" applyDrs="true" pointSampleColBuf0="true" pointSampleColBuf1="true"   numUniformBuffers="3" numSlices="2" shareTarget0="HDRBUF_0" shareBuffer0="0" shareTarget1="LIGHTSHAFT" shareBuffer1="0" />
    <RenderTarget id="BLUR1"              platforms="PS5" depthBuf="false"  numColBufs="1"  format="RGBA16F"  scale="1.0" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLUR1_REDONLY"      platforms="PS5" depthBuf="false"  numColBufs="1"  format="RED16F"   scale="1.0" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" allowDcc="false"  />
    <RenderTarget id="LIGHTSHAFT"         platforms="PS5" depthBuf="false"  numColBufs="1"  format="RED16F"   scale="1.0" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" />
 		  
    <!--Clouds Targets-->
    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"  numColBufs="1" format="RED8"   scale="0.5"  applyDrs="true" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="CLOUDS_HIGH"        platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="2" format0="RGBA8" format1="RED32F" width="442" height="496"  allowDcc="false" numUniformBuffers="3" numSlices="2"  crossPipeShareId="CLOUDS_SHARED"   />
    <RenderTarget id="CLOUD_BLURBUF1"     platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="1" format="RGBA8"  width="442" height="496" allowDcc="false" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB1_SHARED" />
    <RenderTarget id="CLOUD_BLURBUF2"     platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="1" format="RGBA8"  width="442" height="496" allowDcc="false" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB2_SHARED" />
    <RenderTarget id="CLOUDS_HIGH"        platforms="PS5"   depthBuf="false"  numColBufs="2" format0="RGBA8" format1="RED32F" width="1000" height="1000" numUniformBuffers="3" numSlices="2"  crossPipeShareId="CLOUDS_SHARED"   />
    <RenderTarget id="CLOUD_BLURBUF1"     platforms="PS5"   depthBuf="false"  numColBufs="1" format="RGBA8"  width="1000" height="1000" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB1_SHARED" />
    <RenderTarget id="CLOUD_BLURBUF2"     platforms="PS5"   depthBuf="false"  numColBufs="1" format="RGBA8"  width="1000" height="1000" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB2_SHARED" />

    <!--Water Targets-->
    <RenderTarget id="WATER"              depthBuf="false"  numColBufs="1" format="RGBA16F" scale="1.0" applyDrs="true"   numUniformBuffers="3" numSlices="2" />

    <!--Particles Targets-->
    <RenderTarget id="PARTICLES"          depthBuf="false"  numColBufs="1" format="RGBA16F" scale="0.5" applyDrs="true"   shareTarget0="HDRBUF_DOWN_16_0" numUniformBuffers="3" numSlices="2" />

    <!--Tiled Lighting Targets-->
    <RenderTarget id="LIGHTS_DUMMY"       depthBuf="false"  numColBufs="1" format="RGBA8"   allowDcc="false" scale="0.0625" applyDrs="true" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="LIGHTS_TILEBUF"     depthBuf="false"  numColBufs="1" format="RED32I" scaleX="0.5" scaleY="1.0"  applyDrs="true" allowDcc="false" numUniformBuffers="3" numSlices="2" />

    <!--Bloom Targets-->
    <RenderTarget id="BLOOM_BLURBUF_2A"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.5"       applyDrs="true" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_2B"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.5"       applyDrs="true" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_2T"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.5"       applyDrs="true" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_4A"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.25"      applyDrs="false" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_4B"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.25"      applyDrs="false" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_8A"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.125"     applyDrs="false" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_8B"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.125"     applyDrs="false" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_16"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.0625"    applyDrs="false" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_BLURBUF_32"   depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.03125"   applyDrs="false" allowDcc="false" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_FINALBUF"     depthBuf="false"  numColBufs="1" format="R11FG11FB10F" scale="0.25"      applyDrs="false" allowDcc="false" numUniformBuffers="3" numSlices="2" />

    <RenderTarget id="BLOOM_EXPBUF_A"     depthBuf="false"  numColBufs="1" format="RED8"         scale="1.0"       allowDcc="false" width="4" height="4" numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="BLOOM_EXPBUF_B"     depthBuf="false"  numColBufs="1" format="RED8"         scale="1.0"       allowDcc="false" width="4" height="4" numUniformBuffers="3" numSlices="2" />

    <!--Motion Targets-->
		<RenderTarget id="MOTIONRESOLVE"      platforms="ALL|!PS5"  depthBuf="false" numColBufs="1" format="RGBA16"       scale="1.0" applyDrs="true" numUniformBuffers="3" numSlices="2" />
		<RenderTarget id="MOTIONRESOLVE"      platforms="PS5"   depthBuf="false" numColBufs="1" format="RG16"         scale="1.0" applyDrs="true" numUniformBuffers="3" numSlices="2" />

		
    <RenderTarget id="MOTIONSCREEN"       platforms="PC"    depthBuf="false" numColBufs="1" format="RG16F"        scale="1.0" applyDrs="true" numUniformBuffers="3" numSlices="2" />

    <!--Refraction Targets-->
    <RenderTarget id="REFR_DIST_BUF"      depthBuf="false"  numColBufs="3" format0="R11FG11FB10F" format1="R11FG11FB10F" format2="RED8"   numUniformBuffers="3" numSlices="2"  scale="1.0" applyDrs="true"     allowDcc="PS5"          shareTarget0="REFR_COLOUR"  shareBuffer0="0"  shareTarget1="REFR_MAP"   shareBuffer1="0" shareTarget2="REFR_BLEND"   shareBuffer2="0" />
    <RenderTarget id="REFR_MAP"           depthBuf="false"  numColBufs="1" format="R11FG11FB10F"  numUniformBuffers="3" numSlices="2"     scale="1.0" applyDrs="true"    allowDcc="PS5"     pointSampleColBuf0="true"   shareTarget0="HDRBUF_1"   shareBuffer0="0" />
    <RenderTarget id="REFR_BLEND"         depthBuf="false"  numColBufs="1" format="RED8"          numUniformBuffers="3" numSlices="2"     scale="1.0" applyDrs="true"     allowDcc="PS5"     pointSampleColBuf0="false"  shareTarget0="RED8_BUF_1" shareBuffer0="0" />

    <RenderTarget id="REFR_BUF"           depthBuf="false"  numColBufs="6" format0="R11FG11FB10F" format1="RED8"  format2="R11FG11FB10F"  format3="RED8"    format4="R11FG11FB10F"  format5="RED16F" numUniformBuffers="3" numSlices="2"   pointSampleColBuf4="true" pointSampleColBuf5="true" scale="1.0" applyDrs="true"    allowDcc="PS5" shareTarget0="REFR_COLOUR" shareBuffer0="0"  shareTarget1="REFR_ALPHA" shareBuffer1="0"    shareTarget2="REFR_COLOUR_B" shareBuffer2="0" shareTarget3="REFR_ALPHA_B" shareBuffer3="0"  shareTarget4="REFR_DIR"       shareBuffer4="0"  shareTarget5="REFR_DEPTH_REV_Z" shareBuffer5="0" />
    <RenderTarget id="REFR_BUF_BACK"      depthBuf="false"  numColBufs="6" format0="R11FG11FB10F" format1="RED8"  format2="R11FG11FB10F"  format3="RED8"    format4="R11FG11FB10F"  format5="RED16F" numUniformBuffers="3" numSlices="2"   pointSampleColBuf4="true" pointSampleColBuf5="true" scale="1.0" applyDrs="true"    allowDcc="PS5" shareTarget0="REFR_COLOUR" shareBuffer0="0"  shareTarget1="REFR_ALPHA" shareBuffer1="0"    shareTarget2="REFR_COLOUR_B" shareBuffer2="0" shareTarget3="REFR_ALPHA_B" shareBuffer3="0"  shareTarget4="REFR_DIR_BACK"  shareBuffer4="0"  shareTarget5="REFR_DEPTH_REV_Z" shareBuffer5="0" />

    <RenderTarget id="REFR_COLOUR"        depthBuf="false"  numColBufs="1" format="R11FG11FB10F"  scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="false"  shareTarget0="HDRBUF_2"     shareBuffer0="0" />
    <RenderTarget id="REFR_ALPHA"         depthBuf="false"  numColBufs="1" format="RED8"          scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="false"  shareTarget0="RED8_BUF_0"   shareBuffer0="0" />
    <RenderTarget id="REFR_COLOUR_B"      depthBuf="false"  numColBufs="1" format="R11FG11FB10F"  scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="false"  shareTarget0="HDRBUF_1"     shareBuffer0="0" />
    <RenderTarget id="REFR_ALPHA_B"       depthBuf="false"  numColBufs="1" format="RED8"          scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="false"  shareTarget0="RED8_BUF_1"   shareBuffer0="0" />
    <RenderTarget id="REFR_DIR"           depthBuf="false"  numColBufs="1" format="R11FG11FB10F"  scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="true"   shareTarget0="HDRBUF_3"     shareBuffer0="0" />
    <RenderTarget id="REFR_DIR_BACK"      depthBuf="false"  numColBufs="1" format="R11FG11FB10F"  scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="true"   shareTarget0="HDRBUF_4"     shareBuffer0="0" />
    <RenderTarget id="REFR_DEPTH_REV_Z"   depthBuf="false"  numColBufs="1" format="RED16F"        scale="1.0" applyDrs="true"  allowDcc="false"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="true"   />

    <RenderTarget id="REFR_LIGHTSHAFT"    depthBuf="false"  numColBufs="1" format="R11FG11FB10F"  scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="false"  shareTarget0="HDRBUF_3"     shareBuffer0="0" />
    <RenderTarget id="REFR_LSFT_BACK"     depthBuf="false"  numColBufs="1" format="R11FG11FB10F"  scale="1.0" applyDrs="true"  allowDcc="PS5"   numUniformBuffers="3" numSlices="2" pointSampleColBuf0="false"  shareTarget0="HDRBUF_4"     shareBuffer0="0" />


    <!--HDR Targets-->
    <RenderTarget id="HDRBUF_0"           depthBuf="false"  numColBufs="1"  format="R11FG11FB10F" scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="HDRBUF_1"           depthBuf="false"  numColBufs="1"  format="R11FG11FB10F" scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2" allowDcc="PS5" />
    <RenderTarget id="HDRBUF_2"           depthBuf="false"  numColBufs="1"  format="R11FG11FB10F" scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2" allowDcc="PS5" />
    <RenderTarget id="HDRBUF_3"           depthBuf="false"  numColBufs="1"  format="R11FG11FB10F" scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2" allowDcc="PS5" />
    <RenderTarget id="HDRBUF_4"           depthBuf="false"  numColBufs="1"  format="R11FG11FB10F" scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2" allowDcc="PS5" />

    <RenderTarget id="HDRBUF_DOWN_16_0"   depthBuf="false"  numColBufs="1"  format="RGBA16F"      scale="0.5" applyDrs="true"  numUniformBuffers="3" numSlices="2" />

    <!--Single Channel Targets-->
    <RenderTarget id="RED8_BUF_0"         depthBuf="false"  numColBufs="1"  format="RED8"        scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="RED8_BUF_1"         depthBuf="false"  numColBufs="1"  format="RED8"        scale="1.0" applyDrs="true"  numUniformBuffers="3" numSlices="2" />

    <!--Depth Targets-->    
    <RenderTarget id="DEPTH_UI"           platforms="PC"                                depthBuf="true"   numColBufs="0"  format="RGBA8"  scale="1.0" applyDrs="false" stencilBuf="true"           numUniformBuffers="3" numSlices="2" postUpscale="true" />
    <RenderTarget id="DEPTH_UI"           platforms="ORBIS|PS5" depthBufUsesBB="true"   depthBuf="true"   numColBufs="0"  format="RGBA8"  scale="1.0" applyDrs="false" stencilBuf="true"           numUniformBuffers="3" numSlices="2" postUpscale="true" />
    <RenderTarget id="DEPTH"                                    depthBufUsesBB="true"   depthBuf="true"   numColBufs="0"  format="RGBA8"  scale="1.0" applyDrs="true" stencilBuf="true"           numUniformBuffers="3" numSlices="2" crossPipeShareId="DEPTH_SHARED" />
    <RenderTarget id="DEPTH_SSR"          platforms="PC|PS5"    depthBufUsesBB="false"  depthBuf="true"   numColBufs="0"  format="RGBA8"  scale="0.5" applyDrs="true" stencilBuf="true"           numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="DEPTH_DOWN_REV_Z"                                                 depthBuf="true"   numColBufs="0"  format="RGBA8"  scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="DEPTH_DOWN"                                                       depthBuf="false"  numColBufs="1"  format="RED32F" scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" crossPipeShareId="DEPTHD_SHARED" allowDcc="false" />
    <RenderTarget id="DEPTH_PART"                                                       depthBuf="false"  numColBufs="1"  format="RED32F" scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" />
    <RenderTarget id="DEPTH_LINEAR"                                                     depthBuf="false"  numColBufs="1"  format="RED32F" scale="1.0" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" crossPipeShareId="DEPTH_LINEAR_SHARED" />
    <RenderTarget id="DEPTH_SSR_HI_Z"     platforms="PC|PS5"                            depthBuf="false"  numColBufs="1"  format="RED16F" scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" hasMips="true" autoGenMips="false" mipsSRVs="true" />
    <RenderTarget id="DEPTH_SSR_LOW_Z"    platforms="PC|PS5"                            depthBuf="false"  numColBufs="1"  format="RED16F" scale="0.5" applyDrs="true" pointSampleColBuf0="true"   numUniformBuffers="3" numSlices="2" hasMips="true" autoGenMips="false" mipsSRVs="true" />
  </Setup>

  <!-- Scene rendering -->
  <CommandQueue>


    <Stage id="CloudsHigh">
    </Stage>

    <Stage id="CloudsBlur">
    </Stage>

    <Stage id="AttributesNG" enabled="false">
    </Stage>

    <Stage id="Attributes">

      <StartPrevFrameAsync />

      <BeginTarget target="GBUFFER" depthTarget="DEPTH" />

      <ColourMask channels="RGBA"/>
      <!-- Clear targets, colbuf1 is cleared separately to max depth -->
      <ClearTarget colBuf0="false"  colBuf1="false" colBuf2="false"  colBuf3="false" colBuf4="false" depthBuf="true"   stencilBuf="true" col_R="0.0" col_G="0.0" col_B="0.0" col_A="0.0" />
      <DiscardTargetContents colBuf0="false"  colBuf1="false" colBuf2="false"  colBuf3="false" colBuf4="false" />
      <!-- Clear MRT0 -->
	  <ColourMask channels="RGBA" colBuf1="false" colBuf2="false" colBuf3="false" colBuf4="false" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0.0" />
      <SetContext zwrite="false" colourWrite="true" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="CLEAR" />		
		
      <SetContext fsrMode="distort" zwrite="true" colourWrite="false" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskWrite" stencilRef="128" />
      <ColourMask channels="RGBA"/>
      <DrawHiddenAreaMesh />
                  
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />      
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite"/>
      <DrawGeometry type="Mesh"         class="Opaque"          context="DEPTHONLY_FRWRD"             order="STATECHANGES" />

      <!-- Z Pre-Pass for Cutout (grass etc) -->
      <SetContext fsrMode="distort" zwrite="true" colourWrite="false" cullMode="none" blendMode="replace" depthTest="less" stencilMode="maskWrite" />
      <DrawGeometry type="InstanceMesh" class="DoubleSided"    context="DEPTHONLY_DEFER_INSTANCE"    order="FRONT_TO_BACK" />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite" />
      <DrawGeometry type="InstanceMesh" class="Cutout"         context="DEPTHONLY_DEFER_INSTANCE"    order="FRONT_TO_BACK" />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite"  stencilRef="8" />
      <DrawGeometry type="Terrain"      class="LOD0"           context="DEPTHONLY_DEFER"             order="" />
      <DrawGeometry type="Terrain"      class="LOD1"           context="DEPTHONLY_DEFER"             order="" />
      <DrawGeometry type="Terrain"      class="LOD2"           context="DEPTHONLY_DEFER"             order="" />      
      <!-- Opaques-->

      <ColourMask channels="RGBA"/> <!--Enable all attached RTs, since ClearTarget only (re-)enables RT0 on PS4-->
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite"/>
      <DrawGeometry type="Mesh"         class="Highlight"         context="LIT_DEFER"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="HighlightOccluded" context="LIT_DEFER"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="Cutout"            context="LIT_DEFER"             order="STATECHANGES" />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite" stencilRef="65" />
      <DrawGeometry type="Mesh"         class="ScreenSpaceReflections"          context="LIT_DEFER"             order="STATECHANGES" />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite"  stencilRef="65"/>
      <DrawGeometry type="Mesh"         class="OpaqueBeforeUI"    context="LIT_DEFER"             order="STATECHANGES" />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="none" blendMode="replace" depthTest="less" stencilMode="maskWrite"/>
      <DrawGeometry type="Mesh"         class="DoubleSided"             context="LIT_DEFER"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="HighlightDoubleSided"    context="LIT_DEFER"             order="STATECHANGES" />
     
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="lessEqual" stencilMode="maskWrite"  stencilRef="8" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="LIT_DF_CACHE_FB"       order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="LIT_TESS_FB"           order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="LIT_DEFER_CACHE"       order="FRONT_TO_BACK" />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite"/>
      <DrawGeometry type="InstanceMesh" class="Opaque"            context="LIT_DEFER_INSTANCE"    order="FRONT_TO_BACK" />      
      
      <DrawGeometry type="Mesh"         class="Glow"      context="LIT_DEFER"             order="STATECHANGES" />    
      <DrawGeometry type="InstanceMesh" class="Glow"      context="LIT_DEFER_INSTANCE"    order="FRONT_TO_BACK" />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="lessEqual" stencilMode="maskWrite" stencilRef="8"/>
      <SetShaderControl vsLateAllocMax="22" psWaveLimit="0" />

      <DrawGeometry type="Terrain"      class="LOD3"      context="LIT_DEFER_STC_T_SPLIT_FADE"    order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD3"      context="LIT_DEFER"          order="FRONT_TO_BACK" />

      <DrawGeometry type="Terrain"      class="PLANET"    context="LIT_DEFER_LOW"         order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="ASTEROID"  context="LIT_DEFER_ASTEROID"    order="FRONT_TO_BACK" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="equal" stencilMode="disabled" />
      <DrawGeometry type="Mesh"         class="Opaque"          context="LIT_DEFER"             order="STATECHANGES" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="equal" stencilMode="disabled"/>      
      <DrawGeometry type="InstanceMesh" class="Cutout"      context="LIT_DEFER_ZE_INSTANCE" order="FRONT_TO_BACK" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="equal" stencilMode="disabled" />
      <DrawGeometry type="InstanceMesh" class="DoubleSided" context="LIT_DEFER_ZE_INSTANCE" order="FRONT_TO_BACK" />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="lessEqual" stencilMode="maskReadWriteInvert" stencilRef="0" stencilMaskRead="9" stencilMaskWrite="8"/>
      <DrawGeometry type="Mesh"         class="AtmosphereNear" context="PLANET_NEAR"      order="STATECHANGES"  />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="lessEqual" stencilMode="maskWrite" stencilRef="8"/>
      <DrawGeometry type="Mesh"         class="Atmosphere"     context="PLANET"           order="STATECHANGES" />
      
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskWrite" stencilRef="67"/>
      <DrawGeometry type="Mesh"         class="GunOpaque"    context="LIT_DEFER"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="GunGlow"      context="LIT_DEFER"             order="STATECHANGES" />    
      <DrawGeometry type="Mesh"         class="GunDecal"     context="LIT_DEFER"             order="STATECHANGES"  />

      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="replace" depthTest="lessEqual" stencilMode="maskWrite"  stencilRef="8" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="LIT_DEFER_TESS"        order="FRONT_TO_BACK" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="equal" stencilMode="disabled" />

      <SetShaderControl psWaveLimit="0" />

      <DrawGeometry type="Terrain"      class="LOD0"      context="LIT_DEFER_STC_T_SPLIT"    order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD1"      context="LIT_DEFER_STC_T_SPLIT"    order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD2"      context="LIT_DEFER_STC_T_SPLIT"    order="FRONT_TO_BACK" />

      <SetShaderControl psWaveLimit="7" />

      <DrawGeometry type="Terrain"      class="LOD0"      context="LIT_DEFER_N_FACING"    order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD1"      context="LIT_DEFER_N_FACING"    order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD2"      context="LIT_DEFER_N_FACING"    order="FRONT_TO_BACK" />      
      
      <UnbindBuffers />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="maskRead" depthTest="always" />
      <DoForwardLightLoop type="Mesh" class="Sky" context="CLEAR" order="BACK_TO_FRONT" />
      
      <EndTarget flushCB="true" flushDB="true" />
    </Stage>

    <Stage id="CopyDepth">
      <BeginTarget target="DEPTH_LINEAR" />
      <ColourMask channels="RGBA"/>
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH" bufIndex="32" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DEPTH_REV2LIN" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      <!-- wait for clouds -->
      <SyncComputeToGraphics compute="async" />
      <SyncGraphicsToCompute compute="async" />
    </Stage>
      
    <Stage id="DepthDown">      
      <BeginTarget target="DEPTH_DOWN" />
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR"    bufIndex="0"   />
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DOWNSAMPLE_GBUFFERDEPTH" compute="async" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />    
    </Stage>
    
    <Stage id="CloudsShadows">
      <BeginTarget target="CLOUDSHADOWS" />
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBuffer1Map"  sourceRT="DEPTH_DOWN"    bufIndex="0"  />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuadMT material="Materials/Cloud.material.mbin" context="RENDER2D" width ="1.0" height="1.0" compute="async" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>
      
    <Stage id="Shadow_All_Clear">
      <BeginTarget target="SHADOWBUF" />
      <SetShadowMap index="-1" />
      <ColourMask channels="RGBA"/>
      <ClearTarget depthBuf="true" colBuf0="false" col_R="0.0" col_G="0.0" col_B="0.0" col_A="0.0" />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="GTAOGen_Low" enabled="false">
      <BeginTarget target="GTAO_FRAME_0" />
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH" bufIndex="32" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="GBUFFER" bufIndex="2" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GTAO_GEN_LOW" compute="async" wavesPerSimd="8" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="GTAOGen_Medium" enabled="false">
      <BeginTarget target="GTAO_FRAME_0" />
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH" bufIndex="32" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="GBUFFER" bufIndex="2" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GTAO_GEN_MEDIUM" compute="async" wavesPerSimd="8" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="GTAOGen_High" enabled="false">  
      <BeginTarget target="GTAO_FRAME_0" />
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH" bufIndex="32" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="GBUFFER" bufIndex="2" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GTAO_GEN_HIGH" compute="async" wavesPerSimd="8" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="GTAOFin" enabled="false">

      <BeginTarget target="GTAO_FRAME_1" />
      <ColourMask channels="R" />
      <BindBuffer sampler="gBufferMap"  sourceRT="GBUFFER" bufIndex="2" />               
      <BindBuffer sampler="gBuffer1Map" sourceRT="GTAO_FRAME_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH_LINEAR" bufIndex="0"  />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GTAO_SPATIAL_H_DENOISE" compute="async" wavesPerSimd="5" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="GTAO_FRAME_0" />
      <ColourMask channels="R" />
      <BindBuffer sampler="gBufferMap"  sourceRT="GBUFFER" bufIndex="2" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="GTAO_FRAME_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH_LINEAR" bufIndex="0"  />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GTAO_SPATIAL_V_DENOISE" compute="async" wavesPerSimd="5" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
           
      <BeginTarget target="GTAO_HISTORY_0" />
      <ColourMask channels="RG" />
      <BindBuffer sampler="gBufferMap"  sourceRT="GBUFFER" bufIndex="2" /> 
      <BindBuffer sampler="gBuffer1Map" sourceRT="GTAO_HISTORY_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH" bufIndex="32" />
      <BindBuffer sampler="gBuffer3Map" sourceRT="GTAO_FRAME_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer4Map" sourceRT="MOTIONRESOLVE" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GTAO_TEMPORAL_FILTER" compute="async" wavesPerSimd="5" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />      
    </Stage>
    
    <Stage id="GTAOCopy" enabled="false">
      <BeginTarget target="GTAO_FINAL" />
      <ColourMask channels="R" />
      <BindBuffer sampler="gBufferMap" sourceRT="GTAO_HISTORY_0" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="BILATERAL_SIMPLE_REDONLY_UPSAMPLE" compute="async" wavesPerSimd="5"/>
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <SwapTargets targetA="GTAO_HISTORY_0" targetB="GTAO_HISTORY_1" />
    </Stage>  
    
    <Stage id="GTAOCopyUltra" enabled="false">
      <BeginTarget target="GTAO_FINAL" />
      <ColourMask channels="R" />
      <BindBuffer sampler="gBufferMap" sourceRT="GTAO_HISTORY_0" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" stencilMode="disabled" depthTest="always" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="COPY" compute="async" wavesPerSimd="5"/>
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <SwapTargets targetA="GTAO_HISTORY_0" targetB="GTAO_HISTORY_1" />
    </Stage>

    <Stage id="GTAOOff" enabled="false">
      <BeginTarget target="GTAO_FINAL" />      
      <ColourMask channels="R"/>
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <ClearTarget colBuf0="true"   colBuf1="false" colBuf2="false"  colBuf3="false" colBuf4="false" depthBuf="false"   stencilBuf="false" col_R="1.0" />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="Decals">

      <BeginTarget target="GBUFFER" depthTarget="DEPTH" readOnlyDepth="true" />
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR"    bufIndex="0"   />

      <ColourMask channels="RGB" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less" stencilMode="disabled"/>
      <DrawGeometry type="InstanceMesh" class="Decal"    context="LIT_DEFER_INSTANCE"    order="BACK_TO_FRONT" singlePassStereo="false" />
      <DrawGeometry type="Mesh"         class="Decal"    context="LIT_DEFER"             order="STATECHANGES" singlePassStereo="false" />

      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      
    </Stage>

   <Stage id="Shadow_0_Clear" enabled="true">
      <BeginTarget target="SHADOWBUF" />
      <ColourMask channels="RGBA"/>
      <SetShadowMap index="0" />
      <ClearTarget depthBuf="true" colBuf0="false" depthViewportOnly="true" col_R="0.0" col_G="0.0" col_B="0.0" col_A="0.0" />
    </Stage>

    <Stage id="Shadow_0">
      
      <BeginTarget target="SHADOWBUF" />

      <UpdateShadowMap />

      <ColourMask channels="RGBA"/>
      <!--PS4: default setting after ClearTarget equals RT0-RGBA, so no need to call ColourMask again-->
      
      <!--PS4: we're using HTile but not allowing compression, to save decompressing the very large shadowmap target at the end -->
      

      <SetShadowMap index="0" />
      <SetContext zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="lessEqual" />
      <DrawShadowGeometry type="Mesh"         class="Glow"              context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="Opaque"            context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="GunOpaque"         context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="Mesh"         class="OpaqueBeforeUI"    context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="Cutout"            context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="Highlight"         context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="HighlightOccluded" context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="ShadowOnly"        context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="InstanceMesh" class="Opaque"            context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="InstanceMesh" class="Cutout"            context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="InstanceMesh" class="Glow"              context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>

      <SetContext zwrite="true" colourWrite="false" cullMode="none" blendMode="replace" depthTest="lessEqual" />
      <DrawShadowGeometry type="Mesh"         class="DoubleSided"             context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="InstanceMesh" class="DoubleSided"             context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Mesh"         class="HighlightDoubleSided"    context="SHADOW_FADE"            order="STATECHANGES" />

      <SetContext zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="lessEqual" />
      <DrawShadowGeometry type="Terrain"      class="LOD0"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Terrain"      class="LOD1"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Terrain"      class="LOD2"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>

      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="Shadow_1_Clear" enabled="true">
      <BeginTarget target="SHADOWBUF" />
      <ColourMask channels="RGBA"/>
      <SetShadowMap index="1" />
      <ClearTarget depthBuf="true" colBuf0="false" depthViewportOnly="true" col_R="0.0" col_G="0.0" col_B="0.0" col_A="0.0" />
    </Stage>

    <Stage id="Shadow_1">
      
      <BeginTarget target="SHADOWBUF" />

      <UpdateShadowMap />

      <ColourMask channels="RGBA"/>
      <!--PS4: default setting after ClearTarget equals RT0-RGBA, so no need to call ColourMask again-->
      
      <!--PS4: we're using HTile but not allowing compression, to save decompressing the very large shadowmap target at the end -->
      

      <SetShadowMap index="1" />
      <SetContext zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="lessEqual" UniformBufferIndex="1" />
      <DrawShadowGeometry type="Mesh"         class="Glow"              context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="Opaque"            context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="Mesh"         class="GunOpaque"         context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="Mesh"         class="Cutout"            context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="Mesh"         class="Highlight"         context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="HighlightOccluded" context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="ShadowOnly"        context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="InstanceMesh" class="Opaque"            context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT" />
      <DrawShadowGeometry type="InstanceMesh" class="Cutout"            context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT" />
      <DrawShadowGeometry type="InstanceMesh" class="Glow"              context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>

      <SetContext zwrite="true" colourWrite="false" cullMode="none" blendMode="replace" depthTest="lessEqual" UniformBufferIndex="1" />
      <DrawShadowGeometry type="Mesh"         class="DoubleSided"             context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="InstanceMesh" class="DoubleSided"             context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Mesh"         class="HighlightDoubleSided"    context="SHADOW_FADE"            order="STATECHANGES" />

      <SetContext zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="lessEqual" UniformBufferIndex="1" />
      <DrawShadowGeometry type="Terrain"      class="LOD0"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Terrain"      class="LOD1"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Terrain"      class="LOD2"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>

      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="Shadow_2_Clear" enabled="true">
      <BeginTarget target="SHADOWBUF" />
      <ColourMask channels="RGBA"/>
      <SetShadowMap index="2" />
      <ClearTarget depthBuf="true" colBuf0="false" depthViewportOnly="true" col_R="0.0" col_G="0.0" col_B="0.0" col_A="0.0" />
    </Stage>

    <Stage id="Shadow_2">
      
      <BeginTarget target="SHADOWBUF" />

      <UpdateShadowMap />

      <ColourMask channels="RGBA"/>
      
      <SetShadowMap index="2" />
      <SetContext zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="lessEqual" UniformBufferIndex="2" />
      <DrawShadowGeometry type="Mesh"         class="Glow"              context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="Opaque"            context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="Mesh"         class="GunOpaque"         context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="Mesh"         class="Cutout"            context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="Mesh"         class="Highlight"         context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="HighlightOccluded" context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="Mesh"         class="ShadowOnly"        context="SHADOW_FADE"            order="STATECHANGES"/>
      <DrawShadowGeometry type="InstanceMesh" class="Opaque"            context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT" />
      <DrawShadowGeometry type="InstanceMesh" class="Cutout"            context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT" />
      <DrawShadowGeometry type="InstanceMesh" class="Glow"              context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>

      <SetContext zwrite="true" colourWrite="false" cullMode="none" blendMode="replace" depthTest="lessEqual" UniformBufferIndex="2" />
      <DrawShadowGeometry type="Mesh"         class="DoubleSided"             context="SHADOW_FADE"            order="STATECHANGES" />
      <DrawShadowGeometry type="InstanceMesh" class="DoubleSided"             context="SHADOW_INSTANCE_FADE"   order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Mesh"         class="HighlightDoubleSided"    context="SHADOW_FADE"            order="STATECHANGES" />

      <SetContext zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="lessEqual" UniformBufferIndex="2" />
      <DrawShadowGeometry type="Terrain"      class="LOD0"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Terrain"      class="LOD1"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>
      <DrawShadowGeometry type="Terrain"      class="LOD2"           context="SHADOW_FADE"            order="BACK_TO_FRONT"/>

      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="Shadow_End">
      <BeginTarget target="SHADOWBUF" />
      <SetShadowMap index="-1" />

      <SetDepthBufferControl allowCompression="true" />    
      <EndTarget flushCB="false" flushDB="true" />
    </Stage>

    <!--  <Stage id="AsyncNextSync">
      <SyncComputeToGraphics compute="async_next" />
    </Stage> -->

    <Stage id="SkyScratchPad" enabled="false" >

      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGB" />      

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" stencilMode="maskRead"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="GBUFFER"    bufIndex="2"   />
      <DoForwardLightLoop type="Mesh" class="Sky" context="SCRATCHPAD" order="BACK_TO_FRONT" singlePassStereo="false" />

      <EndTarget flushCB="true" flushDB="false" />
      
      <UnbindBuffers />

    </Stage>

    <Stage id="SkyClear" enabled="true">
       <SetShadowMap index="-1" />
       <UpdateShadowMap />
       <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
       <ColourMask channels="RGBA" />
        <ClearTarget depthBuf="false" stencilBuf="false" colBuf0="true" col_R="0.0" col_G="0.0" col_B="0.0" col_A="0.0" />
        <EndTarget flushCB="true" flushDB="false" />
    </Stage>
    
    <Stage id="Sky">

      <SetShadowMap index="-1" />
      <UpdateShadowMap />
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" /> 
      <ClearTarget depthBuf="false" stencilBuf="false" colBuf0="true" col_R="0.0" col_G="0.0" col_B="0.0" col_A="0.0" />

      <!-- Space/Night Sky -->      
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" stencilMode="maskRead"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="GBUFFER"    bufIndex="2"   />
      <DoForwardLightLoop type="Mesh" class="Sky" context="LIGHTING" order="BACK_TO_FRONT" singlePassStereo="false" />
      <UnbindBuffers />

      <!-- Starfield -->
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="always" stencilMode="maskRead" />
      <DrawGeometry type="PStream" class="Opaque"    context="PSTREAM_SYSTEM"    order="FRONT_TO_BACK" />

      <EndTarget flushCB="true" flushDB="false" />

    </Stage>


    <Stage id="MOTIONRESOLVE">
      <SyncComputeToGraphics compute="async" />
      <BeginTarget target="MOTIONRESOLVE" depthTarget="DEPTH" readOnlyDepth="true"  />
      <!--<DiscardTargetContents colBuf0="true" />   -->
      <ColourMask channels="RGBA"/>

      <BindBuffer sampler="gBufferMap"  sourceRT="GBUFFER" bufIndex="1" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <BindBuffer sampler="gBuffer3Map" sourceRT="GBUFFER" bufIndex="3" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="maskread" stencilMask="140" stencilRef="0"/>
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="MOTIONRESOLVE" />

      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="maskread" stencilMask="136" stencilRef="8"/>
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="MOTIONRES_TERR" />

      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="maskread" stencilMask="132" stencilRef="4"/>
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="MOTIONRES_CLIP" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>


    <Stage id="Sunlight">
      <BeginTarget target="SUNOUT_0" depthTarget="DEPTH" />
      <ColourMask channels="RGB"  />
      <BindBuffer sampler="gBufferMap"        sourceRT="GBUFFER"        bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map"       sourceRT="DEPTH_LINEAR"   bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"       sourceRT="GBUFFER"        bufIndex="2"  />
      <BindBuffer sampler="gBuffer3Map"       sourceRT="GBUFFER"        bufIndex="3"  />
      <BindBuffer sampler="gBuffer4Map"       sourceRT="GTAO_FINAL"     bufIndex="0" addressMode="clamp" />
      <BindBuffer sampler="gShadowMap"        sourceRT="SHADOWBUF"      bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"   sourceRT="CLOUDSHADOWS"   bufIndex="0" addressMode="wrap" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" stencilMode="maskReadInvert" stencilMask="9" stencilRef="0"/>
      <If conditionType="uniform" material="materials/Light.material.mbin" id="gScanParamsCfg1Vec4" index="3" test="equal" value="0" />
      <DrawQuadMT material="materials/Light.material.mbin" context="SUNLIGHT_SPLIT" />
      <Else/>
      <DrawQuadMT material="materials/Light.material.mbin" context="SUNLIGHT_SPLT_SCAN" />
      <EndIf/>
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="ShadowApply" >

      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH" />

      <ColourMask channels="RGB"  colBuf1="false"  colBuf2="false"  />
      <BindBuffer sampler="gBufferMap"        sourceRT="SUNOUT_0"     bufIndex="1"  />
      <BindBuffer sampler="gBuffer1Map"       sourceRT="DEPTH_LINEAR" bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"       sourceRT="GBUFFER"      bufIndex="2"  />
      <BindBuffer sampler="gBuffer3Map"       sourceRT="GBUFFER"      bufIndex="0"  />
      <BindBuffer sampler="gShadowMap"        sourceRT="SHADOWBUF"    bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"   sourceRT="CLOUDSHADOWS" bufIndex="0" addressMode="wrap" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="add" depthTest="always" stencilMode="maskReadInvert" stencilMask="9" stencilRef="0"/>
      <DrawQuadMT material="materials/Light.material.mbin" context="SHADOW_APPLY"/>

      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="SpotlightsTiled" enabled="True">

      <BeginTarget target="LIGHTS_TILEBUF" />
      <DiscardTargetContents colBuf0="true" />

      <ColourMask channels="RGBA"/>
      <ClearTarget depthBuf="false" colBuf0="true" col_R="0.0" col_G="0.0" col_B="0.0" />
      <EndTarget flushCB="true" flushDB="false" flushForCompute="true" />

      <BeginTarget target="LIGHTS_DUMMY" />

      <BindBuffer sampler="gLightCluster" sourceRT="LIGHTS_TILEBUF" bufIndex="0" bindAsRwImage="true" />
      <SetContext zwrite="false" colourWrite="true" cullMode="front" blendMode="replace"    stencilMode="disabled" depthTest="always" />
      <DoDeferredLightLoop context="SPOT_INNER_LIST" inner="true"/>

      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace"    stencilMode="disabled" depthTest="always" />
      <DoDeferredLightLoop context="SPOT_OUTER_LIST" inner="false"/>

      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" flushForCompute="true"  />

      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH" />

      <ColourMask channels="RGB"  colBuf1="false"  colBuf2="false" />
      <BindBuffer sampler="gBufferMap"   sourceRT="GBUFFER"         bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="DEPTH_LINEAR"    bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"  sourceRT="GBUFFER"         bufIndex="2"  />
      <BindBuffer sampler="gBuffer3Map"  sourceRT="GBUFFER"         bufIndex="3"  />
      <BindBuffer sampler="gBuffer4Map"  sourceRT="GTAO_FINAL"      bufIndex="0" addressMode="clamp" />
      <BindBuffer sampler="gBuffer5Map"  sourceRT="SUNOUT_0"        bufIndex="1"  />
      <BindBuffer sampler="gLightCluster" sourceRT="LIGHTS_TILEBUF"  bufIndex="0" bindAsRwImage="true" />

      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="add"    stencilMode="disabled" depthTest="always" />
      <DoDeferredLightLoopMulti context="SPOT_MULTI" inner="true"/>

      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="Spotlights">
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH" />

      <ColourMask channels="RGB"  colBuf1="false"  colBuf2="false" />
      <BindBuffer sampler="gBufferMap"   sourceRT="GBUFFER"       bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="DEPTH_LINEAR"  bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"  sourceRT="GBUFFER"       bufIndex="2"  />
      <BindBuffer sampler="gBuffer3Map"  sourceRT="GBUFFER"       bufIndex="3"  />
      <BindBuffer sampler="gBuffer4Map"  sourceRT="GTAO_FINAL"    bufIndex="0" addressMode="clamp" />
      
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="front" blendMode="add" stencilMode="maskReadInvert" stencilMask="9" stencilRef="0" depthTest="greaterEqual" depthBounds="true" />
      <DoDeferredLightLoop context="SPOTLIGHT_INNER" inner="true"/>

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back"  blendMode="add" stencilMode="maskReadInvert" stencilMask="9" stencilRef="0" depthTest="less"         depthBounds="true" />
      <DoDeferredLightLoop context="SPOTLIGHT_OUTER" inner="false"/>

      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="TileVisualise" enabled="false">
    </Stage>

    <Stage id="WaterFromAbove"  >
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBuffer1Map"   sourceRT="DEPTH_LINEAR"    bufIndex="0"  />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="none" blendMode="blend" depthTest="less" alphaToCoverage="false" stencilMode="maskWrite" stencilRef="4"  stencilMask="4" />
      <DrawQuadMT material="Models/Planets/Terrain/Water.material.mbin" context="FULLSCP3_F_NOREF"/>
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="true" />

      <BeginTarget target="DEPTH_LINEAR" depthTarget="DEPTH" readOnlyDepth="true" onlyStencil="true" />
      <ColourMask channels="RGBA"/>
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskread" stencilRef="4"  stencilMask="4"  />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH" bufIndex="32" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DEPTH_REV2LIN" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_DOWN" />
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR"    bufIndex="0"   />
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DOWNSAMPLE_GBUFFERDEPTH"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="Shadow_DS" enabled="false">
    </Stage>

    <Stage id="Volumetrics">

      <BeginTarget target="VOLUME" />
      <ColourMask channels="RGBA" colBuf1="false" />
      <ClearTarget depthBuf="false" colBuf0="true" colBuf1="true" col_R="0.0" col_G="0.0" col_B="0.0" />

      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_DOWN" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="GBUFFER"    bufIndex="2"  />
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="front" stencilMode="disabled" depthTest="always" blendMode="add" />
      <DoForwardLightLoop type="Mesh" class="AtmosphereNear" context="SCATTER_MASK" order="FRONT_TO_BACK" singlePassStereo="false" />
      <UnbindBuffers />
      
      <ColourMask channels="RGBA"/>

      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_DOWN" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="GBUFFER"    bufIndex="2"  />
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" stencilMode="disabled" depthTest="always" blendMode="add" />
      <DrawQuadMT material="materials/Light.material.mbin" context="SCATTERING"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLUR1" />
      <BindBuffer sampler="gBufferMap"  sourceRT="VOLUME" bufIndex="0"   />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN"  bufIndex="0"   />
      <SetContext fsrMode="distort" zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DEPTH_AWARE_H_GUASS" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="VOLUME" />
      <ColourMask channels="RGBA" colBuf1="false" />
      <BindBuffer sampler="gBufferMap"  sourceRT="BLUR1"   bufIndex="0"   />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN"  bufIndex="0"   />
      <SetContext fsrMode="distort" zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DEPTH_AWARE_V_GUASS" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="PlanetCloud">
      
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" />
      
       <!--Cloud sphere around planets--> 
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less" stencilMode="maskRead" stencilMask="128" stencilRef="0"  />
      <DoForwardLightLoop type="Mesh" class="Atmosphere" context="CLOUDSHADOW" order="BACK_TO_FRONT" />
    
      <ColourMask channels="RGB" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less" stencilMode="maskRead" stencilMask="128" stencilRef="0"  />
      <DoForwardLightLoop type="Mesh" class="Atmosphere" context="CLOUD" order="BACK_TO_FRONT" />
    
      <EndTarget flushCB="false" flushDB="false" />
      
    </Stage>
          
    <Stage id="VolumetricsUPS">
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" />
           
      <BindBuffer sampler="gBufferMap"  sourceRT="VOLUME"        bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN"    bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH_LINEAR"  bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.25" /> 
      <SetContext fsrMode="distort" zwrite="false" blendMode="blend" colourWrite="true" depthTest="always" stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="BILATERAL_BLEND_UPSAMPLE"  />
      <UnbindBuffers />
                
      <EndTarget flushCB="false" flushDB="false" />    
    </Stage>
	  
    <!-- 
    <Stage id="VolumetricsFS"  enabled="false" >
      <BeginTarget target="VOLUME"  depthTarget="DEPTH" />
      <ColourMask channels="RGBA" colBuf1="false" />
      <ClearTarget depthBuf="false" colBuf0="true" colBuf1="true" col_R="0.0" col_G="0.0" col_B="0.0" />

      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="GBUFFER"    bufIndex="2"  />
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="front" depthTest="always" blendMode="add" stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <DoForwardLightLoop type="Mesh" class="AtmosphereNear" context="SCATTER_MASK" order="FRONT_TO_BACK" singlePassStereo="false" />
      <UnbindBuffers />
      
      <ColourMask channels="RGBA"/>

      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="GBUFFER"    bufIndex="2"  />
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" depthTest="always" blendMode="add"  stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <DrawQuadMT material="materials/Light.material.mbin" context="SCATTERING_NOGR"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" />
           
      <BindBuffer sampler="gBufferMap"  sourceRT="VOLUME"        bufIndex="0"  />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.25" /> 
      <SetContext fsrMode="distort" zwrite="false" blendMode="blend" colourWrite="true" depthTest="always" stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="COPY_SRGB_TO_P3"  />
      <UnbindBuffers />

	  <EndTarget flushCB="false" flushDB="false" />    

   </Stage>	  
   -->

    <Stage id="VolumetricsFR"  enabled="false" >
      <BeginTarget target="VOLUME"  depthTarget="DEPTH" />
      <ColourMask channels="RGBA" colBuf1="false" />
      <ClearTarget depthBuf="false" colBuf0="false" colBuf1="true" col_R="0.0" col_G="0.0" col_B="0.0" />

      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="GBUFFER"    bufIndex="2"  />
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="front" depthTest="always" blendMode="blend" stencilMode="maskRead" stencilMask="128" stencilRef="0"  />
      <DoForwardLightLoop type="Mesh" class="AtmosphereNear" context="SCATTER_MASK" order="FRONT_TO_BACK" singlePassStereo="false" />
      <UnbindBuffers />
      
      <ColourMask channels="RGBA"/>

      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="GBUFFER"    bufIndex="2"  />
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" depthTest="always" blendMode="blend" stencilMode="maskRead" stencilMask="128" stencilRef="0"   />
      <DrawQuadMT material="materials/Light.material.mbin" context="SCATTERING_FNOGR"  />
      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="false" />
   </Stage>	  
		  
    <Stage id="Rings">		
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGB" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="front" stencilMode="disabled" depthTest="lessEqual" blendMode="add" />
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR"  bufIndex="0" />
      <DoForwardLightLoop type="Mesh" class="Atmosphere" context="SCATTERING" order="FRONT_TO_BACK" singlePassStereo="false" />
      <UnbindBuffers />
                  
      <ColourMask channels="RGBA" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="front" blendMode="blend" depthTest="always" stencilMode="maskRead" stencilMask="128" stencilRef="0" /> 
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR"  bufIndex="0" />
      <DoForwardLightLoop type="Mesh"    class="Rings"            context="RINGS" order="BACK_TO_FRONT" singlePassStereo="false" />
      <UnbindBuffers />
           
      <EndTarget flushCB="false" flushDB="false" />    
    </Stage>	  
	  

    <Stage id="BlackHole">
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" />
      <BindBuffer sampler="gShadowMap"       sourceRT="SHADOWBUF"       bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back"  blendMode="blend" depthTest="less" />
      <DoForwardLightLoop type="Mesh"     class="BlackHoleBack"       context="LIT_FORWARD"    order="STATECHANGES" />
      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="CloudsCopy">     
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="blend" depthTest="always" stencilMode="maskRead" stencilMask="128" stencilRef="0"  />
      <BindBuffer sampler="gBufferMap"     sourceRT="CLOUD_BLURBUF1"     bufIndex="0" />
      <BindBuffer sampler="gCloudDepthMap" sourceRT="CLOUDS_HIGH"     bufIndex="1" />
      <BindBuffer sampler="gDepthMap"      sourceRT="DEPTH_LINEAR"    bufIndex="0" />
      <DrawQuadMT material="materials/Cloud.material.mbin" context="COPY" width ="1.0" height="1.0" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" /> 
    </Stage>

    <Stage id="WaterFromBelow">

      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />
      <BindBuffer sampler="gBuffer1Map"   sourceRT="DEPTH_LINEAR"    bufIndex="0"  />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="none" blendMode="blend" depthTest="less" stencilMode="maskWrite" stencilRef="4"  stencilMask="4" />
      <DrawQuadMT material="Models/Planets/Terrain/Water.material.mbin" context="FULLSCREEN_B_F"/>
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="true" />

      <BeginTarget target="DEPTH_LINEAR" depthTarget="DEPTH" readOnlyDepth="true" onlyStencil="true" />
      <ColourMask channels="RGBA"/>
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskread" stencilRef="4"  stencilMask="4"    />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH" bufIndex="32" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DEPTH_REV2LIN" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_DOWN" />
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_LINEAR"    bufIndex="0"   />
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DOWNSAMPLE_GBUFFERDEPTH"/>
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

    </Stage>

    <Stage id="TerrainEdits" enabled="false">
      <BeginTarget target="BLENDED_ABOVE" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" colBuf1="false" />
      <!-- Terrain Edits -->
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="add" depthTest="lessEqual" stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DrawGeometry type="Terrain"      class="LOD0"      context="EDITS"           order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="EDITS_CACHE_FB"  order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="EDITS_TESS_FB"   order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="EDITS_CACHE"     order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD0"      context="EDITS_TESS"      order="FRONT_TO_BACK" />
      <DrawGeometry type="Terrain"      class="LOD1"      context="EDITS"           order="FRONT_TO_BACK" />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>
    
    <Stage id="FFXSR2_LUMAOP" enabled="false">
      <!-- <BeginTarget target="LUM_BUF_OP" />
      <ColourMask channels="R" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_0" bufIndex="0" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="COPY_RGB2LUM_LINEAR" />
      <EndTarget flushCB="true" flushDB="false" /> -->
    </Stage>
    
    <Stage id="BlendedAbovePreRefractions">

      <BeginTarget target="BLENDED_ABOVE" depthTarget="DEPTH"/>

      <ColourMask channels="RGBA" colBuf1="false" />
      <BindBuffer sampler="gShadowMap"       sourceRT="SHADOWBUF"       bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />

      <!-- Quads -->
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="front"  blendMode="blend" depthTest="less" stencilMode="maskWrite" stencilRef="4"  stencilMask="4" />
      <DoForwardLightLoop type="QUAD"     class="Opaque"  context="LIGHTING"  order="" />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back"  blendMode="blend" depthTest="less" stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DoForwardLightLoop type="QUAD"     class="Opaque"  context="LIGHTING"  order="" />

      <!-- Lines -->
      <ColourMask channels="RGB" colBuf1="false" />
      <!--a = alpha offset, b = noise threshold, c = is underground, d = alpha noise factor-->
      <BindBuffer sampler="gBufferMap" sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none"  blendMode="add" depthTest="always" stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DoForwardLightLoop type="LINE"     class="Opaque"  context="SUBSTANCES"  order=""  singlePassStereo="false" />
        
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none"  blendMode="add" depthTest="greater" stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DrawGeometry       type="Mesh"     class="TeleportTravelMarker" context="LIT_FORWARD"             order="STATECHANGES" />

      <ColourMask channels="RGB" colBuf1="false" />
      <!-- player gun additive. has to be rendered before the laser so it can lay down the stencil.-->
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="add" depthTest="less" stencilMode="maskWrite" stencilRef="71" stencilMask="71" />
      <DrawGeometry type="Mesh"         class="GunAdditive"    context="LIT_FORWARD"             order="STATECHANGES" />

      <!-- Transparent Objects -->
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="add" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DoForwardLightLoop type="Mesh"     class="Additive"    context="LIT_FORWARD" order="BACK_TO_FRONT" />

      <ColourMask channels="RGBA"  />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="true" cullMode="back" blendMode="add" depthTest="less" stencilMode="maskWrite" stencilRef="4" stenciMask="4" />
      <DrawGeometry type="LINERENDERER"  class="Opaque"   context="LINE3D"            order="" />

      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="true" />

    </Stage>

    <Stage id="TranslucentNormal" enabled="true" >
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" />
      <BindBuffer sampler="gShadowMap"       sourceRT="SHADOWBUF"       bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />
      <BindBuffer sampler="gDepthBuffer"     sourceRT="DEPTH_LINEAR" bufIndex="0" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DoForwardLightLoop type="Mesh"     class="Translucent" context="LIT_FORWARD" order="BACK_TO_FRONT"  singlePassStereo="false"  />

      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="RefractionsPrePass" enabled="false" >
      <BeginTarget target="REFR_COLOUR_B" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0.0" />
      <SetContext zwrite="false" colourWrite="true" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="CLEAR" />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="REFR_BUF" depthTarget="DEPTH" onlyStencil="true" />
      <ColourMask channels="RGBA" />
      <ClearTarget colBuf0="true"  colBuf1="true" colBuf2="true"  colBuf3="true" colBuf4="true" colBuf5="true" depthBuf="false"   stencilBuf="false" />
      <BindBuffer sampler="gShadowMap"       sourceRT="SHADOWBUF"       bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less"  stencilMode="maskWrite" stencilRef="20"  stencilMask="20" />
      <DoForwardLightLoop type="Mesh"     class="Translucent" context="LIT_FRWD_REFR_H" order="BACK_TO_FRONT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="RefractionsBehind" enabled="false" >
      <BeginTarget target="HDRBUF_0" />
      <EndTarget flushCB="true" flushDB="false" />
      
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGBA" />
      <BindBuffer sampler="gBufferMap"  sourceRT="REFR_COLOUR"      bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map" sourceRT="REFR_ALPHA"       bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map" sourceRT="REFR_COLOUR_B"    bufIndex="0"  />
      <BindBuffer sampler="gBuffer3Map" sourceRT="REFR_ALPHA_B"     bufIndex="0"  />
      <SetContext fsrMode="distort"  zwrite="false" colourWrite="true" cullMode="none" blendMode="blend" depthTest="always"  stencilMode="maskRead" stencilRef="16"  stencilMask="144" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="REFRACT_BEHIND" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>
    
    <Stage id="RefractionsApply" enabled="false" >
      <BeginTarget target="REFR_ALPHA" />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="REFR_COLOUR" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGBA" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_0"         bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map" sourceRT="REFR_ALPHA"       bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map" sourceRT="REFR_DIR"         bufIndex="0"  />
      <BindBuffer sampler="gBuffer3Map" sourceRT="REFR_DEPTH_REV_Z" bufIndex="0"  />
      <BindBuffer sampler="gBuffer4Map" sourceRT="DEPTH"            bufIndex="32" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="blend" depthTest="always"  stencilMode="maskRead" stencilRef="16"  stencilMask="144" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="REFRACT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="TranslucentRefractive" enabled="false" >
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH" />
      <ColourMask channels="RGBA" />
      <BindBuffer sampler="gBufferMap"  sourceRT="REFR_COLOUR"      bufIndex="0" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always"  stencilMode="maskRead" stencilRef="16" stencilMask="144" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="COPY" />
      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="BlendedAbovePostRefractions">
      <BeginTarget target="BLENDED_ABOVE" depthTarget="DEPTH"/>

      <!-- Transparent Objects -->
      <ColourMask channels="RGBA" colBuf1="false" />
      <BindBuffer sampler="gShadowMap"       sourceRT="SHADOWBUF"       bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />
      <BindBuffer sampler="gBufferMap"       sourceRT="DEPTH_LINEAR"    bufIndex="0" />
      
      <ColourMask channels="RGBA" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>      
      <DoForwardLightLoop type="Mesh"     class="WarpInShip"  context="LIT_FORWARD" order="BACK_TO_FRONT" />
      <DoForwardLightLoop type="Mesh"     class="Rainbow"     context="RAINBOW"     order="BACK_TO_FRONT"  singlePassStereo="false"  />

      <!-- PlaneSpotlight Object -->
      <ColourMask channels="RGB" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DoForwardLightLoop type="Mesh"     class="PlaneSpot"    context="LIT_FORWARD"  contextVariant="1" order="BACK_TO_FRONT" />

      <!--<ClearTarget colBuf0="false" depthBuf="false" stencilBuf="true" />-->
      <ColourMask channels="RGB" colBuf1="true" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="lessEqual" stencilMode="maskWrite"  stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="Highlight"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="lessEqual" stencilMode="maskWrite"  stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="HighlightOccluded"    context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="blend" depthTest="lessEqual" stencilMode="maskWrite"  stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="HighlightDoubleSided" context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="lessEqual" stencilMode="maskWrite"   stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="HighlightTrans"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="lessEqual" stencilMode="maskWrite"   stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="HighlightTransOccluded"    context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="blend" depthTest="lessEqual" stencilMode="maskWrite"  stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="HighlightTransDoubleSided" context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="greater"   stencilMode="maskWrite"  stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="HighlightOccluded"         context="LIT_FRWD_OCCLUDED"     order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="greater"   stencilMode="maskWrite"   stencilRef="36"  stencilMask="36"/>
      <DoForwardLightLoop type="Mesh"     class="HighlightTransOccluded"    context="LIT_FRWD_OCCLUDED"     order="BACK_TO_FRONT" />

      <!-- Trails -->
      <ColourMask channels="RGB" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="blend" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DoForwardLightLoop type="Trail" class="Translucent" context="LIGHTING" order="BACK_TO_FRONT" />

      <ColourMask channels="RGB" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4"  />
      <DoForwardLightLoop type="Trail" class="Additive" context="LIGHTING"    order="BACK_TO_FRONT" />

      <!--Single Lines-->
      <ColourMask channels="RGBA" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none"  blendMode="blend" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4" />
      <DoForwardLightLoop type="SingleLine" class="Opaque" context="LIGHTING" order="" />

      <!--Single Lines-->
      <ColourMask channels="RGB" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4" />
      <DoForwardLightLoop type="SingleLine" class="Additive" context="LIGHTING" order="" /> 

      <!-- Markers -->
      <ColourMask channels="RGBA" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4" />
      <DoForwardLightLoop type="Mesh" class="Map" context="SCREEN_MAP" order="BACK_TO_FRONT" />

      <!-- Glow Translucent RGB -->
      <ColourMask channels="RGB" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="less"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4" />
      <DoForwardLightLoop type="Mesh"  class="GlowTranslucent" context="LIT_FORWARD" order="BACK_TO_FRONT" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="false" cullMode="none" blendMode="add" depthTest="always" stencilMode="maskWrite" stencilRef="4"  stencilMask="7" />

      <!-- render the player laser stencil-only, to mask it in the TAA -->
      <!-- results in some overzealous clipping in AA but should be hard to see, the gun moves a lot -->
      <DoForwardLightLoop type="SingleLine" class="PlayerGunLaser" context="LIGHTING" order="" />
      <DoForwardLightLoop type="SingleLine" class="PlayerGunLaserCore" context="LIGHTING" order="" />

      <ColourMask channels="RGB" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="always" stencilMode="maskReadInvert" stencilRef="3" stencilMask="7" />

      <!-- player laser. actual colour rendering masked by the gun -->
      <DoForwardLightLoop type="SingleLine" class="PlayerGunLaser" context="LIGHTING" order="" />
      <DoForwardLightLoop type="SingleLine" class="PlayerGunLaserCore" context="LIGHTING" order="" />

      <ColourMask channels="RGBA" colBuf1="false" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="blend" depthTest="always"  stencilMode="maskWrite" stencilRef="4"  stencilMask="4"/>
      <DoForwardLightLoop type="Mesh"     class="WarpOnFoot" context="LIT_FORWARD" order="BACK_TO_FRONT" />

      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <!-- Glow Translucent Alpha -->
      <BeginTarget target="GBUFFER" depthTarget="DEPTH" />
      <ColourMask channels="A" colBuf1="false" colBuf2="false" colBuf3="false" />
      <BindBuffer sampler="gShadowMap"       sourceRT="SHADOWBUF"       bufIndex="32" />
      <BindBuffer sampler="gCloudShadowMap"  sourceRT="CLOUDSHADOWS"    bufIndex="0" addressMode="wrap" />
      <BindBuffer sampler="gBufferMap"       sourceRT="DEPTH_LINEAR"    bufIndex="0" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="Blend_OutputAlpha" depthTest="less" />
      <DoForwardLightLoop type="Mesh"  class="GlowTranslucent" context="LIT_FORWARD"   order="BACK_TO_FRONT" singlePassStereo="false" />
      <DoForwardLightLoop type="Trail" class="Translucent"     context="LIGHTING_GLOW" order="BACK_TO_FRONT"  singlePassStereo="false" />
      <DoForwardLightLoop type="Trail" class="Additive"        context="LIGHTING_GLOW" order="BACK_TO_FRONT"  singlePassStereo="false" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

    </Stage>
      
    
    <Stage id="LUTMaskClear">
      <BeginTarget target="LUT_MASK" depthTarget="DEPTH" readOnlyDepth="true" onlyStencil="true" />      
      <ColourMask channels="R" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="0" stencilMask="160" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="PARTICLE_CLEAR" />            
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="FFXSR2_LUMATR" enabled="false">
      <!-- <BeginTarget target="LUM_BUF_TR" />
      <ColourMask channels="R" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_0" bufIndex="0" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="COPY_RGB2LUM_LINEAR" />
      <EndTarget flushCB="true" flushDB="false" /> -->
    </Stage>

    <Stage id="LightShafts" enabled="false">

      <BeginTarget target="LIGHTSHAFT" />
      <ColourMask channels="R"/>
      
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_DOWN" bufIndex="0" />    
      <BindBuffer sampler="gShadowMap"   sourceRT="SHADOWBUF"  bufIndex="32" />

      <SetContext zwrite="false" colourWrite="true" stencilMode="disabled" depthTest="always" blendMode="replace" />
      <DrawQuadMT material="materials/Light.material.mbin" context="RAYMARCH" />
      
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>
    
    <Stage id="LightShaftsBlur" enabled="false">
      <BeginTarget target="BLUR1_REDONLY" />
      <DiscardTargetContents colBuf0="true" />
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="LIGHTSHAFT"   bufIndex="0"   />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN"   bufIndex="0"   />    
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />     
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DEPTH_AWALT_H_REDONLY_GUASS" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      
      <BeginTarget target="LIGHTSHAFT" />
      <DiscardTargetContents colBuf0="true" />
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="BLUR1_REDONLY" bufIndex="0"   />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN"    bufIndex="0"   />
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />     
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DEPTH_AWALT_V_REDONLY_GUASS" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />            
    </Stage>

    <Stage id="LightShaftsNormalApply" enabled="false">
      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH" readOnlyDepth="true" onlyStencil="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"  sourceRT="LIGHTSHAFT"    bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN"    bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH_LINEAR"  bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.25" />
      <SetContext zwrite="false" blendMode="add" colourWrite="true" depthTest="always" stencilMode="maskRead" stencilRef="0" stencilMask="128" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="SCREEN_BLT_UP_ADD" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="LightShaftsRefractiveApply" enabled="false">
      <BeginTarget target="REFR_LIGHTSHAFT" depthTarget="DEPTH" readOnlyDepth="true" onlyStencil="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"  sourceRT="LIGHTSHAFT"    bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN"    bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH_LINEAR"  bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.25" />
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" depthTest="always" stencilMode="maskRead" stencilRef="0" stencilMask="128" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="SCREEN_BILATERAL_UP" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="HDRBUF_0" depthTarget="DEPTH" readOnlyDepth="true" onlyStencil="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"  sourceRT="REFR_LIGHTSHAFT" bufIndex="0" />
      <SetContext zwrite="false" blendMode="add" colourWrite="true"     depthTest="always" stencilMode="maskRead" stencilRef="0" stencilMask="144" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="COPY_ADD" />

      <BindBuffer sampler="gBuffer1Map" sourceRT="REFR_MAP"   bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="REFR_BLEND" bufIndex="0" />
      <SetContext zwrite="false" blendMode="add" colourWrite="true"     depthTest="always" stencilMode="maskRead" stencilRef="16" stencilMask="144" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="REFRACT_DIST_ADD" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="RefractionsCleanup" enabled="true">
      <BeginTarget target="REFR_ALPHA_B" depthTarget="DEPTH" onlyStencil="true" />
      <ColourMask channels="R" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0.0"/>
      <SetContext zwrite="false" colourWrite="true" blendMode="replace" depthTest="always" stencilMode="maskReadWriteNotEqual" stencilRef="0" stencilMaskRead="144" stencilMaskWrite="16" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="CLEAR" />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="TAA_NONE" enabled="false">
      <SwapTargets targetA="HDRBUF_0" targetB="HDRBUF_1" />
    </Stage> 

    <Stage id="TAA_APPLY" enabled="false">
      <BeginTarget target="TAA_FRONT"  depthTarget="DEPTH" readOnlyDepth="true" />
      <!-- <DiscardTargetContents colBuf0="true" colBuf1="true" colBuf2="true" />     -->
      <ColourMask channels="RGBA"/>
      
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_0"       bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="TAA_BACK"       bufIndex="1" frameIdx="prev" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="MOTIONRESOLVE"  bufIndex="0" />
      <BindBuffer sampler="gBuffer3Map" sourceRT="DEPTH_LINEAR"   bufIndex="0" />
      <!-- <BindBuffer sampler="gBuffer4Map" sourceRT="MOTION_MAXBUF"  bufIndex="0" /> -->
      <BindBuffer sampler="gBuffer5Map" sourceRT="TAA_BACK"       bufIndex="2" frameIdx="prev" />

      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="STAA_AC_NO_DILATE" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage> 

    <Stage id="TAA_APPLY_CLIP" enabled="false">
      <BeginTarget target="TAA_FRONT" depthTarget="DEPTH" readOnlyDepth="true" />
     <!--  <DiscardTargetContents colBuf0="true" colBuf1="true" colBuf2="true" />     -->
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_0"       bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="TAA_BACK"       bufIndex="1" frameIdx="prev" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="MOTIONRESOLVE"  bufIndex="0" />
      <BindBuffer sampler="gBuffer3Map" sourceRT="DEPTH_LINEAR"   bufIndex="0" />
      <!-- <BindBuffer sampler="gBuffer4Map" sourceRT="MOTION_MAXBUF"  bufIndex="0" /> -->
      <BindBuffer sampler="gBuffer5Map" sourceRT="TAA_BACK"       bufIndex="2" frameIdx="prev" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="STAA_AC_NO_DILATE" />
      <UnbindBuffers /> 
      <EndTarget flushCB="true" flushDB="false" />
    </Stage> 

    <Stage id="TAA_APPLY_TEST" enabled="false">

    </Stage>

    <Stage id="TAA_SWAP" enabled="false">
      <SwapTargets targetA="TAA_BACK"       targetB="TAA_FRONT" />

      <!--gotta swap these too cause of the way we do sharing-->
      <SwapTargets targetA="HDRBUF_4"       targetB="HDRBUF_3"  />
      <SwapTargets targetA="REFR_BUF_BACK"  targetB="REFR_BUF"        />
      <SwapTargets targetA="REFR_DIR_BACK"  targetB="REFR_DIR"        />
      <SwapTargets targetA="REFR_LSFT_BACK" targetB="REFR_LIGHTSHAFT" />
    </Stage>

    <Stage id="SSR_HighZMips" enabled="false">
      <!-- Replace with proper flush command -->
      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="0" />
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH" bufIndex="32" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0"/>
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <!--
      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="0" />      
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH" bufIndex="32" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="COPY" />
      <EndTarget flushCB="true" flushDB="false" />
      
      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="0" />      
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="DEPTH_LINNORM2REV" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      -->

      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="1" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="2" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="1" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="1"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="3" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="2" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="2"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z"/>
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="4" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="3" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="3"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="5" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="4" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="4"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="6" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="5" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="5"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <!--
      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="7" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="6" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="6"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_HI_Z" mipLevel="8" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="7" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="6"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="HIGH_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      -->

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="0" />
      <ColourMask channels="R"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" mipLevel="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="COPY" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="1" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="2" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="1" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="1"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="3" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="2" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="2"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="4" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="3" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="3"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="5" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="4" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="4"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="6" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="5" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="5"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <!--
      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="7" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="6" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="5"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="DEPTH_SSR_LOW_Z" mipLevel="8" />
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_SSR_LOW_Z" bufIndex="0" mipLevel="7" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="5"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="LOW_Z" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      -->
    </Stage>

    <Stage id="SSR_ColourMips" enabled="false">
      <BeginTarget target="SSR_REFL_0" mipLevel="0"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap" sourceRT="HDRBUF_1" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="COPY" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <!-- blur into mips -->
      <BeginTarget target="SSR_REFL_1" mipLevel="1"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="3.5" d="0"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_5" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="1"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="3.5" d="1"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_5_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_1" mipLevel="2"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="3.7" d="1"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="2"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="3.7" d="2"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_1" mipLevel="3"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="4.0" d="2"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="3"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="4.0" d="3"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_1" mipLevel="4"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="4.0" d="3"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="4"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="4.0" d="4"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_1" mipLevel="5"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="4.0" d="4"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="5"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="4.0" d="5"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_1" mipLevel="6"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="4.4" d="5"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="6"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="4.5" d="6"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_1" mipLevel="7"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="4.5" d="6"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="7"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="4.5" d="7"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_1" mipLevel="8"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_0" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="5.0" d="7"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_REFL_0" mipLevel="8"/>
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_REFL_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_DOWN" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="5.0" d="8"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="SSR_March" enabled="false">
      <BeginTarget target="SSR_VAR_T_H" />
      <ColourMask channels="RGBA"/>
      <ClearTarget colBuf0="false" depthBuf="false" stencilBuf="false" />
      <BindBuffer sampler="gBufferMap"    sourceRT="SSR_VAR_T_F"        bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"   sourceRT="MOTIONRESOLVE"      bufIndex="0"  />

      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="REPROJECT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_HIT_TRACE" depthTarget="DEPTH_SSR" />
      <ColourMask channels="RGBA"/>
      <ClearTarget colBuf0="true"  colBuf1="true" colBuf2="true"  depthBuf="false" stencilBuf="true" />
      <BindBuffer sampler="gBufferMap"    sourceRT="DEPTH_SSR_HI_Z"     bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map"   sourceRT="DEPTH_SSR_LOW_Z"    bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"   sourceRT="GBUFFER"            bufIndex="2"  />
      <BindBuffer sampler="gBuffer3Map"   sourceRT="GBUFFER"            bufIndex="3"  />
      <BindBuffer sampler="gBuffer4Map"   sourceRT="SSR_VAR_T_F"        bufIndex="0"  />
      <BindBuffer sampler="gBuffer5Map"   sourceRT="SSR_REFL_0"         bufIndex="0"  />

      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskWrite" stencilRef="64" stencilMask="64"/>
      <DrawQuad material="materials/SSR.material.mbin" context="SSR_MARCH" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="SSR_Resolve" enabled="false">
      <BeginTarget target="SSR_RESOLVE" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"    sourceRT="SSR_HIT_RAD"      bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map"   sourceRT="SSR_HIT_UVS"      bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"   sourceRT="SSR_HIT_PDF"      bufIndex="0"  />
      <BindBuffer sampler="gBuffer3Map"   sourceRT="SSR_VAR_T_H"      bufIndex="0"  />
      <BindBuffer sampler="gBuffer4Map"   sourceRT="GBUFFER"          bufIndex="2"  />
      <BindBuffer sampler="gBuffer5Map"   sourceRT="GBUFFER"          bufIndex="3"  />
      <BindBuffer sampler="gBuffer6Map"   sourceRT="DEPTH_SSR_HI_Z"   bufIndex="0"  />

      <SetContext zwrite="false" colourWrite="true"  cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="64"   stencilMask="64" />
      <SetUniform material="materials/SSR.material.mbin" uniform="gCustomParamsVec4" a="4.0" b="0.0" c="0.0" d="0.0"/>
      <DrawQuad material="materials/SSR.material.mbin" context="SSR_RESOLVE" />

      <SetContext zwrite="false" colourWrite="true"  cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="0"    stencilMask="64"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0.0"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="CLEAR" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="SSR_Temporal" enabled="false">
      <BeginTarget target="SSR_TEMPORAL_F" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_HIT_UVS"    bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="SSR_RESOLVE"    bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="SSR_RAD_T_H"    bufIndex="0" />
      <BindBuffer sampler="gBuffer3Map" sourceRT="SSR_VAR_T_H"    bufIndex="0" />
      <BindBuffer sampler="gBuffer4Map" sourceRT="SSR_MOT_T_H"    bufIndex="0" />
      <BindBuffer sampler="gBuffer5Map" sourceRT="GBUFFER"        bufIndex="3" />
      <BindBuffer sampler="gBuffer6Map" sourceRT="MOTIONRESOLVE"  bufIndex="0" />
      <BindBuffer sampler="gBuffer7Map" sourceRT="DEPTH_SSR_HI_Z" bufIndex="0" />

      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="64" stencilMask="64" />
      <DrawQuad material="materials/SSR.material.mbin" context="SSR_TEMPORAL" />
      <ColourMask channels="RGB" colBuf1="false"  colBuf2="false" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="0"  stencilMask="64" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="0.0" c="0.0" d="0.0"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="CLEAR" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_MOT_T_F" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="0" stencilMask="64" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="0.0" d="0.0"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="CLEAR" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_RAD_T_H" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_RAD_T_F"     bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="64" stencilMask="64" />
      <DrawQuad material="materials/SSR.material.mbin" context="SSR_MEDIAN" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="SSR_RAD_T_F" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"  sourceRT="SSR_RAD_T_H"     bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskRead" stencilRef="64" stencilMask="64" />
      <DrawQuad material="materials/SSR.material.mbin" context="SSR_MEDIAN" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="SSR_Apply" enabled="false">
      <!-- Copy it back into the scene -->
      <BeginTarget target="HDRBUF_1" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"      sourceRT="SSR_RAD_T_F"  bufIndex="0"  />
      <BindBuffer sampler="gBuffer1Map"     sourceRT="GBUFFER"      bufIndex="0"  />
      <BindBuffer sampler="gBuffer2Map"     sourceRT="GBUFFER"      bufIndex="2"  />
      <BindBuffer sampler="gBuffer3Map"     sourceRT="GBUFFER"      bufIndex="3"  />
      <BindBuffer sampler="gBuffer4Map"     sourceRT="DEPTH"        bufIndex="32" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="always" stencilMode="maskRead" stencilRef="64" stencilMask="64" />
      <DrawQuad material="materials/SSR.material.mbin" context="SSR_APPLY"  />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <SwapTargets targetA="SSR_TEMPORAL_F"     targetB="SSR_TEMPORAL_H"  />
      <SwapTargets targetA="SSR_RAD_T_F"        targetB="SSR_RAD_T_H"     />
      <SwapTargets targetA="SSR_MOT_T_F"        targetB="SSR_MOT_T_H"     />
    </Stage>

    <Stage id="ProbeReflections" enabled="false">
      <BeginTarget target="HDRBUF_1" depthTarget="DEPTH" onlyStencil="true" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"    sourceRT="DEPTH"          bufIndex="32" />
      <BindBuffer sampler="gBuffer1Map"   sourceRT="GBUFFER"        bufIndex="2"  />
      <BindBuffer sampler="gBuffer2Map"   sourceRT="GBUFFER"        bufIndex="3"  />

      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="always" stencilMode="maskRead" stencilRef="64" stencilMask="64" />
      <DrawQuad material="materials/SSR.material.mbin" context="PROBE_REFLECTIONS" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>
    
    <Stage id="Particles" >

      <!-- Depth Downsample for particles - note we can't use the current down-sample, since Water may have written to the real Depth Buffer -->

      <BeginTarget target="DEPTH_PART" depthTarget="DEPTH_DOWN_REV_Z" />
      
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH"    bufIndex="32"   />
      <SetContext fsrMode="distort" zwrite="true" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DOWNSAMPLE_DEPTH" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="true" />

      <BeginTarget target="PARTICLES" depthTarget="DEPTH_DOWN_REV_Z" />
      <ColourMask channels="RGBA"/>
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="PARTICLE_CLEAR" />

      <!--PS4: default setting after ClearTarget equals RT0-RGBA, so no need to call ColourMask again-->
      <BindBuffer sampler="gDepthBuffer" sourceRT="DEPTH_PART" bufIndex="0"  allSlices="true" />
      <BindBuffer sampler="gBufferMap"   sourceRT="HDRBUF_1"    bufIndex="0" allSlices="true" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="Blend_OutputOneMinusAlpha" depthTest="less" />

      <DoForwardLightLoop  type="EMITTER"  class="Translucent" context="TRANSLUCENT_SOFT" order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="HEAVYAIR" class="Translucent" context="HEAVYAIR_SOFT" order="BACK_TO_FRONT" />
      <UnbindBuffers />

      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="HDRBUF_1" depthTarget="DEPTH" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="invSourceAlpha" depthTest="always" stencilMode="maskRead" stencilMask="128" stencilRef="0"  />

      <BindBuffer sampler="gBufferMap"  sourceRT="PARTICLES"    bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_PART"   bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH_LINEAR" bufIndex="0" /> 
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="PART_UPSAMPLE" />
      <UnbindBuffers />

      <BindBuffer sampler="gDepthBuffer" sourceRT="DEPTH_LINEAR" bufIndex="0" allSlices="true" />
      <ColourMask channels="RGB" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="less" stencilMode="maskRead" stencilMask="128" stencilRef="0"  />
      <DoForwardLightLoop  type="EMITTER"  class="Additive"             context="TRNSLCNT_ADDITIVE" order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="HEAVYAIR" class="Additive"             context="HVR_ADDITIVE"      order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="EMITTER"  class="AdditiveHighQuality"  context="TRNSLCNT_ADDITIVE" order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="HEAVYAIR" class="AdditiveHighQuality"  context="HVR_ADDITIVE"      order="BACK_TO_FRONT" />

      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

    </Stage>

    <Stage id="ParticlesFR" enabled="false" >
      <BeginTarget target="DEPTH_PART" depthTarget="DEPTH_DOWN_REV_Z" />

      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH"    bufIndex="32"   />
      <SetContext zwrite="true" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="DOWNSMP_DEPTH_FSR" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="true" />

      <BeginTarget target="BLOOM_BLURBUF_2B"  />
      <ColourMask channels="RGB" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_1"      bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="COPY_RESOLVEFSR" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />      
      
      <BeginTarget target="PARTICLES" depthTarget="DEPTH_DOWN_REV_Z" />
      <ColourMask channels="RGBA"/>
      <SetContext zwrite="false" blendMode="replace" colourWrite="true" stencilMode="disabled" depthTest="always" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="PARTICLE_CLEAR" />

      <BindBuffer sampler="gDepthBuffer" sourceRT="DEPTH_PART" bufIndex="0"  allSlices="true" />
      <BindBuffer sampler="gBufferMap"   sourceRT="BLOOM_BLURBUF_2B"    bufIndex="0" allSlices="true" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="Blend_OutputOneMinusAlpha" depthTest="less" />

      <DoForwardLightLoop  type="EMITTER"  class="Translucent" context="TRANSLUCENT_SOFT" order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="HEAVYAIR" class="Translucent" context="HEAVYAIR_SOFT" order="BACK_TO_FRONT" />
      <UnbindBuffers />

      <BindBuffer sampler="gDepthBuffer" sourceRT="DEPTH_PART" bufIndex="0"  allSlices="true" />
      <BindBuffer sampler="gBufferMap"   sourceRT="BLOOM_BLURBUF_2B"    bufIndex="0" allSlices="true" />      
      <ColourMask channels="RGB"/>
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="less" stencilMode="disabled"  />
      <DoForwardLightLoop  type="EMITTER"  class="Additive"             context="LQ_TRNSLCNT_ADDITIVE" order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="HEAVYAIR" class="Additive"             context="LQ_HVR_ADDITIVE"      order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="EMITTER"  class="AdditiveHighQuality"  context="LQ_TRNSLCNT_ADDITIVE" order="BACK_TO_FRONT" />
      <DoForwardLightLoop  type="HEAVYAIR" class="AdditiveHighQuality"  context="LQ_HVR_ADDITIVE"      order="BACK_TO_FRONT" />

      <UnbindBuffers />

      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="HDRBUF_1" depthTarget="DEPTH" readOnlyDepth="true" />
      <ColourMask channels="RGB" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="back" blendMode="invSourceAlpha" depthTest="always" stencilMode="maskRead" stencilMask="128" stencilRef="0"  />

      <BindBuffer sampler="gBufferMap"  sourceRT="PARTICLES"    bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="DEPTH_PART"   bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="PART_UPSAMPLE" />
      <UnbindBuffers />

      <EndTarget flushCB="true" flushDB="false" />

    </Stage>

    <Stage id="SpeedLines">
      <BeginTarget target="HDRBUF_1" depthTarget="DEPTH"/>
      <ColourMask channels="RGBA" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none"  blendMode="Blend_OutputOneMinusAlpha" depthTest="less" />
      <DoForwardLightLoop type="SPEEDLINE" class="Opaque" context="LIGHTING" order="FRONT_TO_BACK" />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="ApplyPostTaa" enabled="false" >

    </Stage>

    <Stage id="MotionblurNormal" enabled="false">
    </Stage> 

    <Stage id="Motionblur" enabled="false">
    </Stage> 

    <Stage id="MotionblurUltra" enabled="false">
    </Stage> 

    <Stage id="DepthOfFieldBokeh">
    </Stage>

    <Stage id="DepthOfFieldBokehNew">
    </Stage>

    <Stage id="DepthOfFieldBlur_ToneMap" enabled="false" >
    </Stage>

    <Stage id="DepthOfFieldBlur_ToneMap_4x"  enabled="false" >
    </Stage>

    <Stage id="DepthOfFieldBlur_ToneMap_16x"  enabled="false" >
    </Stage>
    
    <Stage id="DepthOfFieldBlur">    
    </Stage>

    <Stage id="NewBloomBright" enabled="false">
      <BeginTarget target="BLOOM_BLURBUF_2B" />
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="HDRBUF_1" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="GBUFFER"  bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="BRIGHTPASS_NEW" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_2A" />
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="BLOOM_BLURBUF_2B" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="BLOOM_BLURBUF_2T" bufIndex="0" frameIdx="prev" />
      <BindBuffer sampler="gBuffer2Map"  sourceRT="MOTIONRESOLVE"    bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="BRIGHTPASS_TEMPORAL" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_2T" />
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"   sourceRT="BLOOM_BLURBUF_2A" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="COPY" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="Effects" enabled="false">
    </Stage>

    <Stage id="SpotlightsVolumetric" enabled="false">
      <BeginTarget target="BLOOM_BLURBUF_2A" depthTarget="DEPTH_DOWN_REV_Z" readOnlyDepth="true" />
      <ColourMask channels="RGB"  colBuf1="false"  colBuf2="false" />
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_DOWN_REV_Z" bufIndex="32" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back"  blendMode="add" stencilMode="disabled" depthTest="less"    depthBounds="true" />
      <DoDeferredLightLoop context="SPOT_K_VOL_OUT"   volumetric="true" inner="false" spot="true"  constant="true"    />
      <DoDeferredLightLoop context="SPOT_L_VOL_OUT"   volumetric="true" inner="false" spot="true"  linear="true"      />
      <DoDeferredLightLoop context="SPOT_R_VOL_OUT"   volumetric="true" inner="false" spot="true"  linear_sqrt="true" />
      <DoDeferredLightLoop context="SPOT_Q_VOL_OUT"   volumetric="true" inner="false" spot="true"  quadratic="true"   />
      <DoDeferredLightLoop context="SPOT_C_VOL_OUT"   volumetric="true" inner="false" spot="true"  cubic="true"       />
      <DoDeferredLightLoop context="SPOT_E_VOL_OUT"   volumetric="true" inner="false" spot="true"  custom="true"      />
      
      <SetContext zwrite="false" colourWrite="true" cullMode="front" blendMode="add" stencilMode="disabled" depthTest="always"  depthBounds="true" />
      <DoDeferredLightLoop context="SPOT_K_VOL_IN"    volumetric="true" inner="true"  spot="true"  constant="true"    />
      <DoDeferredLightLoop context="SPOT_L_VOL_IN"    volumetric="true" inner="true"  spot="true"  linear="true"      />
      <DoDeferredLightLoop context="SPOT_R_VOL_IN"    volumetric="true" inner="true"  spot="true"  linear_sqrt="true" />
      <DoDeferredLightLoop context="SPOT_Q_VOL_IN"    volumetric="true" inner="true"  spot="true"  quadratic="true"   />
      <DoDeferredLightLoop context="SPOT_C_VOL_IN"    volumetric="true" inner="true"  spot="true"  cubic="true"       />
      <DoDeferredLightLoop context="SPOT_E_VOL_IN"    volumetric="true" inner="true"  spot="true"  custom="true"      />
      <UnbindBuffers />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="PointlightsVolumetric" enabled="false">
      <BeginTarget target="BLOOM_BLURBUF_2A" depthTarget="DEPTH_DOWN_REV_Z" readOnlyDepth="true" />
      <ColourMask channels="RGB"  colBuf1="false"  colBuf2="false" />
      <BindBuffer sampler="gBufferMap"   sourceRT="DEPTH_DOWN_REV_Z" bufIndex="32" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back"  blendMode="add" stencilMode="disabled" depthTest="less"    depthBounds="true" />
      <DoDeferredLightLoop context="POINT_K_VOL_OUT"  volumetric="true" inner="false" point="true" constant="true"    />
      <DoDeferredLightLoop context="POINT_L_VOL_OUT"  volumetric="true" inner="false" point="true" linear="true"      />
      <DoDeferredLightLoop context="POINT_R_VOL_OUT"  volumetric="true" inner="false" point="true" linear_sqrt="true" />
      <DoDeferredLightLoop context="POINT_Q_VOL_OUT"  volumetric="true" inner="false" point="true" quadratic="true"   />
      <DoDeferredLightLoop context="POINT_C_VOL_OUT"  volumetric="true" inner="false" point="true" cubic="true"       />
      <DoDeferredLightLoop context="POINT_E_VOL_OUT"  volumetric="true" inner="false" point="true" custom="true"      />

      <SetContext zwrite="false" colourWrite="true" cullMode="front" blendMode="add" stencilMode="disabled" depthTest="always"  depthBounds="true" />
      <DoDeferredLightLoop context="POINT_K_VOL_IN"   volumetric="true" inner="true"  point="true" constant="true"    />
      <DoDeferredLightLoop context="POINT_L_VOL_IN"   volumetric="true" inner="true"  point="true" linear="true"      />
      <DoDeferredLightLoop context="POINT_R_VOL_IN"   volumetric="true" inner="true"  point="true" linear_sqrt="true" />
      <DoDeferredLightLoop context="POINT_Q_VOL_IN"   volumetric="true" inner="true"  point="true" quadratic="true"   />
      <DoDeferredLightLoop context="POINT_C_VOL_IN"   volumetric="true" inner="true"  point="true" cubic="true"       />
      <DoDeferredLightLoop context="POINT_E_VOL_IN"   volumetric="true" inner="true"  point="true" custom="true"      />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>
    
    <Stage id="NewBloom" enabled="false">
      <BeginTarget target="BLOOM_BLURBUF_2B" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_2A" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="5.0" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_2A" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_2B" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="5.0" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_4B" />
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="BLOOM_BLURBUF_2A" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="5.0" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      
      <BeginTarget target="BLOOM_BLURBUF_4A" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_4B" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="5.0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
      
      <BeginTarget target="BLOOM_BLURBUF_8B" />
      <ColourMask channels="RGB"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="BLOOM_BLURBUF_4A" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="0.0" b="1.0" c="5.0" />
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_8A" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_8B" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="5.0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_9_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_16" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_8A" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="3.0" d="1.0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_7_SQR" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_32" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_16" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="0.0" c="2.0" d="1.0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_5_SQR" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_16" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_32" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="1.0" c="1.5" d="2.0"/>
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="add" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_5_SQR_ADD" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="NewBloomResolve" enabled="false">
      <BeginTarget target="BLOOM_FINALBUF" />
      <BindBuffer sampler="gBufferMap"  sourceRT="BLOOM_BLURBUF_4A" bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="BLOOM_BLURBUF_8A" bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="BLOOM_BLURBUF_16" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="11.0" b="9.0" c="7.0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="BLOOM_RESOLVE" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    
      <BeginTarget target="BLOOM_BLURBUF_4B" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_FINALBUF" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="1.0" c="2.5" d="1.0"/>
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_5_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_FINALBUF" />
      <BindBuffer sampler="gBufferMap" sourceRT="BLOOM_BLURBUF_4B" bufIndex="0" />
      <SetUniform material="materials/PostProcess.material.mbin" uniform="gBlurParamsVec4" a="1.0" b="1.0" c="2.5" d="1.0"/>
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="GUASS_5_HALF" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="NewBloomExposure" enabled="false">
      <BeginTarget target="BLOOM_EXPBUF_B" />
      <BindBuffer sampler="gBufferMap"   sourceRT="BLOOM_BLURBUF_32"  bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="BLOOM_EXPBUF_A"    bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="BLOOM_EXPOSURE" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <SwapTargets targetA="BLOOM_EXPBUF_A" targetB="BLOOM_EXPBUF_B" />
    </Stage>

    <Stage id="PostProcessResolve" enabled="true">
      <BeginTarget target="HDRBUF_3" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_1"        bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="BLOOM_FINALBUF"  bufIndex="0" />
      <BindBuffer sampler="gBuffer4Map" sourceRT="LUT_MASK"        bufIndex="0" />
      <BindBuffer sampler="gBuffer5Map" sourceRT="BLOOM_EXPBUF_A"  bufIndex="0" />

      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <DrawQuad material="materials/PostProcess.material.mbin" context="FX_COMBINE_LITE" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <!-- Enable this stage when you disable bloom stages, to clear the bloom buffers -->
    <Stage id="NoBloom" enabled="true">
      <BeginTarget target="BLOOM_BLURBUF_2B" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />
      
      <BeginTarget target="BLOOM_BLURBUF_4A" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_8A" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />
      
      <BeginTarget target="BLOOM_BLURBUF_8B" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_16" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />

      <BeginTarget target="BLOOM_BLURBUF_32" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />
     
      <BeginTarget target="BLOOM_FINALBUF" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />      
    </Stage>

    <Stage id="LensFlare">
    </Stage>

    <Stage id="MotionUvToScreen" enabled="false">
      <BeginTarget target="MOTIONSCREEN" />
      <DiscardTargetContents colBuf0="true" />
      <ColourMask channels="RG"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="MOTIONRESOLVE" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="MOTION_UV2SCREEN" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="FFXSR2CUSTOM_APPLY" enabled="false">
      <BeginTarget target="RED8_BUF_0" depthTarget="DEPTH" />
      <ColourMask channels="R" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <BindBuffer sampler="gBufferMap"   sourceRT="PARTICLES"  bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="LUM_BUF_OP" bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map"  sourceRT="LUM_BUF_TR" bufIndex="0" />
      <BindBuffer sampler="gBuffer3Map"  sourceRT="GBUFFER"    bufIndex="3" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="FSR2_GENREACT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="true" />

      <BeginTarget target="FSR2_DefaultTrasparencyMask" />
      <ColourMask channels="R" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <ClearTarget colBuf0="true"/>
      <EndTarget flushCB="true" flushDB="false" />

      <FfxFsr2UpdateShaderConsts/>

      <DiscardTargetContents colBuf0="true" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />

      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_ExposureMips"                  bufIndex="0" />
      <BindBuffer   sampler="r_input_color_jittered"                  sourceRT="HDRBUF_3"                           bufIndex="0" />
      <BindBuffer   sampler="rw_img_mip_shading_change"               sourceRT="FSR2_ExposureMips"                  bufIndex="0" bindAsRwImage="true"  mipLevel="4" />

      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_ComputeLuminancePyramid"   fullRes="false" groupAdd="1" groupPad="0" groupDiv="64" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_ExposureMips"                  bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_ReconstructedPrevNearestDepth" bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_PreparedInputColor"            bufIndex="0" />
      <BindBuffer   sampler="r_input_color_jittered"                  sourceRT="HDRBUF_3"                           bufIndex="0" />
      <BindBuffer   sampler="rw_reconstructed_previous_nearest_depth" sourceRT="FSR2_ReconstructedPrevNearestDepth" bufIndex="0" bindAsRwImage="true" />
      <BindBuffer   sampler="rw_prepared_input_color"                 sourceRT="FSR2_PreparedInputColor"            bufIndex="0" bindAsRwImage="true" />

      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_PrepareInputColor"         fullRes="false" groupAdd="0" groupPad="8" groupDiv="8" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_PreparedInputColor"            bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_DilatedVelocity"               bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_DilatedDepth"                  bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_ReactiveMaskMax"               bufIndex="0" />
      <BindBuffer   sampler="r_motion_vectors"                        sourceRT="MOTIONRESOLVE"                      bufIndex="0"  />
      <BindBuffer   sampler="r_depth"                                 sourceRT="DEPTH"                              bufIndex="32" />
      <BindBuffer   sampler="r_reactive_mask"                         sourceRT="RED8_BUF_0"                         bufIndex="0" />
      <BindBuffer   sampler="r_transparency_and_composition_mask"     sourceRT="FSR2_DefaultTrasparencyMask"        bufIndex="0" />
      <BindBuffer   sampler="r_prepared_input_color"                  sourceRT="FSR2_PreparedInputColor"            bufIndex="0" />
      <BindBuffer   sampler="rw_reconstructed_previous_nearest_depth" sourceRT="FSR2_ReconstructedPrevNearestDepth" bufIndex="0" bindAsRwImage="true" />
      <BindBuffer   sampler="rw_dilated_motion_vectors"               sourceRT="FSR2_DilatedVelocity"               bufIndex="0" bindAsRwImage="true" />
      <BindBuffer   sampler="rw_dilatedDepth"                         sourceRT="FSR2_DilatedDepth"                  bufIndex="0" bindAsRwImage="true" />
      <BindBuffer   sampler="rw_dilated_reactive_masks"               sourceRT="FSR2_ReactiveMaskMax"               bufIndex="0" bindAsRwImage="true" />

      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_ReconstructPreviousDepth"  fullRes="false" groupAdd="0" groupPad="8" groupDiv="8" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_ReconstructedPrevNearestDepth" bufIndex="0" />
      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_DilatedVelocity"               bufIndex="0" />
      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_DilatedDepth"                  bufIndex="0" />
      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_ReactiveMaskMax"               bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_DepthClip"                     bufIndex="0" />
      <BindBuffer   sampler="r_reconstructed_previous_nearest_depth"  sourceRT="FSR2_ReconstructedPrevNearestDepth" bufIndex="0" />
      <BindBuffer   sampler="r_dilated_motion_vectors"                sourceRT="FSR2_DilatedVelocity"               bufIndex="0" />
      <BindBuffer   sampler="r_dilatedDepth"                          sourceRT="FSR2_DilatedDepth"                  bufIndex="0" />
      <BindBuffer   sampler="rw_depth_clip"                           sourceRT="FSR2_DepthClip"                     bufIndex="0" bindAsRwImage="true" />

      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_DepthClip"                 fullRes="false" groupAdd="0" groupPad="8" groupDiv="8" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_DepthClip"                     bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_LockStatus1"                   bufIndex="0" />
      <BindBuffer   sampler="r_lock_status"                           sourceRT="FSR2_LockStatus2"                   bufIndex="0" />
      <BindBuffer   sampler="r_prepared_input_color"                  sourceRT="FSR2_PreparedInputColor"            bufIndex="0" />
      <BindBuffer   sampler="rw_lock_status"                          sourceRT="FSR2_LockStatus1"                   bufIndex="0" bindAsRwImage="true" />

      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_Lock"                      fullRes="false" groupAdd="0" groupPad="8" groupDiv="8" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_LumaHistory1"                  bufIndex="0" />
      <BindBuffer   sampler="r_prepared_input_color"                  sourceRT="FSR2_PreparedInputColor"            bufIndex="0" />
      <BindBuffer   sampler="r_dilated_motion_vectors"                sourceRT="FSR2_DilatedVelocity"               bufIndex="0" />
      <BindBuffer   sampler="r_depth_clip"                            sourceRT="FSR2_DepthClip"                     bufIndex="0" />
      <BindBuffer   sampler="r_luma_history"                          sourceRT="FSR2_LumaHistory2"                  bufIndex="0" frameIdx="prev" />
      <BindBuffer   sampler="rw_luma_history"                         sourceRT="FSR2_LumaHistory1"                  bufIndex="0" bindAsRwImage="true" />

      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_Stability"                 fullRes="false" groupAdd="0" groupPad="8" groupDiv="8" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_LumaHistory1"                  bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="FSR2_InternalUpscaled1"             bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="UPS_OUT_0"                          bufIndex="0" />

      <BeginTarget target="FSR2_AccumulationOut1" depthTarget="DEPTH_UI"  />
      <SetContext zwrite="true" colourWrite="false" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskWrite" stencilRef="128" />
      <DrawHiddenAreaMesh />
      <ColourMask channels="RGBA"/>
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"  stencilMode="maskRead" stencilMask="128" stencilRef="0" />			
      <BindBuffer   sampler="r_dilated_motion_vectors"                sourceRT="FSR2_DilatedVelocity"               bufIndex="0" />
      <BindBuffer   sampler="r_internal_upscaled_color"               sourceRT="FSR2_InternalUpscaled2"             bufIndex="0" />
      <BindBuffer   sampler="r_lock_status"                           sourceRT="FSR2_LockStatus2"                   bufIndex="0" />
      <BindBuffer   sampler="r_depth_clip"                            sourceRT="FSR2_DepthClip"                     bufIndex="0" />
      <BindBuffer   sampler="r_prepared_input_color"                  sourceRT="FSR2_PreparedInputColor"            bufIndex="0" />
      <BindBuffer   sampler="r_luma_history"                          sourceRT="FSR2_LumaHistory1"                  bufIndex="0" />
      <BindBuffer   sampler="r_dilated_reactive_masks"                sourceRT="FSR2_ReactiveMaskMax"               bufIndex="0" />
      <BindBuffer   sampler="r_imgMips"                               sourceRT="FSR2_ExposureMips"                  bufIndex="0" />
      <BindBuffer   sampler="rw_internal_upscaled_color"              sourceRT="FSR2_InternalUpscaled1"             bufIndex="0" bindAsRwImage="true" />
      <BindBuffer   sampler="rw_lock_status"                          sourceRT="FSR2_LockStatus1"                   bufIndex="0" bindAsRwImage="true" />
      <BindBuffer   sampler="rw_upscaled_output"                      sourceRT="UPS_OUT_0"                          bufIndex="0" bindAsRwImage="true" />
      <FfxFsr2Draw material="materials/FSR2.material.mbin" context="FSR2_Accumulate" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_InternalUpscaled1"             bufIndex="0" />
      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_LockStatus1"                   bufIndex="0" />
      <FlushBuffer  flushFor="read"                                   sourceRT="UPS_OUT_0"                          bufIndex="0" />

      <!--
      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_AccumulSharp"              fullRes="true"  groupAdd="0" groupPad="8" groupDiv="8" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_InternalUpscaled1"             bufIndex="0" />
      <FlushBuffer  flushFor="read"                                   sourceRT="FSR2_LockStatus1"                   bufIndex="0" />
      <FlushBuffer  flushFor="readWrite"                              sourceRT="UPS_OUT_1"                          bufIndex="0" />
      <BindBuffer   sampler="r_rcas_input"                            sourceRT="FSR2_InternalUpscaled1"             bufIndex="0" />
      <BindBuffer   sampler="rw_upscaled_output"                      sourceRT="UPS_OUT_1"                          bufIndex="0" bindAsRwImage="true" />

      <FfxFsr2Pass material="materials/FSR2.material.mbin" context="FSR2_Rcas"                      fullRes="true"  groupAdd="0" groupPad="8" groupDiv="8" />
      <UnbindBuffers />

      <FlushBuffer  flushFor="read"                                   sourceRT="UPS_OUT_1"                          bufIndex="0" />
      -->
      <SwapTargets targetA="FSR2_AccumulationOut1"  targetB="FSR2_AccumulationOut2" />
      <SwapTargets targetA="FSR2_InternalUpscaled1" targetB="FSR2_InternalUpscaled2" />
      <SwapTargets targetA="FSR2_LockStatus1"       targetB="FSR2_LockStatus2" />
      <SwapTargets targetA="FSR2_LumaHistory1"      targetB="FSR2_LumaHistory2" />
    </Stage>

    <Stage id="DLSS_APPLY" enabled="false">
      <ApplyDLSS inputRT="HDRBUF_3" outputRT="UPS_OUT_0" depthRT="DEPTH" motionRT="MOTIONSCREEN" />
    </Stage>

    <Stage id="XESS_APPLY" enabled="false">
      <ApplyXESS inputRT="HDRBUF_3" outputRT="UPS_OUT_0" depthRT="DEPTH" motionRT="MOTIONSCREEN" />
    </Stage>

    <Stage id="FFXSR2_APPLY" enabled="false">
      <BeginTarget target="RED8_BUF_0" />
      <DiscardTargetContents colBuf0="true" />
      <ColourMask channels="R" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <BindBuffer sampler="gBufferMap"   sourceRT="PARTICLES"  bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map"  sourceRT="LUM_BUF_OP" bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map"  sourceRT="LUM_BUF_TR" bufIndex="0" />
      <BindBuffer sampler="gBuffer3Map"  sourceRT="GBUFFER"    bufIndex="3" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="FSR2_GENREACT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <ApplyFFXSR2 inputRT="HDRBUF_3" outputRT="UPS_OUT_0" depthRT="DEPTH" motionRT="MOTIONSCREEN" reactivityRT="RED8_BUF_0" />
    </Stage>

    <Stage id="FFX_SUPER_RES" enabled="false" >
      <BeginTarget target="UPS_OUT_0" />
      <DiscardTargetContents colBuf0="true" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_3" bufIndex="0" />
      <SetContext zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="FFX_SUPER_RES" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="ScreenEffect" enabled="false">
    </Stage>

    <Stage id="ScreenEffect_Upscaled" enabled="false">
    </Stage>

    <Stage id="Combine_NoFXAA_HDR"  enabled="false">
    </Stage>

    <Stage id="Combine_NoFXAA_Async"  enabled="false">
    </Stage>

    <Stage id="Combine_NoFXAA_HDR_Async"  enabled="false">
    </Stage>

    <Stage id="Combine_Upscaled"  enabled="false">
      <ColourMask channels="RGBA"/>
      <BeginTarget target="" />
      <DiscardTargetContents colBuf0="true" />
      <SetContext fsrMode="distort"  zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <BindBuffer sampler="gBufferMap"  sourceRT="UPS_OUT_0"      bufIndex="0"  />
      <BindBuffer sampler="gBuffer3Map" sourceRT="DEPTH"          bufIndex="32" />
      <DrawQuadMT material="Materials/UI.material.mbin" context="SCREENEFFECT_VR" width="1.0" height="1.0" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="Combine_Upscaled_Async" enabled="false">
    </Stage>

    <Stage id="Combine">
      <ColourMask channels="RGBA"/>
      <BeginTarget target="HDRBUF_1" depthTarget="DEPTH" readOnlyDepth="true" />
      <DiscardTargetContents colBuf0="true" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_3"       bufIndex="0" />
      <BindBuffer sampler="gBuffer3Map" sourceRT="DEPTH_LINEAR"   bufIndex="0" />
      <DrawQuadMT material="Materials/UI.material.mbin" context="SCREENEFFECT_VR" width="1.0" height="1.0" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="DepthClear" enabled="true" >
      <BeginTarget target="" depthTarget="DEPTH_UI" />
      <ColourMask channels="RGBA" />
      <ClearTarget colBuf0="false"  colBuf1="false" colBuf2="false"  colBuf3="false" colBuf4="false" depthBuf="true" stencilBuf="false" />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>
    
    <Stage id="StencilClear" enabled="false" >
      <BeginTarget target="" depthTarget="DEPTH_UI" onlyStencil="true"/>
      <ColourMask channels="RGBA" />
      <ClearTarget colBuf0="false"  colBuf1="false" colBuf2="false"  colBuf3="false" colBuf4="false" depthBuf="false" stencilBuf="true" />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>
    
    <Stage id="FlipMask" enabled="false" >
      <BeginTarget target="" depthTarget="DEPTH_UI" />
      <ColourMask channels="RGBA" />
      <SetContext fsrMode="distort" zwrite="true" colourWrite="false" cullMode="none" blendMode="replace" depthTest="always" stencilMode="maskWrite" stencilRef="128" />
      <DrawHiddenAreaMesh flipped="false"/>
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>

    <Stage id="Combine_NoFXAA"  enabled="false">
      <ColourMask channels="RGBA"/>
      <BeginTarget target="" depthTarget="DEPTH" readOnlyDepth="true" />
      <DiscardTargetContents colBuf0="true" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="maskRead" stencilMask="128" stencilRef="0" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_3"       bufIndex="0"  />
      <BindBuffer sampler="gBuffer3Map" sourceRT="DEPTH"          bufIndex="32" />
      <DrawQuadMT material="Materials/UI.material.mbin" context="SCREENEFFECT_VR" width="1.0" height="1.0" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="Combine_Foveated"  enabled="false">
      <ColourMask channels="RGBA"/>
      <BeginTarget target="" />
      <DiscardTargetContents colBuf0="true" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false" stencilMode="disabled" />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_3"       bufIndex="0"  />
      <DrawQuadMT material="Materials/UI.material.mbin" context="SCREENEFFECT_VR" width="1.0" height="1.0" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="FXAA" enabled="false">
      <BeginTarget target="RED8_BUF_0" />
      <DiscardTargetContents colBuf0="true" />
      <ColourMask channels="RGBA"/>
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none" blendMode="replace" depthTest="always" alphaToCoverage="false"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_1" bufIndex="0" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="COPY_RGB2LUM_GAMMA" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />

      <ColourMask channels="RGBA"/>
      <BeginTarget target=""  depthTarget="DEPTH" readOnlyDepth="true" />
      <DiscardTargetContents colBuf0="true" />
      <SetContext fsrMode="distort"  zwrite="false" colourWrite="true" cullMode="back"  blendMode="replace" depthTest="always" stencilMode="maskRead"      stencilRef="0"  stencilMask="128"  />
      <BindBuffer sampler="gBufferMap"  sourceRT="HDRBUF_1"       bufIndex="0" />
      <BindBuffer sampler="gBuffer1Map" sourceRT="RED8_BUF_0"     bufIndex="0" />
      <BindBuffer sampler="gBuffer2Map" sourceRT="DEPTH"          bufIndex="32" />
      <DrawQuadMT material="materials/PostProcess.material.mbin" context="FXAA" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>


    <Stage id="BeforeUI"  enabled="true">
      <BeginTarget target="" depthTarget="DEPTH_UI" />
      <ColourMask channels="RGBA"/>
      
      <SetContext fsrMode="distort" zwrite="true" colourWrite="false" cullMode="back" blendMode="replace" depthTest="less" stencilMode="maskRead"      stencilRef="0"  stencilMask="128" />
      <DrawGeometry type="Mesh"         class="GunOpaque"         context="DEPTHONLY_FRWRD"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="GunGlow"           context="DEPTHONLY_FRWRD"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="GunDecal"          context="DEPTHONLY_FRWRD"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="OpaqueBeforeUI"    context="DEPTHONLY_FRWRD"             order="STATECHANGES" />
      <DrawGeometry type="Mesh"         class="DepthMaskUI"       context="DEPTHONLY_FRWRD"             order="STATECHANGES" />
      <EndTarget flushCB="false" flushDB="false" />
    </Stage>     
    
    <Stage id="UI"  enabled="true">
      <BeginTarget target="" depthTarget="DEPTH_UI" readOnlyDepth="true" />
      <ColourMask channels="RGBA"/>
      <BindBuffer sampler="gBufferMap"  sourceRT="DEPTH_LINEAR" bufIndex="0" />
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none"   blendMode="invSourceAlpha"   depthTest="lessEqual" alphaToCoverage="false" stencilMode="maskRead"      stencilRef="0"  stencilMask="128" />      
      <DrawGeometry type="Mesh"         class="UISurface"         context="UI_FORWARD"             order="BACK_TO_FRONT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />    
    </Stage>

    <Stage id="NonSimulationUIClear"  enabled="false">
      <BeginTarget target="" depthTarget="DEPTH_UI" readOnlyDepth="true" />
      <ColourMask channels="RGBA"/>
      <ClearTarget depthBuf="false" colBuf0="true" col_R="0.0" col_G="0.0" col_B="0.0" col_A="1.0" />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>        
      
    <Stage id="NonSimulationUI"  enabled="false">
      <BeginTarget target="" depthTarget="DEPTH_UI" readOnlyDepth="true" />
      <ColourMask channels="RGBA"/>
      <SetContext fsrMode="distort" zwrite="false" colourWrite="true" cullMode="none"   blendMode="replace"   depthTest="always" alphaToCoverage="false" stencilMode="maskRead"      stencilRef="0"  stencilMask="128" />
      <DrawGeometry type="Mesh"         class="UISurface"         context="ICON_FORWARD_NS"            order="BACK_TO_FRONT" />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>
 
    <Stage id="Debug" enabled="false">
      <ColourMask channels="RGBA"/>
      <BeginTarget target=""/>

      <ClearTarget depthBuf="false" colBuf0="false" col_R="0.0" col_G="0.0" col_B="0.0" col_A="1.0" />
      <SetContext zwrite="true" colourWrite="true" cullMode="back"  blendMode="replace" depthTest="always" />
      
      <SetContext zwrite="true" colourWrite="true" cullMode="back"  blendMode="replace" depthTest="always" stencilMode="disabled" />
      <BindBuffer sampler="gBufferMap"   sourceRT="CLOUDSHADOWS"        bufIndex="0" sRGBRead="0" />

      <BindBuffer sampler="gBuffer1Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer2Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer3Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer4Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer5Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer6Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer7Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer8Map"  sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer9Map"  sourceRT="CLOUDS_HIGH"         bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer10Map" sourceRT="CLOUDSHADOWS"        bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer11Map" sourceRT="LIGHTSHAFT"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer12Map" sourceRT="LIGHTSHAFT"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer13Map" sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer14Map" sourceRT="GTAO_FINAL"          bufIndex="0" sRGBRead="0" />

      <DrawQuadMT material="materials/Debug.material.mbin" context="HEX_SPLIT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="DebugQuad" enabled="false">
      <ColourMask channels="RGBA"/>
      <BeginTarget target=""/>
      <ClearTarget depthBuf="false" colBuf0="false" col_R="0.0" col_G="0.0" col_B="0.0" col_A="1.0" />

      <!--a, b, c, d == 0.0             -> full    screen buffer       -->
      <!--a, b, c, d == 1.0             -> default main   quad   split -->
      <!--a          == 2.0             -> top     left   inner  split -->
      <!--b          == 2.0             -> top     right  inner  split -->
      <!--c          == 2.0             -> bottom  left   inner  split -->
      <!--d          == 2.0             -> bottom  right  inner  split -->
      <SetUniform material="materials/DebugQuadSplit.material.mbin" uniform="gDebugSplitVec4" a="1.0" b="1.0" c="1.0" d="1.0"/>

      <!--a                             -> zoom index                                   -->
      <!--a          == [0.0,   3.0]    -> zoom respective main buffer                  -->
      <!--a          == [0.000, 0.303]  -> zoom respective inner split buffer           -->
      <!--a          == 42.0            -> zoom all buffers                             -->
      <!--b                             -> zoom scale                                   -->
      <!--b          == [0.0, n)        -> zoom buffer with index 'a' by a factor of 'b'-->
      <!--c, d                          -> zoom offset                                  -->
      <!--c, d       == [0.0, 1.0]      -> offset uvs of buffer 'a' by vec2(c,d)        -->
      <SetUniform material="materials/DebugQuadSplit.material.mbin" uniform="gDebugZoomVec4"  a="0.0" b="1.0" c="0.0" d="0.0"/>

      <SetContext zwrite="false" colourWrite="true" cullMode="none"  blendMode="replace" depthTest="always" stencilMode="disabled" />

      <!--MAIN SPLIT -->
      <BindBuffer sampler="gBuffer0Map"   sourceRT="MOTIONSCREEN"           bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer1Map"   sourceRT="MOTIONRESOLVE"          bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer2Map"   sourceRT="GBUFFER"                bufIndex="1" sRGBRead="0" />
      <BindBuffer sampler="gBuffer3Map"   sourceRT="GBUFFER"                bufIndex="0" sRGBRead="0" />

      <!--A SPLIT - TOP LEFT -->
      <BindBuffer sampler="gBuffer000Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer001Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer002Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer003Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <!--B SPLIT - TOP RIGHT -->
      <BindBuffer sampler="gBuffer100Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer101Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer102Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer103Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <!--C SPLIT - BOTTOM LEFT -->
      <BindBuffer sampler="gBuffer200Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer201Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer202Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer203Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <!--D SPLIT - BOTTOM RIGHT -->
      <BindBuffer sampler="gBuffer300Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer301Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer302Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />
      <BindBuffer sampler="gBuffer303Map" sourceRT="GTAO_FINAL"             bufIndex="0" sRGBRead="0" />

      <DrawQuadMT material="materials/DebugQuadSplit.material.mbin" context="QUAD_SPLIT" />
      <UnbindBuffers />
      <EndTarget flushCB="true" flushDB="false" />
    </Stage>

    <Stage id="TAA_NONE_RESET" enabled="false">
      <SwapTargets targetA="HDRBUF_0" targetB="HDRBUF_1" />
    </Stage> 

    <Stage id="Reset States">
      <SetContext zwrite="false" colourWrite="true" cullMode="back" blendMode="replace" depthTest="always" stencilMode="disabled" />
      <ColourMask channels="RGBA"/>
    </Stage>

  </CommandQueue>

</Pipeline>
]]
        },
    },
}