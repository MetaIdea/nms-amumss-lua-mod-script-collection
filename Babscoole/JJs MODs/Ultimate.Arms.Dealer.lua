NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Ultimate.Arms.Dealer.V.2.2",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole & Lyravega",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSIMULATIONGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                            ["PRECEDING_KEY_WORDS"] = {"MultitoolPool"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property name="MultitoolPool" value="GcMultitoolPoolData" _index="5">
      <Property name="File" value="MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN" />
      <Property name="MinDraw" value="1" />
      <Property name="MaxDraw" value="2" />
      <Property name="PoolProbability" value="1.000000" />
      <Property name="PoolType" value="GcMultitoolPoolType">
        <Property name="MultiToolPoolType" value="Standard" />
      </Property>
    </Property>
    <Property name="MultitoolPool" value="GcMultitoolPoolData" _index="6">
      <Property name="File" value="MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL.SCENE.MBIN" />
      <Property name="MinDraw" value="1" />
      <Property name="MaxDraw" value="2" />
      <Property name="PoolProbability" value="1.000000" />
      <Property name="PoolType" value="GcMultitoolPoolType">
        <Property name="MultiToolPoolType" value="Standard" />
      </Property>
    </Property>
    <Property name="MultitoolPool" value="GcMultitoolPoolData" _index="7">
      <Property name="File" value="MODELS/COMMON/WEAPONS/MULTITOOL/ATLASMULTITOOL.SCENE.MBIN" />
      <Property name="MinDraw" value="10" />
      <Property name="MaxDraw" value="10" />
      <Property name="PoolProbability" value="1.000000" />
      <Property name="PoolType" value="GcMultitoolPoolType">
        <Property name="MultiToolPoolType" value="Standard" />
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\WEAPONS\MULTITOOL\MULTITOOL.DESCRIPTOR.MBIN",
                    ["REGEXBEFORE"] =
                    {
                        {[[(<Property name="Name") value="(.*)xRARE" />]], [[\1 value="\2" />]]}, --REGEX, provided by Lyravega, searches for Name properties ending in xRARE and removes those characters
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPON/PHONG15.MATERIAL.MBIN", "MODELS/PHONG15.MATERIAL.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PHONG15.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "0.000000"},
                                {"Z", "0.000000"},
                                {"W", "0.000000"},
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
                    ["MXML_CHANGE_TABLE"] =
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
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\RUG0.SCENE.MBIN", "MODELS\JJ_RUG0.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\JJ_RUG0.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash", "2492548323"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "LODDIST1"},
                                {"Name", "LODDIST2"},
                                {"Name", "LODDIST3"},
                                {"Name", "Rug0LOD1"},
                                {"Name", "Rug0LOD2"},
                                {"Name", "Rug0LOD3"},
                                {"Name", "Data"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NUMLODS"},
                            ["EXML_INDEX"] = "1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1"},
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
            ["FILE_DESTINATION"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="3916463041" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="WeaponShop" />
      <Property name="NameHash" value="2569483507" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTSHOP.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="Tent" />
          <Property name="NameHash" value="759779585" />
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
              <Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SMALLSHACK.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="Rug" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="2.200000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.400000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\JJ_RUG0.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="Desk" />
          <Property name="NameHash" value="382806720" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="1.800000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="180.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="0.900000" />
            <Property name="ScaleY" value="0.900000" />
            <Property name="ScaleZ" value="0.900000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CURVEDDESK.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\DEFAULTCOLOUR.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="NPCWEAP_STAND_" />
          <Property name="NameHash" value="2356873476" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="2.500000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="4">
          <Property name="Name" value="Weapons_L1" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="3.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-90.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="Weapons_L2" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="3.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="-2.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-90.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="Weapons_L3" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="2.340000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="2.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-130.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="7">
          <Property name="Name" value="Weapons_R1" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-3.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="90.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="8">
          <Property name="Name" value="Weapons_R2" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-3.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="-2.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="90.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="9">
          <Property name="Name" value="Weapons_R3" />
          <Property name="NameHash" value="980202722" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-2.340000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="2.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="130.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\3CRATE.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="10">
          <Property name="Name" value="pointLight5" />
          <Property name="NameHash" value="2789731183" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="3.800000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="-90.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="180.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="15.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="5.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="Value" value="-1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LIGHTLAYERS" />
              <Property name="Value" value="3" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="11">
          <Property name="Name" value="pointLight5" />
          <Property name="NameHash" value="2789731183" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="-2.000000" />
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
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="15.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="5.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="Value" value="-1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LIGHTLAYERS" />
              <Property name="Value" value="3" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="MATERIAL" />
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
            ["FILE_DESTINATION"] = "MODELS\3CRATE.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="4262346560" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Weapon_1" />
      <Property name="NameHash" value="980202722" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.500000" />
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
          <Property name="Value" value="MODELS\CRATE_WEAPON.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Weapon_2" />
      <Property name="NameHash" value="980202722" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
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
          <Property name="Value" value="MODELS\CRATE_WEAPON.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Weapon_3" />
      <Property name="NameHash" value="980202722" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="2.100000" />
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