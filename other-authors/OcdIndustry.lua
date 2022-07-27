NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]  = "OCDIndustry.pak",
  ["MOD_AUTHOR"]    = "NullPtrError",
  ["LUA_AUTHOR"]    = "NullPtrError",
  ["NMS_VERSION"]   = "3.97",
  ["DESCRIPTION"]   = "Mod created by Ethreon and Babscoole updated for endurance by NullPtreError. Add snapping points to commonly used industry buildings",
  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\COMMONPARTS\\TELEPORTER_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefSnapScene6", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-2.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="2.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\BASICPARTS\\BASIC_FLOOR.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "SnapPoint_N", },
              ["SECTION_ACTIVE"]    = { 2 },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloorQrt_1" />
                <Property name="NameHash" value="3678486106" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0.15" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_1" />
                    <Property name="NameHash" value="2050386974" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_2" />
                    <Property name="NameHash" value="1197737594" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_3" />
                    <Property name="NameHash" value="1443603401" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_4" />
                    <Property name="NameHash" value="4180732441" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="-90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloorQrt_2" />
                <Property name="NameHash" value="3380058823" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0.15" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_1" />
                    <Property name="NameHash" value="2050386974" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_2" />
                    <Property name="NameHash" value="1197737594" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_3" />
                    <Property name="NameHash" value="1443603401" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_4" />
                    <Property name="NameHash" value="4180732441" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="-90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloorQrt_3" />
                <Property name="NameHash" value="934115121" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0.15" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_1" />
                    <Property name="NameHash" value="2050386974" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_2" />
                    <Property name="NameHash" value="1197737594" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_3" />
                    <Property name="NameHash" value="1443603401" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_4" />
                    <Property name="NameHash" value="4180732441" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="-90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloorQrt_4" />
                <Property name="NameHash" value="635097996" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0.15" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_1" />
                    <Property name="NameHash" value="2050386974" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_2" />
                    <Property name="NameHash" value="1197737594" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_3" />
                    <Property name="NameHash" value="1443603401" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_4" />
                    <Property name="NameHash" value="4180732441" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="-90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0.15" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_Out_1" />
                    <Property name="NameHash" value="4271583994" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_Out_2" />
                    <Property name="NameHash" value="1286459166" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_Out_3" />
                    <Property name="NameHash" value="1487398674" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_Out_4" />
                    <Property name="NameHash" value="656081913" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="-90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\BASICPARTS\\BASIC_FLOOR_QUARTER.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "SnapPoint_Floor", },
              ["REMOVE"]            = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "SnapPoint_StairsTop1", },
              ["SECTION_ACTIVE"]    = { 4 },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_PlanterSmall" />
                <Property name="NameHash" value="4279532207" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_Out_1" />
                    <Property name="NameHash" value="1768728720" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_Out_2" />
                    <Property name="NameHash" value="3143224421" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_Out_3" />
                    <Property name="NameHash" value="3318931799" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_Out_4" />
                    <Property name="NameHash" value="2551711202" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="-90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloorSQrt_1" />
                <Property name="NameHash" value="662987000" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0.15" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_1" />
                    <Property name="NameHash" value="2050386974" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_2" />
                    <Property name="NameHash" value="1197737594" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_3" />
                    <Property name="NameHash" value="1443603401" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_Out_4" />
                    <Property name="NameHash" value="4180732441" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="-90" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\ANTIMATTERHARVESTER_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "PlacementData", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-2.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="2.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\CREATUREFOODMAKER_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefSnapScene", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\CREATUREHARVESTER_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefSnapScene5", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\GASHARVESTER_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "PlacementData", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="6.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\HARVESTER_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "PlacementData", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="6.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\REFINER2_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefTechSnapPoint", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\REFINER3_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefTechSnapPoint", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-2.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="2.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="2.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULE_BATTERYS_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefSnapScene7", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="1.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_N" />
                <Property name="NameHash" value="1757500308" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-0.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_E" />
                <Property name="NameHash" value="1883562755" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-0.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_S" />
                <Property name="NameHash" value="3143825622" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_W" />
                <Property name="NameHash" value="3296463628" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULE_BIOGENERATOR_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefSnapScene9", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULE_GASEXTRACTOR_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "Pipeline_Connection288288", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="6.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULE_GENERATORS_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefSnapScene7", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="6.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULE_PUMPS_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "Pipeline_Connection", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="6.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULE_SILOS_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefPipelineConnection3", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="6.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULE_SOLARPANELS_PLACEMENT.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "RefSnapScene5", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                     
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_Top" />
                <Property name="NameHash" value="831653107" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="1.666666" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_N" />
                <Property name="NameHash" value="3046501821" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_E" />
                <Property name="NameHash" value="1556135008" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_S" />
                <Property name="NameHash" value="3436125231" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSelf_W" />
                <Property name="NameHash" value="802316852" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_N" />
                <Property name="NameHash" value="1757500308" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-0.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_E" />
                <Property name="NameHash" value="1883562755" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-0.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_S" />
                <Property name="NameHash" value="3143825622" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0.666667" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndSSelf_W" />
                <Property name="NameHash" value="3296463628" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0.666667" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_Out_" />
                    <Property name="NameHash" value="2940400910" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndSmall_In_" />
                    <Property name="NameHash" value="2010954891" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndFloor_1" />
                <Property name="NameHash" value="3943900209" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialFloor_In_1" />
                    <Property name="NameHash" value="1287273377" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPoint_IndLargeFloor_1" />
                <Property name="NameHash" value="4138898456" />
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
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndustrialLargeFloor_In_1" />
                    <Property name="NameHash" value="1973524951" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_" />
                    <Property name="NameHash" value="1664110303" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\UTILITYPARTS\\MODULES_SNAPSCENE.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = { "Name", "SnapSceneData", },
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["ADD"]               =
              [[
                 
                <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointIndustrialLarge_N" />
                <Property name="NameHash" value="2775485892" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="-90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_N" />
                    <Property name="NameHash" value="361147655" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointIndustrialLarge_E" />
                <Property name="NameHash" value="4251762131" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="-1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="180" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_E" />
                    <Property name="NameHash" value="2434638903" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointIndustrialLarge_S" />
                <Property name="NameHash" value="2758544323" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="1.333333" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="90" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_S" />
                    <Property name="NameHash" value="3526829669" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointIndustrialLarge_W" />
                <Property name="NameHash" value="2109914737" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="1.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_Out_" />
                    <Property name="NameHash" value="3451986726" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="IndLarge_In_" />
                    <Property name="NameHash" value="4261731849" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="0" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="180" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_W" />
                    <Property name="NameHash" value="2580133259" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointLargeIndFloor_1" />
                <Property name="NameHash" value="3077940198" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-0.333333" />
                  <Property name="TransY" value="-0.15" />
                  <Property name="TransZ" value="0.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_In_0" />
                    <Property name="NameHash" value="3481819633" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_Plant_0" />
                    <Property name="NameHash" value="2167876404" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointLargeIndFloor_2" />
                <Property name="NameHash" value="2839545723" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0.333333" />
                  <Property name="TransY" value="-0.15" />
                  <Property name="TransZ" value="0.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_In_0" />
                    <Property name="NameHash" value="3481819633" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_Plant_0" />
                    <Property name="NameHash" value="2167876404" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointLargeIndFloor_3" />
                <Property name="NameHash" value="2480528559" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0.333333" />
                  <Property name="TransY" value="-0.15" />
                  <Property name="TransZ" value="-0.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_In_0" />
                    <Property name="NameHash" value="3481819633" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_Plant_0" />
                    <Property name="NameHash" value="2167876404" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="SnapPointLargeIndFloor_4" />
                <Property name="NameHash" value="930620393" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="-0.333333" />
                  <Property name="TransY" value="-0.15" />
                  <Property name="TransZ" value="-0.333333" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" /></Property>
                <Property name="Attributes" />
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Planter_In_0" />
                    <Property name="NameHash" value="3481819633" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="NullSnap_Plant_0" />
                    <Property name="NameHash" value="2167876404" />
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
                      <Property name="ScaleZ" value="1" /></Property>
                    <Property name="Attributes" />
                    <Property name="Children" /></Property>
                </Property>
              </Property>
                     ]]
            }
          }
        },
      }
    }
  }
}
