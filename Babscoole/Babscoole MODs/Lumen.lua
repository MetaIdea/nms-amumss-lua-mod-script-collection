function GetBlock(Name,NameHash,TransX,TransY,TransZ,RotX,RotY,RotZ,ScaleX,ScaleY,ScaleZ,FOV,FALLOFF,INTENSITY,COL_R,COL_G,COL_B,VOLUMETRIC)
  local b =
[[
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="]].. Name ..[[" />
      <Property name="NameHash" value="]].. NameHash ..[[" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="]].. TransX ..[[" />
        <Property name="TransY" value="]].. TransY ..[[" />
        <Property name="TransZ" value="]].. TransZ ..[[" />
        <Property name="RotX" value="]].. RotX ..[[" />
        <Property name="RotY" value="]].. RotY ..[[" />
        <Property name="RotZ" value="]].. RotZ ..[[" />
        <Property name="ScaleX" value="]].. ScaleX ..[[" />
        <Property name="ScaleY" value="]].. ScaleY ..[[" />
        <Property name="ScaleZ" value="]].. ScaleZ ..[[" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="FOV" />
          <Property name="Value" value="]].. FOV ..[[" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="]].. FALLOFF ..[[" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="]].. INTENSITY ..[[" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="]].. COL_R ..[[" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="]].. COL_G ..[[" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="]].. COL_B ..[[" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="Value" value="-1" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="Value" value="]].. VOLUMETRIC ..[[" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="LIGHTLAYERS" />
          <Property name="Value" value="3" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
  return b
end

--                           Name           NameHash      TransX       TransY      TransZ       RotX          RotY          RotZ           ScaleX      ScaleY      ScaleZ      FOV           FALLOFF      INTENSITY       COL_R       COL_G        COL_B       VOLUMETRIC
LABLAMP          = GetBlock("pointLight1",  "4219409884", "0.000000",  "1.250000", "0.000000",  "0.000000",   "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "360.000000", "linear",    "3600.000000",  "0.500000", "0.850000",  "1.000000", "0.000000")
LIGHTTABLE       = GetBlock("pointLight1",  "4219409884", "0.000000",  "0.850000", "0.000000",  "270.000000", "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "180.000000", "linear",    "4500.000000",  "0.500000", "0.8500000", "1.000000", "0.000000")
STANDINGLIGHT1   = GetBlock("pointLight1",  "4219409884", "-0.320000", "2.650000", "-0.280000", "0.000000",   "-14.000000", "0.000000",    "1.000000", "1.000000", "1.000000", "75.000000",  "linear",    "36000.000000", "1.000000", "1.000000",  "1.000000", "0.010000")
STANDINGLIGHT2   = GetBlock("pointLight1",  "4219409884", "-0.320000", "2.580000", "-0.167000", "0.000000",   "-17.000000", "0.000000",    "1.000000", "1.000000", "1.000000", "110.000000", "linear",    "30000.000000", "1.000000", "1.000000",  "1.000000", "0.010000")
WALLLIGHT_BLUE   = GetBlock("pointLight6",  "3087372010", "0.000000",  "0.250000", "0.000000",  "90.000000",  "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "180.000000", "quadratic", "27500.000000", "0.000000", "0.530000",  "1.000000", "0.120000")
WALLLIGHT_GREEN  = GetBlock("pointLight6",  "3087372010", "0.000000",  "0.250000", "0.000000",  "90.000000",  "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "180.000000", "quadratic", "22500.000000", "0.000000", "1.000000",  "0.270000", "0.120000")
WALLLIGHT_PINK   = GetBlock("pointLight6",  "3087372010", "0.000000",  "0.250000", "0.000000",  "90.000000",  "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "180.000000", "quadratic", "22500.000000", "1.000000", "0.000000",  "0.730000", "0.120000")
WALLLIGHT_RED    = GetBlock("pointLight6",  "3087372010", "0.000000",  "0.250000", "0.000000",  "90.000000",  "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "180.000000", "quadratic", "22500.000000", "1.000000", "0.220000",  "0.200000", "0.120000")
WALLLIGHT_WHITE  = GetBlock("pointLight6",  "3087372010", "0.000000",  "0.250000", "0.000000",  "90.000000",  "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "180.000000", "quadratic", "20000.000000", "1.000000", "1.000000",  "1.000000", "0.200000")
WALLLIGHT_YELLOW = GetBlock("pointLight6",  "3087372010", "0.000000",  "0.250000", "0.000000",  "90.000000",  "0.000000",   "0.000000",    "1.000000", "1.000000", "1.000000", "180.000000", "quadratic", "22500.000000", "1.000000", "0.900000",  "0.100000", "0.120000")
HANGLAMP0        = GetBlock("Lite1",        "1008033010", "0.000000",  "2.850000", "0.000000",  "-90.000000", "0.000000",   "-180.000000", "0.750000", "0.750000", "0.750000", "360.000000", "linear",    "12500.000000", "1.000000", "0.80000",   "0.50000",  "0.000000")
HANGLAMP3        = GetBlock("pointLight17", "1008033010", "0.000000",  "0.500000",  "0.000000", "90.000000",  "0.000000",   "-180.000000", "0.750000", "0.750000", "0.750000", "172.000000", "linear",    "20000.000000", "1.000000", "0.98000",   "0.95000",  "0.000000")

--Add WALLIGHT01, FIREFLYTUBE, STANDLIGHT_SMALL, BARSIGN
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Lumen",
["MOD_AUTHOR"]      = "Exosolar and Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Makes many of the buildable light sources produce far more light and directional",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.250000"},
                {"TransZ", "0.000000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "27500.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LABLAMP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "1.050000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "80.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "21000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_R"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.850000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = LABLAMP
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTTABLE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.700000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "13000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_R"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.8500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = LIGHTTABLE
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.000000"},
                {"TransZ", "0.125000"},
                {"RotX",   "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "10000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_R"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.880000"},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "0.320000"},
                {"TransY", "2.650000"},
                {"TransZ", "-0.280000"},
                {"RotY",   "14.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "75.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "36000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.010000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = STANDINGLIGHT1
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "0.320000"},
                {"TransY", "2.580000"},
                {"TransZ", "-0.167000"},
                {"RotY",   "17.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "110.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "30000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.010000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = STANDINGLIGHT2
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "0.050000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "35000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.025000"},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.100000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "30000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.530000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.050000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WALLLIGHT_BLUE
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_GREEN.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.100000"},
                {"TransZ", "0.000000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "25000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.270000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.050000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WALLLIGHT_GREEN
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_PINK.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.100000"},
                {"TransZ", "0.000000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "25000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_R"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.730000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.050000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WALLLIGHT_PINK
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_RED.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.100000"},
                {"TransZ", "0.000000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "25000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.220000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.050000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WALLLIGHT_RED
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_WHITE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.100000"},
                {"TransZ", "0.000000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "17000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.075000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WALLLIGHT_WHITE
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_YELLOW.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.100000"},
                {"TransZ", "0.000000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "25000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_R"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.900000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "VOLUMETRIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.050000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WALLLIGHT_YELLOW
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Datax"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = HANGLAMP0
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "17500.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.980000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.950000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "22500.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.980000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.950000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP3.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "4800.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.980000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.950000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = HANGLAMP3
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\WALLLIGHT01.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "20500.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.980000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.950000"},
              }
            },
          }
        },
      }
    }
  },
}