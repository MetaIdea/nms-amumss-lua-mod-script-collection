NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Ultimate.Arms.Dealer.V.1.3.Standard.pak",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole & Lyravega",
["NMS_VERSION"]   = "4.43",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSIMULATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"File", "MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinDraw", "100"},
                                {"MaxDraw", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"File", "MODELS/COMMON/WEAPONS/MULTITOOL/ATLASMULTITOOL.SCENE.MBIN"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcMultitoolPoolData.xml">
      <Property name="File" value="MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN" />
      <Property name="MinDraw" value="1" />
      <Property name="MaxDraw" value="2" />
      <Property name="PoolProbability" value="1" />
      <Property name="PoolType" value="GcMultitoolPoolType.xml">
        <Property name="MultiToolPoolType" value="Standard" />
      </Property>
    </Property>
    <Property value="GcMultitoolPoolData.xml">
      <Property name="File" value="MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL.SCENE.MBIN" />
      <Property name="MinDraw" value="1" />
      <Property name="MaxDraw" value="2" />
      <Property name="PoolProbability" value="1" />
      <Property name="PoolType" value="GcMultitoolPoolType.xml">
        <Property name="MultiToolPoolType" value="Standard" />
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            [[MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPON/PHONG15.MATERIAL.MBIN]],
                            [[MODELS/PHONG15.MATERIAL.MBIN]],
                            "REMOVE"
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PHONG15.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0"},
                                {"z", "0"},
                                {"t", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gCustomParams01Vec4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN", "MODELS/CRATE_WEAPON.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\CRATE_WEAPON.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1Crate_Large1_DUP", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PHONG15.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Hatch"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Type", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Screens"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Type", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0000.000000"},
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
            ["FILE_DESTINATION"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="3916463041" />
  <Property name="Type" value="MODEL" />
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
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="WeaponShop" />
      <Property name="NameHash" value="2569483507" />
      <Property name="Type" value="LOCATOR" />
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
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTSHOP.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Tent" />
          <Property name="NameHash" value="759779585" />
          <Property name="Type" value="REFERENCE" />
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
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SMALLSHACK.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Rug" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="2.2" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1.4" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\RUG0.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Desk" />
          <Property name="NameHash" value="382806720" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="1.8" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.9" />
            <Property name="ScaleY" value="0.9" />
            <Property name="ScaleZ" value="0.9" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CURVEDDESK.SCENE.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\DEFAULTCOLOUR.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPCWEAP_STAND_" />
          <Property name="NameHash" value="2356873476" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="2.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Weapons_L1" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Weapons_L2" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Weapons_L3" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2.34" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-130" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Weapons_R1" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Weapons_R2" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Weapons_R3" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.34" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="130" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight5" />
          <Property name="NameHash" value="2789731183" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="3" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight5" />
          <Property name="NameHash" value="2789731183" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-2" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\3CRATE.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="4262346560" />
  <Property name="Type" value="MODEL" />
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
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Weapon_1" />
      <Property name="NameHash" value="980202722" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\CRATE_WEAPON.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Weapon_2" />
      <Property name="NameHash" value="980202722" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.3" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\CRATE_WEAPON.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Weapon_3" />
      <Property name="NameHash" value="980202722" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="2.1" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\CRATE_WEAPON.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
        },
    }
}