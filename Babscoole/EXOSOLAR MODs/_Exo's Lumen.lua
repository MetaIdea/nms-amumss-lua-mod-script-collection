function GetBlock(Name,NameHash,TransX,TransY,TransZ,RotX,RotY,RotZ,ScaleX,ScaleY,ScaleZ,FOV,FALLOFF,INTENSITY,COL_R,COL_G,COL_B,VOLUMETRIC)
    local b =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="]].. Name ..[[" />
      <Property name="NameHash" value="]].. NameHash ..[[" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
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
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]].. FOV ..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]].. FALLOFF ..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]].. INTENSITY ..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]].. COL_R ..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]].. COL_G ..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]].. COL_B ..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]].. VOLUMETRIC ..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
    return b
end

--                           Name           NameHash      TransX   TransY TransZ     RotX   RotY   RotZ    ScaleX  ScaleY  ScaleZ   FOV           FALLOFF      INTENSITY       COL_R       COL_G        COL_B       VOLUMETRIC
LABLAMP          = GetBlock("pointLight1", "4219409884", "0",     "1.25", "0",      "0",   "0",   "0",    "1",    "1",    "1",     "360.000000", "linear",    "3600.000000",  "0.500000", "0.850000",  "1.000000", "0.000000")
LIGHTTABLE       = GetBlock("pointLight1", "4219409884", "0",     "0.85", "0",      "270", "0",   "0",    "1",    "1",    "1",     "180.000000", "linear",    "4500.000000",  "0.500000", "0.8500000", "1.000000", "0.000000")
STANDINGLIGHT1   = GetBlock("pointLight1", "4219409884", "-0.32", "2.65", "-0.28",  "0",   "-14", "0",    "1",    "1",    "1",     "75.000000",  "linear",    "36000.000000", "1.000000", "1.000000",  "1.000000", "0.010000")
STANDINGLIGHT2   = GetBlock("pointLight1", "4219409884", "-0.32", "2.58", "-0.167", "0",   "-17", "0",    "1",    "1",    "1",     "110.000000", "linear",    "30000.000000", "1.000000", "1.000000",  "1.000000", "0.010000")
WALLLIGHT_BLUE   = GetBlock("pointLight6", "3087372010", "0",     "0.25", "0",      "0",   "0",   "0",    "1",    "1",    "1",     "360.000000", "quadratic", "27500.000000", "0.000000", "0.530000",  "1.000000", "0.120000")
WALLLIGHT_GREEN  = GetBlock("pointLight6", "3087372010", "0",     "0.25", "0",      "0",   "0",   "0",    "1",    "1",    "1",     "360.000000", "quadratic", "22500.000000", "0.000000", "1.000000",  "0.270000", "0.120000")
WALLLIGHT_PINK   = GetBlock("pointLight6", "3087372010", "0",     "0.25", "0",      "0",   "0",   "0",    "1",    "1",    "1",     "360.000000", "quadratic", "22500.000000", "1.000000", "0.000000",  "0.730000", "0.120000")
WALLLIGHT_RED    = GetBlock("pointLight6", "3087372010", "0",     "0.25", "0",      "0",   "0",   "0",    "1",    "1",    "1",     "360.000000", "quadratic", "22500.000000", "1.000000", "0.220000",  "0.200000", "0.120000")
WALLLIGHT_WHITE  = GetBlock("pointLight6", "3087372010", "0",     "0.25", "0",      "0",   "0",   "0",    "1",    "1",    "1",     "360.000000", "quadratic", "20000.000000", "1.000000", "1.000000",  "1.000000", "0.200000")
WALLLIGHT_YELLOW = GetBlock("pointLight6", "3087372010", "0",     "0.25", "0",      "0",   "0",   "0",    "1",    "1",    "1",     "360.000000", "quadratic", "22500.000000", "1.000000", "0.900000",  "0.100000", "0.120000")
HANGLAMP0        = GetBlock("Lite1",       "1008033010", "0",     "2.85", "0",      "-90", "0",   "-180", "0.75", "0.75", "0.75",  "360.000000", "linear",    "12500.000000", "1.000000", "0.80000",   "0.50000",  "0.000000")
HANGLAMP3        = GetBlock("Lite1",       "1008033010", "0",     "0.5",  "0",      "90",  "0",   "-180", "0.75", "0.75", "0.75",  "172.000000", "linear",    "20000.000000", "1.000000", "0.98000",   "0.95000",  "0.000000")

--Add FIREFLYTUBE, STANDLIGHT_SMALL, BARSIGN
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Exo's Lumen.pak",
["MOD_AUTHOR"]              = "Exosolar and Babscoole",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.25"},
                                {"TransZ", "0"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1.05"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.7"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0"},
                                {"TransZ", "0.125"},
                                {"RotX",   "0"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "0.32"},
                                {"TransY", "2.65"},
                                {"TransZ", "-0.28"},
                                {"RotY",   "14"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "0.32"},
                                {"TransY", "2.58"},
                                {"TransZ", "-0.167"},
                                {"RotY",   "17"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "0.05"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.1"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.1"},
                                {"TransZ", "0"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.1"},
                                {"TransZ", "0"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.1"},
                                {"TransZ", "0"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.1"},
                                {"TransZ", "0"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.1"},
                                {"TransZ", "0"},
                                {"RotX",   "90"},
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
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1"},
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
                                {"Value", "0.98000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.95000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP2.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1"},
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
                                {"Value", "0.98000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.95000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP3.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.5"},
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
                                {"Value", "4800.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.98000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.95000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = HANGLAMP3
                        },
                    }
                },
            }
        }
    },
}