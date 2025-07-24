--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_zzzHeatwaveFX_v503.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORM.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="DUDHEATWAVEHeavyAirNode" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="HEAVYAIR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DATA" />
          <Property name="Value" value="MODELS/EFFECTS/HEAVYAIR/SCORCHED/DUDHEATWAVE.HEAVYAIR.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHED.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="DUDHEATWAVEHeavyAirNode" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="HEAVYAIR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DATA" />
          <Property name="Value" value="MODELS/EFFECTS/HEAVYAIR/SCORCHED/DUDHEATWAVE.HEAVYAIR.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
            }
        },
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\EFFECTS\COMMON\MATERIALS\DUDHEATWAVE.MATERIAL.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkMaterialData">
  <Property name="Name" value="" />
  <Property name="Metamaterial" value="" />
  <Property name="Class" value="Translucent" />
  <Property name="TransparencyLayerID" value="-1" />
  <Property name="CastShadow" value="False" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/PARTICLE.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F30_REFRACTION" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParams2Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialSFXVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialSFXColVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gRefractionParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.01" />
        <Property name="y" value="0.01" />
        <Property name="z" value="1" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/EFFECTS/HEAVYAIR/DUDHEATWAVE.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Clamp" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/EFFECTS/HEAVYAIR/DUDHEATWAVE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Clamp" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\EFFECTS\HEAVYAIR\SCORCHED\DUDHEATWAVE.HEAVYAIR.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkHeavyAirData">
  <Property name="Material" value="MODELS/EFFECTS/COMMON/MATERIALS/DUDHEATWAVE.MATERIAL.MBIN" />
  <Property name="NumberOfParticles" value="300" />
  <Property name="Radius" value="10" />
  <Property name="RadiusY" value="40" />
  <Property name="MinParticleLifetime" value="6" />
  <Property name="MaxParticleLifetime" value="6" />
  <Property name="FadeTime" value="1" />
  <Property name="SpeedFadeInTime" value="0" />
  <Property name="MinVisibleSpeed" value="0" />
  <Property name="SpeedFadeOutTime" value="1.5" />
  <Property name="MaxVisibleSpeed" value="1.5" />
  <Property name="SoftFadeStrength" value="5" />
  <Property name="SpawnRotationRange" value="0" />
  <Property name="MajorDirection" value="Vector3f.xml">
    <Property name="x" value="0" />
    <Property name="y" value="0.06" />
    <Property name="z" value="0" />
  </Property>
  <Property name="ScaleRange" value="Vector3f.xml">
    <Property name="x" value="5" />
    <Property name="y" value="5" />
    <Property name="z" value="0" />
  </Property>
  <Property name="RotationSpeedRange" value="Vector3f.xml">
    <Property name="x" value="0" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="TwinkleRange" value="Vector3f.xml">
    <Property name="x" value="0" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="AmplitudeMin" value="Vector3f.xml">
    <Property name="x" value="-0.02" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="AmplitudeMax" value="Vector3f.xml">
    <Property name="x" value="0.02" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="Colour1" value="Colour.xml">
    <Property name="R" value="0" />
    <Property name="G" value="0" />
    <Property name="B" value="0" />
    <Property name="A" value="0" />
  </Property>
  <Property name="Colour2" value="Colour.xml">
    <Property name="R" value="0" />
    <Property name="G" value="0" />
    <Property name="B" value="0" />
    <Property name="A" value="0" />
  </Property>
  <Property name="EmitterShape" value="Sphere" />
  <Property name="VelocityAlignment" value="False" />
  <Property name="WindDrift" value="TkEmitterWindDrift.xml">
    <Property name="Strength" value="1" />
    <Property name="LimitEmitterSpeed" value="False" />
    <Property name="Speed" value="0.3" />
    <Property name="LimitEmitterLifetime" value="False" />
    <Property name="CurveStartValue" value="0" />
    <Property name="CurveMidValue" value="0.35" />
    <Property name="CurveEndValue" value="0.7" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
</Data>
]],
        },
    },
}