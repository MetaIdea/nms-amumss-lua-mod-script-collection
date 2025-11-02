TEXT_TO_ADD =
[[
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="LandingFix" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\LANDINGFIX.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Docking.Fix.V.2.3",
["MOD_AUTHOR"]              = "JJhookah",
["NMS_VERSION"]             = "6.12",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPAIRVENT.SCENE.MBIN", "MODELS\LANDINGFIX.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\LANDINGFIX.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MESHLINK"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] =
                            {
                                {"Name", "XXXXLINK"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB1SailShipAirVentLid"},
                                {"Name", "SUB2SailShipAirVentLid"},
                                {"Name", "SUB3SailShipAirVentLid"},
                                {"Name", "SailShipAirVent"},
                                {"Name", "SUB1SailShipAirVent"},
                                {"Name", "SUB2SailShipAirVent"},
                            },
                            ["VCT"] =
                            {
                                {"Type", "XXXX"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SailShipAirVentLid", "Name", "MATERIAL"},
                            ["VCT"] =
                            {
                                {"Value", "ODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPAIRVENT\HQTRIMMETALOPAQUE_MAT.MATERIAL.MBIN"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\DROPSHIP_PROC.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTER_PROC.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\SHUTTLE_PROC.SCENE.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SLOT_WINGS1"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TEXT_TO_ADD,
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERCLASSICGOLD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineFlare_Distant"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TEXT_TO_ADD,
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\VRSPEEDER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "REFLamp_4"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TEXT_TO_ADD,
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SCIENTIFIC_PROC.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SLOT_WINGSR"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TEXT_TO_ADD,
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\S-CLASS_PROC.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\S%-CLASS\S%-CLASS_PROC"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["EXML_INDEX"] = 0,
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = TEXT_TO_ADD,
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\LANDINGPAD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LandingPad", "Name", "ATTACHMENT"},
                            ["VCT"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\STATICPHYSICS.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SummonShip"},
                            ["VCT"] =
                            {
                                {"TransZ", "5.138201"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Dock"},
                            ["VCT"] =
                            {
                                {"TransY", "0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EXIT"},
                            ["VCT"] =
                            {
                                {"TransY", "-0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLandingPadScreen"},
                            ["VCT"] =
                            {
                                {"TransZ", "5.138206"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\COMMON\LANDINGBAY.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Dock"},
                            ["VCT"] =
                            {
                                {"TransY", "0.15"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\LANDINGPADINNER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Dock"},
                            ["VCT"] =
                            {
                                {"TransY", "0"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SummonShip"},
                            ["VCT"] =
                            {
                                {"TransZ", "5.138201"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EXIT"},
                            ["VCT"] =
                            {
                                {"TransY", "-0.42215"},
                            }
                        },
                    },
                },
            }
        },
    }
}