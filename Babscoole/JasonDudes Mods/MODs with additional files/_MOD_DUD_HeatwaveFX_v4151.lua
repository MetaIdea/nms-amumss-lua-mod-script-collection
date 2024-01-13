--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_HeatwaveFX_v4151.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.15",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHEDGAS.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Material",            "MODELS/EFFECTS/COMMON/MATERIALS/DUDHEATWAVE.MATERIAL.MBIN"},
                                {"NumberOfParticles",   "300"},
                                {"Radius",              "20"},
                                {"RadiusY",             "40"},
                                {"MinParticleLifetime", "6"},
                                {"MaxParticleLifetime", "6"},
                                {"SpeedFadeOutTime",    "1.5"},
                                {"MaxVisibleSpeed",     "1.5"},
                                {"SoftFadeStrength",    "5"},
                                {"EmitterShape",        "Sphere"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0.04"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "5"},
                                {"y", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RotationSpeedRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.02"},
                                {"y", "0"},
                                {"z", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"},
                                {"y", "0"},
                                {"z", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour1", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "0"},
                                {"B", "0"},
                                {"A", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour2", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "0"},
                                {"B", "0"},
                                {"A", "0"},
                            }
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
  <Property name="TransparencyLayerID" value="0" />
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
        <Property name="x" value="0.025" />
        <Property name="y" value="0.025" />
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
    },
}