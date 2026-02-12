NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Astro and Babs Bridge",
["MOD_AUTHOR"]      = "AstronautInOrbit and Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "Changes the design of freighter bridges.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM.SCENE.MBIN", "MODELS\BIOROOM_FRAME.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\BIOROOM_FRAME.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\BIOROOM_FRAME"},
                {"NameHash", "4111618012"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RootJNT"},
                {"Name", "ConON1_"},
                {"Name", "NOTCONON1_"},
                {"Name", "MiddlePulse"},
                {"Name", "BioRoom_core"},
                {"Name", "RefSnapScene5"},
                {"Name", "RefSnapScene6"},
                {"Name", "RefSnapScene7"},
                {"Name", "RefSnapScene8"},
                {"Name", "Sockets"},
                {"Name", "WireSupport"},
                {"Name", "TerminalFrame"},
                {"Name", "Interaction"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Bioroom wall right" />
      <Property name="NameHash" value="965561536" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Bioroom wall front" />
      <Property name="NameHash" value="3377689984" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Bioroom wall left" />
      <Property name="NameHash" value="718782951" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_WALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\BIOROOM_WALL.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\BIOROOM_WALL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\BIOROOM_WALL"},
                {"NameHash", "2246118624"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Glass1", "Name", "LODLEVEL"},
                {"Name", "Glass2", "Name", "LODLEVEL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "3.000000"},
                {"TransY", "2.400000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_BLUESTRIP.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_BLUESTRIP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_BLUESTRIP"},
                {"NameHash", "2485421413"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_Y", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\SHELVES\DOUBLESHELVES\INTERIORPROPS_MAT4.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE"},
                {"NameHash", "156530961"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_Y", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\CORRIDOR_STRAIGHT\INTERIORFREIGHTERBASE_MAT1.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO"},
                {"NameHash", "2688479689"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_Y", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\METALHORZAO_MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS"},
                {"NameHash", "1149921101"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_Y", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\ALLWALLDRAPES\INTERIORPROPS_MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_SHIPMATCH.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_SHIPMATCH.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_SHIPMATCH"},
                {"NameHash", "2648180919"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_Y", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HULLTOP\FREIGHTERPROC_MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER"},
                {"NameHash", "2090040441"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_Y", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SOFA2\BASEBUILDINGPROPS_MAT1.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\MESHES\CUBEROOM_FLOORCORNER.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CubeRoomPhysics36"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name", "MODELS\EFFECTS\SPHERE"},
                {"NameHash", "4262346560"},
                {"Value", "MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN"},
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER"},
                {"NameHash", "1585900538"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="FloorTilingTri" />
      <Property name="NameHash" value="965749981" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-5.200000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="12.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-112.500000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="0.200000" />
        <Property name="ScaleZ" value="0.750000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_FLOOR_TRI.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\MESHES\CUBEROOM_FLOORCORNER.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CubeRoomPhysics36"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name", "MODELS\EFFECTS\SPHERE"},
                {"NameHash", "4262346560"},
                {"Value", "MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN"},
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\FLOORTILING"},
                {"NameHash", "2614692214"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Bridge_Frontrow_TilesL1" />
      <Property name="NameHash" value="105231662" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-3.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="9.800000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.600000" />
        <Property name="ScaleY" value="1.100000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Bridge_Frontrow_TilesCenter" />
      <Property name="NameHash" value="3364336744" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="9.800000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.100000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Bridge_Frontrow_TilesR1" />
      <Property name="NameHash" value="830767063" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="3.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="9.800000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.600000" />
        <Property name="ScaleY" value="1.100000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS"},
                {"NameHash", "3218859086"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Wall", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN\GLASSREFRACTIONMAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SnapGroup_WallBottom", "Name", "MATERIAL"},
                {"Name", "SnapGroup_WallTop",    "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\PHONG144.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLCURVED.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK"},
                {"NameHash", "1719041476"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Wall", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\METALHORZAO_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SnapGroup_WallBottom", "Name", "MATERIAL"},
                {"Name", "SnapGroup_WallTop", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\PHONG144.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLCURVED.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS"},
                {"NameHash", "2097096030"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Wall", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN\GLASSREFRACTIONMAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SnapGroup_WallBottom", "Name", "MATERIAL"},
                {"Name", "SnapGroup_WallTop", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\PHONG144.MATERIAL.MBIN"},
                }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_CEILING_3.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\BIOROOM_CEILING_3.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\BIOROOM_CEILING_3.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\BIOROOM_CEILING_3"},
                {"NameHash", "1142175351"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\SPACE\NEXUS\PARTS\BRIDGE\CURVEDSIDEDESK.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING"},
                {"NameHash", "1783230394"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFmonitor1"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\FLATPANEL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\FLATPANEL2.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\FLATPANEL2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\FLATPANEL2"},
                {"NameHash", "1948078164"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "FlatPanel",     "Name", "MATERIAL"},
                {"Name", "polySurface1",  "Name", "MATERIAL"},
                {"Name", "Details15",     "Name", "MATERIAL"},
                {"Name", "SUB1Details15", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MAPSHOP\MAPS_MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\FLATPANEL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\FLATPANEL3.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\FLATPANEL3.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\FLATPANEL3"},
                {"NameHash", "2255025387"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "FlatPanel",     "Name", "MATERIAL"},
                {"Name", "polySurface1",  "Name", "MATERIAL"},
                {"Name", "Details15",     "Name", "MATERIAL"},
                {"Name", "SUB1Details15", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MAPSHOP\MAPS2MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\GALAXYTERMINAL.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\GALAXYTERMINAL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\GALAXYTERMINAL"},
                {"NameHash", "1689712524"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Logo14"},
                {"Name", "Logo15"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "72.047270"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FleetTerminal"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="Galaxy globe" />
      <Property name="NameHash" value="1686203763" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="1.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TOY_CORE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Base"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="BRIDGESCANNER" />
          <Property name="NameHash" value="1123079334" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="1.000000" />
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
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1Base"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MiddleEffect"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFBridgeFloorMistVFX", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\EFFECTS\SPACECRAFT\BRIDGEFLOORMIST.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENCASEDMONITOR.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR"},
                {"NameHash", "2359702508"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "AudioMonitor", "Name", "ATTACHMENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENCASEDMONITOR\ENTITIES\AUDIOMONITOR.ENTITY.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\PILOT_STATION.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\PILOT_STATION.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\PILOT_STATION"},
                {"NameHash", "1363614411"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="HelmDesk" />
      <Property name="NameHash" value="1840047114" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="-12.000000" />
        <Property name="RotX" value="20.000000" />
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
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\BRIDGE\HELMDESK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Curved_Bridge_FrontL" />
      <Property name="NameHash" value="3598962995" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.800000" />
        <Property name="TransY" value="1.050000" />
        <Property name="TransZ" value="-10.400000" />
        <Property name="RotX" value="20.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="180.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.800000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Curved_Bridge_FrontR" />
      <Property name="NameHash" value="1645602817" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.800000" />
        <Property name="TransY" value="-0.700000" />
        <Property name="TransZ" value="-11.000000" />
        <Property name="RotX" value="20.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.800000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="OrangeMonitorL" />
      <Property name="NameHash" value="2150899242" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.600000" />
        <Property name="TransY" value="1.210000" />
        <Property name="TransZ" value="-11.550000" />
        <Property name="RotX" value="55.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.700000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.100000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="OrangeMonitorR" />
      <Property name="NameHash" value="828768403" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="1.100000" />
        <Property name="TransY" value="1.210000" />
        <Property name="TransZ" value="-11.550000" />
        <Property name="RotX" value="55.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.700000" />
        <Property name="ScaleY" value="0.700000" />
        <Property name="ScaleZ" value="0.100000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="PilotDeskL" />
      <Property name="NameHash" value="74293467" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-1.600000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="-10.650000" />
        <Property name="RotX" value="-60.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOTTERMINAL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="PilotDeskR" />
      <Property name="NameHash" value="1671421758" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.100000" />
        <Property name="TransY" value="0.800000" />
        <Property name="TransZ" value="-10.650000" />
        <Property name="RotX" value="-60.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOTTERMINAL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="PilotBackgroundL" />
      <Property name="NameHash" value="279608610" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-1.810000" />
        <Property name="TransY" value="1.650000" />
        <Property name="TransZ" value="-11.950000" />
        <Property name="RotX" value="30.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.100000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="PilotBackgroundR" />
      <Property name="NameHash" value="2168872528" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="1.810000" />
        <Property name="TransY" value="1.650000" />
        <Property name="TransZ" value="-11.950000" />
        <Property name="RotX" value="30.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.100000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="mapL" />
      <Property name="NameHash" value="1939174925" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-1.600000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="-11.600000" />
        <Property name="RotX" value="30.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.460000" />
        <Property name="ScaleY" value="0.100000" />
        <Property name="ScaleZ" value="0.680000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\FLATPANEL2.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="mapR" />
      <Property name="NameHash" value="102832934" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.100000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="-11.600000" />
        <Property name="RotX" value="30.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.460000" />
        <Property name="ScaleY" value="0.100000" />
        <Property name="ScaleZ" value="0.680000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\FLATPANEL3.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="PILOTscreenLnear" />
      <Property name="NameHash" value="3929887604" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-1.500000" />
        <Property name="TransY" value="1.750000" />
        <Property name="TransZ" value="-11.900000" />
        <Property name="RotX" value="-15.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.300000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="PILOTscreenRnear" />
      <Property name="NameHash" value="934939509" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="1.800000" />
        <Property name="TransY" value="1.750000" />
        <Property name="TransZ" value="-11.900000" />
        <Property name="RotX" value="-15.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.300000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="PilotscreenLfar" />
      <Property name="NameHash" value="1235979618" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.100000" />
        <Property name="TransY" value="1.750000" />
        <Property name="TransZ" value="-11.900000" />
        <Property name="RotX" value="-15.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.300000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="PilotscreenRfar" />
      <Property name="NameHash" value="3193285995" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.300000" />
        <Property name="TransY" value="1.750000" />
        <Property name="TransZ" value="-11.900000" />
        <Property name="RotX" value="-15.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.300000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="PILOTscreenFlatL" />
      <Property name="NameHash" value="3013456943" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-1.300000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-10.700000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="2.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="PILOTscreenFlatR" />
      <Property name="NameHash" value="1179343244" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="1.500000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-10.700000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="2.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="PilotscreenFlatL2" />
      <Property name="NameHash" value="1760073115" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.200000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-10.700000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="2.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="PilotscreenFlatR2" />
      <Property name="NameHash" value="3293481830" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.500000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-10.700000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="2.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_L.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\COMMON\MAPTERMINAL.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\PILOTTERMINAL.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\PILOTTERMINAL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\PILOTTERMINAL"},
                {"NameHash", "1674936100"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pCube671",            "Name", "MATERIAL"},
                {"Name", "SUB1pCube671",        "Name", "MATERIAL"},
                {"Name", "SUB2pCube671",        "Name", "MATERIAL"},
                {"Name", "SUB3pCube671",        "Name", "MATERIAL"},
                {"Name", "pCube666",            "Name", "MATERIAL"},
                {"Name", "SUB1pCube666",        "Name", "MATERIAL"},
                {"Name", "SUB2pCube666",        "Name", "MATERIAL"},
                {"Name", "pCube665",            "Name", "MATERIAL"},
                {"Name", "SUB1pCube665",        "Name", "MATERIAL"},
                {"Name", "SUB2pCube665",        "Name", "MATERIAL"},
                {"Name", "SUB1MapScreens9",     "Name", "MATERIAL"},
                {"Name", "SUB1MapScreens8",     "Name", "MATERIAL"},
                {"Name", "SUB1MapScreens6",     "Name", "MATERIAL"},
                {"Name", "SUB1MapScreens7",     "Name", "MATERIAL"},
                {"Name", "SUB1MapterminalLOD0", "Name", "MATERIAL"},
                {"Name", "SUB2MapterminalLOD0", "Name", "MATERIAL"},
                {"Name", "SUB3MapterminalLOD0", "Name", "MATERIAL"},
                {"Name", "MapterminalLOD1",     "Name", "MATERIAL"},
                {"Name", "SUB1MapterminalLOD1", "Name", "MATERIAL"},
                {"Name", "SUB2MapterminalLOD1", "Name", "MATERIAL"},
                {"Name", "SUB3MapterminalLOD1", "Name", "MATERIAL"},
                {"Name", "MapterminalLOD2",     "Name", "MATERIAL"},
                {"Name", "SUB1MapterminalLOD2", "Name", "MATERIAL"},
                {"Name", "SUB2MapterminalLOD2", "Name", "MATERIAL"},
                {"Name", "SUB3MapterminalLOD2", "Name", "MATERIAL"},
                {"Name", "MapterminalLOD3",     "Name", "MATERIAL"},
                {"Name", "SUB1MapterminalLOD3", "Name", "MATERIAL"},
                {"Name", "SUB2MapterminalLOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\EXTERIOR\FRONTFACE_TRIANGLE\METALHORZAO_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "1.624557"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MapterminalLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\METALHORZAO_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFVaultGlowVFX"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.SCENE.MBIN", "MODELS\ASTROSBRIDGE\PROPS\STAIRS_RAILINGS.SCENE.MBIN",},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\ASTROSBRIDGE\PROPS\STAIRS_RAILINGS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\ASTROSBRIDGE\PROPS\STAIRS_RAILINGS"},
                {"NameHash", "1190507274"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Curved_Bridge_BackL" />
      <Property name="NameHash" value="1294290426" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.700000" />
        <Property name="TransY" value="-0.230000" />
        <Property name="TransZ" value="2.300000" />
        <Property name="RotX" value="168.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="180.000000" />
        <Property name="ScaleX" value="0.700000" />
        <Property name="ScaleY" value="1.600000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Curved_Bridge_BackR" />
      <Property name="NameHash" value="3685313268" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.700000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="2.000000" />
        <Property name="RotX" value="168.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.700000" />
        <Property name="ScaleY" value="1.600000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Curved_railing_BackL" />
      <Property name="NameHash" value="1035917702" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-3.000000" />
        <Property name="TransY" value="2.050000" />
        <Property name="TransZ" value="2.700000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="-11.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="2.500000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="Curved_railing_BackR" />
      <Property name="NameHash" value="3374805081" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="3.000000" />
        <Property name="TransY" value="-0.500000" />
        <Property name="TransZ" value="3.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="11.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="2.500000" />
        <Property name="ScaleZ" value="0.800000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="lower stairs left" />
      <Property name="NameHash" value="3355651807" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.000000" />
        <Property name="TransY" value="-1.100000" />
        <Property name="TransZ" value="2.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="lower stairs right" />
      <Property name="NameHash" value="1767401128" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.000000" />
        <Property name="TransY" value="-1.100000" />
        <Property name="TransZ" value="2.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="lower stairs middle" />
      <Property name="NameHash" value="2463922283" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.100000" />
        <Property name="TransZ" value="2.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="TechStationCurvedRailingL front" />
      <Property name="NameHash" value="888612899" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-11.800000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="5.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="1.300000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="TechStationCurvedRailingR front" />
      <Property name="NameHash" value="3212319396" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="11.800000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="5.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="1.300000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="TechStationCurvedRailingL side" />
      <Property name="NameHash" value="4031011921" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.300000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="6.600000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="1.300000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="TechStationCurvedRailingR side" />
      <Property name="NameHash" value="2629679465" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.300000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="6.600000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.800000" />
        <Property name="ScaleY" value="1.300000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALL_WHITETRIMGLASS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\ANIMATEDDOOR.SCENE.MBIN", "MODELS\BRIDGEDOORS\ANIMATEDDOOR.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\BRIDGEDOORS\ANIMATEDDOOR.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\BRIDGEDOORS\ANIMATEDDOOR"},
                {"NameHash", "806347267"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "polySurface6", "Name", "MATERIAL"},
                {"Name", "polySurface5", "Name", "MATERIAL"},
                {"Name", "polySurface7", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\COMMON\MAPTERMINAL\REFRACTIONLENSMAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "fisrtfloor"},
                {"Name", "polySurface3443"},
                {"Name", "polySurface3454"},
                {"Name", "polySurface3457"},
                {"Name", "polySurface2100"},
                {"Name", "RightWallGlass"},
                {"Name", "RightWallGlass1"},
                {"Name", "RightWallGlass2"},
                {"Name", "FrontWall"},
                {"Name", "LeftWall"},
                {"Name", "polySurface3607"},
                {"Name", "wires"},
                {"Name", "polySurface3436"},
                {"Name", "polySurface3469"},
                {"Name", "polySurface3461"},
                {"Name", "polySurface3465"},
                {"Name", "polySurface3470"},
                {"Name", "polySurface3474"},
                {"Name", "polySurface3458"},
                {"Name", "polySurface3481"},
                {"Name", "polySurface3476"},
                {"Name", "roofinside"},
                {"Name", "polySurface3449"},
                {"Name", "polySurface3482"},
                {"Name", "polySurface3446"},
                {"Name", "polySurface3438"},
                {"Name", "polySurface3599"},
                {"Name", "SnapGroup_WallBBackRight10"},
                {"Name", "polySurface3599_2"},
                {"Name", "polySurface3599_3"},
                {"Name", "polySurface2115"},
                {"Name", "polySurface2109"},
                {"Name", "ExtLite"},
                {"Name", "ExtDecal"},
                {"Name", "ExtLite1"},
                {"Name", "ExtDecal1"},
                {"Name", "solidwindows"},
                {"Name", "GlassWindows"},
                {"Name", "Exterior"},
                {"Name", "Lights"},
                {"Name", "Monitor2"},
                {"Name", "Monitor3"},
                {"Name", "Monitor6"},
                {"Name", "Monitor7"},
                {"Name", "HelmDesk"},
                {"Name", "WallFan2"},
                {"Name", "WallFan3"},
                {"Name", "WallMonitorGRP2"},
                {"Name", "LargeCrate11"},
                {"Name", "LargeCrate10"},
                {"Name", "CielingDrape_Trader1"},
                {"Name", "CielingDrape_Trader"},
                {"Name", "REFBridgeVolumeLight"},
                {"Name", "REFBridgeVolumeLight1"},
                {"Name", "REFBridgeVolumeLight2"},
                {"Name", "REFBridgeVolumeLight3"},
                {"Name", "REFBridgeVolumeLight4"},
                {"Name", "REFBridgeVolumeLight5"},
                {"Name", "REFBridgeVolumeLight6"},
                {"Name", "REFBridgeVolumeLight7"},
                {"Name", "REFBridgeVolumeLight8"},
                {"Name", "REFBridgeVolumeLight9"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection1"},
              ["SEC_SAVE_TO"] = "conn1"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection2"},
              ["SEC_SAVE_TO"] = "conn2"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "connection1"},
                {"Name", "connection2"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Center Floor collision cylinder" />
      <Property name="NameHash" value="1652198593" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.650000" />
        <Property name="TransZ" value="-18.000000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Cylinder" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="23.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="pilot station center collision" />
      <Property name="NameHash" value="106658977" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-27.300000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.500000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="captain railing center collision" />
      <Property name="NameHash" value="2986548339" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-11.600000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="0.500000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="0.200000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="captain railing right collision" />
      <Property name="NameHash" value="3197602250" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.900000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-13.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.400000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="captain railing left collision" />
      <Property name="NameHash" value="706685011" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.900000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-13.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.400000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="back door Floor collision" />
      <Property name="NameHash" value="1564985526" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="16.000000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="7.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="right door Floor collision" />
      <Property name="NameHash" value="630337459" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="1.300000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="left door Floor collision" />
      <Property name="NameHash" value="1017577487" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="1.300000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="transporter upper right collision" />
      <Property name="NameHash" value="1178334035" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="transporter upper left collision" />
      <Property name="NameHash" value="2237524012" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="left curved back collision" />
      <Property name="NameHash" value="3733235053" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-3.000000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="right curved back collision" />
      <Property name="NameHash" value="4071812761" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="3.000000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotY",   "180.000000"},
                {"ScaleX", "0.700000"},
                {"ScaleY", "0.010000"},
                {"ScaleZ", "0.700000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\TKDEREF4_SERVER_PHONG45.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB2FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\TKDEREF4_FREIGHTERPROC_MAT3.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\GLOW_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB4FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\TKDEREF4_INTERIORPROPS_MAT4.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["SEC_ADD_NAMED"] = "conn2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["SEC_ADD_NAMED"] = "conn1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "ShadowMesh"},
              ["EXML_INDEX"] = "12",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
              ["EXML_INDEX"] = "13",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection1"},
              ["EXML_INDEX"] = "14",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection2"},
              ["EXML_INDEX"] = "15",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="NPCCaptain_SIT_" />
          <Property name="NameHash" value="1937966399" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="2.100000" />
            <Property name="TransY" value="-1.120000" />
            <Property name="TransZ" value="-14.300000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="NPC_1stMate_SIT_" />
          <Property name="NameHash" value="3937633642" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-2.100000" />
            <Property name="TransY" value="-1.120000" />
            <Property name="TransZ" value="-14.300000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="NPC_BackL2_STAND_" />
          <Property name="NameHash" value="3488801304" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-9.000000" />
            <Property name="TransY" value="1.940000" />
            <Property name="TransZ" value="8.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="135.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="NPC_BackR2_STAND_" />
          <Property name="NameHash" value="327678763" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="9.000000" />
            <Property name="TransY" value="1.960000" />
            <Property name="TransZ" value="8.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-135.000000" />
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
          <Property name="Name" value="NPC_PilotL_SIT_" />
          <Property name="NameHash" value="2535972783" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-1.800000" />
            <Property name="TransY" value="-1.150000" />
            <Property name="TransZ" value="-25.000000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="NPC_PilotR_SIT_" />
          <Property name="NameHash" value="428002797" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="2.000000" />
            <Property name="TransY" value="-1.150000" />
            <Property name="TransZ" value="-25.000000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="NPCNAV_STAND_" />
          <Property name="NameHash" value="654097330" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-2.981092" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="-0.130298" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-99.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="7">
          <Property name="Name" value="ObjectSpawner" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="PROPTDRAPE1" />
              <Property name="NameHash" value="1611483558" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="12.000000" />
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
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="PROPTDRAPE2" />
              <Property name="NameHash" value="1923083979" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-4.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="12.000000" />
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
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="PROPTDRAPE3" />
              <Property name="NameHash" value="4243587945" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="4.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="12.000000" />
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
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="PROPTDRAPE4" />
              <Property name="NameHash" value="843345421" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-13.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="-5.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-90.000000" />
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
              <Property name="Name" value="PROPTDRAPE5" />
              <Property name="NameHash" value="3172107179" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="13.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="-5.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Hide"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Hide"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="RefDrone" />
              <Property name="NameHash" value="1298127706" />
              <Property name="Type" value="REFERENCE" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.269130" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="45.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="SCENEGRAPH" />
                  <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\BRIDGE\DRONE.SCENE.MBIN" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="EMBEDGEOMETRY" />
                  <Property name="Value" value="TRUE" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "ColourData"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="119">
      <Property name="Name" value="pointLightL" />
      <Property name="NameHash" value="2599933111" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
    <Property name="Children" value="TkSceneNodeData" _index="120">
      <Property name="Name" value="pointLightR" />
      <Property name="NameHash" value="605873915" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
    <Property name="Children" value="TkSceneNodeData" _index="121">
      <Property name="Name" value="pointLightFront" />
      <Property name="NameHash" value="821068762" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="25.000000" />
        <Property name="TransZ" value="-25.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
    <Property name="Children" value="TkSceneNodeData" _index="122">
      <Property name="Name" value="pointLightBack" />
      <Property name="NameHash" value="2348932709" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="25.000000" />
        <Property name="TransZ" value="15.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RoofMonitor2"},
                {"Name", "RoofMonitor1"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "11.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "-0.100000"},
                {"TransZ", "6.315618"},
                {"RotY",   "135.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "-0.100000"},
                {"TransZ", "6.315620"},
                {"RotY",   "-135.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="149">
      <Property name="Name" value="Bioroom roof left corner" />
      <Property name="NameHash" value="1550161445" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="11.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="150">
      <Property name="Name" value="Bioroom roof middle back" />
      <Property name="NameHash" value="1965490563" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="11.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="151">
      <Property name="Name" value="Bioroom roof right corner" />
      <Property name="NameHash" value="194452828" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="11.000000" />
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
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="152">
      <Property name="Name" value="Bioroom roof side right" />
      <Property name="NameHash" value="1506438095" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="5.500000" />
        <Property name="TransZ" value="-3.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="4.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="153">
      <Property name="Name" value="Bioroom roof side left" />
      <Property name="NameHash" value="2394648712" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="5.500000" />
        <Property name="TransZ" value="-3.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="4.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="154">
      <Property name="Name" value="Bioroom roof top middle middle" />
      <Property name="NameHash" value="920679837" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="12.000000" />
        <Property name="TransZ" value="1.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="3.500000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="155">
      <Property name="Name" value="Bioroom roof top middle front" />
      <Property name="NameHash" value="391520568" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="12.000000" />
        <Property name="TransZ" value="-13.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="4.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="156">
      <Property name="Name" value="Bioroom FRAME" />
      <Property name="NameHash" value="586610647" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.200000" />
        <Property name="ScaleY" value="0.930000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\BIOROOM_FRAME.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="157">
      <Property name="Name" value="Bridge floor" />
      <Property name="NameHash" value="2404591604" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.700000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.400000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="158">
      <Property name="Name" value="Bridge floor 1" />
      <Property name="NameHash" value="2017790006" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.500000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BIOROOM_CEILING_3.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="159">
      <Property name="Name" value="Bridge floor 2" />
      <Property name="NameHash" value="2399548856" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.700000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM_FLOOR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="160">
      <Property name="Name" value="Bridge underfloor" />
      <Property name="NameHash" value="3968293467" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-5.900000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.400000" />
        <Property name="ScaleY" value="6.200000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="161">
      <Property name="Name" value="Midfloor under transporter" />
      <Property name="NameHash" value="376908077" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-0.160000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="9.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="162">
      <Property name="Name" value="Cuberoom wall as floor back in front of back door" />
      <Property name="NameHash" value="2259899945" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.620000" />
        <Property name="TransZ" value="9.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.800000" />
        <Property name="ScaleY" value="2.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="163">
      <Property name="Name" value="Cuberoom wall as floor door right" />
      <Property name="NameHash" value="431437615" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="164">
      <Property name="Name" value="Cuberoom wall as floor door left" />
      <Property name="NameHash" value="1888888936" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="165">
      <Property name="Name" value="Cuberoom wall as floor angle right" />
      <Property name="NameHash" value="1181347973" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="1.630000" />
        <Property name="TransZ" value="10.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="166">
      <Property name="Name" value="Cuberoom wall as floor angle left" />
      <Property name="NameHash" value="3927275112" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="1.630000" />
        <Property name="TransZ" value="10.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="167">
      <Property name="Name" value="Cuberoom wall as wall top above back door" />
      <Property name="NameHash" value="595560571" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="7.900000" />
        <Property name="TransZ" value="14.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="168">
      <Property name="Name" value="Cuberoom wall as wall back above back door" />
      <Property name="NameHash" value="682980483" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="5.400000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="0.650000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="169">
      <Property name="Name" value="Cuberoom wall as wall back in front of back door 3" />
      <Property name="NameHash" value="581745683" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="9.600000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="170">
      <Property name="Name" value="Cuberoom wall as wall door right 1" />
      <Property name="NameHash" value="786783489" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="171">
      <Property name="Name" value="Cuberoom wall as wall door left 5" />
      <Property name="NameHash" value="1018675587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="172">
      <Property name="Name" value="Cuberoom wall as wall angle right 3" />
      <Property name="NameHash" value="967805712" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.500000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="7.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="173">
      <Property name="Name" value="Cuberoom wall as wall angle left 4" />
      <Property name="NameHash" value="694793620" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.500000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="7.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="174">
      <Property name="Name" value="Cuberoom wall as wall under left door front" />
      <Property name="NameHash" value="1602446809" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-11.800000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.900000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="175">
      <Property name="Name" value="Cuberoom wall as wall under right door front" />
      <Property name="NameHash" value="2772094274" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="11.800000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.900000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="176">
      <Property name="Name" value="Cuberoom wall as wall above door right left" />
      <Property name="NameHash" value="492739643" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="-5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="177">
      <Property name="Name" value="Cuberoom wall as wall above door right right" />
      <Property name="NameHash" value="1787388445" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="178">
      <Property name="Name" value="Cuberoom wall as wall above door left right" />
      <Property name="NameHash" value="2654956351" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="-5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="179">
      <Property name="Name" value="Cuberoom wall as wall above door left left" />
      <Property name="NameHash" value="2462031865" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="180">
      <Property name="Name" value="Cuberoom wall as wall under center stairs" />
      <Property name="NameHash" value="1525981254" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.500000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="181">
      <Property name="Name" value="Cuberoom wall as wall under left door outside" />
      <Property name="NameHash" value="2063556720" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="182">
      <Property name="Name" value="Cuberoom wall as wall under right door outside" />
      <Property name="NameHash" value="2653671904" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="183">
      <Property name="Name" value="right door entrance wall left" />
      <Property name="NameHash" value="3929330180" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="184">
      <Property name="Name" value="right door entrance wall right" />
      <Property name="NameHash" value="666166830" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="185">
      <Property name="Name" value="left door entrance wall left" />
      <Property name="NameHash" value="2379828441" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="186">
      <Property name="Name" value="left door entrance wall right" />
      <Property name="NameHash" value="2079338756" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="187">
      <Property name="Name" value="back door entrance wall left" />
      <Property name="NameHash" value="3046234683" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.700000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="16.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="188">
      <Property name="Name" value="back door entrance wall right" />
      <Property name="NameHash" value="1108487179" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.700000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="16.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="189">
      <Property name="Name" value="FloorTilingFront" />
      <Property name="NameHash" value="1281435385" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="190">
      <Property name="Name" value="FloorTilingRAngle" />
      <Property name="NameHash" value="771128330" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="191">
      <Property name="Name" value="FloorTilingLAngle" />
      <Property name="NameHash" value="500336221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="192">
      <Property name="Name" value="FloorTilingTriLBack" />
      <Property name="NameHash" value="741514761" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="193">
      <Property name="Name" value="FloorTilingTriLdoor" />
      <Property name="NameHash" value="76471280" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="194">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="3091864143" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="195">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="3091864143" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="196">
      <Property name="Name" value="FloorTilingRSide" />
      <Property name="NameHash" value="120292735" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="197">
      <Property name="Name" value="FloorTilingLSide" />
      <Property name="NameHash" value="3096872846" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="198">
      <Property name="Name" value="Bridge_Backrow_TilesL1" />
      <Property name="NameHash" value="2747754647" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-3.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.600000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="199">
      <Property name="Name" value="Bridge_Backrow_TilesCenter" />
      <Property name="NameHash" value="467464505" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="200">
      <Property name="Name" value="Bridge_Backrow_TilesR1" />
      <Property name="NameHash" value="2843349104" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="3.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.600000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="201">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="3379958096" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.300000" />
        <Property name="TransZ" value="6.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="202">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="3379958096" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="6.800000" />
        <Property name="TransY" value="-1.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="203">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="3379958096" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-6.800000" />
        <Property name="TransY" value="-1.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="204">
      <Property name="Name" value="RefTerminal" />
      <Property name="NameHash" value="3663829347" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.200000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\GALAXYTERMINAL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="205">
      <Property name="Name" value="captainchair1" />
      <Property name="NameHash" value="4147705586" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-13.500000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CAPTAIN_CHAIR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="206">
      <Property name="Name" value="pilotstation" />
      <Property name="NameHash" value="1301031219" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.800000" />
        <Property name="TransZ" value="-15.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOT_STATION.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="207">
      <Property name="Name" value="stairs railings" />
      <Property name="NameHash" value="934541229" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.900000" />
        <Property name="TransZ" value="-12.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\STAIRS_RAILINGS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="208">
      <Property name="Name" value="BackWall" />
      <Property name="NameHash" value="3455112898" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BRIDGE_BACKWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="209">
      <Property name="Name" value="deskmonitorR" />
      <Property name="NameHash" value="559708611" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="12.000000" />
        <Property name="TransY" value="1.700000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="210">
      <Property name="Name" value="deskmonitorL" />
      <Property name="NameHash" value="3205772596" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-12.000000" />
        <Property name="TransY" value="1.700000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="211">
      <Property name="Name" value="savepoint" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-12.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="212">
      <Property name="Name" value="cockpita" />
      <Property name="NameHash" value="1100327383" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="213">
      <Property name="Name" value="CIRCULAR RAILING" />
      <Property name="NameHash" value="868562129" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.100000" />
        <Property name="TransZ" value="-1.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CIRCULARRAILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "fisrtfloor"},
                {"Name", "SkullDecal5"},
                {"Name", "Monitor31"},
                {"Name", "Monitor32"},
                {"Name", "Monitor33"},
                {"Name", "Monitor34"},
                {"Name", "Group53165"},
                {"Name", "Group53159"},
                {"Name", "Group53160"},
                {"Name", "Group53166"},
                {"Name", "polySurface3443"},
                {"Name", "polySurface3454"},
                {"Name", "polySurface3457"},
                {"Name", "polySurface2100"},
                {"Name", "RightWallGlass"},
                {"Name", "RightWallGlass1"},
                {"Name", "RightWallGlass2"},
                {"Name", "FrontWall"},
                {"Name", "LeftWall"},
                {"Name", "polySurface3607"},
                {"Name", "wires"},
                {"Name", "polySurface3436"},
                {"Name", "polySurface3469"},
                {"Name", "polySurface3461"},
                {"Name", "polySurface3465"},
                {"Name", "polySurface3470"},
                {"Name", "polySurface3474"},
                {"Name", "polySurface3458"},
                {"Name", "polySurface3481"},
                {"Name", "polySurface3476"},
                {"Name", "roofinside"},
                {"Name", "polySurface3449"},
                {"Name", "polySurface3482"},
                {"Name", "polySurface3446"},
                {"Name", "polySurface3438"},
                {"Name", "polySurface3599"},
                {"Name", "SnapGroup_WallBBackRight10"},
                {"Name", "polySurface3599_2"},
                {"Name", "polySurface3599_3"},
                {"Name", "polySurface2115"},
                {"Name", "polySurface2109"},
                {"Name", "polySurface3608"},
                {"Name", "Monitor3"},
                {"Name", "Monitor7"},
                {"Name", "WallFan2"},
                {"Name", "WallFan3"},
                {"Name", "pCube277"},
                {"Name", "FrontWall1"},
                {"Name", "FrontWall2"},
                {"Name", "polySurface3613"},
                {"Name", "polySurface3636"},
                {"Name", "polySurface3637"},
                {"Name", "polySurface3638"},
                {"Name", "polySurface3639"},
                {"Name", "polySurface3640"},
                {"Name", "pCube314"},
                {"Name", "pCube315"},
                {"Name", "pCube316"},
                {"Name", "pCube317"},
                {"Name", "pCube318"},
                {"Name", "pCube324"},
                {"Name", "polySurface3656"},
                {"Name", "polySurface3657"},
                {"Name", "polySurface3658"},
                {"Name", "polySurface3659"},
                {"Name", "polySurface3660"},
                {"Name", "polySurface3667"},
                {"Name", "polySurface3668"},
                {"Name", "polySurface3669"},
                {"Name", "polySurface3670"},
                {"Name", "polySurface3671"},
                {"Name", "polySurface3672"},
                {"Name", "polySurface3673"},
                {"Name", "pSphere1"},
                {"Name", "pSphere2"},
                {"Name", "REFBridgeVolumeLight"},
                {"Name", "REFBridgeVolumeLight1"},
                {"Name", "REFBridgeVolumeLight2"},
                {"Name", "REFBridgeVolumeLight3"},
                {"Name", "REFBridgeVolumeLight4"},
                {"Name", "REFBridgeVolumeLight5"},
                {"Name", "REFBridgeVolumeLight6"},
                {"Name", "REFBridgeVolumeLight7"},
                {"Name", "REFBridgeVolumeLight8"},
                {"Name", "REFBridgeVolumeLight9"},
                {"Name", "smallCable9"},
                {"Name", "Exterior"},
                {"Name", "GlassWindows"},
                {"Name", "FloorBaseLOD1"},
                {"Name", "FloorBaseLOD2"},
                {"Name", "FloorBaseLOD3"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection1"},
              ["SEC_SAVE_TO"] = "conn1"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection2"},
              ["SEC_SAVE_TO"] = "conn2"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "connection1"},
                {"Name", "connection2"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Center Floor collision cylinder" />
      <Property name="NameHash" value="1652198593" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.650000" />
        <Property name="TransZ" value="-18.000000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Cylinder" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="23.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="pilot station center collision" />
      <Property name="NameHash" value="106658977" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-27.300000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.500000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="captain railing center collision" />
      <Property name="NameHash" value="2986548339" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-11.600000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="0.500000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="0.200000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="captain railing right collision" />
      <Property name="NameHash" value="3197602250" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.900000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-13.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.400000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="captain railing left collision" />
      <Property name="NameHash" value="706685011" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.900000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-13.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.400000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="back door Floor collision" />
      <Property name="NameHash" value="1564985526" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.300000" />
        <Property name="TransZ" value="16.000000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="7.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="right door Floor collision" />
      <Property name="NameHash" value="630337459" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="1.300000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="left door Floor collision" />
      <Property name="NameHash" value="1017577487" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="1.300000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="10.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="12.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="transporter upper right collision" />
      <Property name="NameHash" value="1178334035" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="transporter upper left collision" />
      <Property name="NameHash" value="2237524012" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="8.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="left curved back collision" />
      <Property name="NameHash" value="3733235053" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-3.000000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="right curved back collision" />
      <Property name="NameHash" value="4071812761" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="3.000000" />
        <Property name="TransY" value="1.400000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Name" value="NAVIGATION" />
          <Property name="Value" value="FALSE" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="TYPE" />
          <Property name="Value" value="Box" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="WIDTH" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="HEIGHT" />
          <Property name="Value" value="3.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="DEPTH" />
          <Property name="Value" value="1.000000" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotY",   "180.000000"},
                {"ScaleX", "0.700000"},
                {"ScaleY", "0.010000"},
                {"ScaleZ", "0.700000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\TKDEREF4_SERVER_PHONG45.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB2FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\TKDEREF4_FREIGHTERPROC_MAT3.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\GLOW_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB4FloorBaseLOD0", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\TKDEREF4_INTERIORPROPS_MAT4.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["SEC_ADD_NAMED"] = "conn2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FloorBaseLOD0"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["SEC_ADD_NAMED"] = "conn1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection1"},
              ["EXML_INDEX"] = "28",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "connection2"},
              ["EXML_INDEX"] = "29",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Interior_"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="NPCCaptain_SIT_" />
          <Property name="NameHash" value="1937966399" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="2.100000" />
            <Property name="TransY" value="-1.120000" />
            <Property name="TransZ" value="-14.300000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="NPC_1stMate_SIT_" />
          <Property name="NameHash" value="3937633642" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-2.100000" />
            <Property name="TransY" value="-1.120000" />
            <Property name="TransZ" value="-14.300000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="NPC_BackL2_STAND_" />
          <Property name="NameHash" value="3488801304" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-9.000000" />
            <Property name="TransY" value="1.940000" />
            <Property name="TransZ" value="8.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="135.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="NPC_BackR2_STAND_" />
          <Property name="NameHash" value="327678763" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="9.000000" />
            <Property name="TransY" value="1.960000" />
            <Property name="TransZ" value="8.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-135.000000" />
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
          <Property name="Name" value="NPC_PilotL_SIT_" />
          <Property name="NameHash" value="2535972783" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-1.800000" />
            <Property name="TransY" value="-1.150000" />
            <Property name="TransZ" value="-25.000000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="NPC_PilotR_SIT_" />
          <Property name="NameHash" value="428002797" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="2.000000" />
            <Property name="TransY" value="-1.150000" />
            <Property name="TransZ" value="-25.000000" />
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
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="NPCNAV_STAND_" />
          <Property name="NameHash" value="654097330" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-2.981092" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="-0.130298" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-99.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="7">
          <Property name="Name" value="ObjectSpawner" />
          <Property name="NameHash" value="2569483507" />
          <Property name="Type" value="2569483507" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="PROPTDRAPE1" />
              <Property name="NameHash" value="1611483558" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="12.000000" />
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
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="PROPTDRAPE2" />
              <Property name="NameHash" value="1923083979" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-4.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="12.000000" />
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
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="PROPTDRAPE3" />
              <Property name="NameHash" value="4243587945" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="4.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="12.000000" />
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
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="PROPTDRAPE4" />
              <Property name="NameHash" value="843345421" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-13.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="-5.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-90.000000" />
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
              <Property name="Name" value="PROPTDRAPE5" />
              <Property name="NameHash" value="3172107179" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="13.000000" />
                <Property name="TransY" value="7.500000" />
                <Property name="TransZ" value="-5.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Hide"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Hide"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="RefDrone" />
              <Property name="NameHash" value="1298127706" />
              <Property name="Type" value="REFERENCE" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.269130" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="45.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="SCENEGRAPH" />
                  <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\BRIDGE\DRONE.SCENE.MBIN" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="EMBEDGEOMETRY" />
                  <Property name="Value" value="TRUE" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "ColourData"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="192">
      <Property name="Name" value="pointLightL" />
      <Property name="NameHash" value="2599933111" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
    <Property name="Children" value="TkSceneNodeData" _index="193">
      <Property name="Name" value="pointLightR" />
      <Property name="NameHash" value="605873915" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="25.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
    <Property name="Children" value="TkSceneNodeData" _index="194">
      <Property name="Name" value="pointLightFront" />
      <Property name="NameHash" value="821068762" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="25.000000" />
        <Property name="TransZ" value="-25.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
    <Property name="Children" value="TkSceneNodeData" _index="195">
      <Property name="Name" value="pointLightBack" />
      <Property name="NameHash" value="2348932709" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="25.000000" />
        <Property name="TransZ" value="15.000000" />
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
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="16.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="RADIUS" />
          <Property name="Value" value="7.745967" />
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
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RoofMonitor2"},
                {"Name", "RoofMonitor1"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "11.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "-0.100000"},
                {"TransZ", "6.315620"},
                {"RotY",   "-135.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lights"},
              ["EXML_INDEX"] = "196",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTeleporter3"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="217">
      <Property name="Name" value="Bioroom roof left corner" />
      <Property name="NameHash" value="1550161445" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="11.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="218">
      <Property name="Name" value="Bioroom roof middle back" />
      <Property name="NameHash" value="1965490563" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="11.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="219">
      <Property name="Name" value="Bioroom roof right corner" />
      <Property name="NameHash" value="194452828" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="8.000000" />
        <Property name="TransZ" value="11.000000" />
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
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_CORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="220">
      <Property name="Name" value="Bioroom roof side right" />
      <Property name="NameHash" value="1506438095" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="5.500000" />
        <Property name="TransZ" value="-3.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="4.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="221">
      <Property name="Name" value="Bioroom roof side left" />
      <Property name="NameHash" value="2394648712" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="5.500000" />
        <Property name="TransZ" value="-3.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="4.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_MIDDLE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="222">
      <Property name="Name" value="Bioroom roof top middle middle" />
      <Property name="NameHash" value="920679837" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="12.000000" />
        <Property name="TransZ" value="1.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="3.500000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="223">
      <Property name="Name" value="Bioroom roof top middle front" />
      <Property name="NameHash" value="391520568" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="12.000000" />
        <Property name="TransZ" value="-13.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="4.500000" />
        <Property name="ScaleZ" value="2.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_ROOF_TOP.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="224">
      <Property name="Name" value="Bioroom FRAME" />
      <Property name="NameHash" value="586610647" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.200000" />
        <Property name="ScaleY" value="0.930000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\BIOROOM_FRAME.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="225">
      <Property name="Name" value="Bridge floor" />
      <Property name="NameHash" value="2404591604" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.700000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.400000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="226">
      <Property name="Name" value="Bridge floor 1" />
      <Property name="NameHash" value="2017790006" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.500000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BIOROOM_CEILING_3.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="227">
      <Property name="Name" value="Bridge floor 2" />
      <Property name="NameHash" value="2399548856" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.700000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="2.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM_FLOOR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="228">
      <Property name="Name" value="Bridge underfloor" />
      <Property name="NameHash" value="3968293467" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-5.900000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.400000" />
        <Property name="ScaleY" value="6.200000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOMFOUNDATION.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="229">
      <Property name="Name" value="Midfloor under transporter" />
      <Property name="NameHash" value="376908077" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-0.160000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="9.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="230">
      <Property name="Name" value="Cuberoom wall as floor back in front of back door" />
      <Property name="NameHash" value="2259899945" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.620000" />
        <Property name="TransZ" value="9.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.800000" />
        <Property name="ScaleY" value="2.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="231">
      <Property name="Name" value="Cuberoom wall as floor door right" />
      <Property name="NameHash" value="431437615" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="232">
      <Property name="Name" value="Cuberoom wall as floor door left" />
      <Property name="NameHash" value="1888888936" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="233">
      <Property name="Name" value="Cuberoom wall as floor angle right" />
      <Property name="NameHash" value="1181347973" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="1.630000" />
        <Property name="TransZ" value="10.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="234">
      <Property name="Name" value="Cuberoom wall as floor angle left" />
      <Property name="NameHash" value="3927275112" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="1.6300000" />
        <Property name="TransZ" value="10.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="235">
      <Property name="Name" value="Cuberoom wall as wall top above back door" />
      <Property name="NameHash" value="595560571" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="7.900000" />
        <Property name="TransZ" value="14.000000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="236">
      <Property name="Name" value="Cuberoom wall as wall back above back door" />
      <Property name="NameHash" value="682980483" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="5.400000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="0.650000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="237">
      <Property name="Name" value="Cuberoom wall as wall back in front of back door 3" />
      <Property name="NameHash" value="581745683" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="9.600000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="238">
      <Property name="Name" value="Cuberoom wall as wall door right 1" />
      <Property name="NameHash" value="786783489" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.000000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="239">
      <Property name="Name" value="Cuberoom wall as wall door left 5" />
      <Property name="NameHash" value="1018675587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.000000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="240">
      <Property name="Name" value="Cuberoom wall as wall angle right 3" />
      <Property name="NameHash" value="967805712" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.500000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="7.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="241">
      <Property name="Name" value="Cuberoom wall as wall angle left 4" />
      <Property name="NameHash" value="694793620" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.500000" />
        <Property name="TransY" value="-0.300000" />
        <Property name="TransZ" value="7.500000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="135.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="242">
      <Property name="Name" value="Cuberoom wall as wall under left door front" />
      <Property name="NameHash" value="1602446809" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-11.800000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.900000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="243">
      <Property name="Name" value="Cuberoom wall as wall under right door front" />
      <Property name="NameHash" value="2772094274" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="11.800000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.900000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="244">
      <Property name="Name" value="Cuberoom wall as wall above door right left" />
      <Property name="NameHash" value="492739643" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="-5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="245">
      <Property name="Name" value="Cuberoom wall as wall above door right right" />
      <Property name="NameHash" value="1787388445" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="246">
      <Property name="Name" value="Cuberoom wall as wall above door left right" />
      <Property name="NameHash" value="2654956351" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="-5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="247">
      <Property name="Name" value="Cuberoom wall as wall above door left left" />
      <Property name="NameHash" value="2462031865" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-14.000000" />
        <Property name="TransY" value="4.000000" />
        <Property name="TransZ" value="5.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="248">
      <Property name="Name" value="Cuberoom wall as wall under center stairs" />
      <Property name="NameHash" value="1525981254" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.500000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.500000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="249">
      <Property name="Name" value="Cuberoom wall as wall under left door outside" />
      <Property name="NameHash" value="2063556720" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="250">
      <Property name="Name" value="Cuberoom wall as wall under right door outside" />
      <Property name="NameHash" value="2653671904" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-7.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="251">
      <Property name="Name" value="right door entrance wall left" />
      <Property name="NameHash" value="3929330180" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="252">
      <Property name="Name" value="right door entrance wall right" />
      <Property name="NameHash" value="666166830" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="253">
      <Property name="Name" value="left door entrance wall left" />
      <Property name="NameHash" value="2379828441" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="-3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="254">
      <Property name="Name" value="left door entrance wall right" />
      <Property name="NameHash" value="2079338756" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="16.000000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="3.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="255">
      <Property name="Name" value="back door entrance wall left" />
      <Property name="NameHash" value="3046234683" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.700000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="16.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="256">
      <Property name="Name" value="back door entrance wall right" />
      <Property name="NameHash" value="1108487179" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.700000" />
        <Property name="TransY" value="-2.100000" />
        <Property name="TransZ" value="16.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="257">
      <Property name="Name" value="FloorTilingFront" />
      <Property name="NameHash" value="1281435385" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="258">
      <Property name="Name" value="FloorTilingRAngle" />
      <Property name="NameHash" value="771128330" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="259">
      <Property name="Name" value="FloorTilingLAngle" />
      <Property name="NameHash" value="500336221" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="260">
      <Property name="Name" value="FloorTilingTriLBack" />
      <Property name="NameHash" value="741514761" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="261">
      <Property name="Name" value="FloorTilingTriLdoor" />
      <Property name="NameHash" value="76471280" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="262">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="3091864143" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="263">
      <Property name="Name" value="FloorTilingTriRBack" />
      <Property name="NameHash" value="3091864143" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORCORNER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="264">
      <Property name="Name" value="FloorTilingRSide" />
      <Property name="NameHash" value="120292735" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="265">
      <Property name="Name" value="FloorTilingLSide" />
      <Property name="NameHash" value="3096872846" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\FLOORTILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="266">
      <Property name="Name" value="Bridge_Backrow_TilesL1" />
      <Property name="NameHash" value="2747754647" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-3.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.600000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="267">
      <Property name="Name" value="Bridge_Backrow_TilesCenter" />
      <Property name="NameHash" value="467464505" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="268">
      <Property name="Name" value="Bridge_Backrow_TilesR1" />
      <Property name="NameHash" value="2843349104" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="3.000000" />
        <Property name="TransY" value="1.800000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.600000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_FREIGHTERTILE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="269">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="3379958096" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.300000" />
        <Property name="TransZ" value="6.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="270">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="3379958096" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="6.800000" />
        <Property name="TransY" value="-1.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="271">
      <Property name="Name" value="Cuberoom stairs" />
      <Property name="NameHash" value="3379958096" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-6.800000" />
        <Property name="TransY" value="-1.200000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_STAIRS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="272">
      <Property name="Name" value="RefTerminal" />
      <Property name="NameHash" value="3663829347" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.200000" />
        <Property name="TransZ" value="-18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\GALAXYTERMINAL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="273">
      <Property name="Name" value="captainchair1" />
      <Property name="NameHash" value="4147705586" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-13.500000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CAPTAIN_CHAIR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="274">
      <Property name="Name" value="pilotstation" />
      <Property name="NameHash" value="1301031219" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.800000" />
        <Property name="TransZ" value="-15.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\PILOT_STATION.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="275">
      <Property name="Name" value="stairs railings" />
      <Property name="NameHash" value="934541229" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.900000" />
        <Property name="TransZ" value="-12.000000" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\STAIRS_RAILINGS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="276">
      <Property name="Name" value="BackWall" />
      <Property name="NameHash" value="3455112898" />
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
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\BRIDGE_BACKWALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="277">
      <Property name="Name" value="deskmonitorR" />
      <Property name="NameHash" value="559708611" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="12.000000" />
        <Property name="TransY" value="1.700000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="278">
      <Property name="Name" value="deskmonitorL" />
      <Property name="NameHash" value="3205772596" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-12.000000" />
        <Property name="TransY" value="1.700000" />
        <Property name="TransZ" value="-6.500000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LARGEDESK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="279">
      <Property name="Name" value="savepoint" />
      <Property name="NameHash" value="530525131" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-12.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="280">
      <Property name="Name" value="cockpita" />
      <Property name="NameHash" value="1100327383" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-2.000000" />
        <Property name="TransZ" value="-9.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="281">
      <Property name="Name" value="CIRCULAR RAILING" />
      <Property name="NameHash" value="868562129" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.100000" />
        <Property name="TransZ" value="-1.100000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CIRCULARRAILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Logo14"},
                {"Name", "Logo15"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "72.04727"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Base"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="BRIDGESCANNER" />
          <Property name="NameHash" value="1123079334" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="1.000000" />
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
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1Base"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFBridgeTerminalVolumeLightVFX", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\EFFECTS\SPACECRAFT\BRIDGETERMINALVOLUMELIGHT.SCENE.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFBridgeFloorMistVFX", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\EFFECTS\SPACECRAFT\BRIDGEFLOORMIST.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_FLOOR_TRI.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB1FloortriLOD0", "Name", "MATERIAL"},
                {"Name", "SUB2FloortriLOD0", "Name", "MATERIAL"},
                {"Name", "FloortriLOD1",     "Name", "MATERIAL"},
                {"Name", "SUB1FloortriLOD1", "Name", "MATERIAL"},
                {"Name", "SUB2FloortriLOD1", "Name", "MATERIAL"},
                {"Name", "FloortriLOD2",     "Name", "MATERIAL"},
                {"Name", "SUB1FloortriLOD2", "Name", "MATERIAL"},
                {"Name", "SUB2FloortriLOD2", "Name", "MATERIAL"},
                {"Name", "FloortriLOD3",     "Name", "MATERIAL"},
                {"Name", "SUB1FloortriLOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\CORRIDOR_STRAIGHT\INTERIORFREIGHTERBASE_MAT1.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcMaintenanceComponentData"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN",
            "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPIRATE.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BaseBuildingArea"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransZ", "-28.623486"},
                {"ScaleX", "1.300000"},
                {"ScaleZ", "1.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BIGGSPLATFORM_HOVERPAD_DOCK1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "125.000000"},
                {"TransY", "75.000000"},
                {"TransZ", "-200.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BIGGSPLATFORM_HOVERPAD_DOCK2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "-125.000000"},
                {"TransY", "75.000000"},
                {"TransZ", "-200.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\BIGGSLANDINGZONEOUTPOST.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcOutpostComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PlayerAutoLandRange", "300.000000"},
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
      ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\BRIDGE_BACKWALL.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSBRIDGE\PROPS\BRIDGE_BACKWALL" />
  <Property name="NameHash" value="3249337789" />
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
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="BRIDGEDOORBGL" />
      <Property name="NameHash" value="3809157253" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.000000" />
        <Property name="TransY" value="1.500000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="BRIDGEDOORBGR" />
      <Property name="NameHash" value="77620151" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.000000" />
        <Property name="TransY" value="1.500000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="BRIDGEDOORBGC" />
      <Property name="NameHash" value="3536781321" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="4.500000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.200000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="BRIDGEDOOR" />
      <Property name="NameHash" value="2954789870" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="3.400000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.300000" />
        <Property name="ScaleY" value="1.300000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\BRIDGEDOORS\ANIMATEDDOOR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="Back_CounterLeft" />
      <Property name="NameHash" value="283825956" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.200000" />
        <Property name="TransY" value="2.800000" />
        <Property name="TransZ" value="9.200000" />
        <Property name="RotX" value="80.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="0.400000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="Back_CounterRight" />
      <Property name="NameHash" value="3843345090" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.200000" />
        <Property name="TransY" value="2.800000" />
        <Property name="TransZ" value="9.200000" />
        <Property name="RotX" value="80.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="3.000000" />
        <Property name="ScaleY" value="0.400000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_HORZAO.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="screenL1" />
      <Property name="NameHash" value="2330226167" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-12.200000" />
        <Property name="TransY" value="3.000000" />
        <Property name="TransZ" value="6.800000" />
        <Property name="RotX" value="80.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="screenR1" />
      <Property name="NameHash" value="1772369535" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="12.200000" />
        <Property name="TransY" value="3.000000" />
        <Property name="TransZ" value="6.800000" />
        <Property name="RotX" value="80.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="screenL2" />
      <Property name="NameHash" value="3824951329" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-9.500000" />
        <Property name="TransY" value="3.000000" />
        <Property name="TransZ" value="9.500000" />
        <Property name="RotX" value="80.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="screenR2" />
      <Property name="NameHash" value="2469824931" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="9.500000" />
        <Property name="TransY" value="3.000000" />
        <Property name="TransZ" value="9.500000" />
        <Property name="RotX" value="80" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="screenL3" />
      <Property name="NameHash" value="4130194564" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.000000" />
        <Property name="TransY" value="3.000000" />
        <Property name="TransZ" value="12.000000" />
        <Property name="RotX" value="80.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="screenR3" />
      <Property name="NameHash" value="3306188118" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.000000" />
        <Property name="TransY" value="3.000000" />
        <Property name="TransZ" value="12.000000" />
        <Property name="RotX" value="80.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="6.000000" />
        <Property name="ScaleY" value="5.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\SHARED\INTERIOR\SCREENS\SCREEN1_R.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="BackwallLeftMonitor1" />
      <Property name="NameHash" value="4234439197" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-12.900000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="7.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="BackwallRightMonitor1" />
      <Property name="NameHash" value="902039072" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="12.900000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="7.400000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="BackwallLeftMonitor2" />
      <Property name="NameHash" value="4002795136" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.100000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="10.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="BackwallRightMonitor2" />
      <Property name="NameHash" value="1166714285" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.100000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="10.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="BackwallLeftMonitor3" />
      <Property name="NameHash" value="299767060" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.700000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="12.600000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="17">
      <Property name="Name" value="BackwallRightMonitor3" />
      <Property name="NameHash" value="1537921517" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.700000" />
        <Property name="TransY" value="3.500000" />
        <Property name="TransZ" value="12.600000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="18">
      <Property name="Name" value="BackBottomWall1Left" />
      <Property name="NameHash" value="4266701185" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-13.300000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="7.400000" />
        <Property name="RotX" value="-180.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="19">
      <Property name="Name" value="BackBottomWall1Right" />
      <Property name="NameHash" value="2468329441" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="13.300000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="7.400000" />
        <Property name="RotX" value="-180.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="20">
      <Property name="Name" value="BackBottomWall2Left" />
      <Property name="NameHash" value="3977652366" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.300000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="10.400000" />
        <Property name="RotX" value="-180.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.130000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="21">
      <Property name="Name" value="BackBottomWall2Right" />
      <Property name="NameHash" value="1686091751" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.300000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="10.400000" />
        <Property name="RotX" value="-180.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.130000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="22">
      <Property name="Name" value="BackBottomWall3Left" />
      <Property name="NameHash" value="1585939976" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.300000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="13.400000" />
        <Property name="RotX" value="-180.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="23">
      <Property name="Name" value="BackBottomWall3Right" />
      <Property name="NameHash" value="1462695147" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.300000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="13.400000" />
        <Property name="RotX" value="-180.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="24">
      <Property name="Name" value="BackBottomWall4Left" />
      <Property name="NameHash" value="3729130685" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.600000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="-180.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="25">
      <Property name="Name" value="BackBottomWall4Right" />
      <Property name="NameHash" value="3756730786" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.600000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="14.200000" />
        <Property name="RotX" value="-180.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="26">
      <Property name="Name" value="SideBottomWallRightRight" />
      <Property name="NameHash" value="3949487808" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-14.000000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="5.000000" />
        <Property name="RotX" value="-180.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="27">
      <Property name="Name" value="sideBottomWall4RightLeft" />
      <Property name="NameHash" value="3796670652" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-14.000000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="-5.000000" />
        <Property name="RotX" value="-180.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="28">
      <Property name="Name" value="SideBottomWallLeftRight" />
      <Property name="NameHash" value="2997726775" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="14.000000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="5.000000" />
        <Property name="RotX" value="-180.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="29">
      <Property name="Name" value="sideBottomWall4LeftLeft" />
      <Property name="NameHash" value="53973298" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="14.000000" />
        <Property name="TransY" value="4.900000" />
        <Property name="TransZ" value="-5.000000" />
        <Property name="RotX" value="-180.000000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="30">
      <Property name="Name" value="BackTopWallLeft" />
      <Property name="NameHash" value="2403592028" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-11.200000" />
        <Property name="TransY" value="8.500000" />
        <Property name="TransZ" value="8.500000" />
        <Property name="RotX" value="-20.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="31">
      <Property name="Name" value="BackTopWindow1Left" />
      <Property name="NameHash" value="3337155932" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-12.900000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="6.800000" />
        <Property name="RotX" value="-120.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="32">
      <Property name="Name" value="BackTopWindow1Right" />
      <Property name="NameHash" value="825899269" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="12.900000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="6.800000" />
        <Property name="RotX" value="-120.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="33">
      <Property name="Name" value="BackTopWindow2Left" />
      <Property name="NameHash" value="1184951391" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-10.200000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="9.500000" />
        <Property name="RotX" value="-120.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="34">
      <Property name="Name" value="BackTopWindow2Right" />
      <Property name="NameHash" value="695508868" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="10.200000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="9.500000" />
        <Property name="RotX" value="-120.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="35">
      <Property name="Name" value="BackTopWindow3Left" />
      <Property name="NameHash" value="3862024686" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-7.500000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="12.200000" />
        <Property name="RotX" value="-120.000000" />
        <Property name="RotY" value="-45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="36">
      <Property name="Name" value="BackTopWindow3Right" />
      <Property name="NameHash" value="3730935358" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="7.500000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="12.200000" />
        <Property name="RotX" value="-120.000000" />
        <Property name="RotY" value="45.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="37">
      <Property name="Name" value="BackTopWindow4Left" />
      <Property name="NameHash" value="3600667235" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-4.700000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="14.000000" />
        <Property name="RotX" value="-90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="38">
      <Property name="Name" value="BackTopWindow4Right" />
      <Property name="NameHash" value="1269998746" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="4.700000" />
        <Property name="TransY" value="6.500000" />
        <Property name="TransZ" value="14.000000" />
        <Property name="RotX" value="-90.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="3.000000" />
        <Property name="ScaleZ" value="3.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_WINDOWSMALL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="39">
      <Property name="Name" value="fanbackground" />
      <Property name="NameHash" value="1864900137" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="5.000000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="2.000000" />
        <Property name="ScaleY" value="0.600000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_INTERIORPROPS.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="40">
      <Property name="Name" value="Fan" />
      <Property name="NameHash" value="94757600" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="6.300000" />
        <Property name="TransZ" value="18.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\VENTILATION\VENTUNIT.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="41">
      <Property name="Name" value="Bluelight" />
      <Property name="NameHash" value="3259773260" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.000000" />
        <Property name="TransY" value="6.300000" />
        <Property name="TransZ" value="18.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="42">
      <Property name="Name" value="Bluelight" />
      <Property name="NameHash" value="3259773260" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.000000" />
        <Property name="TransY" value="6.300000" />
        <Property name="TransZ" value="18.000000" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\CAPTAIN_CHAIR.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSBRIDGE\PROPS\CAPTAIN_CHAIR" />
  <Property name="NameHash" value="2173773748" />
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
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="captain_platform" />
      <Property name="NameHash" value="3750953831" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.850000" />
        <Property name="TransZ" value="0.600000" />
        <Property name="RotX" value="180.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.150000" />
        <Property name="ScaleY" value="0.100000" />
        <Property name="ScaleZ" value="0.150000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_CEILING_3.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="captainchair1" />
      <Property name="NameHash" value="4147705586" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.880000" />
        <Property name="TransZ" value="1.300000" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="chaircontrolsL" />
      <Property name="NameHash" value="1453310973" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-0.470000" />
        <Property name="TransY" value="1.050000" />
        <Property name="TransZ" value="0.700000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-90.000000" />
        <Property name="RotZ" value="-5.000000" />
        <Property name="ScaleX" value="0.230000" />
        <Property name="ScaleY" value="0.140000" />
        <Property name="ScaleZ" value="0.700000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="chaircontrolsR" />
      <Property name="NameHash" value="914654127" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.470000" />
        <Property name="TransY" value="1.050000" />
        <Property name="TransZ" value="0.700000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="5.000000" />
        <Property name="ScaleX" value="0.230000" />
        <Property name="ScaleY" value="0.140000" />
        <Property name="ScaleZ" value="0.700000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="chaircontrolsBack" />
      <Property name="NameHash" value="3968567598" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.000000" />
        <Property name="TransZ" value="1.000000" />
        <Property name="RotX" value="18.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.240000" />
        <Property name="ScaleY" value="0.100000" />
        <Property name="ScaleZ" value="0.200000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\CUBEROOM_INNERWALL_UPHOLSTER.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="CaptainOrangeMonitorL" />
      <Property name="NameHash" value="3013360111" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-0.480000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.470000" />
        <Property name="RotX" value="55.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.200000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.100000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="CaptainOrangeMonitorR" />
      <Property name="NameHash" value="1096930676" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.480000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.470000" />
        <Property name="RotX" value="55.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.200000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.100000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\ASTROSBRIDGE\PROPS\ORANGEMONITOR.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="DatapadL" />
      <Property name="NameHash" value="2302628940" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-0.480000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.400000" />
        <Property name="RotX" value="90.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.300000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\SMALLCONSOLE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="DatapadR" />
      <Property name="NameHash" value="2101525579" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.500000" />
        <Property name="TransY" value="1.690000" />
        <Property name="TransZ" value="0.350000" />
        <Property name="RotX" value="30.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.800000" />
        <Property name="ScaleZ" value="0.700000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\DATA_PAD.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="DatapadRscreen" />
      <Property name="NameHash" value="4170140304" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.530000" />
        <Property name="TransY" value="1.690000" />
        <Property name="TransZ" value="0.350000" />
        <Property name="RotX" value="-50.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.350000" />
        <Property name="ScaleY" value="0.350000" />
        <Property name="ScaleZ" value="0.350000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\SCREENS\DROPPODSCREEN.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="CaptainTechL" />
      <Property name="NameHash" value="841171824" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-0.480000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.700000" />
        <Property name="RotX" value="5.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="-90.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.250000" />
        <Property name="ScaleZ" value="0.300000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TECHPANEL\TECHPANEL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="11">
      <Property name="Name" value="CaptainTechR" />
      <Property name="NameHash" value="3463511053" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.480000" />
        <Property name="TransY" value="1.600000" />
        <Property name="TransZ" value="0.700000" />
        <Property name="RotX" value="5.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="-90.000000" />
        <Property name="ScaleX" value="0.300000" />
        <Property name="ScaleY" value="0.250000" />
        <Property name="ScaleZ" value="0.300000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TECHPANEL\TECHPANEL.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="12">
      <Property name="Name" value="CommandMonitorDeskL" />
      <Property name="NameHash" value="3224084920" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.100000" />
        <Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="-1.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="10.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="13">
      <Property name="Name" value="CommandMonitorDeskR" />
      <Property name="NameHash" value="304956862" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.100000" />
        <Property name="TransY" value="0.500000" />
        <Property name="TransZ" value="-1.800000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="90.000000" />
        <Property name="RotZ" value="10.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\MONITORDESK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="14">
      <Property name="Name" value="CommandMonitorL" />
      <Property name="NameHash" value="109836595" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.100000" />
        <Property name="TransY" value="1.700000" />
        <Property name="TransZ" value="-1.800000" />
        <Property name="RotX" value="20.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.519386" />
        <Property name="ScaleY" value="0.519386" />
        <Property name="ScaleZ" value="0.519386" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="15">
      <Property name="Name" value="CommandMonitorR" />
      <Property name="NameHash" value="2908276426" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.100000" />
        <Property name="TransY" value="1.700000" />
        <Property name="TransZ" value="-1.800000" />
        <Property name="RotX" value="20.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.519386" />
        <Property name="ScaleY" value="0.519386" />
        <Property name="ScaleZ" value="0.519386" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORA.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\CAPTAINBACKWALL.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSBRIDGE\PROPS\CAPTAINBACKWALL" />
  <Property name="NameHash" value="2969597034" />
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
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Curved_Bridge_FrontL" />
      <Property name="NameHash" value="3598962995" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-2.800000" />
        <Property name="TransY" value="1.050000" />
        <Property name="TransZ" value="-10.400000" />
        <Property name="RotX" value="20.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="180.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.800000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Curved_Bridge_FrontR" />
      <Property name="NameHash" value="1645602817" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="2.800000" />
        <Property name="TransY" value="-0.700000" />
        <Property name="TransZ" value="-11.000000" />
        <Property name="RotX" value="20.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.800000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PARTS\WALLCURVED_WHITETRIM_DARK.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\ASTROSBRIDGE\PROPS\CIRCULARRAILING.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\ASTROSBRIDGE\PROPS\CIRCULARRAILING" />
  <Property name="NameHash" value="772520745" />
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
      <Property name="Name" value="Circular railing 1" />
      <Property name="NameHash" value="2700364721" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-10.900000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.510000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Circular railing 4" />
      <Property name="NameHash" value="3202910109" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="-3.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-12.200000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="-48.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Circular railing 5" />
      <Property name="NameHash" value="3433177872" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="3.000000" />
        <Property name="TransY" value="-1.000000" />
        <Property name="TransZ" value="-12.250000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="48.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="0.500000" />
        <Property name="ScaleY" value="0.500000" />
        <Property name="ScaleZ" value="0.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\ASTROSBRIDGE\PROPS\CURVEDRAILING.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
  },
}